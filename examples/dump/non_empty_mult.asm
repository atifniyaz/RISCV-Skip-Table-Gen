
../build/non_empty_mult.bin:     file format elf32-littleriscv


Disassembly of section .text:

00010074 <register_fini>:
   10074:	ffff0797          	auipc	a5,0xffff0
   10078:	f8c78793          	addi	a5,a5,-116 # 0 <register_fini-0x10074>
   1007c:	00078863          	beqz	a5,1008c <register_fini+0x18>
   10080:	00000517          	auipc	a0,0x0
   10084:	26450513          	addi	a0,a0,612 # 102e4 <__libc_fini_array>
   10088:	2140006f          	j	1029c <atexit>
   1008c:	00008067          	ret

00010090 <_start>:
   10090:	00002197          	auipc	gp,0x2
   10094:	e4018193          	addi	gp,gp,-448 # 11ed0 <__global_pointer$>
   10098:	c3418513          	addi	a0,gp,-972 # 11b04 <_edata>
   1009c:	c5018613          	addi	a2,gp,-944 # 11b20 <__BSS_END__>
   100a0:	40a60633          	sub	a2,a2,a0
   100a4:	00000593          	li	a1,0
   100a8:	330000ef          	jal	ra,103d8 <memset>
   100ac:	00000517          	auipc	a0,0x0
   100b0:	23850513          	addi	a0,a0,568 # 102e4 <__libc_fini_array>
   100b4:	1e8000ef          	jal	ra,1029c <atexit>
   100b8:	28c000ef          	jal	ra,10344 <__libc_init_array>
   100bc:	00012503          	lw	a0,0(sp)
   100c0:	00410593          	addi	a1,sp,4
   100c4:	00000613          	li	a2,0
   100c8:	07c000ef          	jal	ra,10144 <main>
   100cc:	1e40006f          	j	102b0 <exit>

000100d0 <__do_global_dtors_aux>:
   100d0:	c341c783          	lbu	a5,-972(gp) # 11b04 <_edata>
   100d4:	04079463          	bnez	a5,1011c <__do_global_dtors_aux+0x4c>
   100d8:	ffff0797          	auipc	a5,0xffff0
   100dc:	f2878793          	addi	a5,a5,-216 # 0 <register_fini-0x10074>
   100e0:	02078863          	beqz	a5,10110 <__do_global_dtors_aux+0x40>
   100e4:	ff010113          	addi	sp,sp,-16
   100e8:	00001517          	auipc	a0,0x1
   100ec:	5d450513          	addi	a0,a0,1492 # 116bc <__FRAME_END__>
   100f0:	00112623          	sw	ra,12(sp)
   100f4:	00000097          	auipc	ra,0x0
   100f8:	000000e7          	jalr	zero # 0 <register_fini-0x10074>
   100fc:	00c12083          	lw	ra,12(sp)
   10100:	00100793          	li	a5,1
   10104:	c2f18a23          	sb	a5,-972(gp) # 11b04 <_edata>
   10108:	01010113          	addi	sp,sp,16
   1010c:	00008067          	ret
   10110:	00100793          	li	a5,1
   10114:	c2f18a23          	sb	a5,-972(gp) # 11b04 <_edata>
   10118:	00008067          	ret
   1011c:	00008067          	ret

00010120 <frame_dummy>:
   10120:	ffff0797          	auipc	a5,0xffff0
   10124:	ee078793          	addi	a5,a5,-288 # 0 <register_fini-0x10074>
   10128:	00078c63          	beqz	a5,10140 <frame_dummy+0x20>
   1012c:	c3818593          	addi	a1,gp,-968 # 11b08 <object.5439>
   10130:	00001517          	auipc	a0,0x1
   10134:	58c50513          	addi	a0,a0,1420 # 116bc <__FRAME_END__>
   10138:	00000317          	auipc	t1,0x0
   1013c:	00000067          	jr	zero # 0 <register_fini-0x10074>
   10140:	00008067          	ret

