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
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	addi	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	li	a5,12
	sw	a5,-20(s0)
	li	a5,1
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	beq	a5,zero,.L5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	__mulsi3
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	__divsi3
	mv	a5,a0
	sw	a5,-32(s0)
	lw	a5,-20(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	__modsi3
	mv	a5,a0
	sw	a5,-36(s0)
	j	.L3
.L5:
	nop
.L3:
	li	a5,0
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	main, .-main
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
