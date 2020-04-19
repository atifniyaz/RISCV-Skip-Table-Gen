import re
import sys
from typing import Dict, List


def parse_compiled_code(file_name: str):

    file = open(file_name, 'r')
    header, globs = [], {}
    end_header = False
    file_lines = file.readlines()

    for i in range(0, len(file_lines)):
        if file_lines[i] == '\tnop\n':
            file_lines[i] = '\taddi\tzero,zero,0\n'

    section = ''
    for line in file_lines:
        if not end_header:
            if line.startswith('main:'):
                end_header = True
            else:
                header.append(line)
                continue
        ns = re.fullmatch(r'\t([a-z.]*)\t(.*?)\n', line)
        if ns is None:
            ns = re.fullmatch(r'(.*?):\n', line)
            if ns is None:
                sys.exit(2)
            section = ns.group(1)
            globs[section] = []
            continue
        globs[section].append((ns.group(1), ns.group(2)))
    file.close()
    return header, globs


def build_compiled_code(header: List[str], sections: List[str], globs: Dict[str, list]):
    output = []
    for heading in header:
        output.append(heading)
    for section in sections:
        output.append(f'{section}:\n')
        for op, values in globs[section]:
            output.append(f'\t{op}\t{values}\n')
    return output


def find_skippable_regions(globs: Dict[str, tuple]) -> List[tuple]:
    sections = [x for x in globs]
    skips = []
    section_cnt = 0
    i = 0
    while i < len(sections):
        lines = globs[sections[i]]
        for k in range(0, len(lines)):
            op, value = lines[k] # a0
            if k > 1 and op == 'call':
                if value == '__mulsi3':
                    globs[sections[i]] = lines[:k]
                    sasa_skip_one = f'SASA_SKIP_{section_cnt}_MUL_A0'
                    sasa_skip_two = f'SASA_SKIP_{section_cnt}_MUL_A1'
                    sasa_skip_three = f'SASA_SKIP_{section_cnt}_MUL_JP'

                    globs[sasa_skip_one] = [
                        ('nop', ''),
                    ]

                    globs[sasa_skip_two] = [
                        ('nop', ''),
                        lines[k],
                        ('j', sasa_skip_three),
                        ('mv', 'a0,a1')
                    ]

                    globs[sasa_skip_three] = lines[k+1:]

                    sections.insert(i+1, sasa_skip_three)
                    sections.insert(i+1, sasa_skip_two)
                    sections.insert(i+1, sasa_skip_one)

                    skips.append((sasa_skip_two, 11, 0, 'SASA_COND_AND', 2))
                    skips.append((sasa_skip_one, 10, 0, 'SASA_COND_AND', 4))
                elif value == '__divsi3':
                    globs[sections[i]] = lines[:k]
                    sasa_skip_one = f'SASA_SKIP_{section_cnt}_DIV_A0'
                    globs[sasa_skip_one] = [('nop', '')] + lines[k:]

                    sections.insert(i+1, sasa_skip_one)

                    skips.append((sasa_skip_one, 10, 0, 'SASA_COND_AND', 2))
                section_cnt += 1
                break
        i += 1
    return sections, skips, globs


def create_skip_entries_and_assembly(file_name: str):
    header, globs = parse_compiled_code(file_name)
    sections, skips, globs = find_skippable_regions(globs)
    output = build_compiled_code(header, sections, globs)

    return output, skips