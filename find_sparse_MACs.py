from typing import List, Dict
import sys
import re


class Register():

    def __init__(self, reg_name: str, value):
        self.reg_name = reg_name
        self.value = value

    def __repr__(self):
        return f'REG({self.reg_name}, {self.value})'

    def __str__(self):
        return f'reg: {self.reg_name} value: {self.value}'

    def set_value(self, value):
        if self.reg_name != 'zero':
            self.value = value


class DataPointer(Register):

    def __init__(self, reg_name: str, value):
        super().__init__(reg_name, value)
        self.offset_dict = {}

    def store_value(self, value, offset: int):
        self.offset_dict[self.value + offset] = value

    def load_value(self, offset: int):
        if offset == 0 and self.value + offset not in self.offset_dict:
            return self.value
        return self.offset_dict[self.value + offset]


class RISCVInstruction():

    def __init__(self, prog_cnt: int, inst: str, **kwargs):
        self._prog_cnt = prog_cnt
        self._inst = inst


def parse_instructions(pc: int, instr_dict: Dict[int, tuple], registers: Dict[str, Register]):
    registers['zero'] = Register('zero', 0)

    register = r'zero|ra|sp|gp|tp|fp|t[0-6]|s[0-9]|s1[0-1]|a[0-7]'
    number = r'[-][0-9]+|[0-9]+|0x[0-9a-f]+|[0-9a-f]+'

    # Regex to match RISCV-ISA
    cat1_reg = r'addi|slti|sltiu|xori|ori|andi|slli|srli|srai'  # rd,rs1,imm
    cat2_reg = r'add|sub|sll|slt|sltu|xor|srl|sra|or|and'  # rd,rs1,rs2
    cat3_reg = r'lb|lh|lw|lbu|lhu'  # rd,offset(rs1)
    cat4_reg = r'sb|sh|sw'  # rs2,offset(rs1)
    cat5_reg = r'beq|bne|blt|bge|bltu|bgeu' # rs1,rs2,offset
    cat6_reg = r'lui'

    # Regex to match potential pseudo-ops in RISC-V Assembler
    cat_p1_reg = r'li'  # rd,expression
    cat_p2_reg = r'mv|not|neg|negw|sext.w|seqz|snez|sltz|sgtz'  # rd,rs1
    cat_p3_reg = r'beqz|bnez|blez|bgez|bltz|bgtz'  # rs1,offset
    cat_p4_reg = r'bgt|ble|bgtu|bleu'  # rs,rt,offset

    terminate = False

    while not terminate:
        instruction = instr_dict[pc]
        instr_name = instruction[1]
        values = instruction[2]
        pc += 4

        ns = None
        if re.fullmatch(cat1_reg, instr_name) is not None:
            ns = re.fullmatch(f'(?P<rd>{register}),(?P<rs1>{register}),(?P<imm>{number})', values)
        elif re.fullmatch(cat2_reg, instr_name) is not None:
            ns = re.fullmatch(f'(?P<rd>{register}),(?P<rs1>{register}),(?P<rs2>{register})', values)
        elif re.fullmatch(cat3_reg, instr_name) is not None:
            ns = re.fullmatch(f'(?P<rd>{register}),(?P<offset>{number})[(](?P<rs1>{register})[)]', values)
        elif re.fullmatch(cat4_reg, instr_name) is not None:
            ns = re.fullmatch(f'(?P<rs2>{register}),(?P<offset>{number})[(](?P<rs1>{register})[)]', values)
        elif re.fullmatch(cat5_reg, instr_name) is not None:
            ns = re.fullmatch(f'(?P<rs1>{register}),(?P<rs2>{register}),(?P<offset>{number})'
                              r' <(?P<ref>[^>]+)>', values)
        elif instr_name == 'jal' or instr_name == 'j':
            if instr_name == 'j':
                values = f'zero,{values}'
                instr_name = 'jal'
            ns = re.fullmatch(f'(?P<rd>{register}),(?P<offset>{number}) <(?P<ref>[^>]+)>', values)
        elif instr_name == 'ret':
            terminate = True
            continue

        # Match Pseudo Instructions
        elif re.fullmatch(f'{cat_p1_reg}|{cat6_reg}', instr_name) is not None:  # li, lui
            ns = re.fullmatch(f'(?P<rd>{register}),(?P<imm>{number})', values)
        elif re.fullmatch(cat_p2_reg, instr_name) is not None:
            ns = re.fullmatch(f'(?P<rd>{register}),(?P<rs1>{register})', values)
        elif re.fullmatch(cat_p3_reg, instr_name) is not None:
            ns = re.fullmatch(f'(?P<rs1>{register}),(?P<offset>{number}) <(?P<ref>[^>]+)>', values)
        else:
            print(f'WARNING ============ Didn\'t Parse: {instruction} {instr_name} {values}')
            continue

        if ns is None:
            print(f'ERROR ============ Parse Failure: {instruction} {instr_name} {values}')
            continue

        inst_ns = ns.groupdict()
        for key in inst_ns:
            reg = inst_ns[key]
            if re.fullmatch(register, reg) is not None and reg not in registers:
                if reg == 's0' or reg == 'fp':
                    fp = DataPointer('fp', 0)
                    registers['s0'] = fp
                    registers['fp'] = fp
                else:
                    registers[reg] = DataPointer(reg, 0)

        print(f'pc: {hex(pc-4)} instruction: {instruction}')

        if instr_name == 'addi':
            value = registers[inst_ns['rs1']].value + int(inst_ns['imm'])
            registers[inst_ns['rd']].set_value(value)
        elif instr_name == 'add':
            value = registers[inst_ns['rs1']].value + registers[inst_ns['rs2']].value
            registers[inst_ns['rd']].set_value(value)
        elif instr_name == 'li':
            registers[inst_ns['rd']].set_value(int(inst_ns['imm']))
        elif instr_name == 'mv':
            registers[inst_ns['rd']].set_value(registers[inst_ns['rs1']].value)
        elif re.fullmatch(cat4_reg, instr_name) is not None: # rs1 + offset  <-- rs2
            dp, offset = registers[inst_ns['rs1']], inst_ns['offset']
            dp.store_value(registers[inst_ns['rs2']].value, int(offset))
        elif re.fullmatch(cat3_reg, instr_name) is not None: # rd <-- rs1 + offset
            dp, offset = registers[inst_ns['rs1']], inst_ns['offset']
            registers[inst_ns['rd']].set_value(dp.load_value(int(offset)))
        elif instr_name == 'jal':
            jal_pc = int(inst_ns['offset'], 16)
            parse_instructions(jal_pc, instr_dict, registers)
        elif instr_name == 'beqz':
            reg_value = registers[inst_ns['rs1']].value
            if reg_value == 0:
                pc = int(inst_ns['offset'], 16)
        elif instr_name == 'bnez':
            reg_value = registers[inst_ns['rs1']].value
            if reg_value != 0:
                pc = int(inst_ns['offset'], 16)
        elif instr_name == 'andi':
            reg_value = registers[inst_ns['rs1']].value
            imm = int(inst_ns['imm'])
            registers[inst_ns['rd']].set_value(reg_value & imm)
        elif instr_name == 'srli':
            reg_value = registers[inst_ns['rs1']].value
            imm = int(inst_ns['imm'], 16)
            registers[inst_ns['rd']].set_value(reg_value >> imm)
        elif instr_name == 'slli':
            reg_value = registers[inst_ns['rs1']].value
            imm = int(inst_ns['imm'], 16)
            registers[inst_ns['rd']].set_value(reg_value << imm)

        print_registers(registers)
    key_list = list(registers.keys())
    key_list.sort()


