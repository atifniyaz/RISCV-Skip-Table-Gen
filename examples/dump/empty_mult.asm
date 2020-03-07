
build/empty_mult:     file format elf32-littleriscv


Disassembly of section .text:

00010074 <register_fini>:
   10074:	ffff0797          	auipc	a5,0xffff0
   10078:	f8c78793          	addi	a5,a5,-116 # 0 <register_fini-0x10074>
   1007c:	00078863          	beqz	a5,1008c <register_fini+0x18>
   10080:	00000517          	auipc	a0,0x0
   10084:	17c50513          	addi	a0,a0,380 # 101fc <__libc_fini_array>
   10088:	12c0006f          	j	101b4 <atexit>
   1008c:	00008067          	ret

00010090 <_start>:
   10090:	00002197          	auipc	gp,0x2
   10094:	d5818193          	addi	gp,gp,-680 # 11de8 <__global_pointer$>
   10098:	c3418513          	addi	a0,gp,-972 # 11a1c <_edata>
   1009c:	c5018613          	addi	a2,gp,-944 # 11a38 <__BSS_END__>
   100a0:	40a60633          	sub	a2,a2,a0
   100a4:	00000593          	li	a1,0
   100a8:	248000ef          	jal	ra,102f0 <memset>
   100ac:	00000517          	auipc	a0,0x0
   100b0:	15050513          	addi	a0,a0,336 # 101fc <__libc_fini_array>
   100b4:	100000ef          	jal	ra,101b4 <atexit>
   100b8:	1a4000ef          	jal	ra,1025c <__libc_init_array>
   100bc:	00012503          	lw	a0,0(sp)
   100c0:	00410593          	addi	a1,sp,4
   100c4:	00000613          	li	a2,0
   100c8:	07c000ef          	jal	ra,10144 <main>
   100cc:	0fc0006f          	j	101c8 <exit>

000100d0 <__do_global_dtors_aux>:
   100d0:	c341c783          	lbu	a5,-972(gp) # 11a1c <_edata>
   100d4:	04079463          	bnez	a5,1011c <__do_global_dtors_aux+0x4c>
   100d8:	ffff0797          	auipc	a5,0xffff0
   100dc:	f2878793          	addi	a5,a5,-216 # 0 <register_fini-0x10074>
   100e0:	02078863          	beqz	a5,10110 <__do_global_dtors_aux+0x40>
   100e4:	ff010113          	addi	sp,sp,-16
   100e8:	00001517          	auipc	a0,0x1
   100ec:	4ec50513          	addi	a0,a0,1260 # 115d4 <__FRAME_END__>
   100f0:	00112623          	sw	ra,12(sp)
   100f4:	00000097          	auipc	ra,0x0
   100f8:	000000e7          	jalr	zero # 0 <register_fini-0x10074>
   100fc:	00c12083          	lw	ra,12(sp)
   10100:	00100793          	li	a5,1
   10104:	c2f18a23          	sb	a5,-972(gp) # 11a1c <_edata>
   10108:	01010113          	addi	sp,sp,16
   1010c:	00008067          	ret
   10110:	00100793          	li	a5,1
   10114:	c2f18a23          	sb	a5,-972(gp) # 11a1c <_edata>
   10118:	00008067          	ret
   1011c:	00008067          	ret

00010120 <frame_dummy>:
   10120:	ffff0797          	auipc	a5,0xffff0
   10124:	ee078793          	addi	a5,a5,-288 # 0 <register_fini-0x10074>
   10128:	00078c63          	beqz	a5,10140 <frame_dummy+0x20>
   1012c:	c3818593          	addi	a1,gp,-968 # 11a20 <object.5439>
   10130:	00001517          	auipc	a0,0x1
   10134:	4a450513          	addi	a0,a0,1188 # 115d4 <__FRAME_END__>
   10138:	00000317          	auipc	t1,0x0
   1013c:	00000067          	jr	zero # 0 <register_fini-0x10074>
   10140:	00008067          	ret

