import re
import os
import sys
from typing import Dict


class Register:

    def __init__(self, reg_name: str, value):
        self.reg_name = reg_name
        self.value = value
        self.actual_value = value

    def __repr__(self):
        return f'REG({self.reg_name}, {self.value}, {self.actual_value})'

    def __str__(self):
        return f'reg: {self.reg_name} value: {self.value} actual_value: {self.actual_value}'

    def set_value(self, value, skip: bool):
        if self.reg_name != 'zero':
            if not skip:
                self.actual_value = value
            self.value = value


class DataPointer(Register):

    def __init__(self, reg_name: str, value):
        super().__init__(reg_name, value)
        self.offset_dict = {}
        self.actual_offset_dict = {}
        self.tracked = set()

    def store_value(self, value, offset: int, skip: bool):
        if not skip:
            self.actual_offset_dict[self.actual_value + offset] = value
        self.offset_dict[self.value + offset] = value

    def load_value(self, offset: int, skip: bool):
        if offset == 0 and self.value + offset not in self.offset_dict:
            if not skip:
                return self.actual_value
            return self.value
        if not skip:
            return self.actual_offset_dict.get(self.actual_value + offset, None)
        return self.offset_dict.get(self.value + offset, None)


def df_analysis(globs: Dict[str, list], section='main', registers={}):

    tracking = set()
    out = []
    input = []

    for op, line, __ in globs[section]:
        input.append((op, line))

    for i in range(0, len(globs[section])):
        op, line, var_dict = globs[section][i]
        skip = False
        if op == 'addi':
            rd = registers[var_dict['rd']]
            rs1 = registers[var_dict['rs1']]
            imm = int(var_dict['imm'])
            rd.set_value(rs1.actual_value + imm, False)

            if rs1.value + imm == 0:
                tracking.add((0, rd))
            else:
                tracking.discard((0, rd))

        elif op == 'sw':
            rd = registers[var_dict['rs1']]
            rs2 = registers[var_dict['rs2']]
            offset = int(var_dict['offset'])

            if (0, rs2) in tracking:
                tracking.add((offset, rd))
                skip = True
            elif rd.load_value(offset, False) == rs2.actual_value:
                skip = True
            else:
                tracking.discard((offset, rd))

            rd.store_value(rs2.actual_value, offset, skip)

        elif op == 'lw':
            rd = registers[var_dict['rd']]
            rs1 = registers[var_dict['rs1']]
            offset = int(var_dict['offset'])

            if rd.actual_value == rs1.load_value(offset, False):
                skip = True
                rd.set_value(rs1.load_value(offset, False), skip)
            else:
                if (offset, rs1) in tracking:
                    tracking.add((0, rd))
                    skip = True
                else:
                    tracking.discard((0, rd))
                rd.set_value(rs1.load_value(offset, True), skip)

        elif op == 'li':
            rd = registers[var_dict['rd']]
            imm = int(var_dict['imm'])

            if imm == 0:
                tracking.add((0, rd))
                skip = True
            elif rd.actual_value == imm:
                skip = True
            else:
                tracking.discard((0, rd))

            rd.set_value(imm, skip)

        elif op == 'call':
            if line == '__mulsi3':
                if registers['a0'].actual_value == 0:
                    skip = True
                elif registers['a1'].actual_value == 0:
                    globs[section].insert(i+1, ('mv', f'a0,a1', {'rd': 'a0', 'rs1': 'a1'}))
                    skip = True
                elif registers['a0'].actual_value == 1:
                    globs[section].insert(i+1, ('mv', f'a0,a1', {'rd': 'a0', 'rs1': 'a1'}))
                    skip = True
                elif registers['a1'].actual_value == 1:
                    skip = True
                else:
                    registers['a0'].set_value(registers['a0'].actual_value * registers['a1'].actual_value, False)
            elif line == '__divsi3':
                if registers['a0'].actual_value == 0:
                    skip = True
                elif registers['a1'].actual_value == 1:
                    skip = True
                else:
                    registers['a0'].set_value(registers['a0'].actual_value / registers['a1'].actual_value, False)
            elif line == '__modsi3':
                if registers['a0'].actual_value == 0:
                    skip = True
                elif registers['a1'].actual_value == 1:
                    globs[section].insert(i+1, ('li', f'a0,0', {'rd': 'a0', 'imm': '0'}))
                    skip = True
                else:
                    registers['a0'].set_value(registers['a0'].actual_value % registers['a1'].actual_value, False)

        elif op == 'mv':
            rd = registers[var_dict['rd']]
            rs1 = registers[var_dict['rs1']]

            if (0, rs1) in tracking:
                tracking.add((0, rd))
                skip = True
            else:
                tracking.discard((0, rd))

            rd.set_value(rs1.actual_value, skip)

        else:
            print(op, line, var_dict)

        instr = f'\t{op}\t{line}'
        if not skip:
            out.append(f'\t{instr}')
            print(instr)
        else:
            out.append(f'SKIP: {instr}')
            print(f'SKIP: {instr}')
        print('\t', tracking)
        print_registers(registers)

    print('\n\nOriginal Output\n\n')
    print(f'{section}:')
    for op, line in input:
        print(f'\t{op}\t{line}')

    print('\n\nFinal Output\n\n')
    print(f'{section}:')
    for line in out:
        print(line)


