#!/usr/bin/env python

import os
import subprocess


def invert_bin_string(bin_string):
    inverted = ''
    while len(bin_string) < 8:
        bin_string = '0' + bin_string
    for bit in bin_string:
        if bit == '0':
            inverted = inverted + '1'
        else:
            inverted = inverted + '0'
    return inverted


# Returns the string representation of the
# checksum for the given data and address values
def calculate_checksum_str(data, addr):

    addr = int(addr/4)
    high_addr = (addr & 0xFF00) >> 8
    low_addr = addr & 0x00FF
    data1 = data & 0x000000FF
    data2 = (data & 0x0000FF00) >> 8
    data3 = (data & 0x00FF0000) >> 16
    data4 = (data & 0xFF000000) >> 24
    checksum = 4 + high_addr + low_addr
    checksum += data1 + data2 + data3 + data4
    checksum = checksum & 0xFF
    checksum = int(invert_bin_string(bin(checksum)[2:]),2)
    checksum += 1
    checksum_lower_byte = hex(checksum)[2:]
    if len(checksum_lower_byte) > 2:
        checksum_lower_byte = checksum_lower_byte[-2:]
    return checksum_lower_byte


def convert_elf_to_hex():
    elf_output = 'a.out'

    # elf to hex
    cmd_arr = ['elf2hex', '8', '65536', elf_output, '0']
    hex_file_loc = "hex_file"
    with open(hex_file_loc, 'w') as hex_file:
        failure = subprocess.call(cmd_arr, stdout=hex_file)

    # hex to intelhex
    with open(hex_file_loc, 'r') as hex_file:
        addr = 0x00
        intelhex = open("meminit.hex", 'w')

        for line in hex_file:
            stripped_line = line[:len(line)-1]
            for i in range(len(stripped_line), 0, -8):
                data_word = stripped_line[i-8:i]
                new_data_word = data_word[6:8] + data_word[4:6]
                new_data_word += data_word[2:4] + data_word[0:2]
                checksum = calculate_checksum_str(int(new_data_word, 16), addr)
                if len(checksum) < 2:
                    checksum = '0' + checksum
                addr_str = hex(int(addr/4))[2:]
                #left pad the string with 0s until 4 hex digits
                while len(addr_str) < 4:
                    addr_str = '0' + addr_str
                if new_data_word != "00000000":
                    out = ":04" + addr_str + "00" + new_data_word + checksum + '\n'
                    intelhex.write(out)
                addr += 0x4
        # add the EOL record to the file
        intelhex.write(":00000001FF")
        intelhex.close()

    # hex to ROM
    with open(hex_file_loc, 'r') as hex_file:
        addr = 0x00
        rom = open("./rom.txt", 'w')

        for line in hex_file:
            stripped_line = line[:len(line) - 1]
            for i in range(len(stripped_line), 0, -8):
                data_word = stripped_line[i - 8:i]
                new_data_word = data_word[6:8] + data_word[4:6]
                new_data_word += data_word[2:4] + data_word[0:2]
                addr_str = "{:04x}".format(int(addr / 4))
                if addr >= 0x0200 and addr < 0x8000:
                    # print("16'h{} : blkif.rom_rdata <= 32'h{};".format(addr_str, data_word))
                    rom.write("          16'h{} : blkif.rom_rdata <= 32'h{};\n".format(addr_str, new_data_word))
                addr += 0x4
        # add the EOL record to the file
        rom.close()
        os.system("cat res/rom_pre.txt rom.txt res/rom_post.txt > SOC_ROM.sv")


if __name__ == '__main__':
    convert_elf_to_hex()