00010144 <main>:
   10144:	fc010113          	addi	sp,sp,-64
   10148:	02112e23          	sw	ra,60(sp)
   1014c:	02812c23          	sw	s0,56(sp)
   10150:	04010413          	addi	s0,sp,64
   10154:	fca42623          	sw	a0,-52(s0)
   10158:	fcb42423          	sw	a1,-56(s0)
   1015c:	01400793          	li	a5,20
   10160:	fef42623          	sw	a5,-20(s0)
   10164:	00500793          	li	a5,5
   10168:	fef42423          	sw	a5,-24(s0)
   1016c:	fe842583          	lw	a1,-24(s0)
   10170:	fec42503          	lw	a0,-20(s0)
   10174:	050000ef          	jal	ra,101c4 <__mulsi3>
   10178:	00050793          	mv	a5,a0
   1017c:	fef42223          	sw	a5,-28(s0)
   10180:	fe842583          	lw	a1,-24(s0)
   10184:	fec42503          	lw	a0,-20(s0)
   10188:	060000ef          	jal	ra,101e8 <__divsi3>
   1018c:	00050793          	mv	a5,a0
   10190:	fef42023          	sw	a5,-32(s0)
   10194:	fec42783          	lw	a5,-20(s0)
   10198:	fe842583          	lw	a1,-24(s0)
   1019c:	00078513          	mv	a0,a5
   101a0:	0cc000ef          	jal	ra,1026c <__modsi3>
   101a4:	00050793          	mv	a5,a0
   101a8:	fcf42e23          	sw	a5,-36(s0)
   101ac:	00000793          	li	a5,0
   101b0:	00078513          	mv	a0,a5
   101b4:	03c12083          	lw	ra,60(sp)
   101b8:	03812403          	lw	s0,56(sp)
   101bc:	04010113          	addi	sp,sp,64
   101c0:	00008067          	ret

000101c4 <__mulsi3>:
   101c4:	00050613          	mv	a2,a0
   101c8:	00000513          	li	a0,0
   101cc:	0015f693          	andi	a3,a1,1
   101d0:	00068463          	beqz	a3,101d8 <__mulsi3+0x14>
   101d4:	00c50533          	add	a0,a0,a2
   101d8:	0015d593          	srli	a1,a1,0x1
   101dc:	00161613          	slli	a2,a2,0x1
   101e0:	fe0596e3          	bnez	a1,101cc <__mulsi3+0x8>
   101e4:	00008067          	ret

000101e8 <__divsi3>:
   101e8:	06054063          	bltz	a0,10248 <__umodsi3+0x10>
   101ec:	0605c663          	bltz	a1,10258 <__umodsi3+0x20>

000101f0 <__udivsi3>:
   101f0:	00058613          	mv	a2,a1
   101f4:	00050593          	mv	a1,a0
   101f8:	fff00513          	li	a0,-1
   101fc:	02060c63          	beqz	a2,10234 <__udivsi3+0x44>
   10200:	00100693          	li	a3,1
   10204:	00b67a63          	bgeu	a2,a1,10218 <__udivsi3+0x28>
   10208:	00c05863          	blez	a2,10218 <__udivsi3+0x28>
   1020c:	00161613          	slli	a2,a2,0x1
   10210:	00169693          	slli	a3,a3,0x1
   10214:	feb66ae3          	bltu	a2,a1,10208 <__udivsi3+0x18>
   10218:	00000513          	li	a0,0
   1021c:	00c5e663          	bltu	a1,a2,10228 <__udivsi3+0x38>
   10220:	40c585b3          	sub	a1,a1,a2
   10224:	00d56533          	or	a0,a0,a3
   10228:	0016d693          	srli	a3,a3,0x1
   1022c:	00165613          	srli	a2,a2,0x1
   10230:	fe0696e3          	bnez	a3,1021c <__udivsi3+0x2c>
   10234:	00008067          	ret

00010238 <__umodsi3>:
   10238:	00008293          	mv	t0,ra
   1023c:	fb5ff0ef          	jal	ra,101f0 <__udivsi3>
   10240:	00058513          	mv	a0,a1
   10244:	00028067          	jr	t0
   10248:	40a00533          	neg	a0,a0
   1024c:	0005d863          	bgez	a1,1025c <__umodsi3+0x24>
   10250:	40b005b3          	neg	a1,a1
   10254:	f9dff06f          	j	101f0 <__udivsi3>
   10258:	40b005b3          	neg	a1,a1
   1025c:	00008293          	mv	t0,ra
   10260:	f91ff0ef          	jal	ra,101f0 <__udivsi3>
   10264:	40a00533          	neg	a0,a0
   10268:	00028067          	jr	t0