def print_registers(registers: Dict[str, Register]):
    for key in registers:
        print(registers[key])
        if type(registers[key]) is DataPointer:
            dp = registers[key]
            for offset in dp.offset_dict:
                print('{:10} {}'.format(offset, dp.offset_dict[offset]))
    print('=============')


def find_accumulates(instr_dict: Dict[int, tuple]):
    '''
    Find Accumulates - Multiply, Divide, and Remainder

    Multiply has the following format:
        jal ra,offset <__mulsi3>
    Divide has the following format:
        jal ra,offset <__divsi3>
    Modulus has the following format:
        jal ra,offset <__modsi3>
    '''

    register = r'zero|ra|sp|gp|tp|fp|t[0-6]|s[0-9]|s1[0-1]|a[0-7]'
    number = r'[-][0-9]+|[0-9]+|0x[0-9a-f]+|[0-9a-f]+'
    func = r'<__mulsi3>|<__divsi3>|<__modsi3>'

    skip_dict = {}
    mulsiPC = 0
    for num, pc in enumerate(instr_dict):
        instruction = instr_dict[pc]
        op, args = instruction[1], instruction[2]


        if op == 'jal':
            ns = re.fullmatch(f'(?P<rd>{register}),(?P<offset>{number}) (?P<ref>{func})', args)
            if ns is not None:
              if ns['ref'] == '<__mulsi3>':
                  mulsiPC = pc

    print(mulsiPC)
    return skip_dict