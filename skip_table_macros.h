#define SASA_COND_OR 0
#define SASA_COND_AND 1

#define CALC_SASA_VAL(reg1, reg2, condition, insts_to_skip) \
(((reg1) << 11) + ((reg2) << 6) + ((condition << 5)) + ((insts_to_skip)));

#define STORE_SASA_FROM_MEM(mem_label, reg_offset, tempreg1, tempreg2) \
slli tempreg1, reg_offset, 3; \
la   tempreg2, mem_label; \
add  tempreg2, tempreg2, tempreg1; \
lw   tempreg1, 0(tempreg2); \
slli tempreg1, tempreg1, 14; \
lw   tempreg2, 4(tempreg2); \
or   tempreg1, tempreg1, tempreg2; \
lui  tempreg2, SPARCE_ADDR; \
srli tempreg2, tempreg2, 12; \
sw   tempreg1, 0(tempreg2);

#define CREATE_SASA_MEMORY_ENTRIES(skip_label, reg1, reg2, condition, insts_to_skip) \
.word skip_label; \
.word CALC_SASA_VAL(reg1, reg2, condition, insts_to_skip); \
