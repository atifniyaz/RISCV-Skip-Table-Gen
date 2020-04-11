#!/usr/bin/env python3

import argparse
import subprocess
import shlex
import sys
import re
import os

from find_skippable_regions import create_skip_entries_and_assembly


def get_skip_table_entry(entry):
    # entry format: (label, reg1, reg2, condition, instsToSkip)
    return '\tCREATE_SASA_MEMORY_ENTRIES(%s, %d, %d, %s, %d)\n' % \
           (entry[0], entry[1], entry[2], entry[3], entry[4])


def __parse_args(args=sys.argv) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description='Generate a SASA Table')
    parser.add_argument('input_file', metavar='INPUT_FILE', help='Input Source to Analyze')
    parser.add_argument('num_skip_table_entries', metavar='NUM_SKIP_TABLE_ENTRIES', help='Number of Skip Table Entries',
                        type=int)
    return parser.parse_args(args[1:])


def run(args=sys.argv):
    parsed_args = __parse_args(args)
    __generate_sasa_table(**vars(parsed_args))


def __generate_sasa_table(input_file: str, num_skip_table_entries: int):
    sasa_table_label = 'SASA_TABLE_ENTRIES'
    file_name = re.fullmatch('(.*?).c', input_file).group(1)

    SKIP_TABLE_INIT_LOOP = [
        '//---------- BEGIN AUTOMATICALLY ADDED CODE ----------//\n',
       f'\tli\tt3,{num_skip_table_entries}\n',      # Load number of insts to skip
        '\tli\tt0,0\n',                             # Load counter for skipped insts
       f'.SASA_STORE:\n',
       f'\tSTORE_SASA_FROM_MEM({sasa_table_label}, t0, t1, t2)\n',
        '\taddi\tt0,t0,1\n',
        '\tbeq\tt0,t3,.SASA_STORE\n',
        '//---------- END AUTOMATICALLY ADDED CODE ----------//\n']

    # Open the text file containing the macros to insert
    macroFile = open('macros.c', 'r')
    macros = macroFile.readlines()  # Extract its contents
    macroFile.close()

    # Open the C code file that will be run on the chip
    cFile = open(input_file, 'r')
    cCode = cFile.readlines()  # Extract its contents
    cFile.close()

    cFileWithMacros = open('out.c', 'w')
    cFileWithMacros.writelines(macros)
    cFileWithMacros.writelines(cCode)
    cFileWithMacros.close()

    ''' COMPILE / DISASSEMBLE THE C FILE HERE TO .S '''
    process = subprocess.run(shlex.split(f'riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 {input_file} -S'),
                             stderr=subprocess.PIPE, stdout=subprocess.PIPE)
    if process.returncode != 0:
        print(process.stderr.decode())

    sFileLines, skip_entries = create_skip_entries_and_assembly(f'{os.path.basename(file_name)}.s')

    newSFile = open('newSFile.s', 'w')

    # Find "main:" in the .S file and append the init loop
    for line in sFileLines:
        if line.strip() == "main:":
            newSFile.write(line)
            newSFile.writelines(SKIP_TABLE_INIT_LOOP)
            continue
        newSFile.write(line)

    # Now the cursor should be at the end of the file.
    # Append the .data segment to init the skip table memory
    newSFile.write('\n\n')  # Newline for clarity
    newSFile.write('//---------- BEGIN AUTOMATICALLY ADDED CODE ----------//\n')
    newSFile.write('.data\n')  # Add the .data segment header
    newSFile.write(sasa_table_label + ':\n')  # Create a label for the sasa table
    for entry in skip_entries:
        newSFile.write(get_skip_table_entry(entry))
    newSFile.write('//---------- END AUTOMATICALLY ADDED CODE ----------//\n')

    # Close the .S file
    newSFile.close()

    # Finally, compile the final .S file into an executable
    subprocess.run(shlex.split('riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 newSFile.s -o sasa_exe'))


if __name__ == '__main__':
    run()