0001026c <__modsi3>:
   1026c:	00008293          	mv	t0,ra
   10270:	0005ca63          	bltz	a1,10284 <__modsi3+0x18>
   10274:	00054c63          	bltz	a0,1028c <__modsi3+0x20>
   10278:	f79ff0ef          	jal	ra,101f0 <__udivsi3>
   1027c:	00058513          	mv	a0,a1
   10280:	00028067          	jr	t0
   10284:	40b005b3          	neg	a1,a1
   10288:	fe0558e3          	bgez	a0,10278 <__modsi3+0xc>
   1028c:	40a00533          	neg	a0,a0
   10290:	f61ff0ef          	jal	ra,101f0 <__udivsi3>
   10294:	40b00533          	neg	a0,a1
   10298:	00028067          	jr	t0

0001029c <atexit>:
   1029c:	00050593          	mv	a1,a0
   102a0:	00000693          	li	a3,0
   102a4:	00000613          	li	a2,0
   102a8:	00000513          	li	a0,0
   102ac:	2080006f          	j	104b4 <__register_exitproc>

000102b0 <exit>:
   102b0:	ff010113          	addi	sp,sp,-16
   102b4:	00000593          	li	a1,0
   102b8:	00812423          	sw	s0,8(sp)
   102bc:	00112623          	sw	ra,12(sp)
   102c0:	00050413          	mv	s0,a0
   102c4:	28c000ef          	jal	ra,10550 <__call_exitprocs>
   102c8:	c2818793          	addi	a5,gp,-984 # 11af8 <_global_impure_ptr>
   102cc:	0007a503          	lw	a0,0(a5)
   102d0:	03c52783          	lw	a5,60(a0)
   102d4:	00078463          	beqz	a5,102dc <exit+0x2c>
   102d8:	000780e7          	jalr	a5
   102dc:	00040513          	mv	a0,s0
   102e0:	38c000ef          	jal	ra,1066c <_exit>

000102e4 <__libc_fini_array>:
   102e4:	ff010113          	addi	sp,sp,-16
   102e8:	00812423          	sw	s0,8(sp)
   102ec:	00001797          	auipc	a5,0x1
   102f0:	3dc78793          	addi	a5,a5,988 # 116c8 <__init_array_end>
   102f4:	00001417          	auipc	s0,0x1
   102f8:	3d840413          	addi	s0,s0,984 # 116cc <__fini_array_end>
   102fc:	40f40433          	sub	s0,s0,a5
   10300:	00112623          	sw	ra,12(sp)
   10304:	00912223          	sw	s1,4(sp)
   10308:	40245413          	srai	s0,s0,0x2
   1030c:	02040263          	beqz	s0,10330 <__libc_fini_array+0x4c>
   10310:	00241493          	slli	s1,s0,0x2
   10314:	ffc48493          	addi	s1,s1,-4
   10318:	00f484b3          	add	s1,s1,a5
   1031c:	0004a783          	lw	a5,0(s1)
   10320:	fff40413          	addi	s0,s0,-1
   10324:	ffc48493          	addi	s1,s1,-4
   10328:	000780e7          	jalr	a5
   1032c:	fe0418e3          	bnez	s0,1031c <__libc_fini_array+0x38>
   10330:	00c12083          	lw	ra,12(sp)
   10334:	00812403          	lw	s0,8(sp)
   10338:	00412483          	lw	s1,4(sp)
   1033c:	01010113          	addi	sp,sp,16
   10340:	00008067          	ret