00010144 <main>:
   10144:	fd010113          	addi	sp,sp,-48
   10148:	02112623          	sw	ra,44(sp)
   1014c:	02812423          	sw	s0,40(sp)
   10150:	03010413          	addi	s0,sp,48
   10154:	fca42e23          	sw	a0,-36(s0)
   10158:	fcb42c23          	sw	a1,-40(s0)
   1015c:	fe042623          	sw	zero,-20(s0)
   10160:	fe042423          	sw	zero,-24(s0)
   10164:	fe842583          	lw	a1,-24(s0)
   10168:	fec42503          	lw	a0,-20(s0)
   1016c:	024000ef          	jal	ra,10190 <__mulsi3>
   10170:	00050793          	mv	a5,a0
   10174:	fef42223          	sw	a5,-28(s0)
   10178:	00000793          	li	a5,0
   1017c:	00078513          	mv	a0,a5
   10180:	02c12083          	lw	ra,44(sp)
   10184:	02812403          	lw	s0,40(sp)
   10188:	03010113          	addi	sp,sp,48
   1018c:	00008067          	ret

00010190 <__mulsi3>:
   10190:	00050613          	mv	a2,a0
   10194:	00000513          	li	a0,0
   10198:	0015f693          	andi	a3,a1,1
   1019c:	00068463          	beqz	a3,101a4 <__mulsi3+0x14>
   101a0:	00c50533          	add	a0,a0,a2
   101a4:	0015d593          	srli	a1,a1,0x1
   101a8:	00161613          	slli	a2,a2,0x1
   101ac:	fe0596e3          	bnez	a1,10198 <__mulsi3+0x8>
   101b0:	00008067          	ret

000101b4 <atexit>:
   101b4:	00050593          	mv	a1,a0
   101b8:	00000693          	li	a3,0
   101bc:	00000613          	li	a2,0
   101c0:	00000513          	li	a0,0
   101c4:	2080006f          	j	103cc <__register_exitproc>

000101c8 <exit>:
   101c8:	ff010113          	addi	sp,sp,-16
   101cc:	00000593          	li	a1,0
   101d0:	00812423          	sw	s0,8(sp)
   101d4:	00112623          	sw	ra,12(sp)
   101d8:	00050413          	mv	s0,a0
   101dc:	28c000ef          	jal	ra,10468 <__call_exitprocs>
   101e0:	c2818793          	addi	a5,gp,-984 # 11a10 <_global_impure_ptr>
   101e4:	0007a503          	lw	a0,0(a5)
   101e8:	03c52783          	lw	a5,60(a0)
   101ec:	00078463          	beqz	a5,101f4 <exit+0x2c>
   101f0:	000780e7          	jalr	a5
   101f4:	00040513          	mv	a0,s0
   101f8:	38c000ef          	jal	ra,10584 <_exit>

000101fc <__libc_fini_array>:
   101fc:	ff010113          	addi	sp,sp,-16
   10200:	00812423          	sw	s0,8(sp)
   10204:	00001797          	auipc	a5,0x1
   10208:	3dc78793          	addi	a5,a5,988 # 115e0 <__init_array_end>
   1020c:	00001417          	auipc	s0,0x1
   10210:	3d840413          	addi	s0,s0,984 # 115e4 <__fini_array_end>
   10214:	40f40433          	sub	s0,s0,a5
   10218:	00112623          	sw	ra,12(sp)
   1021c:	00912223          	sw	s1,4(sp)
   10220:	40245413          	srai	s0,s0,0x2
   10224:	02040263          	beqz	s0,10248 <__libc_fini_array+0x4c>
   10228:	00241493          	slli	s1,s0,0x2
   1022c:	ffc48493          	addi	s1,s1,-4
   10230:	00f484b3          	add	s1,s1,a5
   10234:	0004a783          	lw	a5,0(s1)
   10238:	fff40413          	addi	s0,s0,-1
   1023c:	ffc48493          	addi	s1,s1,-4
   10240:	000780e7          	jalr	a5
   10244:	fe0418e3          	bnez	s0,10234 <__libc_fini_array+0x38>
   10248:	00c12083          	lw	ra,12(sp)
   1024c:	00812403          	lw	s0,8(sp)
   10250:	00412483          	lw	s1,4(sp)
   10254:	01010113          	addi	sp,sp,16
   10258:	00008067          	ret

