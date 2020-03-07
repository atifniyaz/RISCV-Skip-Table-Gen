#!/usr/bin/env python3

import sys
import re


def run():
    if len(sys.argv) != 2:
        print('Please provide an input .asm file to analyze!')
        exit(1)

    file_name = sys.argv[1]

    with open(file_name, 'r') as asm_file:
        for _ in range(6):
            next(asm_file)

        in_section_flag = False
        section_dict = {}
        section_list = []
        section = ('', '')

        for line in asm_file:
            line = line.strip()
            if not in_section_flag:
                section = re.match(r'([0-9a-f]*?)[ ]+<(.*?)>:', line)
                if section is not None:
                    section = section.group(2), section.group(1)
                    in_section_flag = True
                    section_list = []
            else:
                if len(line) == 0:
                    in_section_flag = False
                    section_name, section_no = section
                    section_dict[section_name] = (section_no, section_list)
                else:
                    instr = re.match(r'([0-9a-f]*):\t([0-9a-f]*)[\t ]+([a-z]*)\t?([^#]+)?(#[ ]*(.*))?',
                                     line)
                    instrs = [instr.group(1), instr.group(2), instr.group(3), instr.group(4), instr.group(6)]
                    for i in range(len(instrs)):
                        if instrs[i] is None:
                            instrs[i] = ''
                    section_list.append(tuple(instrs))


def print_section(func_dict):
    for key in func_dict.keys():
        func_no, func_instr = func_dict[key]
        print('{}: <{}>:'.format(func_no, key))
        for instr in func_instr:
            print('{}\t{}        \t{}\t{}'.format(instr[0], instr[1], instr[2], instr[3]))
        print('\n')


if __name__ == "__main__":
    run()