00010344 <__libc_init_array>:
   10344:	ff010113          	addi	sp,sp,-16
   10348:	00812423          	sw	s0,8(sp)
   1034c:	01212023          	sw	s2,0(sp)
   10350:	00001417          	auipc	s0,0x1
   10354:	37040413          	addi	s0,s0,880 # 116c0 <__init_array_start>
   10358:	00001917          	auipc	s2,0x1
   1035c:	36890913          	addi	s2,s2,872 # 116c0 <__init_array_start>
   10360:	40890933          	sub	s2,s2,s0
   10364:	00112623          	sw	ra,12(sp)
   10368:	00912223          	sw	s1,4(sp)
   1036c:	40295913          	srai	s2,s2,0x2
   10370:	00090e63          	beqz	s2,1038c <__libc_init_array+0x48>
   10374:	00000493          	li	s1,0
   10378:	00042783          	lw	a5,0(s0)
   1037c:	00148493          	addi	s1,s1,1
   10380:	00440413          	addi	s0,s0,4
   10384:	000780e7          	jalr	a5
   10388:	fe9918e3          	bne	s2,s1,10378 <__libc_init_array+0x34>
   1038c:	00001417          	auipc	s0,0x1
   10390:	33440413          	addi	s0,s0,820 # 116c0 <__init_array_start>
   10394:	00001917          	auipc	s2,0x1
   10398:	33490913          	addi	s2,s2,820 # 116c8 <__init_array_end>
   1039c:	40890933          	sub	s2,s2,s0
   103a0:	40295913          	srai	s2,s2,0x2
   103a4:	00090e63          	beqz	s2,103c0 <__libc_init_array+0x7c>
   103a8:	00000493          	li	s1,0
   103ac:	00042783          	lw	a5,0(s0)
   103b0:	00148493          	addi	s1,s1,1
   103b4:	00440413          	addi	s0,s0,4
   103b8:	000780e7          	jalr	a5
   103bc:	fe9918e3          	bne	s2,s1,103ac <__libc_init_array+0x68>
   103c0:	00c12083          	lw	ra,12(sp)
   103c4:	00812403          	lw	s0,8(sp)
   103c8:	00412483          	lw	s1,4(sp)
   103cc:	00012903          	lw	s2,0(sp)
   103d0:	01010113          	addi	sp,sp,16
   103d4:	00008067          	ret

000103d8 <memset>:
   103d8:	00f00313          	li	t1,15
   103dc:	00050713          	mv	a4,a0
   103e0:	02c37e63          	bgeu	t1,a2,1041c <memset+0x44>
   103e4:	00f77793          	andi	a5,a4,15
   103e8:	0a079063          	bnez	a5,10488 <memset+0xb0>
   103ec:	08059263          	bnez	a1,10470 <memset+0x98>
   103f0:	ff067693          	andi	a3,a2,-16
   103f4:	00f67613          	andi	a2,a2,15
   103f8:	00e686b3          	add	a3,a3,a4
   103fc:	00b72023          	sw	a1,0(a4)
   10400:	00b72223          	sw	a1,4(a4)
   10404:	00b72423          	sw	a1,8(a4)
   10408:	00b72623          	sw	a1,12(a4)
   1040c:	01070713          	addi	a4,a4,16
   10410:	fed766e3          	bltu	a4,a3,103fc <memset+0x24>
   10414:	00061463          	bnez	a2,1041c <memset+0x44>
   10418:	00008067          	ret
   1041c:	40c306b3          	sub	a3,t1,a2
   10420:	00269693          	slli	a3,a3,0x2
   10424:	00000297          	auipc	t0,0x0
   10428:	005686b3          	add	a3,a3,t0
   1042c:	00c68067          	jr	12(a3)
   10430:	00b70723          	sb	a1,14(a4)
   10434:	00b706a3          	sb	a1,13(a4)
   10438:	00b70623          	sb	a1,12(a4)
   1043c:	00b705a3          	sb	a1,11(a4)
   10440:	00b70523          	sb	a1,10(a4)
   10444:	00b704a3          	sb	a1,9(a4)
   10448:	00b70423          	sb	a1,8(a4)
   1044c:	00b703a3          	sb	a1,7(a4)
   10450:	00b70323          	sb	a1,6(a4)
   10454:	00b702a3          	sb	a1,5(a4)
   10458:	00b70223          	sb	a1,4(a4)
   1045c:	00b701a3          	sb	a1,3(a4)
   10460:	00b70123          	sb	a1,2(a4)
   10464:	00b700a3          	sb	a1,1(a4)
   10468:	00b70023          	sb	a1,0(a4)
   1046c:	00008067          	ret
   10470:	0ff5f593          	andi	a1,a1,255
   10474:	00859693          	slli	a3,a1,0x8
   10478:	00d5e5b3          	or	a1,a1,a3
   1047c:	01059693          	slli	a3,a1,0x10
   10480:	00d5e5b3          	or	a1,a1,a3
   10484:	f6dff06f          	j	103f0 <memset+0x18>
   10488:	00279693          	slli	a3,a5,0x2
   1048c:	00000297          	auipc	t0,0x0
   10490:	005686b3          	add	a3,a3,t0
   10494:	00008293          	mv	t0,ra
   10498:	fa0680e7          	jalr	-96(a3)
   1049c:	00028093          	mv	ra,t0
   104a0:	ff078793          	addi	a5,a5,-16
   104a4:	40f70733          	sub	a4,a4,a5
   104a8:	00f60633          	add	a2,a2,a5
   104ac:	f6c378e3          	bgeu	t1,a2,1041c <memset+0x44>
   104b0:	f3dff06f          	j	103ec <memset+0x14>