0001025c <__libc_init_array>:
   1025c:	ff010113          	addi	sp,sp,-16
   10260:	00812423          	sw	s0,8(sp)
   10264:	01212023          	sw	s2,0(sp)
   10268:	00001417          	auipc	s0,0x1
   1026c:	37040413          	addi	s0,s0,880 # 115d8 <__init_array_start>
   10270:	00001917          	auipc	s2,0x1
   10274:	36890913          	addi	s2,s2,872 # 115d8 <__init_array_start>
   10278:	40890933          	sub	s2,s2,s0
   1027c:	00112623          	sw	ra,12(sp)
   10280:	00912223          	sw	s1,4(sp)
   10284:	40295913          	srai	s2,s2,0x2
   10288:	00090e63          	beqz	s2,102a4 <__libc_init_array+0x48>
   1028c:	00000493          	li	s1,0
   10290:	00042783          	lw	a5,0(s0)
   10294:	00148493          	addi	s1,s1,1
   10298:	00440413          	addi	s0,s0,4
   1029c:	000780e7          	jalr	a5
   102a0:	fe9918e3          	bne	s2,s1,10290 <__libc_init_array+0x34>
   102a4:	00001417          	auipc	s0,0x1
   102a8:	33440413          	addi	s0,s0,820 # 115d8 <__init_array_start>
   102ac:	00001917          	auipc	s2,0x1
   102b0:	33490913          	addi	s2,s2,820 # 115e0 <__init_array_end>
   102b4:	40890933          	sub	s2,s2,s0
   102b8:	40295913          	srai	s2,s2,0x2
   102bc:	00090e63          	beqz	s2,102d8 <__libc_init_array+0x7c>
   102c0:	00000493          	li	s1,0
   102c4:	00042783          	lw	a5,0(s0)
   102c8:	00148493          	addi	s1,s1,1
   102cc:	00440413          	addi	s0,s0,4
   102d0:	000780e7          	jalr	a5
   102d4:	fe9918e3          	bne	s2,s1,102c4 <__libc_init_array+0x68>
   102d8:	00c12083          	lw	ra,12(sp)
   102dc:	00812403          	lw	s0,8(sp)
   102e0:	00412483          	lw	s1,4(sp)
   102e4:	00012903          	lw	s2,0(sp)
   102e8:	01010113          	addi	sp,sp,16
   102ec:	00008067          	ret

000102f0 <memset>:
   102f0:	00f00313          	li	t1,15
   102f4:	00050713          	mv	a4,a0
   102f8:	02c37e63          	bgeu	t1,a2,10334 <memset+0x44>
   102fc:	00f77793          	andi	a5,a4,15
   10300:	0a079063          	bnez	a5,103a0 <memset+0xb0>
   10304:	08059263          	bnez	a1,10388 <memset+0x98>
   10308:	ff067693          	andi	a3,a2,-16
   1030c:	00f67613          	andi	a2,a2,15
   10310:	00e686b3          	add	a3,a3,a4
   10314:	00b72023          	sw	a1,0(a4)
   10318:	00b72223          	sw	a1,4(a4)
   1031c:	00b72423          	sw	a1,8(a4)
   10320:	00b72623          	sw	a1,12(a4)
   10324:	01070713          	addi	a4,a4,16
   10328:	fed766e3          	bltu	a4,a3,10314 <memset+0x24>
   1032c:	00061463          	bnez	a2,10334 <memset+0x44>
   10330:	00008067          	ret
   10334:	40c306b3          	sub	a3,t1,a2
   10338:	00269693          	slli	a3,a3,0x2
   1033c:	00000297          	auipc	t0,0x0
   10340:	005686b3          	add	a3,a3,t0
   10344:	00c68067          	jr	12(a3)
   10348:	00b70723          	sb	a1,14(a4)
   1034c:	00b706a3          	sb	a1,13(a4)
   10350:	00b70623          	sb	a1,12(a4)
   10354:	00b705a3          	sb	a1,11(a4)
   10358:	00b70523          	sb	a1,10(a4)
   1035c:	00b704a3          	sb	a1,9(a4)
   10360:	00b70423          	sb	a1,8(a4)
   10364:	00b703a3          	sb	a1,7(a4)
   10368:	00b70323          	sb	a1,6(a4)
   1036c:	00b702a3          	sb	a1,5(a4)
   10370:	00b70223          	sb	a1,4(a4)
   10374:	00b701a3          	sb	a1,3(a4)
   10378:	00b70123          	sb	a1,2(a4)
   1037c:	00b700a3          	sb	a1,1(a4)
   10380:	00b70023          	sb	a1,0(a4)
   10384:	00008067          	ret
   10388:	0ff5f593          	andi	a1,a1,255
   1038c:	00859693          	slli	a3,a1,0x8
   10390:	00d5e5b3          	or	a1,a1,a3
   10394:	01059693          	slli	a3,a1,0x10
   10398:	00d5e5b3          	or	a1,a1,a3
   1039c:	f6dff06f          	j	10308 <memset+0x18>
   103a0:	00279693          	slli	a3,a5,0x2
   103a4:	00000297          	auipc	t0,0x0
   103a8:	005686b3          	add	a3,a3,t0
   103ac:	00008293          	mv	t0,ra
   103b0:	fa0680e7          	jalr	-96(a3)
   103b4:	00028093          	mv	ra,t0
   103b8:	ff078793          	addi	a5,a5,-16
   103bc:	40f70733          	sub	a4,a4,a5
   103c0:	00f60633          	add	a2,a2,a5
   103c4:	f6c378e3          	bgeu	t1,a2,10334 <memset+0x44>
   103c8:	f3dff06f          	j	10304 <memset+0x14>