def parsed_compiled_code_values(globs: Dict[str, list]):

    registers = {'zero': Register('zero', 0)}

    register = r'zero|ra|sp|gp|tp|fp|t[0-6]|s[0-9]|s1[0-1]|a[0-7]'
    number = r'[-][0-9]+|[0-9]+|0x[0-9a-f]+|[0-9a-f]+'

    # Regex to match RISCV-ISA
    cat1_reg = r'addi|slti|sltiu|xori|ori|andi|slli|srli|srai'  # rd,rs1,imm
    cat2_reg = r'add|sub|sll|slt|sltu|xor|srl|sra|or|and'  # rd,rs1,rs2
    cat3_reg = r'lb|lh|lw|lbu|lhu'  # rd,offset(rs1)
    cat4_reg = r'sb|sh|sw'  # rs2,offset(rs1)
    cat5_reg = r'beq|bne|blt|bge|bltu|bgeu'  # rs1,rs2,offset
    cat6_reg = r'lui'

    # Regex to match potential pseudo-ops in RISC-V Assembler
    cat_p1_reg = r'li'  # rd,expression
    cat_p2_reg = r'mv|not|neg|negw|sext.w|seqz|snez|sltz|sgtz'  # rd,rs1
    cat_p3_reg = r'beqz|bnez|blez|bgez|bltz|bgtz'  # rs1,offset
    cat_p4_reg = r'bgt|ble|bgtu|bleu'  # rs,rt,offset

    for section in globs:
        section_list = globs[section]

        for i in range(0, len(section_list)):
            op, values = section_list[i]
            ns = None

            if re.fullmatch(cat1_reg, op) is not None:
                ns = re.fullmatch(f'(?P<rd>{register}),(?P<rs1>{register}),(?P<imm>{number})', values)
            elif re.fullmatch(cat2_reg, op) is not None:
                ns = re.fullmatch(f'(?P<rd>{register}),(?P<rs1>{register}),(?P<rs2>{register})', values)
            elif re.fullmatch(cat3_reg, op) is not None:
                ns = re.fullmatch(f'(?P<rd>{register}),(?P<offset>{number})[(](?P<rs1>{register})[)]', values)
            elif re.fullmatch(cat4_reg, op) is not None:
                ns = re.fullmatch(f'(?P<rs2>{register}),(?P<offset>{number})[(](?P<rs1>{register})[)]', values)
            elif re.fullmatch(cat5_reg, op) is not None:
                ns = re.fullmatch(f'(?P<rs1>{register}),(?P<rs2>{register}),(?P<offset>{number})'
                                  r' <(?P<ref>[^>]+)>', values)

            # Match Pseudo Instructions
            elif re.fullmatch(f'{cat_p1_reg}|{cat6_reg}', op) is not None:  # li, lui
                ns = re.fullmatch(f'(?P<rd>{register}),(?P<imm>{number})', values)
            elif re.fullmatch(cat_p2_reg, op) is not None:
                ns = re.fullmatch(f'(?P<rd>{register}),(?P<rs1>{register})', values)
            elif re.fullmatch(cat_p3_reg, op) is not None:
                ns = re.fullmatch(f'(?P<rs1>{register}),(?P<offset>{number}) <(?P<ref>[^>]+)>', values)

            if ns is None:
                print(f'\t{op:7}{values}')
                section_list[i] = op, values, None
            else:
                group_dict = ns.groupdict()
                section_list[i] = op, values, group_dict

                for label in group_dict:
                    if label.startswith('r') and group_dict[label] not in registers:
                        reg = group_dict[label]
                        if reg == 's0' or reg == 'fp':
                            fp = DataPointer('fp', 0)
                            registers['s0'] = fp
                            registers['fp'] = fp
                        else:
                            registers[reg] = DataPointer(reg, 0)
    return registers, globs


def parse_compiled_code(file_name: str):

    file = open(file_name, 'r')
    info = []
    globs = {}
    file_lines = file.readlines()

    for i in range(0, len(file_lines)):
        if file_lines[i] == '\tnop\n':
            file_lines[i] = '\taddi\tzero,zero,0\n'

    section = ''
    for line in file_lines:
        if line.startswith('\t.'):
            info.append(line)
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
    return globs


def print_compiled_code(globs: Dict[str, list]):
    for section in globs:
        print(f'{section}:')
        for op, values in globs[section]:
            print(f'\t{op:7}{values}')


def print_registers(registers: Dict[str, Register]):
    for key in registers:
        print(registers[key])
        if type(registers[key]) is DataPointer:
            dp = registers[key]
            for offset in dp.offset_dict:
                print(f'{offset:10} {dp.offset_dict[offset]} {dp.actual_offset_dict.get(offset, None)}')
    print('=============')


if __name__ == '__main__':
    globs = parse_compiled_code(os.path.join(os.getcwd(), sys.argv[1]))
    registers, globs = parsed_compiled_code_values(globs)
    df_analysis(globs, registers=registers)
