import argparse
import subprocess
import shlex
import sys
import os
from typing import List

from find_skippable_regions import create_skip_entries_and_assembly


def gen_store_sasa_from_mem_macro(mem_label, reg_offset, tempreg1, tempreg2):
    sparce_addr = '0x90000000'
    return [
        f'\tslli\t{tempreg1},{reg_offset},3\n',
        f'\tla\t{tempreg2},{mem_label}\n',
        f'\tadd\t{tempreg2},{tempreg2},{tempreg1}\n',
        f'\tlw\t{tempreg1},0({tempreg2})\n',
        f'\tslli\t{tempreg1},{tempreg1},14\n',
        f'\tlw\t{tempreg2},4({tempreg2})\n',
        f'\tor\t{tempreg1},{tempreg1},{tempreg2}\n',
        f'\tli\t{tempreg2},{sparce_addr}\n',
        f'\tsw\t{tempreg1},0({tempreg2})\n'
    ]


def gen_create_sasa_memory_entries(skip_label, reg1, reg2, condition, insts_to_skip):
    return [
        f'\t.word {skip_label}\n',
        f'\t.word {calc_sasa_val(reg1, reg2, condition, insts_to_skip)}'
        f' # reg1={reg1}, reg2={reg2}, condition={condition}, instr_skip={insts_to_skip}\n'
    ]


def calc_sasa_val(reg1: int, reg2: int, condition: str, insts_to_skip: int):
    condition_val: int
    if condition == 'SASA_COND_OR':
        condition_val = 0
    elif condition == 'SASA_COND_AND':
        condition_val = 1
    else:
        raise Exception('Not a valid condition!')
    return (reg1 << 11) + (reg2 << 6) + (condition_val << 5) + insts_to_skip


def get_skip_table_entry(entry):
    # entry format: (label, reg1, reg2, condition, instsToSkip)
    return gen_create_sasa_memory_entries(
        entry[0], entry[1], entry[2], entry[3], entry[4]
    )


def __compile_source_to_assembly(input_file: str, args: List[str]):
    base_name = os.path.basename(input_file)[:-2]
    path_name = os.path.dirname(input_file)
    assembly_file_out = os.path.join(path_name, f'{base_name}.s')

    process = subprocess.run(shlex.split(
        f'riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -static -mcmodel=medany -fvisibility=hidden -nostartfiles'
        f' {input_file} -S -o {assembly_file_out}'), stderr=subprocess.PIPE, stdout=subprocess.PIPE)

    if process.returncode != 0:
        print('Failed to Compile C Code!')
        print(process.stderr.decode())
        sys.exit(process.returncode)

    return base_name, path_name, assembly_file_out


def __add_sasa_table_entries(assembly_lines, skip_entries):

    out_assembly_lines = []

    SASA_TABLE_LABEL = 'SASA_TABLE_ENTRIES'
    SKIP_TABLE_INIT_LOOP = [
        '#---------- BEGIN SPARCE GENERATED CODE ----------\n',
       '\tmv\tt0,zero # Offset Skip Entry\n',                     # Load counter for skipped insts
       '\tmv\tt1,zero\n',                     # Load counter for skipped insts
       '\tmv\tt2,zero\n',                     # Load counter for skipped insts
       f'\tli\tt3,{len(skip_entries)} # Num Skip Entries\n',   # Load number of insts to skip
       f'SASA_STORE:\n'] + \
        gen_store_sasa_from_mem_macro(SASA_TABLE_LABEL, 't0', 't1', 't2') + \
       ['\taddi\tt0,t0,1\n',
        '\tbne\tt0,t3,SASA_STORE\n',
        '#----------- END SPARCE GENERATED CODE -----------\n']

    for line in assembly_lines:
        if line.strip() == 'main:': # Find "main:" in the .S file and append the init loop
            out_assembly_lines.append(line)
            out_assembly_lines.extend(SKIP_TABLE_INIT_LOOP)
            out_assembly_lines.append(f'\tli\tsp,0x83FC # Load in Stack Pointer\n')
        else:
            out_assembly_lines.append(line)

    out_assembly_lines.append('#---------- BEGIN SPARCE GENERATED CODE ----------\n')
    out_assembly_lines.append('.data\n')
    out_assembly_lines.append(f'{SASA_TABLE_LABEL}:\n')
    [out_assembly_lines.extend(get_skip_table_entry(entry)) for entry in skip_entries]
    out_assembly_lines.append('#----------- END SPARCE GENERATED CODE -----------\n')
    return out_assembly_lines


def __write_lines_to_file(lines: List[str], file_path: str):
    output = open(file_path, 'w')
    output.writelines(lines)
    output.close()


def __parse_args(args=sys.argv) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description='Generate a SASA Table Aware Assembly File')
    parser.add_argument('input_file', metavar='INPUT_FILE', help='Input Source to Analyze')
    parser.add_argument('args', metavar='ARGS', help='Compiler Flags', nargs=argparse.REMAINDER)
    return parser.parse_args(args[1:])


def run(args=sys.argv):
    parsed_args = __parse_args(args)

    name, directory, assembly_out = __compile_source_to_assembly(parsed_args.input_file, parsed_args.args)
    assembly_lines, skip_entries = create_skip_entries_and_assembly(assembly_out)
    assembly_lines = __add_sasa_table_entries(assembly_lines, skip_entries)
    __write_lines_to_file(assembly_lines, os.path.join(directory, f'{name}.s'))


if __name__ == '__main__':
    run()