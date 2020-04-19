# RISC-V Skip Table for AFTx05

Traditional machine learning (ML) applications perform billions of computations and therefore require a considerable amount of power, limiting their integration into portable IoT devices. Computation reduction can be achieved by leveraging sparsity produced during the inferencing stage of a machine learning system. 

A compiler was developed to identify sparsity in ML code and to generate a hardware skip table from it. The optimizations developed in this project are predicted to decrease execution time of machine learning on the SoCET processor by at least 18%.


### Usage

````
usage: ./compile FILE_NAME

A tool to generate a skip table for RISC-V RV32I Base Code

positional arguments:
  FILE_NAME   .c file to compile (without the .c extension)
````

### Sparsity Identification

The skip table requires the following information:
* The label where to check for a potential skip
* Two registers to check for sparse values (register == 0)
* An operator to check for both registers being sparse (AND) or one of them being sparse (OR)
* Number of instructions to skip after the label.

The AFTx05 chipset currently does not support a multiply instruction so the algorithms priority is to identify locations in the code performing multiplication or division and mark them for skipping.
The sparsity identification algorithm is the primary location for future improvement, as longer sequences, or other operations such as division could be identified for skipping.

### Integrating with the AFTx05

The AFTx05 starts programs at a Program Counter of 0x200. A linker was provided to the compiler so that the executable knew to enter in at 0x200.
An additional instruction was added to load the stack pointer location into the program.
The address where SASA Table entries are stored also had to be loaded in by a separate instruction  

### Conclusions

Successfully demonstrated the viability and benefits of incorporating sparsity optimizations into embedded ML code:

* Applicable to all applications
* Reduced power consumption
* Reduced runtime without functional changes

#### Future improvements

* Determine larger regions for instruction skipping
* Incorporate additional instructions that can be marked as sparse, other than multiply instructions
* Reduce compilation time through skip region labels
