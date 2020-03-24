#!/usr/bin/env python3

import argparse

from parse_elf_obj_dump import parse_elf_obj_dump


def arg_parse() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description='A tool to generate a skip table for RISC-V RV32I Base Code')
    parser.add_argument('elf', metavar='ELF_FILE',
                        type=argparse.FileType('r'), help='.elf file to generate skip table from')
    return parser.parse_args()


def run():
    parsed = arg_parse()

    funtion_dict = parse_elf_obj_dump(parsed.elf)
    # TODO: Find accumulates


if __name__ == '__main__':
    run()