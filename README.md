# RV32I RISC-V Skip Table Generation

This tool allows anyone to generate a skip table based off a RV32I based executable .elf file. This skip table will then
be fed into a processor, which will exploit its information in order to better optimize runtime.

### Usage

````
usage: ./gen_skip_table.py [-h] ELF_FILE

A tool to generate a skip table for RISC-V RV32I Base Code

positional arguments:
  ELF_FILE    .elf file to generate skip table from

optional arguments:
  -h, --help  show this help message and exit
````