000104b4 <__register_exitproc>:
   104b4:	c2818793          	addi	a5,gp,-984 # 11af8 <_global_impure_ptr>
   104b8:	0007a703          	lw	a4,0(a5)
   104bc:	14872783          	lw	a5,328(a4)
   104c0:	04078c63          	beqz	a5,10518 <__register_exitproc+0x64>
   104c4:	0047a703          	lw	a4,4(a5)
   104c8:	01f00813          	li	a6,31
   104cc:	06e84e63          	blt	a6,a4,10548 <__register_exitproc+0x94>
   104d0:	00271813          	slli	a6,a4,0x2
   104d4:	02050663          	beqz	a0,10500 <__register_exitproc+0x4c>
   104d8:	01078333          	add	t1,a5,a6
   104dc:	08c32423          	sw	a2,136(t1) # 101c0 <main+0x7c>
   104e0:	1887a883          	lw	a7,392(a5)
   104e4:	00100613          	li	a2,1
   104e8:	00e61633          	sll	a2,a2,a4
   104ec:	00c8e8b3          	or	a7,a7,a2
   104f0:	1917a423          	sw	a7,392(a5)
   104f4:	10d32423          	sw	a3,264(t1)
   104f8:	00200693          	li	a3,2
   104fc:	02d50463          	beq	a0,a3,10524 <__register_exitproc+0x70>
   10500:	00170713          	addi	a4,a4,1
   10504:	00e7a223          	sw	a4,4(a5)
   10508:	010787b3          	add	a5,a5,a6
   1050c:	00b7a423          	sw	a1,8(a5)
   10510:	00000513          	li	a0,0
   10514:	00008067          	ret
   10518:	14c70793          	addi	a5,a4,332
   1051c:	14f72423          	sw	a5,328(a4)
   10520:	fa5ff06f          	j	104c4 <__register_exitproc+0x10>
   10524:	18c7a683          	lw	a3,396(a5)
   10528:	00170713          	addi	a4,a4,1
   1052c:	00e7a223          	sw	a4,4(a5)
   10530:	00c6e633          	or	a2,a3,a2
   10534:	18c7a623          	sw	a2,396(a5)
   10538:	010787b3          	add	a5,a5,a6
   1053c:	00b7a423          	sw	a1,8(a5)
   10540:	00000513          	li	a0,0
   10544:	00008067          	ret
   10548:	fff00513          	li	a0,-1
   1054c:	00008067          	ret

