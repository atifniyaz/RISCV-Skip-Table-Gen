	.file	"non_empty_mult.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	__mulsi3
	.globl	__divsi3
	.globl	__modsi3
	.align	2
	.globl	main
	.type	main, @function
main:
//---------- BEGIN AUTOMATICALLY ADDED CODE ----------//
	li	t3,10
	li	t0,0
.SASA_STORE:
	STORE_SASA_FROM_MEM(sasa_table, t0, t1, t2)
	addi	t0,t0,1
	beq	t0,t3,.SASA_STORE
//---------- END AUTOMATICALLY ADDED CODE ----------//
	addi   sp,sp,-64
	sw     ra,60(sp)
	sw     s0,56(sp)
	addi   s0,sp,64
	sw     a0,-52(s0)
	sw     a1,-56(s0)
	li     a5,20
	sw     a5,-20(s0)
	li     a5,5
	sw     a5,-24(s0)
	lw     a5,-20(s0)
	beq    a5,zero,.L5
	lw     a1,-24(s0)
	lw     a0,-20(s0)
.SASA_SKIP_0_0:
	call   __mulsi3
	j      .SASA_SKIP_0_1
	mv     a0,a1
.SASA_SKIP_0_1:
	mv     a5,a0
	sw     a5,-28(s0)
	lw     a1,-24(s0)
	lw     a0,-20(s0)
.SASA_SKIP_1_0:
	call   __divsi3
	mv     a5,a0
	sw     a5,-32(s0)
	lw     a5,-20(s0)
	lw     a1,-24(s0)
	mv     a0,a5
	call   __modsi3
	mv     a5,a0
	sw     a5,-36(s0)
	j      .L3
.L5:
	addi   zero,zero,0
.L3:
	li     a5,0
	mv     a0,a5
	lw     ra,60(sp)
	lw     s0,56(sp)
	addi   sp,sp,64
	jr     ra
	.size  main, .-main
	.ident "GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"


//---------- BEGIN AUTOMATICALLY ADDED CODE ----------//
.data
sasa_table:
	CREATE_SASA_MEMORY_ENTRIES(.SASA_SKIP_0_0, 10, 0, SASA_COND_AND, 1)
	CREATE_SASA_MEMORY_ENTRIES(.SASA_SKIP_0_0, 11, 0, SASA_COND_AND, 2)
	CREATE_SASA_MEMORY_ENTRIES(.SASA_SKIP_1_0, 10, 0, SASA_COND_AND, 1)
	CREATE_SASA_MEMORY_ENTRIES(.SASA_SKIP_1_0, 10, 0, SASA_COND_AND, 1)
	CREATE_SASA_MEMORY_ENTRIES(.SASA_SKIP_1_0, 10, 0, SASA_COND_AND, 1)
	CREATE_SASA_MEMORY_ENTRIES(.SASA_SKIP_1_0, 10, 0, SASA_COND_AND, 1)
	CREATE_SASA_MEMORY_ENTRIES(.SASA_SKIP_1_0, 10, 0, SASA_COND_AND, 1)
	CREATE_SASA_MEMORY_ENTRIES(.SASA_SKIP_1_0, 10, 0, SASA_COND_AND, 1)
	CREATE_SASA_MEMORY_ENTRIES(.SASA_SKIP_1_0, 10, 0, SASA_COND_AND, 1)
	CREATE_SASA_MEMORY_ENTRIES(.SASA_SKIP_1_0, 10, 0, SASA_COND_AND, 1)
//---------- END AUTOMATICALLY ADDED CODE ----------//
