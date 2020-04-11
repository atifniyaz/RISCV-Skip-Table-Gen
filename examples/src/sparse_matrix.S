	.file	"sparse_matrix.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	__mulsi3
	.section	.rodata
	.align	2
.LC2:
	.string	"%02d "
	.globl	__modsi3
	.align	2
.LC0:
	.word	0
	.word	2
	.word	3
	.word	0
	.word	0
	.word	4
	.word	5
	.word	9
	.word	0
	.word	0
	.align	2
.LC1:
	.word	5
	.word	3
	.word	0
	.word	0
	.word	0
	.word	4
	.word	3
	.word	0
	.word	2
	.word	0
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-528
	sw	ra,524(sp)
	sw	s0,520(sp)
	sw	s1,516(sp)
	addi	s0,sp,528
	sw	a0,-516(s0)
	sw	a1,-520(s0)
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	lw	t3,0(a5)
	lw	t1,4(a5)
	lw	a7,8(a5)
	lw	a6,12(a5)
	lw	a0,16(a5)
	lw	a1,20(a5)
	lw	a2,24(a5)
	lw	a3,28(a5)
	lw	a4,32(a5)
	lw	a5,36(a5)
	sw	t3,-64(s0)
	sw	t1,-60(s0)
	sw	a7,-56(s0)
	sw	a6,-52(s0)
	sw	a0,-48(s0)
	sw	a1,-44(s0)
	sw	a2,-40(s0)
	sw	a3,-36(s0)
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	lui	a5,%hi(.LC1)
	addi	a5,a5,%lo(.LC1)
	lw	t3,0(a5)
	lw	t1,4(a5)
	lw	a7,8(a5)
	lw	a6,12(a5)
	lw	a0,16(a5)
	lw	a1,20(a5)
	lw	a2,24(a5)
	lw	a3,28(a5)
	lw	a4,32(a5)
	lw	a5,36(a5)
	sw	t3,-104(s0)
	sw	t1,-100(s0)
	sw	a7,-96(s0)
	sw	a6,-92(s0)
	sw	a0,-88(s0)
	sw	a1,-84(s0)
	sw	a2,-80(s0)
	sw	a3,-76(s0)
	sw	a4,-72(s0)
	sw	a5,-68(s0)
	addi	a5,s0,-504
	li	a4,400
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	memset
	sw	zero,-20(s0)
	j	.L2
.L5:
	sw	zero,-24(s0)
	j	.L3
.L4:
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	lw	a3,-48(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	lw	a2,-88(a5)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	lw	a5,-24(s0)
	add	s1,a4,a5
	mv	a1,a2
	mv	a0,a3
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	slli	a5,s1,2
	addi	a3,s0,-16
	add	a5,a3,a5
	sw	a4,-488(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a4,-24(s0)
	li	a5,9
	ble	a4,a5,.L4
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a4,-20(s0)
	li	a5,9
	ble	a4,a5,.L5
	sw	zero,-20(s0)
	j	.L6
.L8:
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	lw	a5,-488(a5)
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	lw	a5,-20(s0)
	li	a1,10
	mv	a0,a5
	call	__modsi3
	mv	a5,a0
	mv	a4,a5
	li	a5,9
	bne	a4,a5,.L7
	li	a0,10
	call	putchar
.L7:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L6:
	lw	a4,-20(s0)
	li	a5,99
	ble	a4,a5,.L8
	li	a5,0
	mv	a0,a5
	lw	ra,524(sp)
	lw	s0,520(sp)
	lw	s1,516(sp)
	addi	sp,sp,528
	jr	ra
	.size	main, .-main
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