000103cc <__register_exitproc>:
   103cc:	c2818793          	addi	a5,gp,-984 # 11a10 <_global_impure_ptr>
   103d0:	0007a703          	lw	a4,0(a5)
   103d4:	14872783          	lw	a5,328(a4)
   103d8:	04078c63          	beqz	a5,10430 <__register_exitproc+0x64>
   103dc:	0047a703          	lw	a4,4(a5)
   103e0:	01f00813          	li	a6,31
   103e4:	06e84e63          	blt	a6,a4,10460 <__register_exitproc+0x94>
   103e8:	00271813          	slli	a6,a4,0x2
   103ec:	02050663          	beqz	a0,10418 <__register_exitproc+0x4c>
   103f0:	01078333          	add	t1,a5,a6
   103f4:	08c32423          	sw	a2,136(t1) # 101c0 <atexit+0xc>
   103f8:	1887a883          	lw	a7,392(a5)
   103fc:	00100613          	li	a2,1
   10400:	00e61633          	sll	a2,a2,a4
   10404:	00c8e8b3          	or	a7,a7,a2
   10408:	1917a423          	sw	a7,392(a5)
   1040c:	10d32423          	sw	a3,264(t1)
   10410:	00200693          	li	a3,2
   10414:	02d50463          	beq	a0,a3,1043c <__register_exitproc+0x70>
   10418:	00170713          	addi	a4,a4,1
   1041c:	00e7a223          	sw	a4,4(a5)
   10420:	010787b3          	add	a5,a5,a6
   10424:	00b7a423          	sw	a1,8(a5)
   10428:	00000513          	li	a0,0
   1042c:	00008067          	ret
   10430:	14c70793          	addi	a5,a4,332
   10434:	14f72423          	sw	a5,328(a4)
   10438:	fa5ff06f          	j	103dc <__register_exitproc+0x10>
   1043c:	18c7a683          	lw	a3,396(a5)
   10440:	00170713          	addi	a4,a4,1
   10444:	00e7a223          	sw	a4,4(a5)
   10448:	00c6e633          	or	a2,a3,a2
   1044c:	18c7a623          	sw	a2,396(a5)
   10450:	010787b3          	add	a5,a5,a6
   10454:	00b7a423          	sw	a1,8(a5)
   10458:	00000513          	li	a0,0
   1045c:	00008067          	ret
   10460:	fff00513          	li	a0,-1
   10464:	00008067          	ret