00010550 <__call_exitprocs>:
   10550:	fd010113          	addi	sp,sp,-48
   10554:	c2818793          	addi	a5,gp,-984 # 11af8 <_global_impure_ptr>
   10558:	01812423          	sw	s8,8(sp)
   1055c:	0007ac03          	lw	s8,0(a5)
   10560:	01312e23          	sw	s3,28(sp)
   10564:	01412c23          	sw	s4,24(sp)
   10568:	01512a23          	sw	s5,20(sp)
   1056c:	01612823          	sw	s6,16(sp)
   10570:	02112623          	sw	ra,44(sp)
   10574:	02812423          	sw	s0,40(sp)
   10578:	02912223          	sw	s1,36(sp)
   1057c:	03212023          	sw	s2,32(sp)
   10580:	01712623          	sw	s7,12(sp)
   10584:	00050a93          	mv	s5,a0
   10588:	00058b13          	mv	s6,a1
   1058c:	00100a13          	li	s4,1
   10590:	fff00993          	li	s3,-1
   10594:	148c2903          	lw	s2,328(s8)
   10598:	02090863          	beqz	s2,105c8 <__call_exitprocs+0x78>
   1059c:	00492483          	lw	s1,4(s2)
   105a0:	fff48413          	addi	s0,s1,-1
   105a4:	02044263          	bltz	s0,105c8 <__call_exitprocs+0x78>
   105a8:	00249493          	slli	s1,s1,0x2
   105ac:	009904b3          	add	s1,s2,s1
   105b0:	040b0463          	beqz	s6,105f8 <__call_exitprocs+0xa8>
   105b4:	1044a783          	lw	a5,260(s1)
   105b8:	05678063          	beq	a5,s6,105f8 <__call_exitprocs+0xa8>
   105bc:	fff40413          	addi	s0,s0,-1
   105c0:	ffc48493          	addi	s1,s1,-4
   105c4:	ff3416e3          	bne	s0,s3,105b0 <__call_exitprocs+0x60>
   105c8:	02c12083          	lw	ra,44(sp)
   105cc:	02812403          	lw	s0,40(sp)
   105d0:	02412483          	lw	s1,36(sp)
   105d4:	02012903          	lw	s2,32(sp)
   105d8:	01c12983          	lw	s3,28(sp)
   105dc:	01812a03          	lw	s4,24(sp)
   105e0:	01412a83          	lw	s5,20(sp)
   105e4:	01012b03          	lw	s6,16(sp)
   105e8:	00c12b83          	lw	s7,12(sp)
   105ec:	00812c03          	lw	s8,8(sp)
   105f0:	03010113          	addi	sp,sp,48
   105f4:	00008067          	ret
   105f8:	00492783          	lw	a5,4(s2)
   105fc:	0044a683          	lw	a3,4(s1)
   10600:	fff78793          	addi	a5,a5,-1
   10604:	04878a63          	beq	a5,s0,10658 <__call_exitprocs+0x108>
   10608:	0004a223          	sw	zero,4(s1)
   1060c:	fa0688e3          	beqz	a3,105bc <__call_exitprocs+0x6c>
   10610:	18892783          	lw	a5,392(s2)
   10614:	008a1733          	sll	a4,s4,s0
   10618:	00492b83          	lw	s7,4(s2)
   1061c:	00f777b3          	and	a5,a4,a5
   10620:	00079e63          	bnez	a5,1063c <__call_exitprocs+0xec>
   10624:	000680e7          	jalr	a3
   10628:	00492783          	lw	a5,4(s2)
   1062c:	f77794e3          	bne	a5,s7,10594 <__call_exitprocs+0x44>
   10630:	148c2783          	lw	a5,328(s8)
   10634:	f92784e3          	beq	a5,s2,105bc <__call_exitprocs+0x6c>
   10638:	f5dff06f          	j	10594 <__call_exitprocs+0x44>
   1063c:	18c92783          	lw	a5,396(s2)
   10640:	0844a583          	lw	a1,132(s1)
   10644:	00f77733          	and	a4,a4,a5
   10648:	00071c63          	bnez	a4,10660 <__call_exitprocs+0x110>
   1064c:	000a8513          	mv	a0,s5
   10650:	000680e7          	jalr	a3
   10654:	fd5ff06f          	j	10628 <__call_exitprocs+0xd8>
   10658:	00892223          	sw	s0,4(s2)
   1065c:	fb1ff06f          	j	1060c <__call_exitprocs+0xbc>
   10660:	00058513          	mv	a0,a1
   10664:	000680e7          	jalr	a3
   10668:	fc1ff06f          	j	10628 <__call_exitprocs+0xd8>

0001066c <_exit>:
   1066c:	00000593          	li	a1,0
   10670:	00000613          	li	a2,0
   10674:	00000693          	li	a3,0
   10678:	00000713          	li	a4,0
   1067c:	00000793          	li	a5,0
   10680:	05d00893          	li	a7,93
   10684:	00000073          	ecall
   10688:	00054463          	bltz	a0,10690 <_exit+0x24>
   1068c:	0000006f          	j	1068c <_exit+0x20>
   10690:	ff010113          	addi	sp,sp,-16
   10694:	00812423          	sw	s0,8(sp)
   10698:	00050413          	mv	s0,a0
   1069c:	00112623          	sw	ra,12(sp)
   106a0:	40800433          	neg	s0,s0
   106a4:	00c000ef          	jal	ra,106b0 <__errno>
   106a8:	00852023          	sw	s0,0(a0)
   106ac:	0000006f          	j	106ac <_exit+0x40>

000106b0 <__errno>:
   106b0:	c3018793          	addi	a5,gp,-976 # 11b00 <_impure_ptr>
   106b4:	0007a503          	lw	a0,0(a5)
   106b8:	00008067          	ret
