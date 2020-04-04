#!/usr/bin/env python3

import argparse

from parse_elf_obj_dump import parse_elf_obj_dump, print_section
import find_sparse_MACs

def arg_parse() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description='A tool to generate a skip table for RISC-V RV32I Base Code')
    parser.add_argument('elf', metavar='ELF_FILE',
                        type=argparse.FileType('r'), help='.elf file to generate skip table from')
    return parser.parse_args()


def run():
    parsed = arg_parse()

    function_dict, instr_dict = parse_elf_obj_dump(parsed.elf)

    # for pc in instr_dict:
    #     print(f'{pc:10}   {instr_dict[pc]}')
    # print(function_dict)

    main_pc = function_dict['main']
    #parse_instructions(main_pc, instr_dict, {})
    mac_pcs = find_sparse_MACs.find_accumulates(instr_dict)
    print(hex(main_pc))

if __name__ == '__main__':
    run()