00010468 <__call_exitprocs>:
   10468:	fd010113          	addi	sp,sp,-48
   1046c:	c2818793          	addi	a5,gp,-984 # 11a10 <_global_impure_ptr>
   10470:	01812423          	sw	s8,8(sp)
   10474:	0007ac03          	lw	s8,0(a5)
   10478:	01312e23          	sw	s3,28(sp)
   1047c:	01412c23          	sw	s4,24(sp)
   10480:	01512a23          	sw	s5,20(sp)
   10484:	01612823          	sw	s6,16(sp)
   10488:	02112623          	sw	ra,44(sp)
   1048c:	02812423          	sw	s0,40(sp)
   10490:	02912223          	sw	s1,36(sp)
   10494:	03212023          	sw	s2,32(sp)
   10498:	01712623          	sw	s7,12(sp)
   1049c:	00050a93          	mv	s5,a0
   104a0:	00058b13          	mv	s6,a1
   104a4:	00100a13          	li	s4,1
   104a8:	fff00993          	li	s3,-1
   104ac:	148c2903          	lw	s2,328(s8)
   104b0:	02090863          	beqz	s2,104e0 <__call_exitprocs+0x78>
   104b4:	00492483          	lw	s1,4(s2)
   104b8:	fff48413          	addi	s0,s1,-1
   104bc:	02044263          	bltz	s0,104e0 <__call_exitprocs+0x78>
   104c0:	00249493          	slli	s1,s1,0x2
   104c4:	009904b3          	add	s1,s2,s1
   104c8:	040b0463          	beqz	s6,10510 <__call_exitprocs+0xa8>
   104cc:	1044a783          	lw	a5,260(s1)
   104d0:	05678063          	beq	a5,s6,10510 <__call_exitprocs+0xa8>
   104d4:	fff40413          	addi	s0,s0,-1
   104d8:	ffc48493          	addi	s1,s1,-4
   104dc:	ff3416e3          	bne	s0,s3,104c8 <__call_exitprocs+0x60>
   104e0:	02c12083          	lw	ra,44(sp)
   104e4:	02812403          	lw	s0,40(sp)
   104e8:	02412483          	lw	s1,36(sp)
   104ec:	02012903          	lw	s2,32(sp)
   104f0:	01c12983          	lw	s3,28(sp)
   104f4:	01812a03          	lw	s4,24(sp)
   104f8:	01412a83          	lw	s5,20(sp)
   104fc:	01012b03          	lw	s6,16(sp)
   10500:	00c12b83          	lw	s7,12(sp)
   10504:	00812c03          	lw	s8,8(sp)
   10508:	03010113          	addi	sp,sp,48
   1050c:	00008067          	ret
   10510:	00492783          	lw	a5,4(s2)
   10514:	0044a683          	lw	a3,4(s1)
   10518:	fff78793          	addi	a5,a5,-1
   1051c:	04878a63          	beq	a5,s0,10570 <__call_exitprocs+0x108>
   10520:	0004a223          	sw	zero,4(s1)
   10524:	fa0688e3          	beqz	a3,104d4 <__call_exitprocs+0x6c>
   10528:	18892783          	lw	a5,392(s2)
   1052c:	008a1733          	sll	a4,s4,s0
   10530:	00492b83          	lw	s7,4(s2)
   10534:	00f777b3          	and	a5,a4,a5
   10538:	00079e63          	bnez	a5,10554 <__call_exitprocs+0xec>
   1053c:	000680e7          	jalr	a3
   10540:	00492783          	lw	a5,4(s2)
   10544:	f77794e3          	bne	a5,s7,104ac <__call_exitprocs+0x44>
   10548:	148c2783          	lw	a5,328(s8)
   1054c:	f92784e3          	beq	a5,s2,104d4 <__call_exitprocs+0x6c>
   10550:	f5dff06f          	j	104ac <__call_exitprocs+0x44>
   10554:	18c92783          	lw	a5,396(s2)
   10558:	0844a583          	lw	a1,132(s1)
   1055c:	00f77733          	and	a4,a4,a5
   10560:	00071c63          	bnez	a4,10578 <__call_exitprocs+0x110>
   10564:	000a8513          	mv	a0,s5
   10568:	000680e7          	jalr	a3
   1056c:	fd5ff06f          	j	10540 <__call_exitprocs+0xd8>
   10570:	00892223          	sw	s0,4(s2)
   10574:	fb1ff06f          	j	10524 <__call_exitprocs+0xbc>
   10578:	00058513          	mv	a0,a1
   1057c:	000680e7          	jalr	a3
   10580:	fc1ff06f          	j	10540 <__call_exitprocs+0xd8>

00010584 <_exit>:
   10584:	00000593          	li	a1,0
   10588:	00000613          	li	a2,0
   1058c:	00000693          	li	a3,0
   10590:	00000713          	li	a4,0
   10594:	00000793          	li	a5,0
   10598:	05d00893          	li	a7,93
   1059c:	00000073          	ecall
   105a0:	00054463          	bltz	a0,105a8 <_exit+0x24>
   105a4:	0000006f          	j	105a4 <_exit+0x20>
   105a8:	ff010113          	addi	sp,sp,-16
   105ac:	00812423          	sw	s0,8(sp)
   105b0:	00050413          	mv	s0,a0
   105b4:	00112623          	sw	ra,12(sp)
   105b8:	40800433          	neg	s0,s0
   105bc:	00c000ef          	jal	ra,105c8 <__errno>
   105c0:	00852023          	sw	s0,0(a0)
   105c4:	0000006f          	j	105c4 <_exit+0x40>

000105c8 <__errno>:
   105c8:	c3018793          	addi	a5,gp,-976 # 11a18 <_impure_ptr>
   105cc:	0007a503          	lw	a0,0(a5)
   105d0:	00008067          	ret
