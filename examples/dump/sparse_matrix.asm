
build/sparse_matrix:     file format elf32-littleriscv


Disassembly of section .text:

00010074 <register_fini>:
   10074:	ffff0797          	auipc	a5,0xffff0
   10078:	f8c78793          	addi	a5,a5,-116 # 0 <register_fini-0x10074>
   1007c:	00078863          	beqz	a5,1008c <register_fini+0x18>
   10080:	00000517          	auipc	a0,0x0
   10084:	3fc50513          	addi	a0,a0,1020 # 1047c <__libc_fini_array>
   10088:	3ac0006f          	j	10434 <atexit>
   1008c:	00008067          	ret

00010090 <_start>:
   10090:	00017197          	auipc	gp,0x17
   10094:	83018193          	addi	gp,gp,-2000 # 268c0 <__global_pointer$>
   10098:	1cc18513          	addi	a0,gp,460 # 26a8c <_edata>
   1009c:	22818613          	addi	a2,gp,552 # 26ae8 <__BSS_END__>
   100a0:	40a60633          	sub	a2,a2,a0
   100a4:	00000593          	li	a1,0
   100a8:	4c8000ef          	jal	ra,10570 <memset>
   100ac:	00000517          	auipc	a0,0x0
   100b0:	3d050513          	addi	a0,a0,976 # 1047c <__libc_fini_array>
   100b4:	380000ef          	jal	ra,10434 <atexit>
   100b8:	424000ef          	jal	ra,104dc <__libc_init_array>
   100bc:	00012503          	lw	a0,0(sp)
   100c0:	00410593          	addi	a1,sp,4
   100c4:	00000613          	li	a2,0
   100c8:	07c000ef          	jal	ra,10144 <main>
   100cc:	37c0006f          	j	10448 <exit>

000100d0 <__do_global_dtors_aux>:
   100d0:	1e01c783          	lbu	a5,480(gp) # 26aa0 <completed.5434>
   100d4:	04079463          	bnez	a5,1011c <__do_global_dtors_aux+0x4c>
   100d8:	ffff0797          	auipc	a5,0xffff0
   100dc:	f2878793          	addi	a5,a5,-216 # 0 <register_fini-0x10074>
   100e0:	02078863          	beqz	a5,10110 <__do_global_dtors_aux+0x40>
   100e4:	ff010113          	addi	sp,sp,-16
   100e8:	00016517          	auipc	a0,0x16
   100ec:	f1850513          	addi	a0,a0,-232 # 26000 <__EH_FRAME_BEGIN__>
   100f0:	00112623          	sw	ra,12(sp)
   100f4:	00000097          	auipc	ra,0x0
   100f8:	000000e7          	jalr	zero # 0 <register_fini-0x10074>
   100fc:	00c12083          	lw	ra,12(sp)
   10100:	00100793          	li	a5,1
   10104:	1ef18023          	sb	a5,480(gp) # 26aa0 <completed.5434>
   10108:	01010113          	addi	sp,sp,16
   1010c:	00008067          	ret
   10110:	00100793          	li	a5,1
   10114:	1ef18023          	sb	a5,480(gp) # 26aa0 <completed.5434>
   10118:	00008067          	ret
   1011c:	00008067          	ret

00010120 <frame_dummy>:
   10120:	ffff0797          	auipc	a5,0xffff0
   10124:	ee078793          	addi	a5,a5,-288 # 0 <register_fini-0x10074>
   10128:	00078c63          	beqz	a5,10140 <frame_dummy+0x20>
   1012c:	1e418593          	addi	a1,gp,484 # 26aa4 <object.5439>
   10130:	00016517          	auipc	a0,0x16
   10134:	ed050513          	addi	a0,a0,-304 # 26000 <__EH_FRAME_BEGIN__>
   10138:	00000317          	auipc	t1,0x0
   1013c:	00000067          	jr	zero # 0 <register_fini-0x10074>
   10140:	00008067          	ret

00010144 <main>:
   10144:	df010113          	addi	sp,sp,-528
   10148:	20112623          	sw	ra,524(sp)
   1014c:	20812423          	sw	s0,520(sp)
   10150:	20912223          	sw	s1,516(sp)
   10154:	21010413          	addi	s0,sp,528
   10158:	dea42e23          	sw	a0,-516(s0)
   1015c:	deb42c23          	sw	a1,-520(s0)
   10160:	000257b7          	lui	a5,0x25
   10164:	bd878793          	addi	a5,a5,-1064 # 24bd8 <__clzsi2+0x54>
   10168:	0007ae03          	lw	t3,0(a5)
   1016c:	0047a303          	lw	t1,4(a5)
   10170:	0087a883          	lw	a7,8(a5)
   10174:	00c7a803          	lw	a6,12(a5)
   10178:	0107a503          	lw	a0,16(a5)
   1017c:	0147a583          	lw	a1,20(a5)
   10180:	0187a603          	lw	a2,24(a5)
   10184:	01c7a683          	lw	a3,28(a5)
   10188:	0207a703          	lw	a4,32(a5)
   1018c:	0247a783          	lw	a5,36(a5)
   10190:	fdc42023          	sw	t3,-64(s0)
   10194:	fc642223          	sw	t1,-60(s0)
   10198:	fd142423          	sw	a7,-56(s0)
   1019c:	fd042623          	sw	a6,-52(s0)
   101a0:	fca42823          	sw	a0,-48(s0)
   101a4:	fcb42a23          	sw	a1,-44(s0)
   101a8:	fcc42c23          	sw	a2,-40(s0)
   101ac:	fcd42e23          	sw	a3,-36(s0)
   101b0:	fee42023          	sw	a4,-32(s0)
   101b4:	fef42223          	sw	a5,-28(s0)
   101b8:	000257b7          	lui	a5,0x25
   101bc:	c0078793          	addi	a5,a5,-1024 # 24c00 <__clzsi2+0x7c>
   101c0:	0007ae03          	lw	t3,0(a5)
   101c4:	0047a303          	lw	t1,4(a5)
   101c8:	0087a883          	lw	a7,8(a5)
   101cc:	00c7a803          	lw	a6,12(a5)
   101d0:	0107a503          	lw	a0,16(a5)
   101d4:	0147a583          	lw	a1,20(a5)
   101d8:	0187a603          	lw	a2,24(a5)
   101dc:	01c7a683          	lw	a3,28(a5)
   101e0:	0207a703          	lw	a4,32(a5)
   101e4:	0247a783          	lw	a5,36(a5)
   101e8:	f9c42c23          	sw	t3,-104(s0)
   101ec:	f8642e23          	sw	t1,-100(s0)
   101f0:	fb142023          	sw	a7,-96(s0)
   101f4:	fb042223          	sw	a6,-92(s0)
   101f8:	faa42423          	sw	a0,-88(s0)
   101fc:	fab42623          	sw	a1,-84(s0)
   10200:	fac42823          	sw	a2,-80(s0)
   10204:	fad42a23          	sw	a3,-76(s0)
   10208:	fae42c23          	sw	a4,-72(s0)
   1020c:	faf42e23          	sw	a5,-68(s0)
   10210:	e0840793          	addi	a5,s0,-504
   10214:	19000713          	li	a4,400
   10218:	00070613          	mv	a2,a4
   1021c:	00000593          	li	a1,0
   10220:	00078513          	mv	a0,a5
   10224:	34c000ef          	jal	ra,10570 <memset>
   10228:	fe042623          	sw	zero,-20(s0)
   1022c:	09c0006f          	j	102c8 <main+0x184>
   10230:	fe042423          	sw	zero,-24(s0)
   10234:	07c0006f          	j	102b0 <main+0x16c>
   10238:	fec42783          	lw	a5,-20(s0)
   1023c:	00279793          	slli	a5,a5,0x2
   10240:	ff040713          	addi	a4,s0,-16
   10244:	00f707b3          	add	a5,a4,a5
   10248:	fd07a683          	lw	a3,-48(a5)
   1024c:	fe842783          	lw	a5,-24(s0)
   10250:	00279793          	slli	a5,a5,0x2
   10254:	ff040713          	addi	a4,s0,-16
   10258:	00f707b3          	add	a5,a4,a5
   1025c:	fa87a603          	lw	a2,-88(a5)
   10260:	fec42703          	lw	a4,-20(s0)
   10264:	00070793          	mv	a5,a4
   10268:	00279793          	slli	a5,a5,0x2
   1026c:	00e787b3          	add	a5,a5,a4
   10270:	00179793          	slli	a5,a5,0x1
   10274:	00078713          	mv	a4,a5
   10278:	fe842783          	lw	a5,-24(s0)
   1027c:	00f704b3          	add	s1,a4,a5
   10280:	00060593          	mv	a1,a2
   10284:	00068513          	mv	a0,a3
   10288:	0d4000ef          	jal	ra,1035c <__mulsi3>
   1028c:	00050793          	mv	a5,a0
   10290:	00078713          	mv	a4,a5
   10294:	00249793          	slli	a5,s1,0x2
   10298:	ff040693          	addi	a3,s0,-16
   1029c:	00f687b3          	add	a5,a3,a5
   102a0:	e0e7ac23          	sw	a4,-488(a5)
   102a4:	fe842783          	lw	a5,-24(s0)
   102a8:	00178793          	addi	a5,a5,1
   102ac:	fef42423          	sw	a5,-24(s0)
   102b0:	fe842703          	lw	a4,-24(s0)
   102b4:	00900793          	li	a5,9
   102b8:	f8e7d0e3          	bge	a5,a4,10238 <main+0xf4>
   102bc:	fec42783          	lw	a5,-20(s0)
   102c0:	00178793          	addi	a5,a5,1
   102c4:	fef42623          	sw	a5,-20(s0)
   102c8:	fec42703          	lw	a4,-20(s0)
   102cc:	00900793          	li	a5,9
   102d0:	f6e7d0e3          	bge	a5,a4,10230 <main+0xec>
   102d4:	fe042623          	sw	zero,-20(s0)
   102d8:	05c0006f          	j	10334 <main+0x1f0>
   102dc:	fec42783          	lw	a5,-20(s0)
   102e0:	00279793          	slli	a5,a5,0x2
   102e4:	ff040713          	addi	a4,s0,-16
   102e8:	00f707b3          	add	a5,a4,a5
   102ec:	e187a783          	lw	a5,-488(a5)
   102f0:	00078593          	mv	a1,a5
   102f4:	000257b7          	lui	a5,0x25
   102f8:	bd078513          	addi	a0,a5,-1072 # 24bd0 <__clzsi2+0x4c>
   102fc:	394000ef          	jal	ra,10690 <printf>
   10300:	fec42783          	lw	a5,-20(s0)
   10304:	00a00593          	li	a1,10
   10308:	00078513          	mv	a0,a5
   1030c:	0f8000ef          	jal	ra,10404 <__modsi3>
   10310:	00050793          	mv	a5,a0
   10314:	00078713          	mv	a4,a5
   10318:	00900793          	li	a5,9
   1031c:	00f71663          	bne	a4,a5,10328 <main+0x1e4>
   10320:	00a00513          	li	a0,10
   10324:	3c8000ef          	jal	ra,106ec <putchar>
   10328:	fec42783          	lw	a5,-20(s0)
   1032c:	00178793          	addi	a5,a5,1
   10330:	fef42623          	sw	a5,-20(s0)
   10334:	fec42703          	lw	a4,-20(s0)
   10338:	06300793          	li	a5,99
   1033c:	fae7d0e3          	bge	a5,a4,102dc <main+0x198>
   10340:	00000793          	li	a5,0
   10344:	00078513          	mv	a0,a5
   10348:	20c12083          	lw	ra,524(sp)
   1034c:	20812403          	lw	s0,520(sp)
   10350:	20412483          	lw	s1,516(sp)
   10354:	21010113          	addi	sp,sp,528
   10358:	00008067          	ret

0001035c <__mulsi3>:
   1035c:	00050613          	mv	a2,a0
   10360:	00000513          	li	a0,0
   10364:	0015f693          	andi	a3,a1,1
   10368:	00068463          	beqz	a3,10370 <__mulsi3+0x14>
   1036c:	00c50533          	add	a0,a0,a2
   10370:	0015d593          	srli	a1,a1,0x1
   10374:	00161613          	slli	a2,a2,0x1
   10378:	fe0596e3          	bnez	a1,10364 <__mulsi3+0x8>
   1037c:	00008067          	ret

00010380 <__divsi3>:
   10380:	06054063          	bltz	a0,103e0 <__umodsi3+0x10>
   10384:	0605c663          	bltz	a1,103f0 <__umodsi3+0x20>

00010388 <__udivsi3>:
   10388:	00058613          	mv	a2,a1
   1038c:	00050593          	mv	a1,a0
   10390:	fff00513          	li	a0,-1
   10394:	02060c63          	beqz	a2,103cc <__udivsi3+0x44>
   10398:	00100693          	li	a3,1
   1039c:	00b67a63          	bgeu	a2,a1,103b0 <__udivsi3+0x28>
   103a0:	00c05863          	blez	a2,103b0 <__udivsi3+0x28>
   103a4:	00161613          	slli	a2,a2,0x1
   103a8:	00169693          	slli	a3,a3,0x1
   103ac:	feb66ae3          	bltu	a2,a1,103a0 <__udivsi3+0x18>
   103b0:	00000513          	li	a0,0
   103b4:	00c5e663          	bltu	a1,a2,103c0 <__udivsi3+0x38>
   103b8:	40c585b3          	sub	a1,a1,a2
   103bc:	00d56533          	or	a0,a0,a3
   103c0:	0016d693          	srli	a3,a3,0x1
   103c4:	00165613          	srli	a2,a2,0x1
   103c8:	fe0696e3          	bnez	a3,103b4 <__udivsi3+0x2c>
   103cc:	00008067          	ret

000103d0 <__umodsi3>:
   103d0:	00008293          	mv	t0,ra
   103d4:	fb5ff0ef          	jal	ra,10388 <__udivsi3>
   103d8:	00058513          	mv	a0,a1
   103dc:	00028067          	jr	t0
   103e0:	40a00533          	neg	a0,a0
   103e4:	0005d863          	bgez	a1,103f4 <__umodsi3+0x24>
   103e8:	40b005b3          	neg	a1,a1
   103ec:	f9dff06f          	j	10388 <__udivsi3>
   103f0:	40b005b3          	neg	a1,a1
   103f4:	00008293          	mv	t0,ra
   103f8:	f91ff0ef          	jal	ra,10388 <__udivsi3>
   103fc:	40a00533          	neg	a0,a0
   10400:	00028067          	jr	t0

00010404 <__modsi3>:
   10404:	00008293          	mv	t0,ra
   10408:	0005ca63          	bltz	a1,1041c <__modsi3+0x18>
   1040c:	00054c63          	bltz	a0,10424 <__modsi3+0x20>
   10410:	f79ff0ef          	jal	ra,10388 <__udivsi3>
   10414:	00058513          	mv	a0,a1
   10418:	00028067          	jr	t0
   1041c:	40b005b3          	neg	a1,a1
   10420:	fe0558e3          	bgez	a0,10410 <__modsi3+0xc>
   10424:	40a00533          	neg	a0,a0
   10428:	f61ff0ef          	jal	ra,10388 <__udivsi3>
   1042c:	40b00533          	neg	a0,a1
   10430:	00028067          	jr	t0

00010434 <atexit>:
   10434:	00050593          	mv	a1,a0
   10438:	00000693          	li	a3,0
   1043c:	00000613          	li	a2,0
   10440:	00000513          	li	a0,0
   10444:	2bc0306f          	j	13700 <__register_exitproc>

00010448 <exit>:
   10448:	ff010113          	addi	sp,sp,-16
   1044c:	00000593          	li	a1,0
   10450:	00812423          	sw	s0,8(sp)
   10454:	00112623          	sw	ra,12(sp)
   10458:	00050413          	mv	s0,a0
   1045c:	340030ef          	jal	ra,1379c <__call_exitprocs>
   10460:	1b818793          	addi	a5,gp,440 # 26a78 <_global_impure_ptr>
   10464:	0007a503          	lw	a0,0(a5)
   10468:	03c52783          	lw	a5,60(a0)
   1046c:	00078463          	beqz	a5,10474 <exit+0x2c>
   10470:	000780e7          	jalr	a5
   10474:	00040513          	mv	a0,s0
   10478:	6600f0ef          	jal	ra,1fad8 <_exit>

0001047c <__libc_fini_array>:
   1047c:	ff010113          	addi	sp,sp,-16
   10480:	00812423          	sw	s0,8(sp)
   10484:	00016797          	auipc	a5,0x16
   10488:	c3878793          	addi	a5,a5,-968 # 260bc <__init_array_end>
   1048c:	00016417          	auipc	s0,0x16
   10490:	c3440413          	addi	s0,s0,-972 # 260c0 <__fini_array_end>
   10494:	40f40433          	sub	s0,s0,a5
   10498:	00112623          	sw	ra,12(sp)
   1049c:	00912223          	sw	s1,4(sp)
   104a0:	40245413          	srai	s0,s0,0x2
   104a4:	02040263          	beqz	s0,104c8 <__libc_fini_array+0x4c>
   104a8:	00241493          	slli	s1,s0,0x2
   104ac:	ffc48493          	addi	s1,s1,-4
   104b0:	00f484b3          	add	s1,s1,a5
   104b4:	0004a783          	lw	a5,0(s1)
   104b8:	fff40413          	addi	s0,s0,-1
   104bc:	ffc48493          	addi	s1,s1,-4
   104c0:	000780e7          	jalr	a5
   104c4:	fe0418e3          	bnez	s0,104b4 <__libc_fini_array+0x38>
   104c8:	00c12083          	lw	ra,12(sp)
   104cc:	00812403          	lw	s0,8(sp)
   104d0:	00412483          	lw	s1,4(sp)
   104d4:	01010113          	addi	sp,sp,16
   104d8:	00008067          	ret

000104dc <__libc_init_array>:
   104dc:	ff010113          	addi	sp,sp,-16
   104e0:	00812423          	sw	s0,8(sp)
   104e4:	01212023          	sw	s2,0(sp)
   104e8:	00016417          	auipc	s0,0x16
   104ec:	bcc40413          	addi	s0,s0,-1076 # 260b4 <__init_array_start>
   104f0:	00016917          	auipc	s2,0x16
   104f4:	bc490913          	addi	s2,s2,-1084 # 260b4 <__init_array_start>
   104f8:	40890933          	sub	s2,s2,s0
   104fc:	00112623          	sw	ra,12(sp)
   10500:	00912223          	sw	s1,4(sp)
   10504:	40295913          	srai	s2,s2,0x2
   10508:	00090e63          	beqz	s2,10524 <__libc_init_array+0x48>
   1050c:	00000493          	li	s1,0
   10510:	00042783          	lw	a5,0(s0)
   10514:	00148493          	addi	s1,s1,1
   10518:	00440413          	addi	s0,s0,4
   1051c:	000780e7          	jalr	a5
   10520:	fe9918e3          	bne	s2,s1,10510 <__libc_init_array+0x34>
   10524:	00016417          	auipc	s0,0x16
   10528:	b9040413          	addi	s0,s0,-1136 # 260b4 <__init_array_start>
   1052c:	00016917          	auipc	s2,0x16
   10530:	b9090913          	addi	s2,s2,-1136 # 260bc <__init_array_end>
   10534:	40890933          	sub	s2,s2,s0
   10538:	40295913          	srai	s2,s2,0x2
   1053c:	00090e63          	beqz	s2,10558 <__libc_init_array+0x7c>
   10540:	00000493          	li	s1,0
   10544:	00042783          	lw	a5,0(s0)
   10548:	00148493          	addi	s1,s1,1
   1054c:	00440413          	addi	s0,s0,4
   10550:	000780e7          	jalr	a5
   10554:	fe9918e3          	bne	s2,s1,10544 <__libc_init_array+0x68>
   10558:	00c12083          	lw	ra,12(sp)
   1055c:	00812403          	lw	s0,8(sp)
   10560:	00412483          	lw	s1,4(sp)
   10564:	00012903          	lw	s2,0(sp)
   10568:	01010113          	addi	sp,sp,16
   1056c:	00008067          	ret

00010570 <memset>:
   10570:	00f00313          	li	t1,15
   10574:	00050713          	mv	a4,a0
   10578:	02c37e63          	bgeu	t1,a2,105b4 <memset+0x44>
   1057c:	00f77793          	andi	a5,a4,15
   10580:	0a079063          	bnez	a5,10620 <memset+0xb0>
   10584:	08059263          	bnez	a1,10608 <memset+0x98>
   10588:	ff067693          	andi	a3,a2,-16
   1058c:	00f67613          	andi	a2,a2,15
   10590:	00e686b3          	add	a3,a3,a4
   10594:	00b72023          	sw	a1,0(a4)
   10598:	00b72223          	sw	a1,4(a4)
   1059c:	00b72423          	sw	a1,8(a4)
   105a0:	00b72623          	sw	a1,12(a4)
   105a4:	01070713          	addi	a4,a4,16
   105a8:	fed766e3          	bltu	a4,a3,10594 <memset+0x24>
   105ac:	00061463          	bnez	a2,105b4 <memset+0x44>
   105b0:	00008067          	ret
   105b4:	40c306b3          	sub	a3,t1,a2
   105b8:	00269693          	slli	a3,a3,0x2
   105bc:	00000297          	auipc	t0,0x0
   105c0:	005686b3          	add	a3,a3,t0
   105c4:	00c68067          	jr	12(a3)
   105c8:	00b70723          	sb	a1,14(a4)
   105cc:	00b706a3          	sb	a1,13(a4)
   105d0:	00b70623          	sb	a1,12(a4)
   105d4:	00b705a3          	sb	a1,11(a4)
   105d8:	00b70523          	sb	a1,10(a4)
   105dc:	00b704a3          	sb	a1,9(a4)
   105e0:	00b70423          	sb	a1,8(a4)
   105e4:	00b703a3          	sb	a1,7(a4)
   105e8:	00b70323          	sb	a1,6(a4)
   105ec:	00b702a3          	sb	a1,5(a4)
   105f0:	00b70223          	sb	a1,4(a4)
   105f4:	00b701a3          	sb	a1,3(a4)
   105f8:	00b70123          	sb	a1,2(a4)
   105fc:	00b700a3          	sb	a1,1(a4)
   10600:	00b70023          	sb	a1,0(a4)
   10604:	00008067          	ret
   10608:	0ff5f593          	andi	a1,a1,255
   1060c:	00859693          	slli	a3,a1,0x8
   10610:	00d5e5b3          	or	a1,a1,a3
   10614:	01059693          	slli	a3,a1,0x10
   10618:	00d5e5b3          	or	a1,a1,a3
   1061c:	f6dff06f          	j	10588 <memset+0x18>
   10620:	00279693          	slli	a3,a5,0x2
   10624:	00000297          	auipc	t0,0x0
   10628:	005686b3          	add	a3,a3,t0
   1062c:	00008293          	mv	t0,ra
   10630:	fa0680e7          	jalr	-96(a3)
   10634:	00028093          	mv	ra,t0
   10638:	ff078793          	addi	a5,a5,-16
   1063c:	40f70733          	sub	a4,a4,a5
   10640:	00f60633          	add	a2,a2,a5
   10644:	f6c378e3          	bgeu	t1,a2,105b4 <memset+0x44>
   10648:	f3dff06f          	j	10584 <memset+0x14>

0001064c <_printf_r>:
   1064c:	fc010113          	addi	sp,sp,-64
   10650:	02c12423          	sw	a2,40(sp)
   10654:	02d12623          	sw	a3,44(sp)
   10658:	02f12a23          	sw	a5,52(sp)
   1065c:	02e12823          	sw	a4,48(sp)
   10660:	03012c23          	sw	a6,56(sp)
   10664:	03112e23          	sw	a7,60(sp)
   10668:	00058613          	mv	a2,a1
   1066c:	00852583          	lw	a1,8(a0)
   10670:	02810793          	addi	a5,sp,40
   10674:	00078693          	mv	a3,a5
   10678:	00112e23          	sw	ra,28(sp)
   1067c:	00f12623          	sw	a5,12(sp)
   10680:	1bc000ef          	jal	ra,1083c <_vfprintf_r>
   10684:	01c12083          	lw	ra,28(sp)
   10688:	04010113          	addi	sp,sp,64
   1068c:	00008067          	ret

00010690 <printf>:
   10690:	1c018313          	addi	t1,gp,448 # 26a80 <_impure_ptr>
   10694:	00032303          	lw	t1,0(t1) # 10138 <frame_dummy+0x18>
   10698:	fc010113          	addi	sp,sp,-64
   1069c:	02c12423          	sw	a2,40(sp)
   106a0:	02d12623          	sw	a3,44(sp)
   106a4:	02f12a23          	sw	a5,52(sp)
   106a8:	02b12223          	sw	a1,36(sp)
   106ac:	02e12823          	sw	a4,48(sp)
   106b0:	03012c23          	sw	a6,56(sp)
   106b4:	03112e23          	sw	a7,60(sp)
   106b8:	00832583          	lw	a1,8(t1)
   106bc:	02410793          	addi	a5,sp,36
   106c0:	00050613          	mv	a2,a0
   106c4:	00078693          	mv	a3,a5
   106c8:	00030513          	mv	a0,t1
   106cc:	00112e23          	sw	ra,28(sp)
   106d0:	00f12623          	sw	a5,12(sp)
   106d4:	168000ef          	jal	ra,1083c <_vfprintf_r>
   106d8:	01c12083          	lw	ra,28(sp)
   106dc:	04010113          	addi	sp,sp,64
   106e0:	00008067          	ret

000106e4 <_putchar_r>:
   106e4:	00852603          	lw	a2,8(a0)
   106e8:	01c0006f          	j	10704 <_putc_r>

000106ec <putchar>:
   106ec:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   106f0:	0007a783          	lw	a5,0(a5)
   106f4:	00050593          	mv	a1,a0
   106f8:	0087a603          	lw	a2,8(a5)
   106fc:	00078513          	mv	a0,a5
   10700:	0040006f          	j	10704 <_putc_r>

00010704 <_putc_r>:
   10704:	fe010113          	addi	sp,sp,-32
   10708:	00812c23          	sw	s0,24(sp)
   1070c:	00112e23          	sw	ra,28(sp)
   10710:	00050413          	mv	s0,a0
   10714:	00050663          	beqz	a0,10720 <_putc_r+0x1c>
   10718:	03852783          	lw	a5,56(a0)
   1071c:	04078663          	beqz	a5,10768 <_putc_r+0x64>
   10720:	00862783          	lw	a5,8(a2)
   10724:	fff78793          	addi	a5,a5,-1
   10728:	00f62423          	sw	a5,8(a2)
   1072c:	0007dc63          	bgez	a5,10744 <_putc_r+0x40>
   10730:	01862703          	lw	a4,24(a2)
   10734:	04e7c663          	blt	a5,a4,10780 <_putc_r+0x7c>
   10738:	0ff5f793          	andi	a5,a1,255
   1073c:	00a00713          	li	a4,10
   10740:	04e78063          	beq	a5,a4,10780 <_putc_r+0x7c>
   10744:	00062783          	lw	a5,0(a2)
   10748:	0ff5f513          	andi	a0,a1,255
   1074c:	00178713          	addi	a4,a5,1
   10750:	00e62023          	sw	a4,0(a2)
   10754:	00b78023          	sb	a1,0(a5)
   10758:	01c12083          	lw	ra,28(sp)
   1075c:	01812403          	lw	s0,24(sp)
   10760:	02010113          	addi	sp,sp,32
   10764:	00008067          	ret
   10768:	00c12623          	sw	a2,12(sp)
   1076c:	00b12423          	sw	a1,8(sp)
   10770:	75c030ef          	jal	ra,13ecc <__sinit>
   10774:	00c12603          	lw	a2,12(sp)
   10778:	00812583          	lw	a1,8(sp)
   1077c:	fa5ff06f          	j	10720 <_putc_r+0x1c>
   10780:	00040513          	mv	a0,s0
   10784:	01812403          	lw	s0,24(sp)
   10788:	01c12083          	lw	ra,28(sp)
   1078c:	02010113          	addi	sp,sp,32
   10790:	4710206f          	j	13400 <__swbuf_r>

00010794 <putc>:
   10794:	fe010113          	addi	sp,sp,-32
   10798:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   1079c:	00812c23          	sw	s0,24(sp)
   107a0:	0007a403          	lw	s0,0(a5)
   107a4:	00912a23          	sw	s1,20(sp)
   107a8:	00112e23          	sw	ra,28(sp)
   107ac:	00050493          	mv	s1,a0
   107b0:	00040663          	beqz	s0,107bc <putc+0x28>
   107b4:	03842783          	lw	a5,56(s0)
   107b8:	04078863          	beqz	a5,10808 <putc+0x74>
   107bc:	0085a783          	lw	a5,8(a1)
   107c0:	fff78793          	addi	a5,a5,-1
   107c4:	00f5a423          	sw	a5,8(a1)
   107c8:	0007dc63          	bgez	a5,107e0 <putc+0x4c>
   107cc:	0185a703          	lw	a4,24(a1)
   107d0:	04e7c663          	blt	a5,a4,1081c <putc+0x88>
   107d4:	0ff4f793          	andi	a5,s1,255
   107d8:	00a00713          	li	a4,10
   107dc:	04e78063          	beq	a5,a4,1081c <putc+0x88>
   107e0:	0005a783          	lw	a5,0(a1)
   107e4:	0ff4f513          	andi	a0,s1,255
   107e8:	00178713          	addi	a4,a5,1
   107ec:	00e5a023          	sw	a4,0(a1)
   107f0:	00978023          	sb	s1,0(a5)
   107f4:	01c12083          	lw	ra,28(sp)
   107f8:	01812403          	lw	s0,24(sp)
   107fc:	01412483          	lw	s1,20(sp)
   10800:	02010113          	addi	sp,sp,32
   10804:	00008067          	ret
   10808:	00040513          	mv	a0,s0
   1080c:	00b12623          	sw	a1,12(sp)
   10810:	6bc030ef          	jal	ra,13ecc <__sinit>
   10814:	00c12583          	lw	a1,12(sp)
   10818:	fa5ff06f          	j	107bc <putc+0x28>
   1081c:	00040513          	mv	a0,s0
   10820:	01812403          	lw	s0,24(sp)
   10824:	01c12083          	lw	ra,28(sp)
   10828:	00058613          	mv	a2,a1
   1082c:	00048593          	mv	a1,s1
   10830:	01412483          	lw	s1,20(sp)
   10834:	02010113          	addi	sp,sp,32
   10838:	3c90206f          	j	13400 <__swbuf_r>

0001083c <_vfprintf_r>:
   1083c:	e1010113          	addi	sp,sp,-496
   10840:	1e112623          	sw	ra,492(sp)
   10844:	1e812423          	sw	s0,488(sp)
   10848:	1d912223          	sw	s9,452(sp)
   1084c:	00b12223          	sw	a1,4(sp)
   10850:	00060c93          	mv	s9,a2
   10854:	00d12623          	sw	a3,12(sp)
   10858:	1e912223          	sw	s1,484(sp)
   1085c:	1f212023          	sw	s2,480(sp)
   10860:	1d312e23          	sw	s3,476(sp)
   10864:	1d412c23          	sw	s4,472(sp)
   10868:	1d512a23          	sw	s5,468(sp)
   1086c:	1d612823          	sw	s6,464(sp)
   10870:	1d712623          	sw	s7,460(sp)
   10874:	1d812423          	sw	s8,456(sp)
   10878:	1da12023          	sw	s10,448(sp)
   1087c:	1bb12e23          	sw	s11,444(sp)
   10880:	00050413          	mv	s0,a0
   10884:	00a12e23          	sw	a0,28(sp)
   10888:	798060ef          	jal	ra,17020 <_localeconv_r>
   1088c:	00052783          	lw	a5,0(a0)
   10890:	00078513          	mv	a0,a5
   10894:	02f12823          	sw	a5,48(sp)
   10898:	169080ef          	jal	ra,19200 <strlen>
   1089c:	02a12423          	sw	a0,40(sp)
   108a0:	0e012823          	sw	zero,240(sp)
   108a4:	0e012a23          	sw	zero,244(sp)
   108a8:	0e012c23          	sw	zero,248(sp)
   108ac:	0e012e23          	sw	zero,252(sp)
   108b0:	00040663          	beqz	s0,108bc <_vfprintf_r+0x80>
   108b4:	03842783          	lw	a5,56(s0)
   108b8:	56078ae3          	beqz	a5,1162c <_vfprintf_r+0xdf0>
   108bc:	00412603          	lw	a2,4(sp)
   108c0:	00c61703          	lh	a4,12(a2)
   108c4:	01071793          	slli	a5,a4,0x10
   108c8:	0107d793          	srli	a5,a5,0x10
   108cc:	01279693          	slli	a3,a5,0x12
   108d0:	0206c663          	bltz	a3,108fc <_vfprintf_r+0xc0>
   108d4:	06462683          	lw	a3,100(a2)
   108d8:	000027b7          	lui	a5,0x2
   108dc:	00f767b3          	or	a5,a4,a5
   108e0:	ffffe737          	lui	a4,0xffffe
   108e4:	fff70713          	addi	a4,a4,-1 # ffffdfff <__BSS_END__+0xfffd7517>
   108e8:	00e6f733          	and	a4,a3,a4
   108ec:	00f61623          	sh	a5,12(a2)
   108f0:	01079793          	slli	a5,a5,0x10
   108f4:	06e62223          	sw	a4,100(a2)
   108f8:	0107d793          	srli	a5,a5,0x10
   108fc:	0087f713          	andi	a4,a5,8
   10900:	16070463          	beqz	a4,10a68 <_vfprintf_r+0x22c>
   10904:	00412703          	lw	a4,4(sp)
   10908:	01072703          	lw	a4,16(a4)
   1090c:	14070e63          	beqz	a4,10a68 <_vfprintf_r+0x22c>
   10910:	01a7f793          	andi	a5,a5,26
   10914:	00a00713          	li	a4,10
   10918:	16e78c63          	beq	a5,a4,10a90 <_vfprintf_r+0x254>
   1091c:	10c10793          	addi	a5,sp,268
   10920:	000c8d13          	mv	s10,s9
   10924:	0ef12223          	sw	a5,228(sp)
   10928:	00078d93          	mv	s11,a5
   1092c:	000d4783          	lbu	a5,0(s10)
   10930:	0e012623          	sw	zero,236(sp)
   10934:	0e012423          	sw	zero,232(sp)
   10938:	00012c23          	sw	zero,24(sp)
   1093c:	02012623          	sw	zero,44(sp)
   10940:	02012c23          	sw	zero,56(sp)
   10944:	02012e23          	sw	zero,60(sp)
   10948:	04012023          	sw	zero,64(sp)
   1094c:	04012223          	sw	zero,68(sp)
   10950:	00012423          	sw	zero,8(sp)
   10954:	01000c13          	li	s8,16
   10958:	01c12a83          	lw	s5,28(sp)
   1095c:	3e078463          	beqz	a5,10d44 <_vfprintf_r+0x508>
   10960:	02500713          	li	a4,37
   10964:	00e79463          	bne	a5,a4,1096c <_vfprintf_r+0x130>
   10968:	7340106f          	j	1209c <_vfprintf_r+0x1860>
   1096c:	000d0413          	mv	s0,s10
   10970:	00c0006f          	j	1097c <_vfprintf_r+0x140>
   10974:	14e78263          	beq	a5,a4,10ab8 <_vfprintf_r+0x27c>
   10978:	00048413          	mv	s0,s1
   1097c:	00144783          	lbu	a5,1(s0)
   10980:	00140493          	addi	s1,s0,1
   10984:	fe0798e3          	bnez	a5,10974 <_vfprintf_r+0x138>
   10988:	41a48933          	sub	s2,s1,s10
   1098c:	3a090c63          	beqz	s2,10d44 <_vfprintf_r+0x508>
   10990:	0ec12703          	lw	a4,236(sp)
   10994:	0e812783          	lw	a5,232(sp)
   10998:	01ada023          	sw	s10,0(s11)
   1099c:	01270733          	add	a4,a4,s2
   109a0:	00178793          	addi	a5,a5,1 # 2001 <register_fini-0xe073>
   109a4:	012da223          	sw	s2,4(s11)
   109a8:	0ee12623          	sw	a4,236(sp)
   109ac:	0ef12423          	sw	a5,232(sp)
   109b0:	00700713          	li	a4,7
   109b4:	008d8d93          	addi	s11,s11,8
   109b8:	10f74663          	blt	a4,a5,10ac4 <_vfprintf_r+0x288>
   109bc:	00812703          	lw	a4,8(sp)
   109c0:	00144783          	lbu	a5,1(s0)
   109c4:	01270733          	add	a4,a4,s2
   109c8:	00e12423          	sw	a4,8(sp)
   109cc:	36078c63          	beqz	a5,10d44 <_vfprintf_r+0x508>
   109d0:	00148913          	addi	s2,s1,1
   109d4:	0014c403          	lbu	s0,1(s1)
   109d8:	0c0103a3          	sb	zero,199(sp)
   109dc:	fff00b13          	li	s6,-1
   109e0:	00000493          	li	s1,0
   109e4:	00000993          	li	s3,0
   109e8:	00900a13          	li	s4,9
   109ec:	02a00b93          	li	s7,42
   109f0:	00190913          	addi	s2,s2,1
   109f4:	05a00713          	li	a4,90
   109f8:	fe040793          	addi	a5,s0,-32
   109fc:	22f76c63          	bltu	a4,a5,10c34 <_vfprintf_r+0x3f8>
   10a00:	00014697          	auipc	a3,0x14
   10a04:	22868693          	addi	a3,a3,552 # 24c28 <__clzsi2+0xa4>
   10a08:	00279793          	slli	a5,a5,0x2
   10a0c:	00d787b3          	add	a5,a5,a3
   10a10:	0007a783          	lw	a5,0(a5)
   10a14:	00d787b3          	add	a5,a5,a3
   10a18:	00078067          	jr	a5
   10a1c:	000a8513          	mv	a0,s5
   10a20:	600060ef          	jal	ra,17020 <_localeconv_r>
   10a24:	00452783          	lw	a5,4(a0)
   10a28:	00078513          	mv	a0,a5
   10a2c:	04f12223          	sw	a5,68(sp)
   10a30:	7d0080ef          	jal	ra,19200 <strlen>
   10a34:	04a12023          	sw	a0,64(sp)
   10a38:	00050413          	mv	s0,a0
   10a3c:	000a8513          	mv	a0,s5
   10a40:	5e0060ef          	jal	ra,17020 <_localeconv_r>
   10a44:	00852783          	lw	a5,8(a0)
   10a48:	02f12e23          	sw	a5,60(sp)
   10a4c:	00040463          	beqz	s0,10a54 <_vfprintf_r+0x218>
   10a50:	4ec0106f          	j	11f3c <_vfprintf_r+0x1700>
   10a54:	00094403          	lbu	s0,0(s2)
   10a58:	f99ff06f          	j	109f0 <_vfprintf_r+0x1b4>
   10a5c:	0209e993          	ori	s3,s3,32
   10a60:	00094403          	lbu	s0,0(s2)
   10a64:	f8dff06f          	j	109f0 <_vfprintf_r+0x1b4>
   10a68:	00412583          	lw	a1,4(sp)
   10a6c:	01c12503          	lw	a0,28(sp)
   10a70:	329020ef          	jal	ra,13598 <__swsetup_r>
   10a74:	00050463          	beqz	a0,10a7c <_vfprintf_r+0x240>
   10a78:	4380206f          	j	12eb0 <_vfprintf_r+0x2674>
   10a7c:	00412783          	lw	a5,4(sp)
   10a80:	00a00713          	li	a4,10
   10a84:	00c7d783          	lhu	a5,12(a5)
   10a88:	01a7f793          	andi	a5,a5,26
   10a8c:	e8e798e3          	bne	a5,a4,1091c <_vfprintf_r+0xe0>
   10a90:	00412783          	lw	a5,4(sp)
   10a94:	00e79783          	lh	a5,14(a5)
   10a98:	e807c2e3          	bltz	a5,1091c <_vfprintf_r+0xe0>
   10a9c:	00c12683          	lw	a3,12(sp)
   10aa0:	00412583          	lw	a1,4(sp)
   10aa4:	01c12503          	lw	a0,28(sp)
   10aa8:	000c8613          	mv	a2,s9
   10aac:	095020ef          	jal	ra,13340 <__sbprintf>
   10ab0:	00a12423          	sw	a0,8(sp)
   10ab4:	0680006f          	j	10b1c <_vfprintf_r+0x2e0>
   10ab8:	41a48933          	sub	s2,s1,s10
   10abc:	f0090ae3          	beqz	s2,109d0 <_vfprintf_r+0x194>
   10ac0:	ed1ff06f          	j	10990 <_vfprintf_r+0x154>
   10ac4:	00412583          	lw	a1,4(sp)
   10ac8:	0e410613          	addi	a2,sp,228
   10acc:	000a8513          	mv	a0,s5
   10ad0:	4100b0ef          	jal	ra,1bee0 <__sprint_r>
   10ad4:	02051a63          	bnez	a0,10b08 <_vfprintf_r+0x2cc>
   10ad8:	10c10d93          	addi	s11,sp,268
   10adc:	ee1ff06f          	j	109bc <_vfprintf_r+0x180>
   10ae0:	00412583          	lw	a1,4(sp)
   10ae4:	0e410613          	addi	a2,sp,228
   10ae8:	000a8513          	mv	a0,s5
   10aec:	3f40b0ef          	jal	ra,1bee0 <__sprint_r>
   10af0:	52050063          	beqz	a0,11010 <_vfprintf_r+0x7d4>
   10af4:	01012783          	lw	a5,16(sp)
   10af8:	00078863          	beqz	a5,10b08 <_vfprintf_r+0x2cc>
   10afc:	01c12503          	lw	a0,28(sp)
   10b00:	00078593          	mv	a1,a5
   10b04:	538030ef          	jal	ra,1403c <_free_r>
   10b08:	00412783          	lw	a5,4(sp)
   10b0c:	00c7d783          	lhu	a5,12(a5)
   10b10:	0407f793          	andi	a5,a5,64
   10b14:	00078463          	beqz	a5,10b1c <_vfprintf_r+0x2e0>
   10b18:	3980206f          	j	12eb0 <_vfprintf_r+0x2674>
   10b1c:	1ec12083          	lw	ra,492(sp)
   10b20:	1e812403          	lw	s0,488(sp)
   10b24:	00812503          	lw	a0,8(sp)
   10b28:	1e412483          	lw	s1,484(sp)
   10b2c:	1e012903          	lw	s2,480(sp)
   10b30:	1dc12983          	lw	s3,476(sp)
   10b34:	1d812a03          	lw	s4,472(sp)
   10b38:	1d412a83          	lw	s5,468(sp)
   10b3c:	1d012b03          	lw	s6,464(sp)
   10b40:	1cc12b83          	lw	s7,460(sp)
   10b44:	1c812c03          	lw	s8,456(sp)
   10b48:	1c412c83          	lw	s9,452(sp)
   10b4c:	1c012d03          	lw	s10,448(sp)
   10b50:	1bc12d83          	lw	s11,444(sp)
   10b54:	1f010113          	addi	sp,sp,496
   10b58:	00008067          	ret
   10b5c:	00014797          	auipc	a5,0x14
   10b60:	26878793          	addi	a5,a5,616 # 24dc4 <zeroes.4505+0x20>
   10b64:	02f12623          	sw	a5,44(sp)
   10b68:	0209f793          	andi	a5,s3,32
   10b6c:	0e078c63          	beqz	a5,10c64 <_vfprintf_r+0x428>
   10b70:	00c12783          	lw	a5,12(sp)
   10b74:	00778793          	addi	a5,a5,7
   10b78:	ff87f793          	andi	a5,a5,-8
   10b7c:	0007ac83          	lw	s9,0(a5)
   10b80:	0047ab83          	lw	s7,4(a5)
   10b84:	00878713          	addi	a4,a5,8
   10b88:	00e12623          	sw	a4,12(sp)
   10b8c:	0019f713          	andi	a4,s3,1
   10b90:	00070863          	beqz	a4,10ba0 <_vfprintf_r+0x364>
   10b94:	017ce733          	or	a4,s9,s7
   10b98:	00070463          	beqz	a4,10ba0 <_vfprintf_r+0x364>
   10b9c:	3640106f          	j	11f00 <_vfprintf_r+0x16c4>
   10ba0:	bff9fa13          	andi	s4,s3,-1025
   10ba4:	00200713          	li	a4,2
   10ba8:	0c0103a3          	sb	zero,199(sp)
   10bac:	fff00693          	li	a3,-1
   10bb0:	0edb0ee3          	beq	s6,a3,114ac <_vfprintf_r+0xc70>
   10bb4:	017ce6b3          	or	a3,s9,s7
   10bb8:	f7fa7993          	andi	s3,s4,-129
   10bbc:	780698e3          	bnez	a3,11b4c <_vfprintf_r+0x1310>
   10bc0:	300b1ce3          	bnez	s6,116d8 <_vfprintf_r+0xe9c>
   10bc4:	22071663          	bnez	a4,10df0 <_vfprintf_r+0x5b4>
   10bc8:	001a7b93          	andi	s7,s4,1
   10bcc:	1b010d13          	addi	s10,sp,432
   10bd0:	000b8463          	beqz	s7,10bd8 <_vfprintf_r+0x39c>
   10bd4:	2d80106f          	j	11eac <_vfprintf_r+0x1670>
   10bd8:	000b8a13          	mv	s4,s7
   10bdc:	016bd463          	bge	s7,s6,10be4 <_vfprintf_r+0x3a8>
   10be0:	000b0a13          	mv	s4,s6
   10be4:	0c714783          	lbu	a5,199(sp)
   10be8:	00012823          	sw	zero,16(sp)
   10bec:	02012223          	sw	zero,36(sp)
   10bf0:	02012023          	sw	zero,32(sp)
   10bf4:	00012a23          	sw	zero,20(sp)
   10bf8:	32078263          	beqz	a5,10f1c <_vfprintf_r+0x6e0>
   10bfc:	001a0a13          	addi	s4,s4,1
   10c00:	31c0006f          	j	10f1c <_vfprintf_r+0x6e0>
   10c04:	00000493          	li	s1,0
   10c08:	fd040693          	addi	a3,s0,-48
   10c0c:	00190913          	addi	s2,s2,1
   10c10:	00249793          	slli	a5,s1,0x2
   10c14:	fff94403          	lbu	s0,-1(s2)
   10c18:	009787b3          	add	a5,a5,s1
   10c1c:	00179793          	slli	a5,a5,0x1
   10c20:	00f684b3          	add	s1,a3,a5
   10c24:	fd040693          	addi	a3,s0,-48
   10c28:	feda72e3          	bgeu	s4,a3,10c0c <_vfprintf_r+0x3d0>
   10c2c:	fe040793          	addi	a5,s0,-32
   10c30:	dcf778e3          	bgeu	a4,a5,10a00 <_vfprintf_r+0x1c4>
   10c34:	10040863          	beqz	s0,10d44 <_vfprintf_r+0x508>
   10c38:	14810623          	sb	s0,332(sp)
   10c3c:	0c0103a3          	sb	zero,199(sp)
   10c40:	00100a13          	li	s4,1
   10c44:	00100b93          	li	s7,1
   10c48:	14c10d13          	addi	s10,sp,332
   10c4c:	2bc0006f          	j	10f08 <_vfprintf_r+0x6cc>
   10c50:	00014797          	auipc	a5,0x14
   10c54:	18878793          	addi	a5,a5,392 # 24dd8 <zeroes.4505+0x34>
   10c58:	02f12623          	sw	a5,44(sp)
   10c5c:	0209f793          	andi	a5,s3,32
   10c60:	f00798e3          	bnez	a5,10b70 <_vfprintf_r+0x334>
   10c64:	00c12703          	lw	a4,12(sp)
   10c68:	0109f793          	andi	a5,s3,16
   10c6c:	00072c83          	lw	s9,0(a4)
   10c70:	00470713          	addi	a4,a4,4
   10c74:	00e12623          	sw	a4,12(sp)
   10c78:	00078463          	beqz	a5,10c80 <_vfprintf_r+0x444>
   10c7c:	2480106f          	j	11ec4 <_vfprintf_r+0x1688>
   10c80:	0409f793          	andi	a5,s3,64
   10c84:	00079463          	bnez	a5,10c8c <_vfprintf_r+0x450>
   10c88:	2340106f          	j	11ebc <_vfprintf_r+0x1680>
   10c8c:	010c9c93          	slli	s9,s9,0x10
   10c90:	010cdc93          	srli	s9,s9,0x10
   10c94:	00000b93          	li	s7,0
   10c98:	ef5ff06f          	j	10b8c <_vfprintf_r+0x350>
   10c9c:	00094403          	lbu	s0,0(s2)
   10ca0:	0049e993          	ori	s3,s3,4
   10ca4:	d4dff06f          	j	109f0 <_vfprintf_r+0x1b4>
   10ca8:	00094403          	lbu	s0,0(s2)
   10cac:	00190793          	addi	a5,s2,1
   10cb0:	01741463          	bne	s0,s7,10cb8 <_vfprintf_r+0x47c>
   10cb4:	6180206f          	j	132cc <_vfprintf_r+0x2a90>
   10cb8:	fd040693          	addi	a3,s0,-48
   10cbc:	00078913          	mv	s2,a5
   10cc0:	00000b13          	li	s6,0
   10cc4:	d2da6ae3          	bltu	s4,a3,109f8 <_vfprintf_r+0x1bc>
   10cc8:	00190913          	addi	s2,s2,1
   10ccc:	002b1793          	slli	a5,s6,0x2
   10cd0:	fff94403          	lbu	s0,-1(s2)
   10cd4:	016787b3          	add	a5,a5,s6
   10cd8:	00179793          	slli	a5,a5,0x1
   10cdc:	00d78b33          	add	s6,a5,a3
   10ce0:	fd040693          	addi	a3,s0,-48
   10ce4:	feda72e3          	bgeu	s4,a3,10cc8 <_vfprintf_r+0x48c>
   10ce8:	d11ff06f          	j	109f8 <_vfprintf_r+0x1bc>
   10cec:	00c12683          	lw	a3,12(sp)
   10cf0:	0209f793          	andi	a5,s3,32
   10cf4:	00468713          	addi	a4,a3,4
   10cf8:	00078463          	beqz	a5,10d00 <_vfprintf_r+0x4c4>
   10cfc:	2200106f          	j	11f1c <_vfprintf_r+0x16e0>
   10d00:	0109f793          	andi	a5,s3,16
   10d04:	00078463          	beqz	a5,10d0c <_vfprintf_r+0x4d0>
   10d08:	6380106f          	j	12340 <_vfprintf_r+0x1b04>
   10d0c:	0409f793          	andi	a5,s3,64
   10d10:	00078463          	beqz	a5,10d18 <_vfprintf_r+0x4dc>
   10d14:	2250106f          	j	12738 <_vfprintf_r+0x1efc>
   10d18:	2009f993          	andi	s3,s3,512
   10d1c:	00099463          	bnez	s3,10d24 <_vfprintf_r+0x4e8>
   10d20:	6200106f          	j	12340 <_vfprintf_r+0x1b04>
   10d24:	00c12783          	lw	a5,12(sp)
   10d28:	00e12623          	sw	a4,12(sp)
   10d2c:	00812703          	lw	a4,8(sp)
   10d30:	0007a783          	lw	a5,0(a5)
   10d34:	00090d13          	mv	s10,s2
   10d38:	00e78023          	sb	a4,0(a5)
   10d3c:	000d4783          	lbu	a5,0(s10)
   10d40:	c20790e3          	bnez	a5,10960 <_vfprintf_r+0x124>
   10d44:	0ec12783          	lw	a5,236(sp)
   10d48:	dc0780e3          	beqz	a5,10b08 <_vfprintf_r+0x2cc>
   10d4c:	00412583          	lw	a1,4(sp)
   10d50:	01c12503          	lw	a0,28(sp)
   10d54:	0e410613          	addi	a2,sp,228
   10d58:	1880b0ef          	jal	ra,1bee0 <__sprint_r>
   10d5c:	dadff06f          	j	10b08 <_vfprintf_r+0x2cc>
   10d60:	00094403          	lbu	s0,0(s2)
   10d64:	06c00793          	li	a5,108
   10d68:	00f41463          	bne	s0,a5,10d70 <_vfprintf_r+0x534>
   10d6c:	2940106f          	j	12000 <_vfprintf_r+0x17c4>
   10d70:	0109e993          	ori	s3,s3,16
   10d74:	c7dff06f          	j	109f0 <_vfprintf_r+0x1b4>
   10d78:	00094403          	lbu	s0,0(s2)
   10d7c:	06800793          	li	a5,104
   10d80:	00f41463          	bne	s0,a5,10d88 <_vfprintf_r+0x54c>
   10d84:	26c0106f          	j	11ff0 <_vfprintf_r+0x17b4>
   10d88:	0409e993          	ori	s3,s3,64
   10d8c:	c65ff06f          	j	109f0 <_vfprintf_r+0x1b4>
   10d90:	0209f793          	andi	a5,s3,32
   10d94:	0a0792e3          	bnez	a5,11638 <_vfprintf_r+0xdfc>
   10d98:	00c12703          	lw	a4,12(sp)
   10d9c:	0109f793          	andi	a5,s3,16
   10da0:	00470713          	addi	a4,a4,4
   10da4:	00078463          	beqz	a5,10dac <_vfprintf_r+0x570>
   10da8:	5700206f          	j	13318 <_vfprintf_r+0x2adc>
   10dac:	0409f793          	andi	a5,s3,64
   10db0:	00079463          	bnez	a5,10db8 <_vfprintf_r+0x57c>
   10db4:	65c0106f          	j	12410 <_vfprintf_r+0x1bd4>
   10db8:	00c12783          	lw	a5,12(sp)
   10dbc:	00098a13          	mv	s4,s3
   10dc0:	00e12623          	sw	a4,12(sp)
   10dc4:	00079c83          	lh	s9,0(a5)
   10dc8:	41fcdb93          	srai	s7,s9,0x1f
   10dcc:	000b8713          	mv	a4,s7
   10dd0:	6a074c63          	bltz	a4,11488 <_vfprintf_r+0xc4c>
   10dd4:	fff00713          	li	a4,-1
   10dd8:	0ceb0ee3          	beq	s6,a4,116b4 <_vfprintf_r+0xe78>
   10ddc:	017ce733          	or	a4,s9,s7
   10de0:	f7fa7993          	andi	s3,s4,-129
   10de4:	0c0716e3          	bnez	a4,116b0 <_vfprintf_r+0xe74>
   10de8:	000b0463          	beqz	s6,10df0 <_vfprintf_r+0x5b4>
   10dec:	5b10106f          	j	12b9c <_vfprintf_r+0x2360>
   10df0:	00000b13          	li	s6,0
   10df4:	00000b93          	li	s7,0
   10df8:	1b010d13          	addi	s10,sp,432
   10dfc:	dddff06f          	j	10bd8 <_vfprintf_r+0x39c>
   10e00:	0809e993          	ori	s3,s3,128
   10e04:	00094403          	lbu	s0,0(s2)
   10e08:	be9ff06f          	j	109f0 <_vfprintf_r+0x1b4>
   10e0c:	0209f793          	andi	a5,s3,32
   10e10:	0109ea13          	ori	s4,s3,16
   10e14:	040798e3          	bnez	a5,11664 <_vfprintf_r+0xe28>
   10e18:	00c12783          	lw	a5,12(sp)
   10e1c:	00478713          	addi	a4,a5,4
   10e20:	00c12783          	lw	a5,12(sp)
   10e24:	00000b93          	li	s7,0
   10e28:	00e12623          	sw	a4,12(sp)
   10e2c:	0007ac83          	lw	s9,0(a5)
   10e30:	00100713          	li	a4,1
   10e34:	d75ff06f          	j	10ba8 <_vfprintf_r+0x36c>
   10e38:	00c12783          	lw	a5,12(sp)
   10e3c:	0c0103a3          	sb	zero,199(sp)
   10e40:	0007ad03          	lw	s10,0(a5)
   10e44:	00478c93          	addi	s9,a5,4
   10e48:	000d1463          	bnez	s10,10e50 <_vfprintf_r+0x614>
   10e4c:	1c40106f          	j	12010 <_vfprintf_r+0x17d4>
   10e50:	fff00793          	li	a5,-1
   10e54:	00fb1463          	bne	s6,a5,10e5c <_vfprintf_r+0x620>
   10e58:	5a80106f          	j	12400 <_vfprintf_r+0x1bc4>
   10e5c:	000b0613          	mv	a2,s6
   10e60:	00000593          	li	a1,0
   10e64:	000d0513          	mv	a0,s10
   10e68:	491060ef          	jal	ra,17af8 <memchr>
   10e6c:	00a12823          	sw	a0,16(sp)
   10e70:	00051463          	bnez	a0,10e78 <_vfprintf_r+0x63c>
   10e74:	7890106f          	j	12dfc <_vfprintf_r+0x25c0>
   10e78:	01012783          	lw	a5,16(sp)
   10e7c:	41a78bb3          	sub	s7,a5,s10
   10e80:	0c714783          	lbu	a5,199(sp)
   10e84:	fffbca13          	not	s4,s7
   10e88:	41fa5a13          	srai	s4,s4,0x1f
   10e8c:	01912623          	sw	s9,12(sp)
   10e90:	00012823          	sw	zero,16(sp)
   10e94:	02012223          	sw	zero,36(sp)
   10e98:	02012023          	sw	zero,32(sp)
   10e9c:	00012a23          	sw	zero,20(sp)
   10ea0:	014bfa33          	and	s4,s7,s4
   10ea4:	00000b13          	li	s6,0
   10ea8:	d4079ae3          	bnez	a5,10bfc <_vfprintf_r+0x3c0>
   10eac:	0700006f          	j	10f1c <_vfprintf_r+0x6e0>
   10eb0:	0209f793          	andi	a5,s3,32
   10eb4:	0109e993          	ori	s3,s3,16
   10eb8:	7c079863          	bnez	a5,11688 <_vfprintf_r+0xe4c>
   10ebc:	00c12783          	lw	a5,12(sp)
   10ec0:	00478713          	addi	a4,a5,4
   10ec4:	00c12783          	lw	a5,12(sp)
   10ec8:	00000b93          	li	s7,0
   10ecc:	00e12623          	sw	a4,12(sp)
   10ed0:	0007ac83          	lw	s9,0(a5)
   10ed4:	7d00006f          	j	116a4 <_vfprintf_r+0xe68>
   10ed8:	0089e993          	ori	s3,s3,8
   10edc:	00094403          	lbu	s0,0(s2)
   10ee0:	b11ff06f          	j	109f0 <_vfprintf_r+0x1b4>
   10ee4:	00c12703          	lw	a4,12(sp)
   10ee8:	0c0103a3          	sb	zero,199(sp)
   10eec:	00100a13          	li	s4,1
   10ef0:	00072783          	lw	a5,0(a4)
   10ef4:	00470713          	addi	a4,a4,4
   10ef8:	00e12623          	sw	a4,12(sp)
   10efc:	14f10623          	sb	a5,332(sp)
   10f00:	00100b93          	li	s7,1
   10f04:	14c10d13          	addi	s10,sp,332
   10f08:	00012823          	sw	zero,16(sp)
   10f0c:	00000b13          	li	s6,0
   10f10:	02012223          	sw	zero,36(sp)
   10f14:	02012023          	sw	zero,32(sp)
   10f18:	00012a23          	sw	zero,20(sp)
   10f1c:	0029ff13          	andi	t5,s3,2
   10f20:	000f0463          	beqz	t5,10f28 <_vfprintf_r+0x6ec>
   10f24:	002a0a13          	addi	s4,s4,2
   10f28:	0849fe93          	andi	t4,s3,132
   10f2c:	0ec12783          	lw	a5,236(sp)
   10f30:	000e9663          	bnez	t4,10f3c <_vfprintf_r+0x700>
   10f34:	414486b3          	sub	a3,s1,s4
   10f38:	40d04ee3          	bgtz	a3,11b54 <_vfprintf_r+0x1318>
   10f3c:	0c714703          	lbu	a4,199(sp)
   10f40:	02070a63          	beqz	a4,10f74 <_vfprintf_r+0x738>
   10f44:	0e812703          	lw	a4,232(sp)
   10f48:	0c710693          	addi	a3,sp,199
   10f4c:	00dda023          	sw	a3,0(s11)
   10f50:	00178793          	addi	a5,a5,1
   10f54:	00100693          	li	a3,1
   10f58:	00170713          	addi	a4,a4,1
   10f5c:	00dda223          	sw	a3,4(s11)
   10f60:	0ef12623          	sw	a5,236(sp)
   10f64:	0ee12423          	sw	a4,232(sp)
   10f68:	00700693          	li	a3,7
   10f6c:	008d8d93          	addi	s11,s11,8
   10f70:	0ce6c263          	blt	a3,a4,11034 <_vfprintf_r+0x7f8>
   10f74:	020f0a63          	beqz	t5,10fa8 <_vfprintf_r+0x76c>
   10f78:	0e812703          	lw	a4,232(sp)
   10f7c:	0c810693          	addi	a3,sp,200
   10f80:	00dda023          	sw	a3,0(s11)
   10f84:	00278793          	addi	a5,a5,2
   10f88:	00200693          	li	a3,2
   10f8c:	00170713          	addi	a4,a4,1
   10f90:	00dda223          	sw	a3,4(s11)
   10f94:	0ef12623          	sw	a5,236(sp)
   10f98:	0ee12423          	sw	a4,232(sp)
   10f9c:	00700693          	li	a3,7
   10fa0:	008d8d93          	addi	s11,s11,8
   10fa4:	4ee6c2e3          	blt	a3,a4,11c88 <_vfprintf_r+0x144c>
   10fa8:	08000713          	li	a4,128
   10fac:	0cee88e3          	beq	t4,a4,1187c <_vfprintf_r+0x1040>
   10fb0:	417b0b33          	sub	s6,s6,s7
   10fb4:	1b604ee3          	bgtz	s6,11970 <_vfprintf_r+0x1134>
   10fb8:	1009f713          	andi	a4,s3,256
   10fbc:	76071c63          	bnez	a4,11734 <_vfprintf_r+0xef8>
   10fc0:	0e812703          	lw	a4,232(sp)
   10fc4:	017787b3          	add	a5,a5,s7
   10fc8:	01ada023          	sw	s10,0(s11)
   10fcc:	00170713          	addi	a4,a4,1
   10fd0:	017da223          	sw	s7,4(s11)
   10fd4:	0ef12623          	sw	a5,236(sp)
   10fd8:	0ee12423          	sw	a4,232(sp)
   10fdc:	00700693          	li	a3,7
   10fe0:	0ce6c663          	blt	a3,a4,110ac <_vfprintf_r+0x870>
   10fe4:	008d8d93          	addi	s11,s11,8
   10fe8:	0049f993          	andi	s3,s3,4
   10fec:	00098663          	beqz	s3,10ff8 <_vfprintf_r+0x7bc>
   10ff0:	41448433          	sub	s0,s1,s4
   10ff4:	0c804c63          	bgtz	s0,110cc <_vfprintf_r+0x890>
   10ff8:	0144d463          	bge	s1,s4,11000 <_vfprintf_r+0x7c4>
   10ffc:	000a0493          	mv	s1,s4
   11000:	00812703          	lw	a4,8(sp)
   11004:	00970733          	add	a4,a4,s1
   11008:	00e12423          	sw	a4,8(sp)
   1100c:	ac079ae3          	bnez	a5,10ae0 <_vfprintf_r+0x2a4>
   11010:	01012783          	lw	a5,16(sp)
   11014:	0e012423          	sw	zero,232(sp)
   11018:	00078863          	beqz	a5,11028 <_vfprintf_r+0x7ec>
   1101c:	01012583          	lw	a1,16(sp)
   11020:	000a8513          	mv	a0,s5
   11024:	018030ef          	jal	ra,1403c <_free_r>
   11028:	10c10d93          	addi	s11,sp,268
   1102c:	00090d13          	mv	s10,s2
   11030:	d0dff06f          	j	10d3c <_vfprintf_r+0x500>
   11034:	00412583          	lw	a1,4(sp)
   11038:	0e410613          	addi	a2,sp,228
   1103c:	000a8513          	mv	a0,s5
   11040:	05d12423          	sw	t4,72(sp)
   11044:	03e12a23          	sw	t5,52(sp)
   11048:	6990a0ef          	jal	ra,1bee0 <__sprint_r>
   1104c:	aa0514e3          	bnez	a0,10af4 <_vfprintf_r+0x2b8>
   11050:	0ec12783          	lw	a5,236(sp)
   11054:	10c10d93          	addi	s11,sp,268
   11058:	04812e83          	lw	t4,72(sp)
   1105c:	03412f03          	lw	t5,52(sp)
   11060:	f15ff06f          	j	10f74 <_vfprintf_r+0x738>
   11064:	0019f613          	andi	a2,s3,1
   11068:	200614e3          	bnez	a2,11a70 <_vfprintf_r+0x1234>
   1106c:	00eda223          	sw	a4,4(s11)
   11070:	0f912623          	sw	s9,236(sp)
   11074:	0e812423          	sw	s0,232(sp)
   11078:	00700713          	li	a4,7
   1107c:	728740e3          	blt	a4,s0,11f9c <_vfprintf_r+0x1760>
   11080:	00268b13          	addi	s6,a3,2
   11084:	010d8d93          	addi	s11,s11,16
   11088:	03812683          	lw	a3,56(sp)
   1108c:	0d410713          	addi	a4,sp,212
   11090:	00eba023          	sw	a4,0(s7)
   11094:	019687b3          	add	a5,a3,s9
   11098:	00dba223          	sw	a3,4(s7)
   1109c:	0ef12623          	sw	a5,236(sp)
   110a0:	0f612423          	sw	s6,232(sp)
   110a4:	00700713          	li	a4,7
   110a8:	f56750e3          	bge	a4,s6,10fe8 <_vfprintf_r+0x7ac>
   110ac:	00412583          	lw	a1,4(sp)
   110b0:	0e410613          	addi	a2,sp,228
   110b4:	000a8513          	mv	a0,s5
   110b8:	6290a0ef          	jal	ra,1bee0 <__sprint_r>
   110bc:	a2051ce3          	bnez	a0,10af4 <_vfprintf_r+0x2b8>
   110c0:	0ec12783          	lw	a5,236(sp)
   110c4:	10c10d93          	addi	s11,sp,268
   110c8:	f21ff06f          	j	10fe8 <_vfprintf_r+0x7ac>
   110cc:	0e812703          	lw	a4,232(sp)
   110d0:	00014c97          	auipc	s9,0x14
   110d4:	cc4c8c93          	addi	s9,s9,-828 # 24d94 <blanks.4504>
   110d8:	068c5063          	bge	s8,s0,11138 <_vfprintf_r+0x8fc>
   110dc:	00700993          	li	s3,7
   110e0:	00412b03          	lw	s6,4(sp)
   110e4:	00c0006f          	j	110f0 <_vfprintf_r+0x8b4>
   110e8:	ff040413          	addi	s0,s0,-16
   110ec:	048c5663          	bge	s8,s0,11138 <_vfprintf_r+0x8fc>
   110f0:	01078793          	addi	a5,a5,16
   110f4:	00170713          	addi	a4,a4,1
   110f8:	019da023          	sw	s9,0(s11)
   110fc:	018da223          	sw	s8,4(s11)
   11100:	0ef12623          	sw	a5,236(sp)
   11104:	0ee12423          	sw	a4,232(sp)
   11108:	008d8d93          	addi	s11,s11,8
   1110c:	fce9dee3          	bge	s3,a4,110e8 <_vfprintf_r+0x8ac>
   11110:	0e410613          	addi	a2,sp,228
   11114:	000b0593          	mv	a1,s6
   11118:	000a8513          	mv	a0,s5
   1111c:	5c50a0ef          	jal	ra,1bee0 <__sprint_r>
   11120:	9c051ae3          	bnez	a0,10af4 <_vfprintf_r+0x2b8>
   11124:	ff040413          	addi	s0,s0,-16
   11128:	0ec12783          	lw	a5,236(sp)
   1112c:	0e812703          	lw	a4,232(sp)
   11130:	10c10d93          	addi	s11,sp,268
   11134:	fa8c4ee3          	blt	s8,s0,110f0 <_vfprintf_r+0x8b4>
   11138:	008787b3          	add	a5,a5,s0
   1113c:	00170713          	addi	a4,a4,1
   11140:	019da023          	sw	s9,0(s11)
   11144:	008da223          	sw	s0,4(s11)
   11148:	0ef12623          	sw	a5,236(sp)
   1114c:	0ee12423          	sw	a4,232(sp)
   11150:	00700693          	li	a3,7
   11154:	eae6d2e3          	bge	a3,a4,10ff8 <_vfprintf_r+0x7bc>
   11158:	00412583          	lw	a1,4(sp)
   1115c:	0e410613          	addi	a2,sp,228
   11160:	000a8513          	mv	a0,s5
   11164:	57d0a0ef          	jal	ra,1bee0 <__sprint_r>
   11168:	980516e3          	bnez	a0,10af4 <_vfprintf_r+0x2b8>
   1116c:	0ec12783          	lw	a5,236(sp)
   11170:	e89ff06f          	j	10ff8 <_vfprintf_r+0x7bc>
   11174:	0089f793          	andi	a5,s3,8
   11178:	54079ae3          	bnez	a5,11ecc <_vfprintf_r+0x1690>
   1117c:	00c12783          	lw	a5,12(sp)
   11180:	0b010513          	addi	a0,sp,176
   11184:	00778793          	addi	a5,a5,7
   11188:	ff87f793          	andi	a5,a5,-8
   1118c:	0007a583          	lw	a1,0(a5)
   11190:	0047a603          	lw	a2,4(a5)
   11194:	00878793          	addi	a5,a5,8
   11198:	00f12623          	sw	a5,12(sp)
   1119c:	4ac130ef          	jal	ra,24648 <__extenddftf2>
   111a0:	0b012783          	lw	a5,176(sp)
   111a4:	0ef12823          	sw	a5,240(sp)
   111a8:	0b412783          	lw	a5,180(sp)
   111ac:	0ef12a23          	sw	a5,244(sp)
   111b0:	0b812783          	lw	a5,184(sp)
   111b4:	0ef12c23          	sw	a5,248(sp)
   111b8:	0bc12783          	lw	a5,188(sp)
   111bc:	0ef12e23          	sw	a5,252(sp)
   111c0:	0f010513          	addi	a0,sp,240
   111c4:	5f1050ef          	jal	ra,16fb4 <_ldcheck>
   111c8:	0ca12623          	sw	a0,204(sp)
   111cc:	00200793          	li	a5,2
   111d0:	00f51463          	bne	a0,a5,111d8 <_vfprintf_r+0x99c>
   111d4:	0ec0106f          	j	122c0 <_vfprintf_r+0x1a84>
   111d8:	00100793          	li	a5,1
   111dc:	00f51463          	bne	a0,a5,111e4 <_vfprintf_r+0x9a8>
   111e0:	28c0106f          	j	1246c <_vfprintf_r+0x1c30>
   111e4:	06100793          	li	a5,97
   111e8:	00f41463          	bne	s0,a5,111f0 <_vfprintf_r+0x9b4>
   111ec:	5a10106f          	j	12f8c <_vfprintf_r+0x2750>
   111f0:	04100793          	li	a5,65
   111f4:	00f41463          	bne	s0,a5,111fc <_vfprintf_r+0x9c0>
   111f8:	5dc0106f          	j	127d4 <_vfprintf_r+0x1f98>
   111fc:	fdf47713          	andi	a4,s0,-33
   11200:	fff00793          	li	a5,-1
   11204:	04e12423          	sw	a4,72(sp)
   11208:	00fb1463          	bne	s6,a5,11210 <_vfprintf_r+0x9d4>
   1120c:	61d0106f          	j	13028 <_vfprintf_r+0x27ec>
   11210:	04700793          	li	a5,71
   11214:	00f71463          	bne	a4,a5,1121c <_vfprintf_r+0x9e0>
   11218:	6010106f          	j	13018 <_vfprintf_r+0x27dc>
   1121c:	0fc12e03          	lw	t3,252(sp)
   11220:	05312a23          	sw	s3,84(sp)
   11224:	1009e793          	ori	a5,s3,256
   11228:	0f012e83          	lw	t4,240(sp)
   1122c:	0f412f03          	lw	t5,244(sp)
   11230:	0f812f83          	lw	t6,248(sp)
   11234:	000e5463          	bgez	t3,1123c <_vfprintf_r+0xa00>
   11238:	2250106f          	j	12c5c <_vfprintf_r+0x2420>
   1123c:	04012e23          	sw	zero,92(sp)
   11240:	00078993          	mv	s3,a5
   11244:	00012823          	sw	zero,16(sp)
   11248:	04812703          	lw	a4,72(sp)
   1124c:	04600793          	li	a5,70
   11250:	00f71463          	bne	a4,a5,11258 <_vfprintf_r+0xa1c>
   11254:	29d0106f          	j	12cf0 <_vfprintf_r+0x24b4>
   11258:	04500793          	li	a5,69
   1125c:	00f71463          	bne	a4,a5,11264 <_vfprintf_r+0xa28>
   11260:	4c10106f          	j	12f20 <_vfprintf_r+0x26e4>
   11264:	0b010b93          	addi	s7,sp,176
   11268:	0d010793          	addi	a5,sp,208
   1126c:	0cc10713          	addi	a4,sp,204
   11270:	0dc10813          	addi	a6,sp,220
   11274:	000b0693          	mv	a3,s6
   11278:	00200613          	li	a2,2
   1127c:	000b8593          	mv	a1,s7
   11280:	000a8513          	mv	a0,s5
   11284:	0bd12823          	sw	t4,176(sp)
   11288:	03d12223          	sw	t4,36(sp)
   1128c:	0be12a23          	sw	t5,180(sp)
   11290:	03e12023          	sw	t5,32(sp)
   11294:	0bf12c23          	sw	t6,184(sp)
   11298:	01f12c23          	sw	t6,24(sp)
   1129c:	0bc12e23          	sw	t3,188(sp)
   112a0:	01c12a23          	sw	t3,20(sp)
   112a4:	21d040ef          	jal	ra,15cc0 <_ldtoa_r>
   112a8:	04812703          	lw	a4,72(sp)
   112ac:	04700793          	li	a5,71
   112b0:	00050d13          	mv	s10,a0
   112b4:	01412e03          	lw	t3,20(sp)
   112b8:	01812f83          	lw	t6,24(sp)
   112bc:	02012f03          	lw	t5,32(sp)
   112c0:	02412e83          	lw	t4,36(sp)
   112c4:	00f70463          	beq	a4,a5,112cc <_vfprintf_r+0xa90>
   112c8:	0580206f          	j	13320 <_vfprintf_r+0x2ae4>
   112cc:	05412783          	lw	a5,84(sp)
   112d0:	0017f793          	andi	a5,a5,1
   112d4:	00078463          	beqz	a5,112dc <_vfprintf_r+0xaa0>
   112d8:	4390106f          	j	12f10 <_vfprintf_r+0x26d4>
   112dc:	0dc12783          	lw	a5,220(sp)
   112e0:	41a787b3          	sub	a5,a5,s10
   112e4:	00f12c23          	sw	a5,24(sp)
   112e8:	0cc12703          	lw	a4,204(sp)
   112ec:	04700793          	li	a5,71
   112f0:	00e12a23          	sw	a4,20(sp)
   112f4:	04812703          	lw	a4,72(sp)
   112f8:	00f71463          	bne	a4,a5,11300 <_vfprintf_r+0xac4>
   112fc:	0d90106f          	j	12bd4 <_vfprintf_r+0x2398>
   11300:	04812703          	lw	a4,72(sp)
   11304:	04600793          	li	a5,70
   11308:	00f71463          	bne	a4,a5,11310 <_vfprintf_r+0xad4>
   1130c:	3810106f          	j	12e8c <_vfprintf_r+0x2650>
   11310:	01412783          	lw	a5,20(sp)
   11314:	04812603          	lw	a2,72(sp)
   11318:	04100693          	li	a3,65
   1131c:	fff78a13          	addi	s4,a5,-1
   11320:	0d412623          	sw	s4,204(sp)
   11324:	0ff47793          	andi	a5,s0,255
   11328:	00000713          	li	a4,0
   1132c:	00d61863          	bne	a2,a3,1133c <_vfprintf_r+0xb00>
   11330:	00f78793          	addi	a5,a5,15
   11334:	0ff7f793          	andi	a5,a5,255
   11338:	00100713          	li	a4,1
   1133c:	0cf10a23          	sb	a5,212(sp)
   11340:	02b00793          	li	a5,43
   11344:	000a5a63          	bgez	s4,11358 <_vfprintf_r+0xb1c>
   11348:	01412783          	lw	a5,20(sp)
   1134c:	00100a13          	li	s4,1
   11350:	40fa0a33          	sub	s4,s4,a5
   11354:	02d00793          	li	a5,45
   11358:	0cf10aa3          	sb	a5,213(sp)
   1135c:	00900793          	li	a5,9
   11360:	0147c463          	blt	a5,s4,11368 <_vfprintf_r+0xb2c>
   11364:	5550106f          	j	130b8 <_vfprintf_r+0x287c>
   11368:	0e310b13          	addi	s6,sp,227
   1136c:	000b0b93          	mv	s7,s6
   11370:	06300993          	li	s3,99
   11374:	00c0006f          	j	11380 <_vfprintf_r+0xb44>
   11378:	00068b93          	mv	s7,a3
   1137c:	00050a13          	mv	s4,a0
   11380:	00a00593          	li	a1,10
   11384:	000a0513          	mv	a0,s4
   11388:	87cff0ef          	jal	ra,10404 <__modsi3>
   1138c:	03050513          	addi	a0,a0,48
   11390:	feab8fa3          	sb	a0,-1(s7)
   11394:	00a00593          	li	a1,10
   11398:	000a0513          	mv	a0,s4
   1139c:	fe5fe0ef          	jal	ra,10380 <__divsi3>
   113a0:	fffb8693          	addi	a3,s7,-1
   113a4:	fd49cae3          	blt	s3,s4,11378 <_vfprintf_r+0xb3c>
   113a8:	03050793          	addi	a5,a0,48
   113ac:	0ff7f793          	andi	a5,a5,255
   113b0:	ffeb8713          	addi	a4,s7,-2
   113b4:	fef68fa3          	sb	a5,-1(a3)
   113b8:	01676463          	bltu	a4,s6,113c0 <_vfprintf_r+0xb84>
   113bc:	73d0106f          	j	132f8 <_vfprintf_r+0x2abc>
   113c0:	0d610693          	addi	a3,sp,214
   113c4:	0080006f          	j	113cc <_vfprintf_r+0xb90>
   113c8:	00074783          	lbu	a5,0(a4)
   113cc:	00168693          	addi	a3,a3,1
   113d0:	00170713          	addi	a4,a4,1
   113d4:	fef68fa3          	sb	a5,-1(a3)
   113d8:	ff6718e3          	bne	a4,s6,113c8 <_vfprintf_r+0xb8c>
   113dc:	0e510793          	addi	a5,sp,229
   113e0:	0d610713          	addi	a4,sp,214
   113e4:	417787b3          	sub	a5,a5,s7
   113e8:	00f707b3          	add	a5,a4,a5
   113ec:	0d410713          	addi	a4,sp,212
   113f0:	40e787b3          	sub	a5,a5,a4
   113f4:	02f12c23          	sw	a5,56(sp)
   113f8:	01812703          	lw	a4,24(sp)
   113fc:	03812683          	lw	a3,56(sp)
   11400:	00100793          	li	a5,1
   11404:	00d70bb3          	add	s7,a4,a3
   11408:	00e7c463          	blt	a5,a4,11410 <_vfprintf_r+0xbd4>
   1140c:	5f50106f          	j	13200 <_vfprintf_r+0x29c4>
   11410:	02812783          	lw	a5,40(sp)
   11414:	00fb8bb3          	add	s7,s7,a5
   11418:	05412783          	lw	a5,84(sp)
   1141c:	fffbca13          	not	s4,s7
   11420:	41fa5a13          	srai	s4,s4,0x1f
   11424:	bff7f993          	andi	s3,a5,-1025
   11428:	1009e993          	ori	s3,s3,256
   1142c:	014bfa33          	and	s4,s7,s4
   11430:	02012223          	sw	zero,36(sp)
   11434:	02012023          	sw	zero,32(sp)
   11438:	00012a23          	sw	zero,20(sp)
   1143c:	05c12783          	lw	a5,92(sp)
   11440:	00079463          	bnez	a5,11448 <_vfprintf_r+0xc0c>
   11444:	0050106f          	j	12c48 <_vfprintf_r+0x240c>
   11448:	02d00793          	li	a5,45
   1144c:	0cf103a3          	sb	a5,199(sp)
   11450:	00000b13          	li	s6,0
   11454:	001a0a13          	addi	s4,s4,1
   11458:	ac5ff06f          	j	10f1c <_vfprintf_r+0x6e0>
   1145c:	0209f793          	andi	a5,s3,32
   11460:	0109ea13          	ori	s4,s3,16
   11464:	1c079c63          	bnez	a5,1163c <_vfprintf_r+0xe00>
   11468:	00c12783          	lw	a5,12(sp)
   1146c:	00478713          	addi	a4,a5,4
   11470:	00c12783          	lw	a5,12(sp)
   11474:	00e12623          	sw	a4,12(sp)
   11478:	0007ac83          	lw	s9,0(a5)
   1147c:	41fcdb93          	srai	s7,s9,0x1f
   11480:	000b8713          	mv	a4,s7
   11484:	940758e3          	bgez	a4,10dd4 <_vfprintf_r+0x598>
   11488:	41900cb3          	neg	s9,s9
   1148c:	01903733          	snez	a4,s9
   11490:	417007b3          	neg	a5,s7
   11494:	40e78bb3          	sub	s7,a5,a4
   11498:	02d00713          	li	a4,45
   1149c:	0ce103a3          	sb	a4,199(sp)
   114a0:	fff00693          	li	a3,-1
   114a4:	00100713          	li	a4,1
   114a8:	f0db1663          	bne	s6,a3,10bb4 <_vfprintf_r+0x378>
   114ac:	00100693          	li	a3,1
   114b0:	20d70263          	beq	a4,a3,116b4 <_vfprintf_r+0xe78>
   114b4:	00200693          	li	a3,2
   114b8:	22d70c63          	beq	a4,a3,116f0 <_vfprintf_r+0xeb4>
   114bc:	1b010693          	addi	a3,sp,432
   114c0:	0080006f          	j	114c8 <_vfprintf_r+0xc8c>
   114c4:	000d0693          	mv	a3,s10
   114c8:	01db9793          	slli	a5,s7,0x1d
   114cc:	007cf713          	andi	a4,s9,7
   114d0:	003cdc93          	srli	s9,s9,0x3
   114d4:	03070713          	addi	a4,a4,48
   114d8:	0197ecb3          	or	s9,a5,s9
   114dc:	003bdb93          	srli	s7,s7,0x3
   114e0:	fee68fa3          	sb	a4,-1(a3)
   114e4:	017ce7b3          	or	a5,s9,s7
   114e8:	fff68d13          	addi	s10,a3,-1
   114ec:	fc079ce3          	bnez	a5,114c4 <_vfprintf_r+0xc88>
   114f0:	001a7793          	andi	a5,s4,1
   114f4:	22078863          	beqz	a5,11724 <_vfprintf_r+0xee8>
   114f8:	03000793          	li	a5,48
   114fc:	22f70463          	beq	a4,a5,11724 <_vfprintf_r+0xee8>
   11500:	ffe68693          	addi	a3,a3,-2
   11504:	fefd0fa3          	sb	a5,-1(s10)
   11508:	1b010793          	addi	a5,sp,432
   1150c:	40d78bb3          	sub	s7,a5,a3
   11510:	000a0993          	mv	s3,s4
   11514:	00068d13          	mv	s10,a3
   11518:	ec0ff06f          	j	10bd8 <_vfprintf_r+0x39c>
   1151c:	00c12783          	lw	a5,12(sp)
   11520:	ffff8737          	lui	a4,0xffff8
   11524:	83074713          	xori	a4,a4,-2000
   11528:	0007ac83          	lw	s9,0(a5)
   1152c:	00478793          	addi	a5,a5,4
   11530:	00f12623          	sw	a5,12(sp)
   11534:	00014797          	auipc	a5,0x14
   11538:	89078793          	addi	a5,a5,-1904 # 24dc4 <zeroes.4505+0x20>
   1153c:	0ce11423          	sh	a4,200(sp)
   11540:	00000b93          	li	s7,0
   11544:	0029ea13          	ori	s4,s3,2
   11548:	02f12623          	sw	a5,44(sp)
   1154c:	00200713          	li	a4,2
   11550:	07800413          	li	s0,120
   11554:	e54ff06f          	j	10ba8 <_vfprintf_r+0x36c>
   11558:	0c714783          	lbu	a5,199(sp)
   1155c:	00094403          	lbu	s0,0(s2)
   11560:	c8079863          	bnez	a5,109f0 <_vfprintf_r+0x1b4>
   11564:	02000793          	li	a5,32
   11568:	0cf103a3          	sb	a5,199(sp)
   1156c:	c84ff06f          	j	109f0 <_vfprintf_r+0x1b4>
   11570:	02b00793          	li	a5,43
   11574:	0cf103a3          	sb	a5,199(sp)
   11578:	00094403          	lbu	s0,0(s2)
   1157c:	c74ff06f          	j	109f0 <_vfprintf_r+0x1b4>
   11580:	00c12783          	lw	a5,12(sp)
   11584:	00094403          	lbu	s0,0(s2)
   11588:	0007a483          	lw	s1,0(a5)
   1158c:	00478793          	addi	a5,a5,4
   11590:	00f12623          	sw	a5,12(sp)
   11594:	c404de63          	bgez	s1,109f0 <_vfprintf_r+0x1b4>
   11598:	409004b3          	neg	s1,s1
   1159c:	0049e993          	ori	s3,s3,4
   115a0:	c50ff06f          	j	109f0 <_vfprintf_r+0x1b4>
   115a4:	0019e993          	ori	s3,s3,1
   115a8:	00094403          	lbu	s0,0(s2)
   115ac:	c44ff06f          	j	109f0 <_vfprintf_r+0x1b4>
   115b0:	0209f793          	andi	a5,s3,32
   115b4:	0c079a63          	bnez	a5,11688 <_vfprintf_r+0xe4c>
   115b8:	00c12683          	lw	a3,12(sp)
   115bc:	0109f793          	andi	a5,s3,16
   115c0:	00468713          	addi	a4,a3,4
   115c4:	0006ac83          	lw	s9,0(a3)
   115c8:	8e079ee3          	bnez	a5,10ec4 <_vfprintf_r+0x688>
   115cc:	0409f793          	andi	a5,s3,64
   115d0:	660782e3          	beqz	a5,12434 <_vfprintf_r+0x1bf8>
   115d4:	010c9c93          	slli	s9,s9,0x10
   115d8:	010cdc93          	srli	s9,s9,0x10
   115dc:	00000b93          	li	s7,0
   115e0:	00e12623          	sw	a4,12(sp)
   115e4:	0c00006f          	j	116a4 <_vfprintf_r+0xe68>
   115e8:	0209f793          	andi	a5,s3,32
   115ec:	06079a63          	bnez	a5,11660 <_vfprintf_r+0xe24>
   115f0:	00c12683          	lw	a3,12(sp)
   115f4:	0109f793          	andi	a5,s3,16
   115f8:	00468713          	addi	a4,a3,4
   115fc:	0006ac83          	lw	s9,0(a3)
   11600:	00078463          	beqz	a5,11608 <_vfprintf_r+0xdcc>
   11604:	4ed0106f          	j	132f0 <_vfprintf_r+0x2ab4>
   11608:	0409f793          	andi	a5,s3,64
   1160c:	640780e3          	beqz	a5,1244c <_vfprintf_r+0x1c10>
   11610:	010c9c93          	slli	s9,s9,0x10
   11614:	00e12623          	sw	a4,12(sp)
   11618:	010cdc93          	srli	s9,s9,0x10
   1161c:	00000b93          	li	s7,0
   11620:	00098a13          	mv	s4,s3
   11624:	00100713          	li	a4,1
   11628:	d80ff06f          	j	10ba8 <_vfprintf_r+0x36c>
   1162c:	01c12503          	lw	a0,28(sp)
   11630:	09d020ef          	jal	ra,13ecc <__sinit>
   11634:	a88ff06f          	j	108bc <_vfprintf_r+0x80>
   11638:	00098a13          	mv	s4,s3
   1163c:	00c12783          	lw	a5,12(sp)
   11640:	00778793          	addi	a5,a5,7
   11644:	ff87f793          	andi	a5,a5,-8
   11648:	0047a703          	lw	a4,4(a5)
   1164c:	00878693          	addi	a3,a5,8
   11650:	00d12623          	sw	a3,12(sp)
   11654:	0007ac83          	lw	s9,0(a5)
   11658:	00070b93          	mv	s7,a4
   1165c:	f74ff06f          	j	10dd0 <_vfprintf_r+0x594>
   11660:	00098a13          	mv	s4,s3
   11664:	00c12783          	lw	a5,12(sp)
   11668:	00778793          	addi	a5,a5,7
   1166c:	ff87f793          	andi	a5,a5,-8
   11670:	00878713          	addi	a4,a5,8
   11674:	00e12623          	sw	a4,12(sp)
   11678:	0007ac83          	lw	s9,0(a5)
   1167c:	0047ab83          	lw	s7,4(a5)
   11680:	00100713          	li	a4,1
   11684:	d24ff06f          	j	10ba8 <_vfprintf_r+0x36c>
   11688:	00c12783          	lw	a5,12(sp)
   1168c:	00778793          	addi	a5,a5,7
   11690:	ff87f793          	andi	a5,a5,-8
   11694:	0007ac83          	lw	s9,0(a5)
   11698:	0047ab83          	lw	s7,4(a5)
   1169c:	00878713          	addi	a4,a5,8
   116a0:	00e12623          	sw	a4,12(sp)
   116a4:	bff9fa13          	andi	s4,s3,-1025
   116a8:	00000713          	li	a4,0
   116ac:	cfcff06f          	j	10ba8 <_vfprintf_r+0x36c>
   116b0:	00098a13          	mv	s4,s3
   116b4:	2e0b96e3          	bnez	s7,121a0 <_vfprintf_r+0x1964>
   116b8:	00900713          	li	a4,9
   116bc:	2f9762e3          	bltu	a4,s9,121a0 <_vfprintf_r+0x1964>
   116c0:	030c8c93          	addi	s9,s9,48
   116c4:	1b9107a3          	sb	s9,431(sp)
   116c8:	000a0993          	mv	s3,s4
   116cc:	00100b93          	li	s7,1
   116d0:	1af10d13          	addi	s10,sp,431
   116d4:	d04ff06f          	j	10bd8 <_vfprintf_r+0x39c>
   116d8:	00100693          	li	a3,1
   116dc:	00d71463          	bne	a4,a3,116e4 <_vfprintf_r+0xea8>
   116e0:	4bc0106f          	j	12b9c <_vfprintf_r+0x2360>
   116e4:	00200693          	li	a3,2
   116e8:	00098a13          	mv	s4,s3
   116ec:	dcd718e3          	bne	a4,a3,114bc <_vfprintf_r+0xc80>
   116f0:	02c12683          	lw	a3,44(sp)
   116f4:	1b010d13          	addi	s10,sp,432
   116f8:	00fcf793          	andi	a5,s9,15
   116fc:	00f687b3          	add	a5,a3,a5
   11700:	0007c783          	lbu	a5,0(a5)
   11704:	01cb9713          	slli	a4,s7,0x1c
   11708:	004cdc93          	srli	s9,s9,0x4
   1170c:	fffd0d13          	addi	s10,s10,-1
   11710:	01976cb3          	or	s9,a4,s9
   11714:	004bdb93          	srli	s7,s7,0x4
   11718:	00fd0023          	sb	a5,0(s10)
   1171c:	017ce7b3          	or	a5,s9,s7
   11720:	fc079ce3          	bnez	a5,116f8 <_vfprintf_r+0xebc>
   11724:	1b010793          	addi	a5,sp,432
   11728:	41a78bb3          	sub	s7,a5,s10
   1172c:	000a0993          	mv	s3,s4
   11730:	ca8ff06f          	j	10bd8 <_vfprintf_r+0x39c>
   11734:	06500713          	li	a4,101
   11738:	30875c63          	bge	a4,s0,11a50 <_vfprintf_r+0x1214>
   1173c:	0f012703          	lw	a4,240(sp)
   11740:	0a010593          	addi	a1,sp,160
   11744:	0b010513          	addi	a0,sp,176
   11748:	0ae12823          	sw	a4,176(sp)
   1174c:	0f412703          	lw	a4,244(sp)
   11750:	02f12a23          	sw	a5,52(sp)
   11754:	0a012023          	sw	zero,160(sp)
   11758:	0ae12a23          	sw	a4,180(sp)
   1175c:	0f812703          	lw	a4,248(sp)
   11760:	0a012223          	sw	zero,164(sp)
   11764:	0a012423          	sw	zero,168(sp)
   11768:	0ae12c23          	sw	a4,184(sp)
   1176c:	0fc12703          	lw	a4,252(sp)
   11770:	0a012623          	sw	zero,172(sp)
   11774:	0ae12e23          	sw	a4,188(sp)
   11778:	7990f0ef          	jal	ra,21710 <__eqtf2>
   1177c:	03412783          	lw	a5,52(sp)
   11780:	52051a63          	bnez	a0,11cb4 <_vfprintf_r+0x1478>
   11784:	0e812703          	lw	a4,232(sp)
   11788:	00013697          	auipc	a3,0x13
   1178c:	66c68693          	addi	a3,a3,1644 # 24df4 <zeroes.4505+0x50>
   11790:	00178793          	addi	a5,a5,1
   11794:	00dda023          	sw	a3,0(s11)
   11798:	00170713          	addi	a4,a4,1 # ffff8001 <__BSS_END__+0xfffd1519>
   1179c:	00100693          	li	a3,1
   117a0:	00dda223          	sw	a3,4(s11)
   117a4:	0ef12623          	sw	a5,236(sp)
   117a8:	0ee12423          	sw	a4,232(sp)
   117ac:	00700793          	li	a5,7
   117b0:	008d8d93          	addi	s11,s11,8
   117b4:	2ae7cee3          	blt	a5,a4,12270 <_vfprintf_r+0x1a34>
   117b8:	0cc12783          	lw	a5,204(sp)
   117bc:	01812703          	lw	a4,24(sp)
   117c0:	00e7ca63          	blt	a5,a4,117d4 <_vfprintf_r+0xf98>
   117c4:	0019f793          	andi	a5,s3,1
   117c8:	00079663          	bnez	a5,117d4 <_vfprintf_r+0xf98>
   117cc:	0ec12783          	lw	a5,236(sp)
   117d0:	819ff06f          	j	10fe8 <_vfprintf_r+0x7ac>
   117d4:	03012783          	lw	a5,48(sp)
   117d8:	02812683          	lw	a3,40(sp)
   117dc:	0e812703          	lw	a4,232(sp)
   117e0:	00fda023          	sw	a5,0(s11)
   117e4:	0ec12783          	lw	a5,236(sp)
   117e8:	00170713          	addi	a4,a4,1
   117ec:	00dda223          	sw	a3,4(s11)
   117f0:	00f687b3          	add	a5,a3,a5
   117f4:	0ef12623          	sw	a5,236(sp)
   117f8:	0ee12423          	sw	a4,232(sp)
   117fc:	00700693          	li	a3,7
   11800:	008d8d93          	addi	s11,s11,8
   11804:	7ce6c463          	blt	a3,a4,11fcc <_vfprintf_r+0x1790>
   11808:	01812703          	lw	a4,24(sp)
   1180c:	fff70413          	addi	s0,a4,-1
   11810:	fc805c63          	blez	s0,10fe8 <_vfprintf_r+0x7ac>
   11814:	0e812703          	lw	a4,232(sp)
   11818:	268c5ce3          	bge	s8,s0,12290 <_vfprintf_r+0x1a54>
   1181c:	00700b93          	li	s7,7
   11820:	00412b03          	lw	s6,4(sp)
   11824:	00c0006f          	j	11830 <_vfprintf_r+0xff4>
   11828:	ff040413          	addi	s0,s0,-16
   1182c:	268c52e3          	bge	s8,s0,12290 <_vfprintf_r+0x1a54>
   11830:	01078793          	addi	a5,a5,16
   11834:	00170713          	addi	a4,a4,1
   11838:	00013697          	auipc	a3,0x13
   1183c:	56c68693          	addi	a3,a3,1388 # 24da4 <zeroes.4505>
   11840:	00dda023          	sw	a3,0(s11)
   11844:	018da223          	sw	s8,4(s11)
   11848:	0ef12623          	sw	a5,236(sp)
   1184c:	0ee12423          	sw	a4,232(sp)
   11850:	008d8d93          	addi	s11,s11,8
   11854:	fcebdae3          	bge	s7,a4,11828 <_vfprintf_r+0xfec>
   11858:	0e410613          	addi	a2,sp,228
   1185c:	000b0593          	mv	a1,s6
   11860:	000a8513          	mv	a0,s5
   11864:	67c0a0ef          	jal	ra,1bee0 <__sprint_r>
   11868:	a8051663          	bnez	a0,10af4 <_vfprintf_r+0x2b8>
   1186c:	0ec12783          	lw	a5,236(sp)
   11870:	0e812703          	lw	a4,232(sp)
   11874:	10c10d93          	addi	s11,sp,268
   11878:	fb1ff06f          	j	11828 <_vfprintf_r+0xfec>
   1187c:	41448cb3          	sub	s9,s1,s4
   11880:	f3905863          	blez	s9,10fb0 <_vfprintf_r+0x774>
   11884:	0e812703          	lw	a4,232(sp)
   11888:	099c5e63          	bge	s8,s9,11924 <_vfprintf_r+0x10e8>
   1188c:	000c8693          	mv	a3,s9
   11890:	02812a23          	sw	s0,52(sp)
   11894:	000b8c93          	mv	s9,s7
   11898:	00700e13          	li	t3,7
   1189c:	000a0b93          	mv	s7,s4
   118a0:	00412403          	lw	s0,4(sp)
   118a4:	00048a13          	mv	s4,s1
   118a8:	00068493          	mv	s1,a3
   118ac:	00c0006f          	j	118b8 <_vfprintf_r+0x107c>
   118b0:	ff048493          	addi	s1,s1,-16
   118b4:	049c5c63          	bge	s8,s1,1190c <_vfprintf_r+0x10d0>
   118b8:	01078793          	addi	a5,a5,16
   118bc:	00170713          	addi	a4,a4,1
   118c0:	00013697          	auipc	a3,0x13
   118c4:	4e468693          	addi	a3,a3,1252 # 24da4 <zeroes.4505>
   118c8:	00dda023          	sw	a3,0(s11)
   118cc:	018da223          	sw	s8,4(s11)
   118d0:	0ef12623          	sw	a5,236(sp)
   118d4:	0ee12423          	sw	a4,232(sp)
   118d8:	008d8d93          	addi	s11,s11,8
   118dc:	fcee5ae3          	bge	t3,a4,118b0 <_vfprintf_r+0x1074>
   118e0:	0e410613          	addi	a2,sp,228
   118e4:	00040593          	mv	a1,s0
   118e8:	000a8513          	mv	a0,s5
   118ec:	5f40a0ef          	jal	ra,1bee0 <__sprint_r>
   118f0:	a0051263          	bnez	a0,10af4 <_vfprintf_r+0x2b8>
   118f4:	ff048493          	addi	s1,s1,-16
   118f8:	0ec12783          	lw	a5,236(sp)
   118fc:	0e812703          	lw	a4,232(sp)
   11900:	10c10d93          	addi	s11,sp,268
   11904:	00700e13          	li	t3,7
   11908:	fa9c48e3          	blt	s8,s1,118b8 <_vfprintf_r+0x107c>
   1190c:	03412403          	lw	s0,52(sp)
   11910:	00048693          	mv	a3,s1
   11914:	000a0493          	mv	s1,s4
   11918:	000b8a13          	mv	s4,s7
   1191c:	000c8b93          	mv	s7,s9
   11920:	00068c93          	mv	s9,a3
   11924:	00013697          	auipc	a3,0x13
   11928:	48068693          	addi	a3,a3,1152 # 24da4 <zeroes.4505>
   1192c:	019787b3          	add	a5,a5,s9
   11930:	00170713          	addi	a4,a4,1
   11934:	00dda023          	sw	a3,0(s11)
   11938:	019da223          	sw	s9,4(s11)
   1193c:	0ef12623          	sw	a5,236(sp)
   11940:	0ee12423          	sw	a4,232(sp)
   11944:	00700693          	li	a3,7
   11948:	008d8d93          	addi	s11,s11,8
   1194c:	e6e6d263          	bge	a3,a4,10fb0 <_vfprintf_r+0x774>
   11950:	00412583          	lw	a1,4(sp)
   11954:	0e410613          	addi	a2,sp,228
   11958:	000a8513          	mv	a0,s5
   1195c:	5840a0ef          	jal	ra,1bee0 <__sprint_r>
   11960:	98051a63          	bnez	a0,10af4 <_vfprintf_r+0x2b8>
   11964:	0ec12783          	lw	a5,236(sp)
   11968:	10c10d93          	addi	s11,sp,268
   1196c:	e44ff06f          	j	10fb0 <_vfprintf_r+0x774>
   11970:	0e812703          	lw	a4,232(sp)
   11974:	096c5863          	bge	s8,s6,11a04 <_vfprintf_r+0x11c8>
   11978:	000a0693          	mv	a3,s4
   1197c:	02812a23          	sw	s0,52(sp)
   11980:	00048a13          	mv	s4,s1
   11984:	00700c93          	li	s9,7
   11988:	000b0493          	mv	s1,s6
   1198c:	00412403          	lw	s0,4(sp)
   11990:	00068b13          	mv	s6,a3
   11994:	00c0006f          	j	119a0 <_vfprintf_r+0x1164>
   11998:	ff048493          	addi	s1,s1,-16
   1199c:	049c5a63          	bge	s8,s1,119f0 <_vfprintf_r+0x11b4>
   119a0:	01078793          	addi	a5,a5,16
   119a4:	00170713          	addi	a4,a4,1
   119a8:	00013697          	auipc	a3,0x13
   119ac:	3fc68693          	addi	a3,a3,1020 # 24da4 <zeroes.4505>
   119b0:	00dda023          	sw	a3,0(s11)
   119b4:	018da223          	sw	s8,4(s11)
   119b8:	0ef12623          	sw	a5,236(sp)
   119bc:	0ee12423          	sw	a4,232(sp)
   119c0:	008d8d93          	addi	s11,s11,8
   119c4:	fcecdae3          	bge	s9,a4,11998 <_vfprintf_r+0x115c>
   119c8:	0e410613          	addi	a2,sp,228
   119cc:	00040593          	mv	a1,s0
   119d0:	000a8513          	mv	a0,s5
   119d4:	50c0a0ef          	jal	ra,1bee0 <__sprint_r>
   119d8:	90051e63          	bnez	a0,10af4 <_vfprintf_r+0x2b8>
   119dc:	ff048493          	addi	s1,s1,-16
   119e0:	0ec12783          	lw	a5,236(sp)
   119e4:	0e812703          	lw	a4,232(sp)
   119e8:	10c10d93          	addi	s11,sp,268
   119ec:	fa9c4ae3          	blt	s8,s1,119a0 <_vfprintf_r+0x1164>
   119f0:	03412403          	lw	s0,52(sp)
   119f4:	000b0693          	mv	a3,s6
   119f8:	00048b13          	mv	s6,s1
   119fc:	000a0493          	mv	s1,s4
   11a00:	00068a13          	mv	s4,a3
   11a04:	00013697          	auipc	a3,0x13
   11a08:	3a068693          	addi	a3,a3,928 # 24da4 <zeroes.4505>
   11a0c:	016787b3          	add	a5,a5,s6
   11a10:	00170713          	addi	a4,a4,1
   11a14:	00dda023          	sw	a3,0(s11)
   11a18:	016da223          	sw	s6,4(s11)
   11a1c:	0ef12623          	sw	a5,236(sp)
   11a20:	0ee12423          	sw	a4,232(sp)
   11a24:	00700693          	li	a3,7
   11a28:	008d8d93          	addi	s11,s11,8
   11a2c:	d8e6d663          	bge	a3,a4,10fb8 <_vfprintf_r+0x77c>
   11a30:	00412583          	lw	a1,4(sp)
   11a34:	0e410613          	addi	a2,sp,228
   11a38:	000a8513          	mv	a0,s5
   11a3c:	4a40a0ef          	jal	ra,1bee0 <__sprint_r>
   11a40:	8a051a63          	bnez	a0,10af4 <_vfprintf_r+0x2b8>
   11a44:	0ec12783          	lw	a5,236(sp)
   11a48:	10c10d93          	addi	s11,sp,268
   11a4c:	d6cff06f          	j	10fb8 <_vfprintf_r+0x77c>
   11a50:	0e812683          	lw	a3,232(sp)
   11a54:	00178c93          	addi	s9,a5,1
   11a58:	01812783          	lw	a5,24(sp)
   11a5c:	00100713          	li	a4,1
   11a60:	01ada023          	sw	s10,0(s11)
   11a64:	00168413          	addi	s0,a3,1
   11a68:	008d8b93          	addi	s7,s11,8
   11a6c:	def75c63          	bge	a4,a5,11064 <_vfprintf_r+0x828>
   11a70:	00100713          	li	a4,1
   11a74:	00eda223          	sw	a4,4(s11)
   11a78:	0f912623          	sw	s9,236(sp)
   11a7c:	0e812423          	sw	s0,232(sp)
   11a80:	00700713          	li	a4,7
   11a84:	62874063          	blt	a4,s0,120a4 <_vfprintf_r+0x1868>
   11a88:	02812783          	lw	a5,40(sp)
   11a8c:	03012703          	lw	a4,48(sp)
   11a90:	00140413          	addi	s0,s0,1
   11a94:	00fc8cb3          	add	s9,s9,a5
   11a98:	00eba023          	sw	a4,0(s7)
   11a9c:	00fba223          	sw	a5,4(s7)
   11aa0:	0f912623          	sw	s9,236(sp)
   11aa4:	0e812423          	sw	s0,232(sp)
   11aa8:	00700713          	li	a4,7
   11aac:	008b8b93          	addi	s7,s7,8
   11ab0:	60874e63          	blt	a4,s0,120cc <_vfprintf_r+0x1890>
   11ab4:	0f012703          	lw	a4,240(sp)
   11ab8:	01812783          	lw	a5,24(sp)
   11abc:	00140613          	addi	a2,s0,1
   11ac0:	0ae12823          	sw	a4,176(sp)
   11ac4:	0f412703          	lw	a4,244(sp)
   11ac8:	0a010593          	addi	a1,sp,160
   11acc:	0b010513          	addi	a0,sp,176
   11ad0:	0ae12a23          	sw	a4,180(sp)
   11ad4:	0f812703          	lw	a4,248(sp)
   11ad8:	00060b13          	mv	s6,a2
   11adc:	02c12023          	sw	a2,32(sp)
   11ae0:	0ae12c23          	sw	a4,184(sp)
   11ae4:	0fc12703          	lw	a4,252(sp)
   11ae8:	0a012023          	sw	zero,160(sp)
   11aec:	0a012223          	sw	zero,164(sp)
   11af0:	0ae12e23          	sw	a4,188(sp)
   11af4:	fff78713          	addi	a4,a5,-1
   11af8:	00e12a23          	sw	a4,20(sp)
   11afc:	0a012423          	sw	zero,168(sp)
   11b00:	0a012623          	sw	zero,172(sp)
   11b04:	40d0f0ef          	jal	ra,21710 <__eqtf2>
   11b08:	008b8d93          	addi	s11,s7,8
   11b0c:	01412703          	lw	a4,20(sp)
   11b10:	02012603          	lw	a2,32(sp)
   11b14:	32050063          	beqz	a0,11e34 <_vfprintf_r+0x15f8>
   11b18:	00ec8cb3          	add	s9,s9,a4
   11b1c:	001d0813          	addi	a6,s10,1
   11b20:	00eba223          	sw	a4,4(s7)
   11b24:	010ba023          	sw	a6,0(s7)
   11b28:	0f912623          	sw	s9,236(sp)
   11b2c:	0f612423          	sw	s6,232(sp)
   11b30:	00700713          	li	a4,7
   11b34:	47674463          	blt	a4,s6,11f9c <_vfprintf_r+0x1760>
   11b38:	010b8713          	addi	a4,s7,16
   11b3c:	00240b13          	addi	s6,s0,2
   11b40:	000d8b93          	mv	s7,s11
   11b44:	00070d93          	mv	s11,a4
   11b48:	d40ff06f          	j	11088 <_vfprintf_r+0x84c>
   11b4c:	00098a13          	mv	s4,s3
   11b50:	95dff06f          	j	114ac <_vfprintf_r+0xc70>
   11b54:	0e812703          	lw	a4,232(sp)
   11b58:	00013c97          	auipc	s9,0x13
   11b5c:	23cc8c93          	addi	s9,s9,572 # 24d94 <blanks.4504>
   11b60:	0cdc5863          	bge	s8,a3,11c30 <_vfprintf_r+0x13f4>
   11b64:	05212623          	sw	s2,76(sp)
   11b68:	000d8613          	mv	a2,s11
   11b6c:	000c8913          	mv	s2,s9
   11b70:	000d0d93          	mv	s11,s10
   11b74:	000a0c93          	mv	s9,s4
   11b78:	000b8d13          	mv	s10,s7
   11b7c:	00098a13          	mv	s4,s3
   11b80:	000b0b93          	mv	s7,s6
   11b84:	00040993          	mv	s3,s0
   11b88:	00048b13          	mv	s6,s1
   11b8c:	00700f93          	li	t6,7
   11b90:	03e12a23          	sw	t5,52(sp)
   11b94:	05d12423          	sw	t4,72(sp)
   11b98:	00412483          	lw	s1,4(sp)
   11b9c:	00068413          	mv	s0,a3
   11ba0:	00c0006f          	j	11bac <_vfprintf_r+0x1370>
   11ba4:	ff040413          	addi	s0,s0,-16
   11ba8:	048c5a63          	bge	s8,s0,11bfc <_vfprintf_r+0x13c0>
   11bac:	01078793          	addi	a5,a5,16
   11bb0:	00170713          	addi	a4,a4,1
   11bb4:	01262023          	sw	s2,0(a2)
   11bb8:	01862223          	sw	s8,4(a2)
   11bbc:	0ef12623          	sw	a5,236(sp)
   11bc0:	0ee12423          	sw	a4,232(sp)
   11bc4:	00860613          	addi	a2,a2,8
   11bc8:	fcefdee3          	bge	t6,a4,11ba4 <_vfprintf_r+0x1368>
   11bcc:	0e410613          	addi	a2,sp,228
   11bd0:	00048593          	mv	a1,s1
   11bd4:	000a8513          	mv	a0,s5
   11bd8:	3080a0ef          	jal	ra,1bee0 <__sprint_r>
   11bdc:	00050463          	beqz	a0,11be4 <_vfprintf_r+0x13a8>
   11be0:	f15fe06f          	j	10af4 <_vfprintf_r+0x2b8>
   11be4:	ff040413          	addi	s0,s0,-16
   11be8:	0ec12783          	lw	a5,236(sp)
   11bec:	0e812703          	lw	a4,232(sp)
   11bf0:	10c10613          	addi	a2,sp,268
   11bf4:	00700f93          	li	t6,7
   11bf8:	fa8c4ae3          	blt	s8,s0,11bac <_vfprintf_r+0x1370>
   11bfc:	00040693          	mv	a3,s0
   11c00:	03412f03          	lw	t5,52(sp)
   11c04:	00098413          	mv	s0,s3
   11c08:	04812e83          	lw	t4,72(sp)
   11c0c:	000a0993          	mv	s3,s4
   11c10:	000c8a13          	mv	s4,s9
   11c14:	00090c93          	mv	s9,s2
   11c18:	04c12903          	lw	s2,76(sp)
   11c1c:	000b0493          	mv	s1,s6
   11c20:	000b8b13          	mv	s6,s7
   11c24:	000d0b93          	mv	s7,s10
   11c28:	000d8d13          	mv	s10,s11
   11c2c:	00060d93          	mv	s11,a2
   11c30:	00d787b3          	add	a5,a5,a3
   11c34:	00170713          	addi	a4,a4,1
   11c38:	00dda223          	sw	a3,4(s11)
   11c3c:	019da023          	sw	s9,0(s11)
   11c40:	0ef12623          	sw	a5,236(sp)
   11c44:	0ee12423          	sw	a4,232(sp)
   11c48:	00700693          	li	a3,7
   11c4c:	008d8d93          	addi	s11,s11,8
   11c50:	aee6d663          	bge	a3,a4,10f3c <_vfprintf_r+0x700>
   11c54:	00412583          	lw	a1,4(sp)
   11c58:	0e410613          	addi	a2,sp,228
   11c5c:	000a8513          	mv	a0,s5
   11c60:	05d12423          	sw	t4,72(sp)
   11c64:	03e12a23          	sw	t5,52(sp)
   11c68:	2780a0ef          	jal	ra,1bee0 <__sprint_r>
   11c6c:	00050463          	beqz	a0,11c74 <_vfprintf_r+0x1438>
   11c70:	e85fe06f          	j	10af4 <_vfprintf_r+0x2b8>
   11c74:	0ec12783          	lw	a5,236(sp)
   11c78:	10c10d93          	addi	s11,sp,268
   11c7c:	04812e83          	lw	t4,72(sp)
   11c80:	03412f03          	lw	t5,52(sp)
   11c84:	ab8ff06f          	j	10f3c <_vfprintf_r+0x700>
   11c88:	00412583          	lw	a1,4(sp)
   11c8c:	0e410613          	addi	a2,sp,228
   11c90:	000a8513          	mv	a0,s5
   11c94:	03d12a23          	sw	t4,52(sp)
   11c98:	2480a0ef          	jal	ra,1bee0 <__sprint_r>
   11c9c:	00050463          	beqz	a0,11ca4 <_vfprintf_r+0x1468>
   11ca0:	e55fe06f          	j	10af4 <_vfprintf_r+0x2b8>
   11ca4:	0ec12783          	lw	a5,236(sp)
   11ca8:	10c10d93          	addi	s11,sp,268
   11cac:	03412e83          	lw	t4,52(sp)
   11cb0:	af8ff06f          	j	10fa8 <_vfprintf_r+0x76c>
   11cb4:	0cc12683          	lw	a3,204(sp)
   11cb8:	42d05e63          	blez	a3,120f4 <_vfprintf_r+0x18b8>
   11cbc:	01812703          	lw	a4,24(sp)
   11cc0:	01412683          	lw	a3,20(sp)
   11cc4:	00070413          	mv	s0,a4
   11cc8:	28e6cc63          	blt	a3,a4,11f60 <_vfprintf_r+0x1724>
   11ccc:	02805663          	blez	s0,11cf8 <_vfprintf_r+0x14bc>
   11cd0:	0e812703          	lw	a4,232(sp)
   11cd4:	008787b3          	add	a5,a5,s0
   11cd8:	01ada023          	sw	s10,0(s11)
   11cdc:	00170713          	addi	a4,a4,1
   11ce0:	008da223          	sw	s0,4(s11)
   11ce4:	0ef12623          	sw	a5,236(sp)
   11ce8:	0ee12423          	sw	a4,232(sp)
   11cec:	00700693          	li	a3,7
   11cf0:	008d8d93          	addi	s11,s11,8
   11cf4:	1ee6cee3          	blt	a3,a4,126f0 <_vfprintf_r+0x1eb4>
   11cf8:	fff44713          	not	a4,s0
   11cfc:	41f75713          	srai	a4,a4,0x1f
   11d00:	00e47433          	and	s0,s0,a4
   11d04:	01412703          	lw	a4,20(sp)
   11d08:	40870433          	sub	s0,a4,s0
   11d0c:	32804263          	bgtz	s0,12030 <_vfprintf_r+0x17f4>
   11d10:	01412683          	lw	a3,20(sp)
   11d14:	4009f713          	andi	a4,s3,1024
   11d18:	00dd0b33          	add	s6,s10,a3
   11d1c:	7c071663          	bnez	a4,124e8 <_vfprintf_r+0x1cac>
   11d20:	0cc12403          	lw	s0,204(sp)
   11d24:	01812703          	lw	a4,24(sp)
   11d28:	00e44663          	blt	s0,a4,11d34 <_vfprintf_r+0x14f8>
   11d2c:	0019f713          	andi	a4,s3,1
   11d30:	1e0706e3          	beqz	a4,1271c <_vfprintf_r+0x1ee0>
   11d34:	03012703          	lw	a4,48(sp)
   11d38:	02812683          	lw	a3,40(sp)
   11d3c:	008d8d93          	addi	s11,s11,8
   11d40:	feedac23          	sw	a4,-8(s11)
   11d44:	0e812703          	lw	a4,232(sp)
   11d48:	00d787b3          	add	a5,a5,a3
   11d4c:	feddae23          	sw	a3,-4(s11)
   11d50:	00170713          	addi	a4,a4,1
   11d54:	0ef12623          	sw	a5,236(sp)
   11d58:	0ee12423          	sw	a4,232(sp)
   11d5c:	00700693          	li	a3,7
   11d60:	00e6d463          	bge	a3,a4,11d68 <_vfprintf_r+0x152c>
   11d64:	0700106f          	j	12dd4 <_vfprintf_r+0x2598>
   11d68:	01812683          	lw	a3,24(sp)
   11d6c:	00dd0733          	add	a4,s10,a3
   11d70:	40868433          	sub	s0,a3,s0
   11d74:	41670733          	sub	a4,a4,s6
   11d78:	00040b93          	mv	s7,s0
   11d7c:	00875463          	bge	a4,s0,11d84 <_vfprintf_r+0x1548>
   11d80:	00070b93          	mv	s7,a4
   11d84:	03705863          	blez	s7,11db4 <_vfprintf_r+0x1578>
   11d88:	0e812703          	lw	a4,232(sp)
   11d8c:	017787b3          	add	a5,a5,s7
   11d90:	016da023          	sw	s6,0(s11)
   11d94:	00170713          	addi	a4,a4,1
   11d98:	017da223          	sw	s7,4(s11)
   11d9c:	0ef12623          	sw	a5,236(sp)
   11da0:	0ee12423          	sw	a4,232(sp)
   11da4:	00700693          	li	a3,7
   11da8:	008d8d93          	addi	s11,s11,8
   11dac:	00e6d463          	bge	a3,a4,11db4 <_vfprintf_r+0x1578>
   11db0:	0ac0106f          	j	12e5c <_vfprintf_r+0x2620>
   11db4:	fffbc713          	not	a4,s7
   11db8:	41f75713          	srai	a4,a4,0x1f
   11dbc:	00ebfbb3          	and	s7,s7,a4
   11dc0:	41740433          	sub	s0,s0,s7
   11dc4:	a2805263          	blez	s0,10fe8 <_vfprintf_r+0x7ac>
   11dc8:	0e812703          	lw	a4,232(sp)
   11dcc:	4c8c5263          	bge	s8,s0,12290 <_vfprintf_r+0x1a54>
   11dd0:	00700b93          	li	s7,7
   11dd4:	00412b03          	lw	s6,4(sp)
   11dd8:	00c0006f          	j	11de4 <_vfprintf_r+0x15a8>
   11ddc:	ff040413          	addi	s0,s0,-16
   11de0:	4a8c5863          	bge	s8,s0,12290 <_vfprintf_r+0x1a54>
   11de4:	01078793          	addi	a5,a5,16
   11de8:	00170713          	addi	a4,a4,1
   11dec:	00013697          	auipc	a3,0x13
   11df0:	fb868693          	addi	a3,a3,-72 # 24da4 <zeroes.4505>
   11df4:	00dda023          	sw	a3,0(s11)
   11df8:	018da223          	sw	s8,4(s11)
   11dfc:	0ef12623          	sw	a5,236(sp)
   11e00:	0ee12423          	sw	a4,232(sp)
   11e04:	008d8d93          	addi	s11,s11,8
   11e08:	fcebdae3          	bge	s7,a4,11ddc <_vfprintf_r+0x15a0>
   11e0c:	0e410613          	addi	a2,sp,228
   11e10:	000b0593          	mv	a1,s6
   11e14:	000a8513          	mv	a0,s5
   11e18:	0c80a0ef          	jal	ra,1bee0 <__sprint_r>
   11e1c:	00050463          	beqz	a0,11e24 <_vfprintf_r+0x15e8>
   11e20:	cd5fe06f          	j	10af4 <_vfprintf_r+0x2b8>
   11e24:	0ec12783          	lw	a5,236(sp)
   11e28:	0e812703          	lw	a4,232(sp)
   11e2c:	10c10d93          	addi	s11,sp,268
   11e30:	fadff06f          	j	11ddc <_vfprintf_r+0x15a0>
   11e34:	a4e05a63          	blez	a4,11088 <_vfprintf_r+0x84c>
   11e38:	00ec4463          	blt	s8,a4,11e40 <_vfprintf_r+0x1604>
   11e3c:	4880106f          	j	132c4 <_vfprintf_r+0x2a88>
   11e40:	00700b13          	li	s6,7
   11e44:	00070d93          	mv	s11,a4
   11e48:	00412d03          	lw	s10,4(sp)
   11e4c:	00060413          	mv	s0,a2
   11e50:	0100006f          	j	11e60 <_vfprintf_r+0x1624>
   11e54:	ff0d8d93          	addi	s11,s11,-16
   11e58:	11bc5a63          	bge	s8,s11,11f6c <_vfprintf_r+0x1730>
   11e5c:	00140413          	addi	s0,s0,1
   11e60:	010c8c93          	addi	s9,s9,16
   11e64:	00013797          	auipc	a5,0x13
   11e68:	f4078793          	addi	a5,a5,-192 # 24da4 <zeroes.4505>
   11e6c:	00fba023          	sw	a5,0(s7)
   11e70:	018ba223          	sw	s8,4(s7)
   11e74:	0f912623          	sw	s9,236(sp)
   11e78:	0e812423          	sw	s0,232(sp)
   11e7c:	008b8b93          	addi	s7,s7,8
   11e80:	fc8b5ae3          	bge	s6,s0,11e54 <_vfprintf_r+0x1618>
   11e84:	0e410613          	addi	a2,sp,228
   11e88:	000d0593          	mv	a1,s10
   11e8c:	000a8513          	mv	a0,s5
   11e90:	0500a0ef          	jal	ra,1bee0 <__sprint_r>
   11e94:	00050463          	beqz	a0,11e9c <_vfprintf_r+0x1660>
   11e98:	c5dfe06f          	j	10af4 <_vfprintf_r+0x2b8>
   11e9c:	0ec12c83          	lw	s9,236(sp)
   11ea0:	0e812403          	lw	s0,232(sp)
   11ea4:	10c10b93          	addi	s7,sp,268
   11ea8:	fadff06f          	j	11e54 <_vfprintf_r+0x1618>
   11eac:	03000793          	li	a5,48
   11eb0:	1af107a3          	sb	a5,431(sp)
   11eb4:	1af10d13          	addi	s10,sp,431
   11eb8:	d21fe06f          	j	10bd8 <_vfprintf_r+0x39c>
   11ebc:	2009f793          	andi	a5,s3,512
   11ec0:	0c0798e3          	bnez	a5,12790 <_vfprintf_r+0x1f54>
   11ec4:	00000b93          	li	s7,0
   11ec8:	cc5fe06f          	j	10b8c <_vfprintf_r+0x350>
   11ecc:	00c12703          	lw	a4,12(sp)
   11ed0:	00072783          	lw	a5,0(a4)
   11ed4:	00470713          	addi	a4,a4,4
   11ed8:	00e12623          	sw	a4,12(sp)
   11edc:	0007a603          	lw	a2,0(a5)
   11ee0:	0047a683          	lw	a3,4(a5)
   11ee4:	0087a703          	lw	a4,8(a5)
   11ee8:	00c7a783          	lw	a5,12(a5)
   11eec:	0ec12823          	sw	a2,240(sp)
   11ef0:	0ed12a23          	sw	a3,244(sp)
   11ef4:	0ee12c23          	sw	a4,248(sp)
   11ef8:	0ef12e23          	sw	a5,252(sp)
   11efc:	ac4ff06f          	j	111c0 <_vfprintf_r+0x984>
   11f00:	03000713          	li	a4,48
   11f04:	0029e993          	ori	s3,s3,2
   11f08:	0ce10423          	sb	a4,200(sp)
   11f0c:	0c8104a3          	sb	s0,201(sp)
   11f10:	bff9fa13          	andi	s4,s3,-1025
   11f14:	00200713          	li	a4,2
   11f18:	c91fe06f          	j	10ba8 <_vfprintf_r+0x36c>
   11f1c:	00812603          	lw	a2,8(sp)
   11f20:	0006a783          	lw	a5,0(a3)
   11f24:	00e12623          	sw	a4,12(sp)
   11f28:	41f65693          	srai	a3,a2,0x1f
   11f2c:	00c7a023          	sw	a2,0(a5)
   11f30:	00d7a223          	sw	a3,4(a5)
   11f34:	00090d13          	mv	s10,s2
   11f38:	e05fe06f          	j	10d3c <_vfprintf_r+0x500>
   11f3c:	03c12783          	lw	a5,60(sp)
   11f40:	00094403          	lbu	s0,0(s2)
   11f44:	00079463          	bnez	a5,11f4c <_vfprintf_r+0x1710>
   11f48:	aa9fe06f          	j	109f0 <_vfprintf_r+0x1b4>
   11f4c:	0007c783          	lbu	a5,0(a5)
   11f50:	00079463          	bnez	a5,11f58 <_vfprintf_r+0x171c>
   11f54:	a9dfe06f          	j	109f0 <_vfprintf_r+0x1b4>
   11f58:	4009e993          	ori	s3,s3,1024
   11f5c:	a95fe06f          	j	109f0 <_vfprintf_r+0x1b4>
   11f60:	00068413          	mv	s0,a3
   11f64:	d68046e3          	bgtz	s0,11cd0 <_vfprintf_r+0x1494>
   11f68:	d91ff06f          	j	11cf8 <_vfprintf_r+0x14bc>
   11f6c:	000d8713          	mv	a4,s11
   11f70:	00140b13          	addi	s6,s0,1
   11f74:	008b8613          	addi	a2,s7,8
   11f78:	00ec8cb3          	add	s9,s9,a4
   11f7c:	00013797          	auipc	a5,0x13
   11f80:	e2878793          	addi	a5,a5,-472 # 24da4 <zeroes.4505>
   11f84:	00eba223          	sw	a4,4(s7)
   11f88:	00fba023          	sw	a5,0(s7)
   11f8c:	0f912623          	sw	s9,236(sp)
   11f90:	0f612423          	sw	s6,232(sp)
   11f94:	00700713          	li	a4,7
   11f98:	71675a63          	bge	a4,s6,126ac <_vfprintf_r+0x1e70>
   11f9c:	00412583          	lw	a1,4(sp)
   11fa0:	0e410613          	addi	a2,sp,228
   11fa4:	000a8513          	mv	a0,s5
   11fa8:	739090ef          	jal	ra,1bee0 <__sprint_r>
   11fac:	00050463          	beqz	a0,11fb4 <_vfprintf_r+0x1778>
   11fb0:	b45fe06f          	j	10af4 <_vfprintf_r+0x2b8>
   11fb4:	0e812683          	lw	a3,232(sp)
   11fb8:	0ec12c83          	lw	s9,236(sp)
   11fbc:	11410d93          	addi	s11,sp,276
   11fc0:	00168b13          	addi	s6,a3,1
   11fc4:	10c10b93          	addi	s7,sp,268
   11fc8:	8c0ff06f          	j	11088 <_vfprintf_r+0x84c>
   11fcc:	00412583          	lw	a1,4(sp)
   11fd0:	0e410613          	addi	a2,sp,228
   11fd4:	000a8513          	mv	a0,s5
   11fd8:	709090ef          	jal	ra,1bee0 <__sprint_r>
   11fdc:	00050463          	beqz	a0,11fe4 <_vfprintf_r+0x17a8>
   11fe0:	b15fe06f          	j	10af4 <_vfprintf_r+0x2b8>
   11fe4:	0ec12783          	lw	a5,236(sp)
   11fe8:	10c10d93          	addi	s11,sp,268
   11fec:	81dff06f          	j	11808 <_vfprintf_r+0xfcc>
   11ff0:	00194403          	lbu	s0,1(s2)
   11ff4:	2009e993          	ori	s3,s3,512
   11ff8:	00190913          	addi	s2,s2,1
   11ffc:	9f5fe06f          	j	109f0 <_vfprintf_r+0x1b4>
   12000:	00194403          	lbu	s0,1(s2)
   12004:	0209e993          	ori	s3,s3,32
   12008:	00190913          	addi	s2,s2,1
   1200c:	9e5fe06f          	j	109f0 <_vfprintf_r+0x1b4>
   12010:	00600793          	li	a5,6
   12014:	000b0b93          	mv	s7,s6
   12018:	6f67ee63          	bltu	a5,s6,12714 <_vfprintf_r+0x1ed8>
   1201c:	000b8a13          	mv	s4,s7
   12020:	01912623          	sw	s9,12(sp)
   12024:	00013d17          	auipc	s10,0x13
   12028:	dc8d0d13          	addi	s10,s10,-568 # 24dec <zeroes.4505+0x48>
   1202c:	eddfe06f          	j	10f08 <_vfprintf_r+0x6cc>
   12030:	0e812703          	lw	a4,232(sp)
   12034:	468c5263          	bge	s8,s0,12498 <_vfprintf_r+0x1c5c>
   12038:	00700b93          	li	s7,7
   1203c:	00412b03          	lw	s6,4(sp)
   12040:	00c0006f          	j	1204c <_vfprintf_r+0x1810>
   12044:	ff040413          	addi	s0,s0,-16
   12048:	448c5863          	bge	s8,s0,12498 <_vfprintf_r+0x1c5c>
   1204c:	01078793          	addi	a5,a5,16
   12050:	00170713          	addi	a4,a4,1
   12054:	00013697          	auipc	a3,0x13
   12058:	d5068693          	addi	a3,a3,-688 # 24da4 <zeroes.4505>
   1205c:	00dda023          	sw	a3,0(s11)
   12060:	018da223          	sw	s8,4(s11)
   12064:	0ef12623          	sw	a5,236(sp)
   12068:	0ee12423          	sw	a4,232(sp)
   1206c:	008d8d93          	addi	s11,s11,8
   12070:	fcebdae3          	bge	s7,a4,12044 <_vfprintf_r+0x1808>
   12074:	0e410613          	addi	a2,sp,228
   12078:	000b0593          	mv	a1,s6
   1207c:	000a8513          	mv	a0,s5
   12080:	661090ef          	jal	ra,1bee0 <__sprint_r>
   12084:	00050463          	beqz	a0,1208c <_vfprintf_r+0x1850>
   12088:	a6dfe06f          	j	10af4 <_vfprintf_r+0x2b8>
   1208c:	0ec12783          	lw	a5,236(sp)
   12090:	0e812703          	lw	a4,232(sp)
   12094:	10c10d93          	addi	s11,sp,268
   12098:	fadff06f          	j	12044 <_vfprintf_r+0x1808>
   1209c:	000d0493          	mv	s1,s10
   120a0:	931fe06f          	j	109d0 <_vfprintf_r+0x194>
   120a4:	00412583          	lw	a1,4(sp)
   120a8:	0e410613          	addi	a2,sp,228
   120ac:	000a8513          	mv	a0,s5
   120b0:	631090ef          	jal	ra,1bee0 <__sprint_r>
   120b4:	00050463          	beqz	a0,120bc <_vfprintf_r+0x1880>
   120b8:	a3dfe06f          	j	10af4 <_vfprintf_r+0x2b8>
   120bc:	0ec12c83          	lw	s9,236(sp)
   120c0:	0e812403          	lw	s0,232(sp)
   120c4:	10c10b93          	addi	s7,sp,268
   120c8:	9c1ff06f          	j	11a88 <_vfprintf_r+0x124c>
   120cc:	00412583          	lw	a1,4(sp)
   120d0:	0e410613          	addi	a2,sp,228
   120d4:	000a8513          	mv	a0,s5
   120d8:	609090ef          	jal	ra,1bee0 <__sprint_r>
   120dc:	00050463          	beqz	a0,120e4 <_vfprintf_r+0x18a8>
   120e0:	a15fe06f          	j	10af4 <_vfprintf_r+0x2b8>
   120e4:	0ec12c83          	lw	s9,236(sp)
   120e8:	0e812403          	lw	s0,232(sp)
   120ec:	10c10b93          	addi	s7,sp,268
   120f0:	9c5ff06f          	j	11ab4 <_vfprintf_r+0x1278>
   120f4:	0e812703          	lw	a4,232(sp)
   120f8:	00013617          	auipc	a2,0x13
   120fc:	cfc60613          	addi	a2,a2,-772 # 24df4 <zeroes.4505+0x50>
   12100:	00cda023          	sw	a2,0(s11)
   12104:	00178793          	addi	a5,a5,1
   12108:	00100613          	li	a2,1
   1210c:	00170713          	addi	a4,a4,1
   12110:	00cda223          	sw	a2,4(s11)
   12114:	0ef12623          	sw	a5,236(sp)
   12118:	0ee12423          	sw	a4,232(sp)
   1211c:	00700613          	li	a2,7
   12120:	008d8d93          	addi	s11,s11,8
   12124:	58e64c63          	blt	a2,a4,126bc <_vfprintf_r+0x1e80>
   12128:	22069a63          	bnez	a3,1235c <_vfprintf_r+0x1b20>
   1212c:	01812683          	lw	a3,24(sp)
   12130:	0019f713          	andi	a4,s3,1
   12134:	00d76733          	or	a4,a4,a3
   12138:	00071463          	bnez	a4,12140 <_vfprintf_r+0x1904>
   1213c:	eadfe06f          	j	10fe8 <_vfprintf_r+0x7ac>
   12140:	03012703          	lw	a4,48(sp)
   12144:	02812683          	lw	a3,40(sp)
   12148:	008d8893          	addi	a7,s11,8
   1214c:	00eda023          	sw	a4,0(s11)
   12150:	0e812703          	lw	a4,232(sp)
   12154:	00f687b3          	add	a5,a3,a5
   12158:	00dda223          	sw	a3,4(s11)
   1215c:	00170713          	addi	a4,a4,1
   12160:	0ef12623          	sw	a5,236(sp)
   12164:	0ee12423          	sw	a4,232(sp)
   12168:	00700693          	li	a3,7
   1216c:	62e6cc63          	blt	a3,a4,127a4 <_vfprintf_r+0x1f68>
   12170:	01812683          	lw	a3,24(sp)
   12174:	00170713          	addi	a4,a4,1
   12178:	01a8a023          	sw	s10,0(a7)
   1217c:	00f687b3          	add	a5,a3,a5
   12180:	00d8a223          	sw	a3,4(a7)
   12184:	0ef12623          	sw	a5,236(sp)
   12188:	0ee12423          	sw	a4,232(sp)
   1218c:	00700693          	li	a3,7
   12190:	00888d93          	addi	s11,a7,8
   12194:	00e6c463          	blt	a3,a4,1219c <_vfprintf_r+0x1960>
   12198:	e51fe06f          	j	10fe8 <_vfprintf_r+0x7ac>
   1219c:	f11fe06f          	j	110ac <_vfprintf_r+0x870>
   121a0:	1b010d13          	addi	s10,sp,432
   121a4:	00000793          	li	a5,0
   121a8:	400a7993          	andi	s3,s4,1024
   121ac:	01212823          	sw	s2,16(sp)
   121b0:	00812a23          	sw	s0,20(sp)
   121b4:	000d0913          	mv	s2,s10
   121b8:	00078413          	mv	s0,a5
   121bc:	000a8d13          	mv	s10,s5
   121c0:	000a0a93          	mv	s5,s4
   121c4:	000b8a13          	mv	s4,s7
   121c8:	000b0b93          	mv	s7,s6
   121cc:	00048b13          	mv	s6,s1
   121d0:	03c12483          	lw	s1,60(sp)
   121d4:	0240006f          	j	121f8 <_vfprintf_r+0x19bc>
   121d8:	00a00613          	li	a2,10
   121dc:	00000693          	li	a3,0
   121e0:	000c8513          	mv	a0,s9
   121e4:	000a0593          	mv	a1,s4
   121e8:	4250d0ef          	jal	ra,1fe0c <__udivdi3>
   121ec:	2e0a0ce3          	beqz	s4,12ce4 <_vfprintf_r+0x24a8>
   121f0:	00050c93          	mv	s9,a0
   121f4:	00058a13          	mv	s4,a1
   121f8:	00a00613          	li	a2,10
   121fc:	00000693          	li	a3,0
   12200:	000c8513          	mv	a0,s9
   12204:	000a0593          	mv	a1,s4
   12208:	1d80e0ef          	jal	ra,203e0 <__umoddi3>
   1220c:	03050513          	addi	a0,a0,48
   12210:	fea90fa3          	sb	a0,-1(s2)
   12214:	00140413          	addi	s0,s0,1
   12218:	fff90913          	addi	s2,s2,-1
   1221c:	fa098ee3          	beqz	s3,121d8 <_vfprintf_r+0x199c>
   12220:	0004c683          	lbu	a3,0(s1)
   12224:	fad41ae3          	bne	s0,a3,121d8 <_vfprintf_r+0x199c>
   12228:	0ff00793          	li	a5,255
   1222c:	faf406e3          	beq	s0,a5,121d8 <_vfprintf_r+0x199c>
   12230:	260a1ae3          	bnez	s4,12ca4 <_vfprintf_r+0x2468>
   12234:	00900793          	li	a5,9
   12238:	2797e6e3          	bltu	a5,s9,12ca4 <_vfprintf_r+0x2468>
   1223c:	000a8a13          	mv	s4,s5
   12240:	1b010793          	addi	a5,sp,432
   12244:	000d0a93          	mv	s5,s10
   12248:	00090d13          	mv	s10,s2
   1224c:	00812c23          	sw	s0,24(sp)
   12250:	02912e23          	sw	s1,60(sp)
   12254:	01412403          	lw	s0,20(sp)
   12258:	000b0493          	mv	s1,s6
   1225c:	01012903          	lw	s2,16(sp)
   12260:	000b8b13          	mv	s6,s7
   12264:	000a0993          	mv	s3,s4
   12268:	41a78bb3          	sub	s7,a5,s10
   1226c:	96dfe06f          	j	10bd8 <_vfprintf_r+0x39c>
   12270:	00412583          	lw	a1,4(sp)
   12274:	0e410613          	addi	a2,sp,228
   12278:	000a8513          	mv	a0,s5
   1227c:	465090ef          	jal	ra,1bee0 <__sprint_r>
   12280:	00050463          	beqz	a0,12288 <_vfprintf_r+0x1a4c>
   12284:	871fe06f          	j	10af4 <_vfprintf_r+0x2b8>
   12288:	10c10d93          	addi	s11,sp,268
   1228c:	d2cff06f          	j	117b8 <_vfprintf_r+0xf7c>
   12290:	00013697          	auipc	a3,0x13
   12294:	b1468693          	addi	a3,a3,-1260 # 24da4 <zeroes.4505>
   12298:	00dda023          	sw	a3,0(s11)
   1229c:	008da223          	sw	s0,4(s11)
   122a0:	008787b3          	add	a5,a5,s0
   122a4:	00170713          	addi	a4,a4,1
   122a8:	0ef12623          	sw	a5,236(sp)
   122ac:	0ee12423          	sw	a4,232(sp)
   122b0:	00700693          	li	a3,7
   122b4:	00e6c463          	blt	a3,a4,122bc <_vfprintf_r+0x1a80>
   122b8:	d2dfe06f          	j	10fe4 <_vfprintf_r+0x7a8>
   122bc:	df1fe06f          	j	110ac <_vfprintf_r+0x870>
   122c0:	0f012783          	lw	a5,240(sp)
   122c4:	0a010593          	addi	a1,sp,160
   122c8:	0b010513          	addi	a0,sp,176
   122cc:	0af12823          	sw	a5,176(sp)
   122d0:	0f412783          	lw	a5,244(sp)
   122d4:	0a012023          	sw	zero,160(sp)
   122d8:	0a012223          	sw	zero,164(sp)
   122dc:	0af12a23          	sw	a5,180(sp)
   122e0:	0f812783          	lw	a5,248(sp)
   122e4:	0a012423          	sw	zero,168(sp)
   122e8:	0a012623          	sw	zero,172(sp)
   122ec:	0af12c23          	sw	a5,184(sp)
   122f0:	0fc12783          	lw	a5,252(sp)
   122f4:	0af12e23          	sw	a5,188(sp)
   122f8:	6280f0ef          	jal	ra,21920 <__letf2>
   122fc:	2c0546e3          	bltz	a0,12dc8 <_vfprintf_r+0x258c>
   12300:	0c714783          	lbu	a5,199(sp)
   12304:	04700713          	li	a4,71
   12308:	00013d17          	auipc	s10,0x13
   1230c:	aacd0d13          	addi	s10,s10,-1364 # 24db4 <zeroes.4505+0x10>
   12310:	3c874a63          	blt	a4,s0,126e4 <_vfprintf_r+0x1ea8>
   12314:	00012823          	sw	zero,16(sp)
   12318:	02012223          	sw	zero,36(sp)
   1231c:	02012023          	sw	zero,32(sp)
   12320:	00012a23          	sw	zero,20(sp)
   12324:	f7f9f993          	andi	s3,s3,-129
   12328:	00300a13          	li	s4,3
   1232c:	00300b93          	li	s7,3
   12330:	00000b13          	li	s6,0
   12334:	00078463          	beqz	a5,1233c <_vfprintf_r+0x1b00>
   12338:	8c5fe06f          	j	10bfc <_vfprintf_r+0x3c0>
   1233c:	be1fe06f          	j	10f1c <_vfprintf_r+0x6e0>
   12340:	00c12783          	lw	a5,12(sp)
   12344:	00090d13          	mv	s10,s2
   12348:	0007a783          	lw	a5,0(a5)
   1234c:	00e12623          	sw	a4,12(sp)
   12350:	00812703          	lw	a4,8(sp)
   12354:	00e7a023          	sw	a4,0(a5)
   12358:	9e5fe06f          	j	10d3c <_vfprintf_r+0x500>
   1235c:	03012703          	lw	a4,48(sp)
   12360:	02812603          	lw	a2,40(sp)
   12364:	008d8893          	addi	a7,s11,8
   12368:	00eda023          	sw	a4,0(s11)
   1236c:	0e812703          	lw	a4,232(sp)
   12370:	00f607b3          	add	a5,a2,a5
   12374:	00cda223          	sw	a2,4(s11)
   12378:	00170713          	addi	a4,a4,1
   1237c:	0ef12623          	sw	a5,236(sp)
   12380:	0ee12423          	sw	a4,232(sp)
   12384:	00700613          	li	a2,7
   12388:	40e64e63          	blt	a2,a4,127a4 <_vfprintf_r+0x1f68>
   1238c:	de06d2e3          	bgez	a3,12170 <_vfprintf_r+0x1934>
   12390:	ff000613          	li	a2,-16
   12394:	40d00433          	neg	s0,a3
   12398:	32c6d2e3          	bge	a3,a2,12ebc <_vfprintf_r+0x2680>
   1239c:	00700b93          	li	s7,7
   123a0:	00412b03          	lw	s6,4(sp)
   123a4:	00c0006f          	j	123b0 <_vfprintf_r+0x1b74>
   123a8:	ff040413          	addi	s0,s0,-16
   123ac:	308c58e3          	bge	s8,s0,12ebc <_vfprintf_r+0x2680>
   123b0:	01078793          	addi	a5,a5,16
   123b4:	00170713          	addi	a4,a4,1
   123b8:	00013697          	auipc	a3,0x13
   123bc:	9ec68693          	addi	a3,a3,-1556 # 24da4 <zeroes.4505>
   123c0:	00d8a023          	sw	a3,0(a7)
   123c4:	0188a223          	sw	s8,4(a7)
   123c8:	0ef12623          	sw	a5,236(sp)
   123cc:	0ee12423          	sw	a4,232(sp)
   123d0:	00888893          	addi	a7,a7,8
   123d4:	fcebdae3          	bge	s7,a4,123a8 <_vfprintf_r+0x1b6c>
   123d8:	0e410613          	addi	a2,sp,228
   123dc:	000b0593          	mv	a1,s6
   123e0:	000a8513          	mv	a0,s5
   123e4:	2fd090ef          	jal	ra,1bee0 <__sprint_r>
   123e8:	00050463          	beqz	a0,123f0 <_vfprintf_r+0x1bb4>
   123ec:	f08fe06f          	j	10af4 <_vfprintf_r+0x2b8>
   123f0:	0ec12783          	lw	a5,236(sp)
   123f4:	0e812703          	lw	a4,232(sp)
   123f8:	10c10893          	addi	a7,sp,268
   123fc:	fadff06f          	j	123a8 <_vfprintf_r+0x1b6c>
   12400:	000d0513          	mv	a0,s10
   12404:	5fd060ef          	jal	ra,19200 <strlen>
   12408:	00050b93          	mv	s7,a0
   1240c:	a75fe06f          	j	10e80 <_vfprintf_r+0x644>
   12410:	2009f793          	andi	a5,s3,512
   12414:	36078063          	beqz	a5,12774 <_vfprintf_r+0x1f38>
   12418:	00c12783          	lw	a5,12(sp)
   1241c:	00098a13          	mv	s4,s3
   12420:	00e12623          	sw	a4,12(sp)
   12424:	00078c83          	lb	s9,0(a5)
   12428:	41fcdb93          	srai	s7,s9,0x1f
   1242c:	000b8713          	mv	a4,s7
   12430:	9a1fe06f          	j	10dd0 <_vfprintf_r+0x594>
   12434:	2009f793          	andi	a5,s3,512
   12438:	32078863          	beqz	a5,12768 <_vfprintf_r+0x1f2c>
   1243c:	0ffcfc93          	andi	s9,s9,255
   12440:	00000b93          	li	s7,0
   12444:	00e12623          	sw	a4,12(sp)
   12448:	a5cff06f          	j	116a4 <_vfprintf_r+0xe68>
   1244c:	2009f793          	andi	a5,s3,512
   12450:	30078263          	beqz	a5,12754 <_vfprintf_r+0x1f18>
   12454:	00e12623          	sw	a4,12(sp)
   12458:	0ffcfc93          	andi	s9,s9,255
   1245c:	00000b93          	li	s7,0
   12460:	00098a13          	mv	s4,s3
   12464:	00100713          	li	a4,1
   12468:	f40fe06f          	j	10ba8 <_vfprintf_r+0x36c>
   1246c:	0fc12783          	lw	a5,252(sp)
   12470:	3207d663          	bgez	a5,1279c <_vfprintf_r+0x1f60>
   12474:	02d00793          	li	a5,45
   12478:	0cf103a3          	sb	a5,199(sp)
   1247c:	04700713          	li	a4,71
   12480:	00013d17          	auipc	s10,0x13
   12484:	93cd0d13          	addi	s10,s10,-1732 # 24dbc <zeroes.4505+0x18>
   12488:	e88756e3          	bge	a4,s0,12314 <_vfprintf_r+0x1ad8>
   1248c:	00013d17          	auipc	s10,0x13
   12490:	934d0d13          	addi	s10,s10,-1740 # 24dc0 <zeroes.4505+0x1c>
   12494:	e81ff06f          	j	12314 <_vfprintf_r+0x1ad8>
   12498:	00013697          	auipc	a3,0x13
   1249c:	90c68693          	addi	a3,a3,-1780 # 24da4 <zeroes.4505>
   124a0:	008787b3          	add	a5,a5,s0
   124a4:	00170713          	addi	a4,a4,1
   124a8:	00dda023          	sw	a3,0(s11)
   124ac:	008da223          	sw	s0,4(s11)
   124b0:	0ef12623          	sw	a5,236(sp)
   124b4:	0ee12423          	sw	a4,232(sp)
   124b8:	00700693          	li	a3,7
   124bc:	008d8d93          	addi	s11,s11,8
   124c0:	84e6d8e3          	bge	a3,a4,11d10 <_vfprintf_r+0x14d4>
   124c4:	00412583          	lw	a1,4(sp)
   124c8:	0e410613          	addi	a2,sp,228
   124cc:	000a8513          	mv	a0,s5
   124d0:	211090ef          	jal	ra,1bee0 <__sprint_r>
   124d4:	00050463          	beqz	a0,124dc <_vfprintf_r+0x1ca0>
   124d8:	e1cfe06f          	j	10af4 <_vfprintf_r+0x2b8>
   124dc:	0ec12783          	lw	a5,236(sp)
   124e0:	10c10d93          	addi	s11,sp,268
   124e4:	82dff06f          	j	11d10 <_vfprintf_r+0x14d4>
   124e8:	01812703          	lw	a4,24(sp)
   124ec:	02012b83          	lw	s7,32(sp)
   124f0:	01212a23          	sw	s2,20(sp)
   124f4:	00ed0433          	add	s0,s10,a4
   124f8:	03312a23          	sw	s3,52(sp)
   124fc:	04912423          	sw	s1,72(sp)
   12500:	02412903          	lw	s2,36(sp)
   12504:	03412023          	sw	s4,32(sp)
   12508:	03a12223          	sw	s10,36(sp)
   1250c:	00700c93          	li	s9,7
   12510:	00040d13          	mv	s10,s0
   12514:	04012983          	lw	s3,64(sp)
   12518:	03c12483          	lw	s1,60(sp)
   1251c:	000d8693          	mv	a3,s11
   12520:	00412a03          	lw	s4,4(sp)
   12524:	04412403          	lw	s0,68(sp)
   12528:	080b8863          	beqz	s7,125b8 <_vfprintf_r+0x1d7c>
   1252c:	08091863          	bnez	s2,125bc <_vfprintf_r+0x1d80>
   12530:	fff48493          	addi	s1,s1,-1
   12534:	fffb8b93          	addi	s7,s7,-1
   12538:	0e812703          	lw	a4,232(sp)
   1253c:	013787b3          	add	a5,a5,s3
   12540:	0086a023          	sw	s0,0(a3)
   12544:	00170713          	addi	a4,a4,1
   12548:	0136a223          	sw	s3,4(a3)
   1254c:	0ef12623          	sw	a5,236(sp)
   12550:	0ee12423          	sw	a4,232(sp)
   12554:	00868693          	addi	a3,a3,8
   12558:	10ecc463          	blt	s9,a4,12660 <_vfprintf_r+0x1e24>
   1255c:	0004c603          	lbu	a2,0(s1)
   12560:	416d05b3          	sub	a1,s10,s6
   12564:	00060d93          	mv	s11,a2
   12568:	00c5d463          	bge	a1,a2,12570 <_vfprintf_r+0x1d34>
   1256c:	00058d93          	mv	s11,a1
   12570:	03b05663          	blez	s11,1259c <_vfprintf_r+0x1d60>
   12574:	0e812603          	lw	a2,232(sp)
   12578:	01b787b3          	add	a5,a5,s11
   1257c:	0166a023          	sw	s6,0(a3)
   12580:	00160613          	addi	a2,a2,1
   12584:	01b6a223          	sw	s11,4(a3)
   12588:	0ef12623          	sw	a5,236(sp)
   1258c:	0ec12423          	sw	a2,232(sp)
   12590:	0eccca63          	blt	s9,a2,12684 <_vfprintf_r+0x1e48>
   12594:	0004c603          	lbu	a2,0(s1)
   12598:	00868693          	addi	a3,a3,8
   1259c:	fffdc593          	not	a1,s11
   125a0:	41f5d593          	srai	a1,a1,0x1f
   125a4:	00bdf733          	and	a4,s11,a1
   125a8:	40e60db3          	sub	s11,a2,a4
   125ac:	01b04c63          	bgtz	s11,125c4 <_vfprintf_r+0x1d88>
   125b0:	00cb0b33          	add	s6,s6,a2
   125b4:	f60b9ce3          	bnez	s7,1252c <_vfprintf_r+0x1cf0>
   125b8:	5e090663          	beqz	s2,12ba4 <_vfprintf_r+0x2368>
   125bc:	fff90913          	addi	s2,s2,-1
   125c0:	f79ff06f          	j	12538 <_vfprintf_r+0x1cfc>
   125c4:	0e812603          	lw	a2,232(sp)
   125c8:	01bc4863          	blt	s8,s11,125d8 <_vfprintf_r+0x1d9c>
   125cc:	0600006f          	j	1262c <_vfprintf_r+0x1df0>
   125d0:	ff0d8d93          	addi	s11,s11,-16
   125d4:	05bc5c63          	bge	s8,s11,1262c <_vfprintf_r+0x1df0>
   125d8:	01078793          	addi	a5,a5,16
   125dc:	00160613          	addi	a2,a2,1
   125e0:	00012717          	auipc	a4,0x12
   125e4:	7c470713          	addi	a4,a4,1988 # 24da4 <zeroes.4505>
   125e8:	00e6a023          	sw	a4,0(a3)
   125ec:	0186a223          	sw	s8,4(a3)
   125f0:	0ef12623          	sw	a5,236(sp)
   125f4:	0ec12423          	sw	a2,232(sp)
   125f8:	00868693          	addi	a3,a3,8
   125fc:	fcccdae3          	bge	s9,a2,125d0 <_vfprintf_r+0x1d94>
   12600:	0e410613          	addi	a2,sp,228
   12604:	000a0593          	mv	a1,s4
   12608:	000a8513          	mv	a0,s5
   1260c:	0d5090ef          	jal	ra,1bee0 <__sprint_r>
   12610:	00050463          	beqz	a0,12618 <_vfprintf_r+0x1ddc>
   12614:	ce0fe06f          	j	10af4 <_vfprintf_r+0x2b8>
   12618:	ff0d8d93          	addi	s11,s11,-16
   1261c:	0ec12783          	lw	a5,236(sp)
   12620:	0e812603          	lw	a2,232(sp)
   12624:	10c10693          	addi	a3,sp,268
   12628:	fbbc48e3          	blt	s8,s11,125d8 <_vfprintf_r+0x1d9c>
   1262c:	01b787b3          	add	a5,a5,s11
   12630:	00160613          	addi	a2,a2,1
   12634:	00012717          	auipc	a4,0x12
   12638:	77070713          	addi	a4,a4,1904 # 24da4 <zeroes.4505>
   1263c:	00e6a023          	sw	a4,0(a3)
   12640:	01b6a223          	sw	s11,4(a3)
   12644:	0ef12623          	sw	a5,236(sp)
   12648:	0ec12423          	sw	a2,232(sp)
   1264c:	62ccc663          	blt	s9,a2,12c78 <_vfprintf_r+0x243c>
   12650:	0004c603          	lbu	a2,0(s1)
   12654:	00868693          	addi	a3,a3,8
   12658:	00cb0b33          	add	s6,s6,a2
   1265c:	f59ff06f          	j	125b4 <_vfprintf_r+0x1d78>
   12660:	0e410613          	addi	a2,sp,228
   12664:	000a0593          	mv	a1,s4
   12668:	000a8513          	mv	a0,s5
   1266c:	075090ef          	jal	ra,1bee0 <__sprint_r>
   12670:	00050463          	beqz	a0,12678 <_vfprintf_r+0x1e3c>
   12674:	c80fe06f          	j	10af4 <_vfprintf_r+0x2b8>
   12678:	0ec12783          	lw	a5,236(sp)
   1267c:	10c10693          	addi	a3,sp,268
   12680:	eddff06f          	j	1255c <_vfprintf_r+0x1d20>
   12684:	0e410613          	addi	a2,sp,228
   12688:	000a0593          	mv	a1,s4
   1268c:	000a8513          	mv	a0,s5
   12690:	051090ef          	jal	ra,1bee0 <__sprint_r>
   12694:	00050463          	beqz	a0,1269c <_vfprintf_r+0x1e60>
   12698:	c5cfe06f          	j	10af4 <_vfprintf_r+0x2b8>
   1269c:	0004c603          	lbu	a2,0(s1)
   126a0:	0ec12783          	lw	a5,236(sp)
   126a4:	10c10693          	addi	a3,sp,268
   126a8:	ef5ff06f          	j	1259c <_vfprintf_r+0x1d60>
   126ac:	001b0b13          	addi	s6,s6,1
   126b0:	00860d93          	addi	s11,a2,8
   126b4:	00060b93          	mv	s7,a2
   126b8:	9d1fe06f          	j	11088 <_vfprintf_r+0x84c>
   126bc:	00412583          	lw	a1,4(sp)
   126c0:	0e410613          	addi	a2,sp,228
   126c4:	000a8513          	mv	a0,s5
   126c8:	019090ef          	jal	ra,1bee0 <__sprint_r>
   126cc:	00050463          	beqz	a0,126d4 <_vfprintf_r+0x1e98>
   126d0:	c24fe06f          	j	10af4 <_vfprintf_r+0x2b8>
   126d4:	0cc12683          	lw	a3,204(sp)
   126d8:	0ec12783          	lw	a5,236(sp)
   126dc:	10c10d93          	addi	s11,sp,268
   126e0:	a49ff06f          	j	12128 <_vfprintf_r+0x18ec>
   126e4:	00012d17          	auipc	s10,0x12
   126e8:	6d4d0d13          	addi	s10,s10,1748 # 24db8 <zeroes.4505+0x14>
   126ec:	c29ff06f          	j	12314 <_vfprintf_r+0x1ad8>
   126f0:	00412583          	lw	a1,4(sp)
   126f4:	0e410613          	addi	a2,sp,228
   126f8:	000a8513          	mv	a0,s5
   126fc:	7e4090ef          	jal	ra,1bee0 <__sprint_r>
   12700:	00050463          	beqz	a0,12708 <_vfprintf_r+0x1ecc>
   12704:	bf0fe06f          	j	10af4 <_vfprintf_r+0x2b8>
   12708:	0ec12783          	lw	a5,236(sp)
   1270c:	10c10d93          	addi	s11,sp,268
   12710:	de8ff06f          	j	11cf8 <_vfprintf_r+0x14bc>
   12714:	00600b93          	li	s7,6
   12718:	905ff06f          	j	1201c <_vfprintf_r+0x17e0>
   1271c:	01812703          	lw	a4,24(sp)
   12720:	00ed0833          	add	a6,s10,a4
   12724:	40870433          	sub	s0,a4,s0
   12728:	41680bb3          	sub	s7,a6,s6
   1272c:	e9745463          	bge	s0,s7,11db4 <_vfprintf_r+0x1578>
   12730:	00040b93          	mv	s7,s0
   12734:	e80ff06f          	j	11db4 <_vfprintf_r+0x1578>
   12738:	00c12783          	lw	a5,12(sp)
   1273c:	00e12623          	sw	a4,12(sp)
   12740:	00812703          	lw	a4,8(sp)
   12744:	0007a783          	lw	a5,0(a5)
   12748:	00090d13          	mv	s10,s2
   1274c:	00e79023          	sh	a4,0(a5)
   12750:	decfe06f          	j	10d3c <_vfprintf_r+0x500>
   12754:	00e12623          	sw	a4,12(sp)
   12758:	00000b93          	li	s7,0
   1275c:	00098a13          	mv	s4,s3
   12760:	00100713          	li	a4,1
   12764:	c44fe06f          	j	10ba8 <_vfprintf_r+0x36c>
   12768:	00000b93          	li	s7,0
   1276c:	00e12623          	sw	a4,12(sp)
   12770:	f35fe06f          	j	116a4 <_vfprintf_r+0xe68>
   12774:	00c12783          	lw	a5,12(sp)
   12778:	00098a13          	mv	s4,s3
   1277c:	00e12623          	sw	a4,12(sp)
   12780:	0007ac83          	lw	s9,0(a5)
   12784:	41fcdb93          	srai	s7,s9,0x1f
   12788:	000b8713          	mv	a4,s7
   1278c:	e44fe06f          	j	10dd0 <_vfprintf_r+0x594>
   12790:	0ffcfc93          	andi	s9,s9,255
   12794:	00000b93          	li	s7,0
   12798:	bf4fe06f          	j	10b8c <_vfprintf_r+0x350>
   1279c:	0c714783          	lbu	a5,199(sp)
   127a0:	cddff06f          	j	1247c <_vfprintf_r+0x1c40>
   127a4:	00412583          	lw	a1,4(sp)
   127a8:	0e410613          	addi	a2,sp,228
   127ac:	000a8513          	mv	a0,s5
   127b0:	730090ef          	jal	ra,1bee0 <__sprint_r>
   127b4:	00050463          	beqz	a0,127bc <_vfprintf_r+0x1f80>
   127b8:	b3cfe06f          	j	10af4 <_vfprintf_r+0x2b8>
   127bc:	0cc12683          	lw	a3,204(sp)
   127c0:	0ec12783          	lw	a5,236(sp)
   127c4:	0e812703          	lw	a4,232(sp)
   127c8:	10c10893          	addi	a7,sp,268
   127cc:	9a06d2e3          	bgez	a3,12170 <_vfprintf_r+0x1934>
   127d0:	bc1ff06f          	j	12390 <_vfprintf_r+0x1b54>
   127d4:	03000793          	li	a5,48
   127d8:	0cf10423          	sb	a5,200(sp)
   127dc:	05800793          	li	a5,88
   127e0:	0029e713          	ori	a4,s3,2
   127e4:	0cf104a3          	sb	a5,201(sp)
   127e8:	04e12a23          	sw	a4,84(sp)
   127ec:	06300793          	li	a5,99
   127f0:	00012823          	sw	zero,16(sp)
   127f4:	14c10d13          	addi	s10,sp,332
   127f8:	7b67c263          	blt	a5,s6,12f9c <_vfprintf_r+0x2760>
   127fc:	0fc12e03          	lw	t3,252(sp)
   12800:	fdf47793          	andi	a5,s0,-33
   12804:	04f12423          	sw	a5,72(sp)
   12808:	04012e23          	sw	zero,92(sp)
   1280c:	1029e993          	ori	s3,s3,258
   12810:	0f012e83          	lw	t4,240(sp)
   12814:	0f412f03          	lw	t5,244(sp)
   12818:	0f812f83          	lw	t6,248(sp)
   1281c:	440e4463          	bltz	t3,12c64 <_vfprintf_r+0x2428>
   12820:	06100793          	li	a5,97
   12824:	0cf40ce3          	beq	s0,a5,130fc <_vfprintf_r+0x28c0>
   12828:	04100793          	li	a5,65
   1282c:	00f40463          	beq	s0,a5,12834 <_vfprintf_r+0x1ff8>
   12830:	a19fe06f          	j	11248 <_vfprintf_r+0xa0c>
   12834:	0b010b93          	addi	s7,sp,176
   12838:	000b8513          	mv	a0,s7
   1283c:	0bd12823          	sw	t4,176(sp)
   12840:	0be12a23          	sw	t5,180(sp)
   12844:	0bf12c23          	sw	t6,184(sp)
   12848:	0bc12e23          	sw	t3,188(sp)
   1284c:	004120ef          	jal	ra,24850 <__trunctfdf2>
   12850:	0cc10613          	addi	a2,sp,204
   12854:	48c060ef          	jal	ra,18ce0 <frexp>
   12858:	00058613          	mv	a2,a1
   1285c:	00050593          	mv	a1,a0
   12860:	000b8513          	mv	a0,s7
   12864:	5e5110ef          	jal	ra,24648 <__extenddftf2>
   12868:	09010793          	addi	a5,sp,144
   1286c:	00078593          	mv	a1,a5
   12870:	00f12c23          	sw	a5,24(sp)
   12874:	0b012783          	lw	a5,176(sp)
   12878:	0a010a13          	addi	s4,sp,160
   1287c:	08010613          	addi	a2,sp,128
   12880:	08f12823          	sw	a5,144(sp)
   12884:	0b412783          	lw	a5,180(sp)
   12888:	000a0513          	mv	a0,s4
   1288c:	04c12623          	sw	a2,76(sp)
   12890:	08f12a23          	sw	a5,148(sp)
   12894:	0b812783          	lw	a5,184(sp)
   12898:	05412c23          	sw	s4,88(sp)
   1289c:	08012023          	sw	zero,128(sp)
   128a0:	08f12c23          	sw	a5,152(sp)
   128a4:	0bc12783          	lw	a5,188(sp)
   128a8:	08012223          	sw	zero,132(sp)
   128ac:	08012423          	sw	zero,136(sp)
   128b0:	08f12e23          	sw	a5,156(sp)
   128b4:	3ffc07b7          	lui	a5,0x3ffc0
   128b8:	08f12623          	sw	a5,140(sp)
   128bc:	1a80f0ef          	jal	ra,21a64 <__multf3>
   128c0:	0a012683          	lw	a3,160(sp)
   128c4:	0a412e03          	lw	t3,164(sp)
   128c8:	0a812e83          	lw	t4,168(sp)
   128cc:	0ac12f03          	lw	t5,172(sp)
   128d0:	000a0593          	mv	a1,s4
   128d4:	000b8513          	mv	a0,s7
   128d8:	0ad12823          	sw	a3,176(sp)
   128dc:	02d12a23          	sw	a3,52(sp)
   128e0:	0bc12a23          	sw	t3,180(sp)
   128e4:	03c12223          	sw	t3,36(sp)
   128e8:	0bd12c23          	sw	t4,184(sp)
   128ec:	03d12023          	sw	t4,32(sp)
   128f0:	0be12e23          	sw	t5,188(sp)
   128f4:	01e12a23          	sw	t5,20(sp)
   128f8:	0a012023          	sw	zero,160(sp)
   128fc:	0a012223          	sw	zero,164(sp)
   12900:	0a012423          	sw	zero,168(sp)
   12904:	0a012623          	sw	zero,172(sp)
   12908:	6090e0ef          	jal	ra,21710 <__eqtf2>
   1290c:	01412f03          	lw	t5,20(sp)
   12910:	02012e83          	lw	t4,32(sp)
   12914:	02412e03          	lw	t3,36(sp)
   12918:	03412683          	lw	a3,52(sp)
   1291c:	00051663          	bnez	a0,12928 <_vfprintf_r+0x20ec>
   12920:	00100793          	li	a5,1
   12924:	0cf12623          	sw	a5,204(sp)
   12928:	00012797          	auipc	a5,0x12
   1292c:	4b078793          	addi	a5,a5,1200 # 24dd8 <zeroes.4505+0x34>
   12930:	02f12a23          	sw	a5,52(sp)
   12934:	fffb0a13          	addi	s4,s6,-1
   12938:	01a12a23          	sw	s10,20(sp)
   1293c:	000a0c93          	mv	s9,s4
   12940:	07212023          	sw	s2,96(sp)
   12944:	06912623          	sw	s1,108(sp)
   12948:	07b12a23          	sw	s11,116(sp)
   1294c:	07512c23          	sw	s5,120(sp)
   12950:	07a12e23          	sw	s10,124(sp)
   12954:	06812223          	sw	s0,100(sp)
   12958:	07312423          	sw	s3,104(sp)
   1295c:	07612823          	sw	s6,112(sp)
   12960:	00068d13          	mv	s10,a3
   12964:	000e0d93          	mv	s11,t3
   12968:	000e8a13          	mv	s4,t4
   1296c:	000f0a93          	mv	s5,t5
   12970:	01812903          	lw	s2,24(sp)
   12974:	05812483          	lw	s1,88(sp)
   12978:	0540006f          	j	129cc <_vfprintf_r+0x2190>
   1297c:	00048593          	mv	a1,s1
   12980:	000b8513          	mv	a0,s7
   12984:	02c12223          	sw	a2,36(sp)
   12988:	03f12023          	sw	t6,32(sp)
   1298c:	00512c23          	sw	t0,24(sp)
   12990:	0a512a23          	sw	t0,180(sp)
   12994:	0bf12c23          	sw	t6,184(sp)
   12998:	0ac12e23          	sw	a2,188(sp)
   1299c:	0b312823          	sw	s3,176(sp)
   129a0:	0a012023          	sw	zero,160(sp)
   129a4:	0a012223          	sw	zero,164(sp)
   129a8:	0a012423          	sw	zero,168(sp)
   129ac:	0a012623          	sw	zero,172(sp)
   129b0:	5610e0ef          	jal	ra,21710 <__eqtf2>
   129b4:	fffc8c93          	addi	s9,s9,-1
   129b8:	01812283          	lw	t0,24(sp)
   129bc:	02012f83          	lw	t6,32(sp)
   129c0:	02412603          	lw	a2,36(sp)
   129c4:	0e050463          	beqz	a0,12aac <_vfprintf_r+0x2270>
   129c8:	01612a23          	sw	s6,20(sp)
   129cc:	400307b7          	lui	a5,0x40030
   129d0:	00090613          	mv	a2,s2
   129d4:	00048593          	mv	a1,s1
   129d8:	000b8513          	mv	a0,s7
   129dc:	08f12e23          	sw	a5,156(sp)
   129e0:	0ba12023          	sw	s10,160(sp)
   129e4:	0bb12223          	sw	s11,164(sp)
   129e8:	0b412423          	sw	s4,168(sp)
   129ec:	0b512623          	sw	s5,172(sp)
   129f0:	08012823          	sw	zero,144(sp)
   129f4:	08012a23          	sw	zero,148(sp)
   129f8:	08012c23          	sw	zero,152(sp)
   129fc:	0680f0ef          	jal	ra,21a64 <__multf3>
   12a00:	000b8513          	mv	a0,s7
   12a04:	16d110ef          	jal	ra,24370 <__fixtfsi>
   12a08:	00050593          	mv	a1,a0
   12a0c:	00050413          	mv	s0,a0
   12a10:	000b8513          	mv	a0,s7
   12a14:	0b012b03          	lw	s6,176(sp)
   12a18:	0b412a03          	lw	s4,180(sp)
   12a1c:	0b812983          	lw	s3,184(sp)
   12a20:	0bc12a83          	lw	s5,188(sp)
   12a24:	29d110ef          	jal	ra,244c0 <__floatsitf>
   12a28:	0b012703          	lw	a4,176(sp)
   12a2c:	04c12603          	lw	a2,76(sp)
   12a30:	00090593          	mv	a1,s2
   12a34:	08e12023          	sw	a4,128(sp)
   12a38:	0b412703          	lw	a4,180(sp)
   12a3c:	00048513          	mv	a0,s1
   12a40:	09612823          	sw	s6,144(sp)
   12a44:	08e12223          	sw	a4,132(sp)
   12a48:	0b812703          	lw	a4,184(sp)
   12a4c:	09412a23          	sw	s4,148(sp)
   12a50:	09312c23          	sw	s3,152(sp)
   12a54:	08e12423          	sw	a4,136(sp)
   12a58:	0bc12703          	lw	a4,188(sp)
   12a5c:	09512e23          	sw	s5,156(sp)
   12a60:	08e12623          	sw	a4,140(sp)
   12a64:	36c100ef          	jal	ra,22dd0 <__subtf3>
   12a68:	03412783          	lw	a5,52(sp)
   12a6c:	0a012983          	lw	s3,160(sp)
   12a70:	0a412283          	lw	t0,164(sp)
   12a74:	00878733          	add	a4,a5,s0
   12a78:	01412783          	lw	a5,20(sp)
   12a7c:	00074683          	lbu	a3,0(a4)
   12a80:	0a812f83          	lw	t6,168(sp)
   12a84:	0ac12603          	lw	a2,172(sp)
   12a88:	00178b13          	addi	s6,a5,1 # 40030001 <__BSS_END__+0x40009519>
   12a8c:	fedb0fa3          	sb	a3,-1(s6)
   12a90:	05912823          	sw	s9,80(sp)
   12a94:	fff00793          	li	a5,-1
   12a98:	00098d13          	mv	s10,s3
   12a9c:	00028d93          	mv	s11,t0
   12aa0:	000f8a13          	mv	s4,t6
   12aa4:	00060a93          	mv	s5,a2
   12aa8:	ecfc9ae3          	bne	s9,a5,1297c <_vfprintf_r+0x2140>
   12aac:	05812a03          	lw	s4,88(sp)
   12ab0:	00098393          	mv	t2,s3
   12ab4:	3ffe0737          	lui	a4,0x3ffe0
   12ab8:	000a0593          	mv	a1,s4
   12abc:	000b8513          	mv	a0,s7
   12ac0:	06012903          	lw	s2,96(sp)
   12ac4:	00812c23          	sw	s0,24(sp)
   12ac8:	000b0c93          	mv	s9,s6
   12acc:	06c12483          	lw	s1,108(sp)
   12ad0:	07412d83          	lw	s11,116(sp)
   12ad4:	06412403          	lw	s0,100(sp)
   12ad8:	07012b03          	lw	s6,112(sp)
   12adc:	07812a83          	lw	s5,120(sp)
   12ae0:	07c12d03          	lw	s10,124(sp)
   12ae4:	06812983          	lw	s3,104(sp)
   12ae8:	0a712823          	sw	t2,176(sp)
   12aec:	06712023          	sw	t2,96(sp)
   12af0:	0a512a23          	sw	t0,180(sp)
   12af4:	04512623          	sw	t0,76(sp)
   12af8:	0bf12c23          	sw	t6,184(sp)
   12afc:	03f12223          	sw	t6,36(sp)
   12b00:	0ac12e23          	sw	a2,188(sp)
   12b04:	02c12023          	sw	a2,32(sp)
   12b08:	0a012023          	sw	zero,160(sp)
   12b0c:	0a012223          	sw	zero,164(sp)
   12b10:	0a012423          	sw	zero,168(sp)
   12b14:	0ae12623          	sw	a4,172(sp)
   12b18:	4c50e0ef          	jal	ra,217dc <__getf2>
   12b1c:	48a04e63          	bgtz	a0,12fb8 <_vfprintf_r+0x277c>
   12b20:	06012383          	lw	t2,96(sp)
   12b24:	04c12283          	lw	t0,76(sp)
   12b28:	02412f83          	lw	t6,36(sp)
   12b2c:	02012603          	lw	a2,32(sp)
   12b30:	3ffe0737          	lui	a4,0x3ffe0
   12b34:	000a0593          	mv	a1,s4
   12b38:	000b8513          	mv	a0,s7
   12b3c:	0a712823          	sw	t2,176(sp)
   12b40:	0a512a23          	sw	t0,180(sp)
   12b44:	0bf12c23          	sw	t6,184(sp)
   12b48:	0ac12e23          	sw	a2,188(sp)
   12b4c:	0a012023          	sw	zero,160(sp)
   12b50:	0a012223          	sw	zero,164(sp)
   12b54:	0a012423          	sw	zero,168(sp)
   12b58:	0ae12623          	sw	a4,172(sp)
   12b5c:	3b50e0ef          	jal	ra,21710 <__eqtf2>
   12b60:	00051863          	bnez	a0,12b70 <_vfprintf_r+0x2334>
   12b64:	01812783          	lw	a5,24(sp)
   12b68:	0017fa13          	andi	s4,a5,1
   12b6c:	440a1663          	bnez	s4,12fb8 <_vfprintf_r+0x277c>
   12b70:	05012783          	lw	a5,80(sp)
   12b74:	03000693          	li	a3,48
   12b78:	00178713          	addi	a4,a5,1
   12b7c:	00ec8733          	add	a4,s9,a4
   12b80:	0007c863          	bltz	a5,12b90 <_vfprintf_r+0x2354>
   12b84:	001c8c93          	addi	s9,s9,1
   12b88:	fedc8fa3          	sb	a3,-1(s9)
   12b8c:	ff971ce3          	bne	a4,s9,12b84 <_vfprintf_r+0x2348>
   12b90:	41ac87b3          	sub	a5,s9,s10
   12b94:	00f12c23          	sw	a5,24(sp)
   12b98:	f50fe06f          	j	112e8 <_vfprintf_r+0xaac>
   12b9c:	00098a13          	mv	s4,s3
   12ba0:	b21fe06f          	j	116c0 <_vfprintf_r+0xe84>
   12ba4:	02412d03          	lw	s10,36(sp)
   12ba8:	01812703          	lw	a4,24(sp)
   12bac:	02912e23          	sw	s1,60(sp)
   12bb0:	01412903          	lw	s2,20(sp)
   12bb4:	00ed0733          	add	a4,s10,a4
   12bb8:	03412983          	lw	s3,52(sp)
   12bbc:	04812483          	lw	s1,72(sp)
   12bc0:	02012a03          	lw	s4,32(sp)
   12bc4:	00068d93          	mv	s11,a3
   12bc8:	95677c63          	bgeu	a4,s6,11d20 <_vfprintf_r+0x14e4>
   12bcc:	00070b13          	mv	s6,a4
   12bd0:	950ff06f          	j	11d20 <_vfprintf_r+0x14e4>
   12bd4:	01412703          	lw	a4,20(sp)
   12bd8:	ffd00793          	li	a5,-3
   12bdc:	00f74463          	blt	a4,a5,12be4 <_vfprintf_r+0x23a8>
   12be0:	00eb5a63          	bge	s6,a4,12bf4 <_vfprintf_r+0x23b8>
   12be4:	ffe40413          	addi	s0,s0,-2
   12be8:	fdf47793          	andi	a5,s0,-33
   12bec:	04f12423          	sw	a5,72(sp)
   12bf0:	f20fe06f          	j	11310 <_vfprintf_r+0xad4>
   12bf4:	01812783          	lw	a5,24(sp)
   12bf8:	01412703          	lw	a4,20(sp)
   12bfc:	22f74663          	blt	a4,a5,12e28 <_vfprintf_r+0x25ec>
   12c00:	05412783          	lw	a5,84(sp)
   12c04:	00070b93          	mv	s7,a4
   12c08:	0017f793          	andi	a5,a5,1
   12c0c:	00078663          	beqz	a5,12c18 <_vfprintf_r+0x23dc>
   12c10:	02812783          	lw	a5,40(sp)
   12c14:	00f70bb3          	add	s7,a4,a5
   12c18:	05412783          	lw	a5,84(sp)
   12c1c:	4007f793          	andi	a5,a5,1024
   12c20:	00078663          	beqz	a5,12c2c <_vfprintf_r+0x23f0>
   12c24:	01412783          	lw	a5,20(sp)
   12c28:	40f04463          	bgtz	a5,13030 <_vfprintf_r+0x27f4>
   12c2c:	fffbca13          	not	s4,s7
   12c30:	41fa5a13          	srai	s4,s4,0x1f
   12c34:	014bfa33          	and	s4,s7,s4
   12c38:	06700413          	li	s0,103
   12c3c:	02012223          	sw	zero,36(sp)
   12c40:	02012023          	sw	zero,32(sp)
   12c44:	ff8fe06f          	j	1143c <_vfprintf_r+0xc00>
   12c48:	0c714783          	lbu	a5,199(sp)
   12c4c:	00000b13          	li	s6,0
   12c50:	00078463          	beqz	a5,12c58 <_vfprintf_r+0x241c>
   12c54:	fa9fd06f          	j	10bfc <_vfprintf_r+0x3c0>
   12c58:	ac4fe06f          	j	10f1c <_vfprintf_r+0x6e0>
   12c5c:	00012823          	sw	zero,16(sp)
   12c60:	00078993          	mv	s3,a5
   12c64:	800007b7          	lui	a5,0x80000
   12c68:	01c7ce33          	xor	t3,a5,t3
   12c6c:	02d00793          	li	a5,45
   12c70:	04f12e23          	sw	a5,92(sp)
   12c74:	badff06f          	j	12820 <_vfprintf_r+0x1fe4>
   12c78:	0e410613          	addi	a2,sp,228
   12c7c:	000a0593          	mv	a1,s4
   12c80:	000a8513          	mv	a0,s5
   12c84:	25c090ef          	jal	ra,1bee0 <__sprint_r>
   12c88:	00050463          	beqz	a0,12c90 <_vfprintf_r+0x2454>
   12c8c:	e69fd06f          	j	10af4 <_vfprintf_r+0x2b8>
   12c90:	0004c603          	lbu	a2,0(s1)
   12c94:	0ec12783          	lw	a5,236(sp)
   12c98:	10c10693          	addi	a3,sp,268
   12c9c:	00cb0b33          	add	s6,s6,a2
   12ca0:	915ff06f          	j	125b4 <_vfprintf_r+0x1d78>
   12ca4:	04012783          	lw	a5,64(sp)
   12ca8:	04412583          	lw	a1,68(sp)
   12cac:	00000413          	li	s0,0
   12cb0:	40f90933          	sub	s2,s2,a5
   12cb4:	00078613          	mv	a2,a5
   12cb8:	00090513          	mv	a0,s2
   12cbc:	5d0060ef          	jal	ra,1928c <strncpy>
   12cc0:	0014c803          	lbu	a6,1(s1)
   12cc4:	00a00613          	li	a2,10
   12cc8:	00000693          	li	a3,0
   12ccc:	01003833          	snez	a6,a6
   12cd0:	000c8513          	mv	a0,s9
   12cd4:	000a0593          	mv	a1,s4
   12cd8:	010484b3          	add	s1,s1,a6
   12cdc:	1300d0ef          	jal	ra,1fe0c <__udivdi3>
   12ce0:	d10ff06f          	j	121f0 <_vfprintf_r+0x19b4>
   12ce4:	00900793          	li	a5,9
   12ce8:	d197e463          	bltu	a5,s9,121f0 <_vfprintf_r+0x19b4>
   12cec:	d50ff06f          	j	1223c <_vfprintf_r+0x1a00>
   12cf0:	0b010b93          	addi	s7,sp,176
   12cf4:	0d010793          	addi	a5,sp,208
   12cf8:	0cc10713          	addi	a4,sp,204
   12cfc:	0dc10813          	addi	a6,sp,220
   12d00:	000b0693          	mv	a3,s6
   12d04:	00300613          	li	a2,3
   12d08:	000b8593          	mv	a1,s7
   12d0c:	000a8513          	mv	a0,s5
   12d10:	0bd12823          	sw	t4,176(sp)
   12d14:	03d12223          	sw	t4,36(sp)
   12d18:	0be12a23          	sw	t5,180(sp)
   12d1c:	03e12023          	sw	t5,32(sp)
   12d20:	0bf12c23          	sw	t6,184(sp)
   12d24:	01f12c23          	sw	t6,24(sp)
   12d28:	0bc12e23          	sw	t3,188(sp)
   12d2c:	01c12a23          	sw	t3,20(sp)
   12d30:	791020ef          	jal	ra,15cc0 <_ldtoa_r>
   12d34:	00054703          	lbu	a4,0(a0)
   12d38:	03000793          	li	a5,48
   12d3c:	00050d13          	mv	s10,a0
   12d40:	01412e03          	lw	t3,20(sp)
   12d44:	01812f83          	lw	t6,24(sp)
   12d48:	02012f03          	lw	t5,32(sp)
   12d4c:	02412e83          	lw	t4,36(sp)
   12d50:	4cf70263          	beq	a4,a5,13214 <_vfprintf_r+0x29d8>
   12d54:	0a010793          	addi	a5,sp,160
   12d58:	04f12c23          	sw	a5,88(sp)
   12d5c:	0cc12783          	lw	a5,204(sp)
   12d60:	016787b3          	add	a5,a5,s6
   12d64:	00fd0a33          	add	s4,s10,a5
   12d68:	05812583          	lw	a1,88(sp)
   12d6c:	000b8513          	mv	a0,s7
   12d70:	0bd12823          	sw	t4,176(sp)
   12d74:	0be12a23          	sw	t5,180(sp)
   12d78:	0bf12c23          	sw	t6,184(sp)
   12d7c:	0bc12e23          	sw	t3,188(sp)
   12d80:	0a012023          	sw	zero,160(sp)
   12d84:	0a012223          	sw	zero,164(sp)
   12d88:	0a012423          	sw	zero,168(sp)
   12d8c:	0a012623          	sw	zero,172(sp)
   12d90:	1810e0ef          	jal	ra,21710 <__eqtf2>
   12d94:	000a0793          	mv	a5,s4
   12d98:	00051463          	bnez	a0,12da0 <_vfprintf_r+0x2564>
   12d9c:	d44fe06f          	j	112e0 <_vfprintf_r+0xaa4>
   12da0:	0dc12783          	lw	a5,220(sp)
   12da4:	03000693          	li	a3,48
   12da8:	0147e463          	bltu	a5,s4,12db0 <_vfprintf_r+0x2574>
   12dac:	d34fe06f          	j	112e0 <_vfprintf_r+0xaa4>
   12db0:	00178713          	addi	a4,a5,1 # 80000001 <__BSS_END__+0x7ffd9519>
   12db4:	0ce12e23          	sw	a4,220(sp)
   12db8:	00d78023          	sb	a3,0(a5)
   12dbc:	0dc12783          	lw	a5,220(sp)
   12dc0:	ff47e8e3          	bltu	a5,s4,12db0 <_vfprintf_r+0x2574>
   12dc4:	d1cfe06f          	j	112e0 <_vfprintf_r+0xaa4>
   12dc8:	02d00793          	li	a5,45
   12dcc:	0cf103a3          	sb	a5,199(sp)
   12dd0:	d34ff06f          	j	12304 <_vfprintf_r+0x1ac8>
   12dd4:	00412583          	lw	a1,4(sp)
   12dd8:	0e410613          	addi	a2,sp,228
   12ddc:	000a8513          	mv	a0,s5
   12de0:	100090ef          	jal	ra,1bee0 <__sprint_r>
   12de4:	00050463          	beqz	a0,12dec <_vfprintf_r+0x25b0>
   12de8:	d0dfd06f          	j	10af4 <_vfprintf_r+0x2b8>
   12dec:	0cc12403          	lw	s0,204(sp)
   12df0:	0ec12783          	lw	a5,236(sp)
   12df4:	10c10d93          	addi	s11,sp,268
   12df8:	f71fe06f          	j	11d68 <_vfprintf_r+0x152c>
   12dfc:	0c714783          	lbu	a5,199(sp)
   12e00:	01912623          	sw	s9,12(sp)
   12e04:	02012223          	sw	zero,36(sp)
   12e08:	02012023          	sw	zero,32(sp)
   12e0c:	00012a23          	sw	zero,20(sp)
   12e10:	000b0a13          	mv	s4,s6
   12e14:	000b0b93          	mv	s7,s6
   12e18:	00000b13          	li	s6,0
   12e1c:	00078463          	beqz	a5,12e24 <_vfprintf_r+0x25e8>
   12e20:	dddfd06f          	j	10bfc <_vfprintf_r+0x3c0>
   12e24:	8f8fe06f          	j	10f1c <_vfprintf_r+0x6e0>
   12e28:	01812783          	lw	a5,24(sp)
   12e2c:	02812703          	lw	a4,40(sp)
   12e30:	06700413          	li	s0,103
   12e34:	00e78bb3          	add	s7,a5,a4
   12e38:	01412783          	lw	a5,20(sp)
   12e3c:	42f05e63          	blez	a5,13278 <_vfprintf_r+0x2a3c>
   12e40:	05412783          	lw	a5,84(sp)
   12e44:	4007f793          	andi	a5,a5,1024
   12e48:	1e079663          	bnez	a5,13034 <_vfprintf_r+0x27f8>
   12e4c:	fffbca13          	not	s4,s7
   12e50:	41fa5a13          	srai	s4,s4,0x1f
   12e54:	014bfa33          	and	s4,s7,s4
   12e58:	de5ff06f          	j	12c3c <_vfprintf_r+0x2400>
   12e5c:	00412583          	lw	a1,4(sp)
   12e60:	0e410613          	addi	a2,sp,228
   12e64:	000a8513          	mv	a0,s5
   12e68:	078090ef          	jal	ra,1bee0 <__sprint_r>
   12e6c:	00050463          	beqz	a0,12e74 <_vfprintf_r+0x2638>
   12e70:	c85fd06f          	j	10af4 <_vfprintf_r+0x2b8>
   12e74:	0cc12403          	lw	s0,204(sp)
   12e78:	01812703          	lw	a4,24(sp)
   12e7c:	0ec12783          	lw	a5,236(sp)
   12e80:	10c10d93          	addi	s11,sp,268
   12e84:	40870433          	sub	s0,a4,s0
   12e88:	f2dfe06f          	j	11db4 <_vfprintf_r+0x1578>
   12e8c:	05412783          	lw	a5,84(sp)
   12e90:	01412703          	lw	a4,20(sp)
   12e94:	0017f793          	andi	a5,a5,1
   12e98:	0167e7b3          	or	a5,a5,s6
   12e9c:	3ee05a63          	blez	a4,13290 <_vfprintf_r+0x2a54>
   12ea0:	24079463          	bnez	a5,130e8 <_vfprintf_r+0x28ac>
   12ea4:	01412b83          	lw	s7,20(sp)
   12ea8:	06600413          	li	s0,102
   12eac:	f95ff06f          	j	12e40 <_vfprintf_r+0x2604>
   12eb0:	fff00793          	li	a5,-1
   12eb4:	00f12423          	sw	a5,8(sp)
   12eb8:	c65fd06f          	j	10b1c <_vfprintf_r+0x2e0>
   12ebc:	00012697          	auipc	a3,0x12
   12ec0:	ee868693          	addi	a3,a3,-280 # 24da4 <zeroes.4505>
   12ec4:	008787b3          	add	a5,a5,s0
   12ec8:	00170713          	addi	a4,a4,1 # 3ffe0001 <__BSS_END__+0x3ffb9519>
   12ecc:	00d8a023          	sw	a3,0(a7)
   12ed0:	0088a223          	sw	s0,4(a7)
   12ed4:	0ef12623          	sw	a5,236(sp)
   12ed8:	0ee12423          	sw	a4,232(sp)
   12edc:	00700693          	li	a3,7
   12ee0:	00888893          	addi	a7,a7,8
   12ee4:	a8e6d663          	bge	a3,a4,12170 <_vfprintf_r+0x1934>
   12ee8:	00412583          	lw	a1,4(sp)
   12eec:	0e410613          	addi	a2,sp,228
   12ef0:	000a8513          	mv	a0,s5
   12ef4:	7ed080ef          	jal	ra,1bee0 <__sprint_r>
   12ef8:	00050463          	beqz	a0,12f00 <_vfprintf_r+0x26c4>
   12efc:	bf9fd06f          	j	10af4 <_vfprintf_r+0x2b8>
   12f00:	0ec12783          	lw	a5,236(sp)
   12f04:	0e812703          	lw	a4,232(sp)
   12f08:	10c10893          	addi	a7,sp,268
   12f0c:	a64ff06f          	j	12170 <_vfprintf_r+0x1934>
   12f10:	0a010793          	addi	a5,sp,160
   12f14:	016d0a33          	add	s4,s10,s6
   12f18:	04f12c23          	sw	a5,88(sp)
   12f1c:	e4dff06f          	j	12d68 <_vfprintf_r+0x252c>
   12f20:	001b0a13          	addi	s4,s6,1
   12f24:	0b010b93          	addi	s7,sp,176
   12f28:	0dc10813          	addi	a6,sp,220
   12f2c:	0d010793          	addi	a5,sp,208
   12f30:	0cc10713          	addi	a4,sp,204
   12f34:	000a0693          	mv	a3,s4
   12f38:	00200613          	li	a2,2
   12f3c:	000b8593          	mv	a1,s7
   12f40:	000a8513          	mv	a0,s5
   12f44:	0bd12823          	sw	t4,176(sp)
   12f48:	03d12223          	sw	t4,36(sp)
   12f4c:	0be12a23          	sw	t5,180(sp)
   12f50:	03e12023          	sw	t5,32(sp)
   12f54:	0bf12c23          	sw	t6,184(sp)
   12f58:	01f12c23          	sw	t6,24(sp)
   12f5c:	0bc12e23          	sw	t3,188(sp)
   12f60:	01c12a23          	sw	t3,20(sp)
   12f64:	55d020ef          	jal	ra,15cc0 <_ldtoa_r>
   12f68:	01412e03          	lw	t3,20(sp)
   12f6c:	01812f83          	lw	t6,24(sp)
   12f70:	02012f03          	lw	t5,32(sp)
   12f74:	02412e83          	lw	t4,36(sp)
   12f78:	00050d13          	mv	s10,a0
   12f7c:	0a010793          	addi	a5,sp,160
   12f80:	014d0a33          	add	s4,s10,s4
   12f84:	04f12c23          	sw	a5,88(sp)
   12f88:	de1ff06f          	j	12d68 <_vfprintf_r+0x252c>
   12f8c:	03000793          	li	a5,48
   12f90:	0cf10423          	sb	a5,200(sp)
   12f94:	07800793          	li	a5,120
   12f98:	849ff06f          	j	127e0 <_vfprintf_r+0x1fa4>
   12f9c:	001b0593          	addi	a1,s6,1
   12fa0:	000a8513          	mv	a0,s5
   12fa4:	314040ef          	jal	ra,172b8 <_malloc_r>
   12fa8:	00050d13          	mv	s10,a0
   12fac:	34050c63          	beqz	a0,13304 <_vfprintf_r+0x2ac8>
   12fb0:	00a12823          	sw	a0,16(sp)
   12fb4:	849ff06f          	j	127fc <_vfprintf_r+0x1fc0>
   12fb8:	01412783          	lw	a5,20(sp)
   12fbc:	000c8713          	mv	a4,s9
   12fc0:	0cf12e23          	sw	a5,220(sp)
   12fc4:	03412783          	lw	a5,52(sp)
   12fc8:	fffcc683          	lbu	a3,-1(s9)
   12fcc:	00f7c603          	lbu	a2,15(a5)
   12fd0:	02d61063          	bne	a2,a3,12ff0 <_vfprintf_r+0x27b4>
   12fd4:	03000593          	li	a1,48
   12fd8:	feb70fa3          	sb	a1,-1(a4)
   12fdc:	0dc12703          	lw	a4,220(sp)
   12fe0:	fff70793          	addi	a5,a4,-1
   12fe4:	0cf12e23          	sw	a5,220(sp)
   12fe8:	fff74683          	lbu	a3,-1(a4)
   12fec:	fed606e3          	beq	a2,a3,12fd8 <_vfprintf_r+0x279c>
   12ff0:	00168613          	addi	a2,a3,1
   12ff4:	03900593          	li	a1,57
   12ff8:	0ff67613          	andi	a2,a2,255
   12ffc:	00b68663          	beq	a3,a1,13008 <_vfprintf_r+0x27cc>
   13000:	fec70fa3          	sb	a2,-1(a4)
   13004:	b8dff06f          	j	12b90 <_vfprintf_r+0x2354>
   13008:	03412783          	lw	a5,52(sp)
   1300c:	00a7c603          	lbu	a2,10(a5)
   13010:	fec70fa3          	sb	a2,-1(a4)
   13014:	b7dff06f          	j	12b90 <_vfprintf_r+0x2354>
   13018:	000b0463          	beqz	s6,13020 <_vfprintf_r+0x27e4>
   1301c:	a00fe06f          	j	1121c <_vfprintf_r+0x9e0>
   13020:	00100b13          	li	s6,1
   13024:	9f8fe06f          	j	1121c <_vfprintf_r+0x9e0>
   13028:	00600b13          	li	s6,6
   1302c:	9f0fe06f          	j	1121c <_vfprintf_r+0x9e0>
   13030:	06700413          	li	s0,103
   13034:	03c12583          	lw	a1,60(sp)
   13038:	01412703          	lw	a4,20(sp)
   1303c:	02012223          	sw	zero,36(sp)
   13040:	0005c783          	lbu	a5,0(a1)
   13044:	02012023          	sw	zero,32(sp)
   13048:	0ff00693          	li	a3,255
   1304c:	02d78e63          	beq	a5,a3,13088 <_vfprintf_r+0x284c>
   13050:	02e7dc63          	bge	a5,a4,13088 <_vfprintf_r+0x284c>
   13054:	0015c603          	lbu	a2,1(a1)
   13058:	40f70733          	sub	a4,a4,a5
   1305c:	00060e63          	beqz	a2,13078 <_vfprintf_r+0x283c>
   13060:	02012783          	lw	a5,32(sp)
   13064:	00158593          	addi	a1,a1,1
   13068:	00178793          	addi	a5,a5,1
   1306c:	02f12023          	sw	a5,32(sp)
   13070:	00060793          	mv	a5,a2
   13074:	fd9ff06f          	j	1304c <_vfprintf_r+0x2810>
   13078:	02412603          	lw	a2,36(sp)
   1307c:	00160613          	addi	a2,a2,1
   13080:	02c12223          	sw	a2,36(sp)
   13084:	fc9ff06f          	j	1304c <_vfprintf_r+0x2810>
   13088:	00e12a23          	sw	a4,20(sp)
   1308c:	02012783          	lw	a5,32(sp)
   13090:	02412703          	lw	a4,36(sp)
   13094:	02b12e23          	sw	a1,60(sp)
   13098:	04012583          	lw	a1,64(sp)
   1309c:	00e78533          	add	a0,a5,a4
   130a0:	abcfd0ef          	jal	ra,1035c <__mulsi3>
   130a4:	01750bb3          	add	s7,a0,s7
   130a8:	fffbca13          	not	s4,s7
   130ac:	41fa5a13          	srai	s4,s4,0x1f
   130b0:	014bfa33          	and	s4,s7,s4
   130b4:	b88fe06f          	j	1143c <_vfprintf_r+0xc00>
   130b8:	0d610793          	addi	a5,sp,214
   130bc:	00071863          	bnez	a4,130cc <_vfprintf_r+0x2890>
   130c0:	03000793          	li	a5,48
   130c4:	0cf10b23          	sb	a5,214(sp)
   130c8:	0d710793          	addi	a5,sp,215
   130cc:	1b010713          	addi	a4,sp,432
   130d0:	030a0a13          	addi	s4,s4,48
   130d4:	40e78733          	sub	a4,a5,a4
   130d8:	01478023          	sb	s4,0(a5)
   130dc:	0dd70793          	addi	a5,a4,221
   130e0:	02f12c23          	sw	a5,56(sp)
   130e4:	b14fe06f          	j	113f8 <_vfprintf_r+0xbbc>
   130e8:	02812783          	lw	a5,40(sp)
   130ec:	06600413          	li	s0,102
   130f0:	00f70bb3          	add	s7,a4,a5
   130f4:	016b8bb3          	add	s7,s7,s6
   130f8:	d49ff06f          	j	12e40 <_vfprintf_r+0x2604>
   130fc:	0b010b93          	addi	s7,sp,176
   13100:	000b8513          	mv	a0,s7
   13104:	0bd12823          	sw	t4,176(sp)
   13108:	0be12a23          	sw	t5,180(sp)
   1310c:	0bf12c23          	sw	t6,184(sp)
   13110:	0bc12e23          	sw	t3,188(sp)
   13114:	73c110ef          	jal	ra,24850 <__trunctfdf2>
   13118:	0cc10613          	addi	a2,sp,204
   1311c:	3c5050ef          	jal	ra,18ce0 <frexp>
   13120:	00058613          	mv	a2,a1
   13124:	00050593          	mv	a1,a0
   13128:	000b8513          	mv	a0,s7
   1312c:	51c110ef          	jal	ra,24648 <__extenddftf2>
   13130:	09010793          	addi	a5,sp,144
   13134:	00078593          	mv	a1,a5
   13138:	00f12c23          	sw	a5,24(sp)
   1313c:	0b012783          	lw	a5,176(sp)
   13140:	0a010a13          	addi	s4,sp,160
   13144:	08010613          	addi	a2,sp,128
   13148:	08f12823          	sw	a5,144(sp)
   1314c:	0b412783          	lw	a5,180(sp)
   13150:	000a0513          	mv	a0,s4
   13154:	04c12623          	sw	a2,76(sp)
   13158:	08f12a23          	sw	a5,148(sp)
   1315c:	0b812783          	lw	a5,184(sp)
   13160:	05412c23          	sw	s4,88(sp)
   13164:	08012023          	sw	zero,128(sp)
   13168:	08f12c23          	sw	a5,152(sp)
   1316c:	0bc12783          	lw	a5,188(sp)
   13170:	08012223          	sw	zero,132(sp)
   13174:	08012423          	sw	zero,136(sp)
   13178:	08f12e23          	sw	a5,156(sp)
   1317c:	3ffc07b7          	lui	a5,0x3ffc0
   13180:	08f12623          	sw	a5,140(sp)
   13184:	0e10e0ef          	jal	ra,21a64 <__multf3>
   13188:	0a012683          	lw	a3,160(sp)
   1318c:	0a412e03          	lw	t3,164(sp)
   13190:	0a812e83          	lw	t4,168(sp)
   13194:	0ac12f03          	lw	t5,172(sp)
   13198:	000a0593          	mv	a1,s4
   1319c:	000b8513          	mv	a0,s7
   131a0:	0ad12823          	sw	a3,176(sp)
   131a4:	02d12a23          	sw	a3,52(sp)
   131a8:	0bc12a23          	sw	t3,180(sp)
   131ac:	03c12223          	sw	t3,36(sp)
   131b0:	0bd12c23          	sw	t4,184(sp)
   131b4:	03d12023          	sw	t4,32(sp)
   131b8:	0be12e23          	sw	t5,188(sp)
   131bc:	01e12a23          	sw	t5,20(sp)
   131c0:	0a012023          	sw	zero,160(sp)
   131c4:	0a012223          	sw	zero,164(sp)
   131c8:	0a012423          	sw	zero,168(sp)
   131cc:	0a012623          	sw	zero,172(sp)
   131d0:	5400e0ef          	jal	ra,21710 <__eqtf2>
   131d4:	01412f03          	lw	t5,20(sp)
   131d8:	02012e83          	lw	t4,32(sp)
   131dc:	02412e03          	lw	t3,36(sp)
   131e0:	03412683          	lw	a3,52(sp)
   131e4:	00051663          	bnez	a0,131f0 <_vfprintf_r+0x29b4>
   131e8:	00100793          	li	a5,1
   131ec:	0cf12623          	sw	a5,204(sp)
   131f0:	00012797          	auipc	a5,0x12
   131f4:	bd478793          	addi	a5,a5,-1068 # 24dc4 <zeroes.4505+0x20>
   131f8:	02f12a23          	sw	a5,52(sp)
   131fc:	f38ff06f          	j	12934 <_vfprintf_r+0x20f8>
   13200:	05412783          	lw	a5,84(sp)
   13204:	0017f793          	andi	a5,a5,1
   13208:	00079463          	bnez	a5,13210 <_vfprintf_r+0x29d4>
   1320c:	a0cfe06f          	j	11418 <_vfprintf_r+0xbdc>
   13210:	a00fe06f          	j	11410 <_vfprintf_r+0xbd4>
   13214:	0a010593          	addi	a1,sp,160
   13218:	000b8513          	mv	a0,s7
   1321c:	0bd12823          	sw	t4,176(sp)
   13220:	03d12223          	sw	t4,36(sp)
   13224:	0be12a23          	sw	t5,180(sp)
   13228:	03e12023          	sw	t5,32(sp)
   1322c:	0bf12c23          	sw	t6,184(sp)
   13230:	01f12c23          	sw	t6,24(sp)
   13234:	0bc12e23          	sw	t3,188(sp)
   13238:	01c12a23          	sw	t3,20(sp)
   1323c:	04b12c23          	sw	a1,88(sp)
   13240:	0a012023          	sw	zero,160(sp)
   13244:	0a012223          	sw	zero,164(sp)
   13248:	0a012423          	sw	zero,168(sp)
   1324c:	0a012623          	sw	zero,172(sp)
   13250:	4c00e0ef          	jal	ra,21710 <__eqtf2>
   13254:	01412e03          	lw	t3,20(sp)
   13258:	01812f83          	lw	t6,24(sp)
   1325c:	02012f03          	lw	t5,32(sp)
   13260:	02412e83          	lw	t4,36(sp)
   13264:	ae050ce3          	beqz	a0,12d5c <_vfprintf_r+0x2520>
   13268:	00100793          	li	a5,1
   1326c:	416787b3          	sub	a5,a5,s6
   13270:	0cf12623          	sw	a5,204(sp)
   13274:	aedff06f          	j	12d60 <_vfprintf_r+0x2524>
   13278:	40fb8bb3          	sub	s7,s7,a5
   1327c:	001b8b93          	addi	s7,s7,1
   13280:	fffbca13          	not	s4,s7
   13284:	41fa5a13          	srai	s4,s4,0x1f
   13288:	014bfa33          	and	s4,s7,s4
   1328c:	9b1ff06f          	j	12c3c <_vfprintf_r+0x2400>
   13290:	00079a63          	bnez	a5,132a4 <_vfprintf_r+0x2a68>
   13294:	00100a13          	li	s4,1
   13298:	06600413          	li	s0,102
   1329c:	00100b93          	li	s7,1
   132a0:	99dff06f          	j	12c3c <_vfprintf_r+0x2400>
   132a4:	02812783          	lw	a5,40(sp)
   132a8:	06600413          	li	s0,102
   132ac:	00178b93          	addi	s7,a5,1
   132b0:	016b8bb3          	add	s7,s7,s6
   132b4:	fffbca13          	not	s4,s7
   132b8:	41fa5a13          	srai	s4,s4,0x1f
   132bc:	014bfa33          	and	s4,s7,s4
   132c0:	97dff06f          	j	12c3c <_vfprintf_r+0x2400>
   132c4:	000d8613          	mv	a2,s11
   132c8:	cb1fe06f          	j	11f78 <_vfprintf_r+0x173c>
   132cc:	00c12703          	lw	a4,12(sp)
   132d0:	00072b03          	lw	s6,0(a4)
   132d4:	00470713          	addi	a4,a4,4
   132d8:	000b5463          	bgez	s6,132e0 <_vfprintf_r+0x2aa4>
   132dc:	fff00b13          	li	s6,-1
   132e0:	00194403          	lbu	s0,1(s2)
   132e4:	00e12623          	sw	a4,12(sp)
   132e8:	00078913          	mv	s2,a5
   132ec:	f04fd06f          	j	109f0 <_vfprintf_r+0x1b4>
   132f0:	00098a13          	mv	s4,s3
   132f4:	b2dfd06f          	j	10e20 <_vfprintf_r+0x5e4>
   132f8:	00200793          	li	a5,2
   132fc:	02f12c23          	sw	a5,56(sp)
   13300:	8f8fe06f          	j	113f8 <_vfprintf_r+0xbbc>
   13304:	00412703          	lw	a4,4(sp)
   13308:	00c75783          	lhu	a5,12(a4)
   1330c:	0407e793          	ori	a5,a5,64
   13310:	00f71623          	sh	a5,12(a4)
   13314:	ff4fd06f          	j	10b08 <_vfprintf_r+0x2cc>
   13318:	00098a13          	mv	s4,s3
   1331c:	954fe06f          	j	11470 <_vfprintf_r+0xc34>
   13320:	000b0a13          	mv	s4,s6
   13324:	c59ff06f          	j	12f7c <_vfprintf_r+0x2740>

00013328 <vfprintf>:
   13328:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   1332c:	00060693          	mv	a3,a2
   13330:	00058613          	mv	a2,a1
   13334:	00050593          	mv	a1,a0
   13338:	0007a503          	lw	a0,0(a5)
   1333c:	d00fd06f          	j	1083c <_vfprintf_r>

00013340 <__sbprintf>:
   13340:	00c5d783          	lhu	a5,12(a1)
   13344:	0645ae03          	lw	t3,100(a1)
   13348:	00e5d303          	lhu	t1,14(a1)
   1334c:	01c5a883          	lw	a7,28(a1)
   13350:	0245a803          	lw	a6,36(a1)
   13354:	b8010113          	addi	sp,sp,-1152
   13358:	ffd7f793          	andi	a5,a5,-3
   1335c:	40000713          	li	a4,1024
   13360:	46812c23          	sw	s0,1144(sp)
   13364:	00f11a23          	sh	a5,20(sp)
   13368:	00058413          	mv	s0,a1
   1336c:	07010793          	addi	a5,sp,112
   13370:	00810593          	addi	a1,sp,8
   13374:	46912a23          	sw	s1,1140(sp)
   13378:	47212823          	sw	s2,1136(sp)
   1337c:	46112e23          	sw	ra,1148(sp)
   13380:	00050913          	mv	s2,a0
   13384:	07c12623          	sw	t3,108(sp)
   13388:	00611b23          	sh	t1,22(sp)
   1338c:	03112223          	sw	a7,36(sp)
   13390:	03012623          	sw	a6,44(sp)
   13394:	00f12423          	sw	a5,8(sp)
   13398:	00f12c23          	sw	a5,24(sp)
   1339c:	00e12823          	sw	a4,16(sp)
   133a0:	00e12e23          	sw	a4,28(sp)
   133a4:	02012023          	sw	zero,32(sp)
   133a8:	c94fd0ef          	jal	ra,1083c <_vfprintf_r>
   133ac:	00050493          	mv	s1,a0
   133b0:	02055c63          	bgez	a0,133e8 <__sbprintf+0xa8>
   133b4:	01415783          	lhu	a5,20(sp)
   133b8:	0407f793          	andi	a5,a5,64
   133bc:	00078863          	beqz	a5,133cc <__sbprintf+0x8c>
   133c0:	00c45783          	lhu	a5,12(s0)
   133c4:	0407e793          	ori	a5,a5,64
   133c8:	00f41623          	sh	a5,12(s0)
   133cc:	47c12083          	lw	ra,1148(sp)
   133d0:	47812403          	lw	s0,1144(sp)
   133d4:	00048513          	mv	a0,s1
   133d8:	47012903          	lw	s2,1136(sp)
   133dc:	47412483          	lw	s1,1140(sp)
   133e0:	48010113          	addi	sp,sp,1152
   133e4:	00008067          	ret
   133e8:	00810593          	addi	a1,sp,8
   133ec:	00090513          	mv	a0,s2
   133f0:	724000ef          	jal	ra,13b14 <_fflush_r>
   133f4:	fc0500e3          	beqz	a0,133b4 <__sbprintf+0x74>
   133f8:	fff00493          	li	s1,-1
   133fc:	fb9ff06f          	j	133b4 <__sbprintf+0x74>

00013400 <__swbuf_r>:
   13400:	fe010113          	addi	sp,sp,-32
   13404:	00812c23          	sw	s0,24(sp)
   13408:	00912a23          	sw	s1,20(sp)
   1340c:	01212823          	sw	s2,16(sp)
   13410:	00112e23          	sw	ra,28(sp)
   13414:	01312623          	sw	s3,12(sp)
   13418:	00050913          	mv	s2,a0
   1341c:	00058493          	mv	s1,a1
   13420:	00060413          	mv	s0,a2
   13424:	00050663          	beqz	a0,13430 <__swbuf_r+0x30>
   13428:	03852783          	lw	a5,56(a0)
   1342c:	14078863          	beqz	a5,1357c <__swbuf_r+0x17c>
   13430:	00c41703          	lh	a4,12(s0)
   13434:	01842783          	lw	a5,24(s0)
   13438:	01071693          	slli	a3,a4,0x10
   1343c:	0106d693          	srli	a3,a3,0x10
   13440:	00f42423          	sw	a5,8(s0)
   13444:	0086f793          	andi	a5,a3,8
   13448:	08078263          	beqz	a5,134cc <__swbuf_r+0xcc>
   1344c:	01042783          	lw	a5,16(s0)
   13450:	06078e63          	beqz	a5,134cc <__swbuf_r+0xcc>
   13454:	01269613          	slli	a2,a3,0x12
   13458:	0ff4f993          	andi	s3,s1,255
   1345c:	0ff4f493          	andi	s1,s1,255
   13460:	08065e63          	bgez	a2,134fc <__swbuf_r+0xfc>
   13464:	00042703          	lw	a4,0(s0)
   13468:	01442683          	lw	a3,20(s0)
   1346c:	40f707b3          	sub	a5,a4,a5
   13470:	0ad7de63          	bge	a5,a3,1352c <__swbuf_r+0x12c>
   13474:	00842683          	lw	a3,8(s0)
   13478:	00170613          	addi	a2,a4,1
   1347c:	00c42023          	sw	a2,0(s0)
   13480:	fff68693          	addi	a3,a3,-1
   13484:	00d42423          	sw	a3,8(s0)
   13488:	01370023          	sb	s3,0(a4)
   1348c:	01442703          	lw	a4,20(s0)
   13490:	00178793          	addi	a5,a5,1
   13494:	0cf70863          	beq	a4,a5,13564 <__swbuf_r+0x164>
   13498:	00c45783          	lhu	a5,12(s0)
   1349c:	0017f793          	andi	a5,a5,1
   134a0:	00078663          	beqz	a5,134ac <__swbuf_r+0xac>
   134a4:	00a00793          	li	a5,10
   134a8:	0af48e63          	beq	s1,a5,13564 <__swbuf_r+0x164>
   134ac:	01c12083          	lw	ra,28(sp)
   134b0:	01812403          	lw	s0,24(sp)
   134b4:	00048513          	mv	a0,s1
   134b8:	01012903          	lw	s2,16(sp)
   134bc:	01412483          	lw	s1,20(sp)
   134c0:	00c12983          	lw	s3,12(sp)
   134c4:	02010113          	addi	sp,sp,32
   134c8:	00008067          	ret
   134cc:	00040593          	mv	a1,s0
   134d0:	00090513          	mv	a0,s2
   134d4:	0c4000ef          	jal	ra,13598 <__swsetup_r>
   134d8:	08051e63          	bnez	a0,13574 <__swbuf_r+0x174>
   134dc:	00c41703          	lh	a4,12(s0)
   134e0:	0ff4f993          	andi	s3,s1,255
   134e4:	01042783          	lw	a5,16(s0)
   134e8:	01071693          	slli	a3,a4,0x10
   134ec:	0106d693          	srli	a3,a3,0x10
   134f0:	01269613          	slli	a2,a3,0x12
   134f4:	0ff4f493          	andi	s1,s1,255
   134f8:	f60646e3          	bltz	a2,13464 <__swbuf_r+0x64>
   134fc:	06442683          	lw	a3,100(s0)
   13500:	00002637          	lui	a2,0x2
   13504:	00c76733          	or	a4,a4,a2
   13508:	ffffe637          	lui	a2,0xffffe
   1350c:	fff60613          	addi	a2,a2,-1 # ffffdfff <__BSS_END__+0xfffd7517>
   13510:	00c6f6b3          	and	a3,a3,a2
   13514:	00e41623          	sh	a4,12(s0)
   13518:	00042703          	lw	a4,0(s0)
   1351c:	06d42223          	sw	a3,100(s0)
   13520:	01442683          	lw	a3,20(s0)
   13524:	40f707b3          	sub	a5,a4,a5
   13528:	f4d7c6e3          	blt	a5,a3,13474 <__swbuf_r+0x74>
   1352c:	00040593          	mv	a1,s0
   13530:	00090513          	mv	a0,s2
   13534:	5e0000ef          	jal	ra,13b14 <_fflush_r>
   13538:	02051e63          	bnez	a0,13574 <__swbuf_r+0x174>
   1353c:	00042703          	lw	a4,0(s0)
   13540:	00842683          	lw	a3,8(s0)
   13544:	00100793          	li	a5,1
   13548:	00170613          	addi	a2,a4,1
   1354c:	fff68693          	addi	a3,a3,-1
   13550:	00c42023          	sw	a2,0(s0)
   13554:	00d42423          	sw	a3,8(s0)
   13558:	01370023          	sb	s3,0(a4)
   1355c:	01442703          	lw	a4,20(s0)
   13560:	f2f71ce3          	bne	a4,a5,13498 <__swbuf_r+0x98>
   13564:	00040593          	mv	a1,s0
   13568:	00090513          	mv	a0,s2
   1356c:	5a8000ef          	jal	ra,13b14 <_fflush_r>
   13570:	f2050ee3          	beqz	a0,134ac <__swbuf_r+0xac>
   13574:	fff00493          	li	s1,-1
   13578:	f35ff06f          	j	134ac <__swbuf_r+0xac>
   1357c:	151000ef          	jal	ra,13ecc <__sinit>
   13580:	eb1ff06f          	j	13430 <__swbuf_r+0x30>

00013584 <__swbuf>:
   13584:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   13588:	00058613          	mv	a2,a1
   1358c:	00050593          	mv	a1,a0
   13590:	0007a503          	lw	a0,0(a5)
   13594:	e6dff06f          	j	13400 <__swbuf_r>

00013598 <__swsetup_r>:
   13598:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   1359c:	0007a783          	lw	a5,0(a5)
   135a0:	ff010113          	addi	sp,sp,-16
   135a4:	00812423          	sw	s0,8(sp)
   135a8:	00912223          	sw	s1,4(sp)
   135ac:	00112623          	sw	ra,12(sp)
   135b0:	00050493          	mv	s1,a0
   135b4:	00058413          	mv	s0,a1
   135b8:	00078663          	beqz	a5,135c4 <__swsetup_r+0x2c>
   135bc:	0387a703          	lw	a4,56(a5)
   135c0:	08070663          	beqz	a4,1364c <__swsetup_r+0xb4>
   135c4:	00c41703          	lh	a4,12(s0)
   135c8:	01071793          	slli	a5,a4,0x10
   135cc:	0107d793          	srli	a5,a5,0x10
   135d0:	0087f693          	andi	a3,a5,8
   135d4:	08068a63          	beqz	a3,13668 <__swsetup_r+0xd0>
   135d8:	01042683          	lw	a3,16(s0)
   135dc:	0a068a63          	beqz	a3,13690 <__swsetup_r+0xf8>
   135e0:	0017f713          	andi	a4,a5,1
   135e4:	02070863          	beqz	a4,13614 <__swsetup_r+0x7c>
   135e8:	01442783          	lw	a5,20(s0)
   135ec:	00042423          	sw	zero,8(s0)
   135f0:	00000513          	li	a0,0
   135f4:	40f007b3          	neg	a5,a5
   135f8:	00f42c23          	sw	a5,24(s0)
   135fc:	02068a63          	beqz	a3,13630 <__swsetup_r+0x98>
   13600:	00c12083          	lw	ra,12(sp)
   13604:	00812403          	lw	s0,8(sp)
   13608:	00412483          	lw	s1,4(sp)
   1360c:	01010113          	addi	sp,sp,16
   13610:	00008067          	ret
   13614:	0027f793          	andi	a5,a5,2
   13618:	00000713          	li	a4,0
   1361c:	00079463          	bnez	a5,13624 <__swsetup_r+0x8c>
   13620:	01442703          	lw	a4,20(s0)
   13624:	00e42423          	sw	a4,8(s0)
   13628:	00000513          	li	a0,0
   1362c:	fc069ae3          	bnez	a3,13600 <__swsetup_r+0x68>
   13630:	00c41783          	lh	a5,12(s0)
   13634:	0807f713          	andi	a4,a5,128
   13638:	fc0704e3          	beqz	a4,13600 <__swsetup_r+0x68>
   1363c:	0407e793          	ori	a5,a5,64
   13640:	00f41623          	sh	a5,12(s0)
   13644:	fff00513          	li	a0,-1
   13648:	fb9ff06f          	j	13600 <__swsetup_r+0x68>
   1364c:	00078513          	mv	a0,a5
   13650:	07d000ef          	jal	ra,13ecc <__sinit>
   13654:	00c41703          	lh	a4,12(s0)
   13658:	01071793          	slli	a5,a4,0x10
   1365c:	0107d793          	srli	a5,a5,0x10
   13660:	0087f693          	andi	a3,a5,8
   13664:	f6069ae3          	bnez	a3,135d8 <__swsetup_r+0x40>
   13668:	0107f693          	andi	a3,a5,16
   1366c:	06068e63          	beqz	a3,136e8 <__swsetup_r+0x150>
   13670:	0047f793          	andi	a5,a5,4
   13674:	04079063          	bnez	a5,136b4 <__swsetup_r+0x11c>
   13678:	01042683          	lw	a3,16(s0)
   1367c:	00876793          	ori	a5,a4,8
   13680:	00f41623          	sh	a5,12(s0)
   13684:	01079793          	slli	a5,a5,0x10
   13688:	0107d793          	srli	a5,a5,0x10
   1368c:	f4069ae3          	bnez	a3,135e0 <__swsetup_r+0x48>
   13690:	2807f713          	andi	a4,a5,640
   13694:	20000613          	li	a2,512
   13698:	f4c704e3          	beq	a4,a2,135e0 <__swsetup_r+0x48>
   1369c:	00040593          	mv	a1,s0
   136a0:	00048513          	mv	a0,s1
   136a4:	2f5030ef          	jal	ra,17198 <__smakebuf_r>
   136a8:	00c45783          	lhu	a5,12(s0)
   136ac:	01042683          	lw	a3,16(s0)
   136b0:	f31ff06f          	j	135e0 <__swsetup_r+0x48>
   136b4:	03042583          	lw	a1,48(s0)
   136b8:	00058e63          	beqz	a1,136d4 <__swsetup_r+0x13c>
   136bc:	04040793          	addi	a5,s0,64
   136c0:	00f58863          	beq	a1,a5,136d0 <__swsetup_r+0x138>
   136c4:	00048513          	mv	a0,s1
   136c8:	175000ef          	jal	ra,1403c <_free_r>
   136cc:	00c41703          	lh	a4,12(s0)
   136d0:	02042823          	sw	zero,48(s0)
   136d4:	01042683          	lw	a3,16(s0)
   136d8:	fdb77713          	andi	a4,a4,-37
   136dc:	00042223          	sw	zero,4(s0)
   136e0:	00d42023          	sw	a3,0(s0)
   136e4:	f99ff06f          	j	1367c <__swsetup_r+0xe4>
   136e8:	00900793          	li	a5,9
   136ec:	00f4a023          	sw	a5,0(s1)
   136f0:	04076713          	ori	a4,a4,64
   136f4:	00e41623          	sh	a4,12(s0)
   136f8:	fff00513          	li	a0,-1
   136fc:	f05ff06f          	j	13600 <__swsetup_r+0x68>

00013700 <__register_exitproc>:
   13700:	1b818793          	addi	a5,gp,440 # 26a78 <_global_impure_ptr>
   13704:	0007a703          	lw	a4,0(a5)
   13708:	14872783          	lw	a5,328(a4)
   1370c:	04078c63          	beqz	a5,13764 <__register_exitproc+0x64>
   13710:	0047a703          	lw	a4,4(a5)
   13714:	01f00813          	li	a6,31
   13718:	06e84e63          	blt	a6,a4,13794 <__register_exitproc+0x94>
   1371c:	00271813          	slli	a6,a4,0x2
   13720:	02050663          	beqz	a0,1374c <__register_exitproc+0x4c>
   13724:	01078333          	add	t1,a5,a6
   13728:	08c32423          	sw	a2,136(t1)
   1372c:	1887a883          	lw	a7,392(a5)
   13730:	00100613          	li	a2,1
   13734:	00e61633          	sll	a2,a2,a4
   13738:	00c8e8b3          	or	a7,a7,a2
   1373c:	1917a423          	sw	a7,392(a5)
   13740:	10d32423          	sw	a3,264(t1)
   13744:	00200693          	li	a3,2
   13748:	02d50463          	beq	a0,a3,13770 <__register_exitproc+0x70>
   1374c:	00170713          	addi	a4,a4,1
   13750:	00e7a223          	sw	a4,4(a5)
   13754:	010787b3          	add	a5,a5,a6
   13758:	00b7a423          	sw	a1,8(a5)
   1375c:	00000513          	li	a0,0
   13760:	00008067          	ret
   13764:	14c70793          	addi	a5,a4,332
   13768:	14f72423          	sw	a5,328(a4)
   1376c:	fa5ff06f          	j	13710 <__register_exitproc+0x10>
   13770:	18c7a683          	lw	a3,396(a5)
   13774:	00170713          	addi	a4,a4,1
   13778:	00e7a223          	sw	a4,4(a5)
   1377c:	00c6e633          	or	a2,a3,a2
   13780:	18c7a623          	sw	a2,396(a5)
   13784:	010787b3          	add	a5,a5,a6
   13788:	00b7a423          	sw	a1,8(a5)
   1378c:	00000513          	li	a0,0
   13790:	00008067          	ret
   13794:	fff00513          	li	a0,-1
   13798:	00008067          	ret

0001379c <__call_exitprocs>:
   1379c:	fd010113          	addi	sp,sp,-48
   137a0:	1b818793          	addi	a5,gp,440 # 26a78 <_global_impure_ptr>
   137a4:	01812423          	sw	s8,8(sp)
   137a8:	0007ac03          	lw	s8,0(a5)
   137ac:	01312e23          	sw	s3,28(sp)
   137b0:	01412c23          	sw	s4,24(sp)
   137b4:	01512a23          	sw	s5,20(sp)
   137b8:	01612823          	sw	s6,16(sp)
   137bc:	02112623          	sw	ra,44(sp)
   137c0:	02812423          	sw	s0,40(sp)
   137c4:	02912223          	sw	s1,36(sp)
   137c8:	03212023          	sw	s2,32(sp)
   137cc:	01712623          	sw	s7,12(sp)
   137d0:	00050a93          	mv	s5,a0
   137d4:	00058b13          	mv	s6,a1
   137d8:	00100a13          	li	s4,1
   137dc:	fff00993          	li	s3,-1
   137e0:	148c2903          	lw	s2,328(s8)
   137e4:	02090863          	beqz	s2,13814 <__call_exitprocs+0x78>
   137e8:	00492483          	lw	s1,4(s2)
   137ec:	fff48413          	addi	s0,s1,-1
   137f0:	02044263          	bltz	s0,13814 <__call_exitprocs+0x78>
   137f4:	00249493          	slli	s1,s1,0x2
   137f8:	009904b3          	add	s1,s2,s1
   137fc:	040b0463          	beqz	s6,13844 <__call_exitprocs+0xa8>
   13800:	1044a783          	lw	a5,260(s1)
   13804:	05678063          	beq	a5,s6,13844 <__call_exitprocs+0xa8>
   13808:	fff40413          	addi	s0,s0,-1
   1380c:	ffc48493          	addi	s1,s1,-4
   13810:	ff3416e3          	bne	s0,s3,137fc <__call_exitprocs+0x60>
   13814:	02c12083          	lw	ra,44(sp)
   13818:	02812403          	lw	s0,40(sp)
   1381c:	02412483          	lw	s1,36(sp)
   13820:	02012903          	lw	s2,32(sp)
   13824:	01c12983          	lw	s3,28(sp)
   13828:	01812a03          	lw	s4,24(sp)
   1382c:	01412a83          	lw	s5,20(sp)
   13830:	01012b03          	lw	s6,16(sp)
   13834:	00c12b83          	lw	s7,12(sp)
   13838:	00812c03          	lw	s8,8(sp)
   1383c:	03010113          	addi	sp,sp,48
   13840:	00008067          	ret
   13844:	00492783          	lw	a5,4(s2)
   13848:	0044a683          	lw	a3,4(s1)
   1384c:	fff78793          	addi	a5,a5,-1
   13850:	04878a63          	beq	a5,s0,138a4 <__call_exitprocs+0x108>
   13854:	0004a223          	sw	zero,4(s1)
   13858:	fa0688e3          	beqz	a3,13808 <__call_exitprocs+0x6c>
   1385c:	18892783          	lw	a5,392(s2)
   13860:	008a1733          	sll	a4,s4,s0
   13864:	00492b83          	lw	s7,4(s2)
   13868:	00f777b3          	and	a5,a4,a5
   1386c:	00079e63          	bnez	a5,13888 <__call_exitprocs+0xec>
   13870:	000680e7          	jalr	a3
   13874:	00492783          	lw	a5,4(s2)
   13878:	f77794e3          	bne	a5,s7,137e0 <__call_exitprocs+0x44>
   1387c:	148c2783          	lw	a5,328(s8)
   13880:	f92784e3          	beq	a5,s2,13808 <__call_exitprocs+0x6c>
   13884:	f5dff06f          	j	137e0 <__call_exitprocs+0x44>
   13888:	18c92783          	lw	a5,396(s2)
   1388c:	0844a583          	lw	a1,132(s1)
   13890:	00f77733          	and	a4,a4,a5
   13894:	00071c63          	bnez	a4,138ac <__call_exitprocs+0x110>
   13898:	000a8513          	mv	a0,s5
   1389c:	000680e7          	jalr	a3
   138a0:	fd5ff06f          	j	13874 <__call_exitprocs+0xd8>
   138a4:	00892223          	sw	s0,4(s2)
   138a8:	fb1ff06f          	j	13858 <__call_exitprocs+0xbc>
   138ac:	00058513          	mv	a0,a1
   138b0:	000680e7          	jalr	a3
   138b4:	fc1ff06f          	j	13874 <__call_exitprocs+0xd8>

000138b8 <__sflush_r>:
   138b8:	00c59783          	lh	a5,12(a1)
   138bc:	fe010113          	addi	sp,sp,-32
   138c0:	00812c23          	sw	s0,24(sp)
   138c4:	01079713          	slli	a4,a5,0x10
   138c8:	01075713          	srli	a4,a4,0x10
   138cc:	01312623          	sw	s3,12(sp)
   138d0:	00112e23          	sw	ra,28(sp)
   138d4:	00912a23          	sw	s1,20(sp)
   138d8:	01212823          	sw	s2,16(sp)
   138dc:	00877693          	andi	a3,a4,8
   138e0:	00058413          	mv	s0,a1
   138e4:	00050993          	mv	s3,a0
   138e8:	10069a63          	bnez	a3,139fc <__sflush_r+0x144>
   138ec:	00001737          	lui	a4,0x1
   138f0:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf874>
   138f4:	0045a683          	lw	a3,4(a1)
   138f8:	00e7e7b3          	or	a5,a5,a4
   138fc:	00f59623          	sh	a5,12(a1)
   13900:	18d05063          	blez	a3,13a80 <__sflush_r+0x1c8>
   13904:	02842703          	lw	a4,40(s0)
   13908:	0c070a63          	beqz	a4,139dc <__sflush_r+0x124>
   1390c:	01079793          	slli	a5,a5,0x10
   13910:	0107d793          	srli	a5,a5,0x10
   13914:	0009a483          	lw	s1,0(s3)
   13918:	01379693          	slli	a3,a5,0x13
   1391c:	0009a023          	sw	zero,0(s3)
   13920:	01c42583          	lw	a1,28(s0)
   13924:	1606c463          	bltz	a3,13a8c <__sflush_r+0x1d4>
   13928:	00100693          	li	a3,1
   1392c:	00000613          	li	a2,0
   13930:	00098513          	mv	a0,s3
   13934:	000700e7          	jalr	a4
   13938:	fff00793          	li	a5,-1
   1393c:	18f50863          	beq	a0,a5,13acc <__sflush_r+0x214>
   13940:	00c45783          	lhu	a5,12(s0)
   13944:	02842703          	lw	a4,40(s0)
   13948:	01c42583          	lw	a1,28(s0)
   1394c:	0047f793          	andi	a5,a5,4
   13950:	00078e63          	beqz	a5,1396c <__sflush_r+0xb4>
   13954:	00442683          	lw	a3,4(s0)
   13958:	03042783          	lw	a5,48(s0)
   1395c:	40d50533          	sub	a0,a0,a3
   13960:	00078663          	beqz	a5,1396c <__sflush_r+0xb4>
   13964:	03c42783          	lw	a5,60(s0)
   13968:	40f50533          	sub	a0,a0,a5
   1396c:	00050613          	mv	a2,a0
   13970:	00000693          	li	a3,0
   13974:	00098513          	mv	a0,s3
   13978:	000700e7          	jalr	a4
   1397c:	fff00793          	li	a5,-1
   13980:	10f51a63          	bne	a0,a5,13a94 <__sflush_r+0x1dc>
   13984:	0009a703          	lw	a4,0(s3)
   13988:	00c41783          	lh	a5,12(s0)
   1398c:	16070463          	beqz	a4,13af4 <__sflush_r+0x23c>
   13990:	01d00693          	li	a3,29
   13994:	00d70663          	beq	a4,a3,139a0 <__sflush_r+0xe8>
   13998:	01600693          	li	a3,22
   1399c:	0cd71063          	bne	a4,a3,13a5c <__sflush_r+0x1a4>
   139a0:	01042683          	lw	a3,16(s0)
   139a4:	fffff737          	lui	a4,0xfffff
   139a8:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffd8d17>
   139ac:	00e7f7b3          	and	a5,a5,a4
   139b0:	00f41623          	sh	a5,12(s0)
   139b4:	00042223          	sw	zero,4(s0)
   139b8:	00d42023          	sw	a3,0(s0)
   139bc:	03042583          	lw	a1,48(s0)
   139c0:	0099a023          	sw	s1,0(s3)
   139c4:	00058c63          	beqz	a1,139dc <__sflush_r+0x124>
   139c8:	04040793          	addi	a5,s0,64
   139cc:	00f58663          	beq	a1,a5,139d8 <__sflush_r+0x120>
   139d0:	00098513          	mv	a0,s3
   139d4:	668000ef          	jal	ra,1403c <_free_r>
   139d8:	02042823          	sw	zero,48(s0)
   139dc:	00000513          	li	a0,0
   139e0:	01c12083          	lw	ra,28(sp)
   139e4:	01812403          	lw	s0,24(sp)
   139e8:	01412483          	lw	s1,20(sp)
   139ec:	01012903          	lw	s2,16(sp)
   139f0:	00c12983          	lw	s3,12(sp)
   139f4:	02010113          	addi	sp,sp,32
   139f8:	00008067          	ret
   139fc:	0105a903          	lw	s2,16(a1)
   13a00:	fc090ee3          	beqz	s2,139dc <__sflush_r+0x124>
   13a04:	0005a483          	lw	s1,0(a1)
   13a08:	00377713          	andi	a4,a4,3
   13a0c:	0125a023          	sw	s2,0(a1)
   13a10:	412484b3          	sub	s1,s1,s2
   13a14:	00000793          	li	a5,0
   13a18:	00071463          	bnez	a4,13a20 <__sflush_r+0x168>
   13a1c:	0145a783          	lw	a5,20(a1)
   13a20:	00f42423          	sw	a5,8(s0)
   13a24:	00904863          	bgtz	s1,13a34 <__sflush_r+0x17c>
   13a28:	fb5ff06f          	j	139dc <__sflush_r+0x124>
   13a2c:	00a90933          	add	s2,s2,a0
   13a30:	fa9056e3          	blez	s1,139dc <__sflush_r+0x124>
   13a34:	02442783          	lw	a5,36(s0)
   13a38:	01c42583          	lw	a1,28(s0)
   13a3c:	00048693          	mv	a3,s1
   13a40:	00090613          	mv	a2,s2
   13a44:	00098513          	mv	a0,s3
   13a48:	000780e7          	jalr	a5
   13a4c:	40a484b3          	sub	s1,s1,a0
   13a50:	fca04ee3          	bgtz	a0,13a2c <__sflush_r+0x174>
   13a54:	00c45783          	lhu	a5,12(s0)
   13a58:	fff00513          	li	a0,-1
   13a5c:	0407e793          	ori	a5,a5,64
   13a60:	00f41623          	sh	a5,12(s0)
   13a64:	01c12083          	lw	ra,28(sp)
   13a68:	01812403          	lw	s0,24(sp)
   13a6c:	01412483          	lw	s1,20(sp)
   13a70:	01012903          	lw	s2,16(sp)
   13a74:	00c12983          	lw	s3,12(sp)
   13a78:	02010113          	addi	sp,sp,32
   13a7c:	00008067          	ret
   13a80:	03c5a703          	lw	a4,60(a1)
   13a84:	e8e040e3          	bgtz	a4,13904 <__sflush_r+0x4c>
   13a88:	f55ff06f          	j	139dc <__sflush_r+0x124>
   13a8c:	05042503          	lw	a0,80(s0)
   13a90:	ebdff06f          	j	1394c <__sflush_r+0x94>
   13a94:	00c45783          	lhu	a5,12(s0)
   13a98:	fffff737          	lui	a4,0xfffff
   13a9c:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffd8d17>
   13aa0:	00e7f7b3          	and	a5,a5,a4
   13aa4:	01042683          	lw	a3,16(s0)
   13aa8:	01079793          	slli	a5,a5,0x10
   13aac:	4107d793          	srai	a5,a5,0x10
   13ab0:	00f41623          	sh	a5,12(s0)
   13ab4:	00042223          	sw	zero,4(s0)
   13ab8:	00d42023          	sw	a3,0(s0)
   13abc:	01379713          	slli	a4,a5,0x13
   13ac0:	ee075ee3          	bgez	a4,139bc <__sflush_r+0x104>
   13ac4:	04a42823          	sw	a0,80(s0)
   13ac8:	ef5ff06f          	j	139bc <__sflush_r+0x104>
   13acc:	0009a783          	lw	a5,0(s3)
   13ad0:	e60788e3          	beqz	a5,13940 <__sflush_r+0x88>
   13ad4:	01d00713          	li	a4,29
   13ad8:	02e78863          	beq	a5,a4,13b08 <__sflush_r+0x250>
   13adc:	01600713          	li	a4,22
   13ae0:	02e78463          	beq	a5,a4,13b08 <__sflush_r+0x250>
   13ae4:	00c45783          	lhu	a5,12(s0)
   13ae8:	0407e793          	ori	a5,a5,64
   13aec:	00f41623          	sh	a5,12(s0)
   13af0:	ef1ff06f          	j	139e0 <__sflush_r+0x128>
   13af4:	fffff737          	lui	a4,0xfffff
   13af8:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffd8d17>
   13afc:	01042683          	lw	a3,16(s0)
   13b00:	00e7f7b3          	and	a5,a5,a4
   13b04:	fadff06f          	j	13ab0 <__sflush_r+0x1f8>
   13b08:	0099a023          	sw	s1,0(s3)
   13b0c:	00000513          	li	a0,0
   13b10:	ed1ff06f          	j	139e0 <__sflush_r+0x128>

00013b14 <_fflush_r>:
   13b14:	fe010113          	addi	sp,sp,-32
   13b18:	00812c23          	sw	s0,24(sp)
   13b1c:	00112e23          	sw	ra,28(sp)
   13b20:	00050413          	mv	s0,a0
   13b24:	00050663          	beqz	a0,13b30 <_fflush_r+0x1c>
   13b28:	03852783          	lw	a5,56(a0)
   13b2c:	02078063          	beqz	a5,13b4c <_fflush_r+0x38>
   13b30:	00c59783          	lh	a5,12(a1)
   13b34:	02079663          	bnez	a5,13b60 <_fflush_r+0x4c>
   13b38:	01c12083          	lw	ra,28(sp)
   13b3c:	01812403          	lw	s0,24(sp)
   13b40:	00000513          	li	a0,0
   13b44:	02010113          	addi	sp,sp,32
   13b48:	00008067          	ret
   13b4c:	00b12623          	sw	a1,12(sp)
   13b50:	37c000ef          	jal	ra,13ecc <__sinit>
   13b54:	00c12583          	lw	a1,12(sp)
   13b58:	00c59783          	lh	a5,12(a1)
   13b5c:	fc078ee3          	beqz	a5,13b38 <_fflush_r+0x24>
   13b60:	00040513          	mv	a0,s0
   13b64:	01812403          	lw	s0,24(sp)
   13b68:	01c12083          	lw	ra,28(sp)
   13b6c:	02010113          	addi	sp,sp,32
   13b70:	d49ff06f          	j	138b8 <__sflush_r>

00013b74 <fflush>:
   13b74:	00050593          	mv	a1,a0
   13b78:	00050863          	beqz	a0,13b88 <fflush+0x14>
   13b7c:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   13b80:	0007a503          	lw	a0,0(a5)
   13b84:	f91ff06f          	j	13b14 <_fflush_r>
   13b88:	1b818793          	addi	a5,gp,440 # 26a78 <_global_impure_ptr>
   13b8c:	0007a503          	lw	a0,0(a5)
   13b90:	00000597          	auipc	a1,0x0
   13b94:	f8458593          	addi	a1,a1,-124 # 13b14 <_fflush_r>
   13b98:	04d0006f          	j	143e4 <_fwalk_reent>

00013b9c <__fp_lock>:
   13b9c:	00000513          	li	a0,0
   13ba0:	00008067          	ret

00013ba4 <_cleanup_r>:
   13ba4:	0000a597          	auipc	a1,0xa
   13ba8:	8b458593          	addi	a1,a1,-1868 # 1d458 <_fclose_r>
   13bac:	0390006f          	j	143e4 <_fwalk_reent>

00013bb0 <__sinit.part.0>:
   13bb0:	fe010113          	addi	sp,sp,-32
   13bb4:	00112e23          	sw	ra,28(sp)
   13bb8:	00812c23          	sw	s0,24(sp)
   13bbc:	00912a23          	sw	s1,20(sp)
   13bc0:	01212823          	sw	s2,16(sp)
   13bc4:	01312623          	sw	s3,12(sp)
   13bc8:	01412423          	sw	s4,8(sp)
   13bcc:	01512223          	sw	s5,4(sp)
   13bd0:	01612023          	sw	s6,0(sp)
   13bd4:	00452403          	lw	s0,4(a0)
   13bd8:	00000717          	auipc	a4,0x0
   13bdc:	fcc70713          	addi	a4,a4,-52 # 13ba4 <_cleanup_r>
   13be0:	02e52e23          	sw	a4,60(a0)
   13be4:	2ec50793          	addi	a5,a0,748
   13be8:	00300713          	li	a4,3
   13bec:	2ee52223          	sw	a4,740(a0)
   13bf0:	2ef52423          	sw	a5,744(a0)
   13bf4:	2e052023          	sw	zero,736(a0)
   13bf8:	00400793          	li	a5,4
   13bfc:	00050913          	mv	s2,a0
   13c00:	00f42623          	sw	a5,12(s0)
   13c04:	00800613          	li	a2,8
   13c08:	00000593          	li	a1,0
   13c0c:	06042223          	sw	zero,100(s0)
   13c10:	00042023          	sw	zero,0(s0)
   13c14:	00042223          	sw	zero,4(s0)
   13c18:	00042423          	sw	zero,8(s0)
   13c1c:	00042823          	sw	zero,16(s0)
   13c20:	00042a23          	sw	zero,20(s0)
   13c24:	00042c23          	sw	zero,24(s0)
   13c28:	05c40513          	addi	a0,s0,92
   13c2c:	945fc0ef          	jal	ra,10570 <memset>
   13c30:	00892483          	lw	s1,8(s2)
   13c34:	00005b17          	auipc	s6,0x5
   13c38:	244b0b13          	addi	s6,s6,580 # 18e78 <__sread>
   13c3c:	00005a97          	auipc	s5,0x5
   13c40:	2a0a8a93          	addi	s5,s5,672 # 18edc <__swrite>
   13c44:	00005a17          	auipc	s4,0x5
   13c48:	320a0a13          	addi	s4,s4,800 # 18f64 <__sseek>
   13c4c:	00005997          	auipc	s3,0x5
   13c50:	38098993          	addi	s3,s3,896 # 18fcc <__sclose>
   13c54:	000107b7          	lui	a5,0x10
   13c58:	03642023          	sw	s6,32(s0)
   13c5c:	03542223          	sw	s5,36(s0)
   13c60:	03442423          	sw	s4,40(s0)
   13c64:	03342623          	sw	s3,44(s0)
   13c68:	00842e23          	sw	s0,28(s0)
   13c6c:	00978793          	addi	a5,a5,9 # 10009 <register_fini-0x6b>
   13c70:	00f4a623          	sw	a5,12(s1)
   13c74:	00800613          	li	a2,8
   13c78:	00000593          	li	a1,0
   13c7c:	0604a223          	sw	zero,100(s1)
   13c80:	0004a023          	sw	zero,0(s1)
   13c84:	0004a223          	sw	zero,4(s1)
   13c88:	0004a423          	sw	zero,8(s1)
   13c8c:	0004a823          	sw	zero,16(s1)
   13c90:	0004aa23          	sw	zero,20(s1)
   13c94:	0004ac23          	sw	zero,24(s1)
   13c98:	05c48513          	addi	a0,s1,92
   13c9c:	8d5fc0ef          	jal	ra,10570 <memset>
   13ca0:	00c92403          	lw	s0,12(s2)
   13ca4:	000207b7          	lui	a5,0x20
   13ca8:	0364a023          	sw	s6,32(s1)
   13cac:	0354a223          	sw	s5,36(s1)
   13cb0:	0344a423          	sw	s4,40(s1)
   13cb4:	0334a623          	sw	s3,44(s1)
   13cb8:	0094ae23          	sw	s1,28(s1)
   13cbc:	01278793          	addi	a5,a5,18 # 20012 <__udivdi3+0x206>
   13cc0:	00f42623          	sw	a5,12(s0)
   13cc4:	06042223          	sw	zero,100(s0)
   13cc8:	00042023          	sw	zero,0(s0)
   13ccc:	00042223          	sw	zero,4(s0)
   13cd0:	00042423          	sw	zero,8(s0)
   13cd4:	00042823          	sw	zero,16(s0)
   13cd8:	00042a23          	sw	zero,20(s0)
   13cdc:	00042c23          	sw	zero,24(s0)
   13ce0:	05c40513          	addi	a0,s0,92
   13ce4:	00800613          	li	a2,8
   13ce8:	00000593          	li	a1,0
   13cec:	885fc0ef          	jal	ra,10570 <memset>
   13cf0:	01c12083          	lw	ra,28(sp)
   13cf4:	03642023          	sw	s6,32(s0)
   13cf8:	03542223          	sw	s5,36(s0)
   13cfc:	03442423          	sw	s4,40(s0)
   13d00:	03342623          	sw	s3,44(s0)
   13d04:	00842e23          	sw	s0,28(s0)
   13d08:	01812403          	lw	s0,24(sp)
   13d0c:	00100793          	li	a5,1
   13d10:	02f92c23          	sw	a5,56(s2)
   13d14:	01412483          	lw	s1,20(sp)
   13d18:	01012903          	lw	s2,16(sp)
   13d1c:	00c12983          	lw	s3,12(sp)
   13d20:	00812a03          	lw	s4,8(sp)
   13d24:	00412a83          	lw	s5,4(sp)
   13d28:	00012b03          	lw	s6,0(sp)
   13d2c:	02010113          	addi	sp,sp,32
   13d30:	00008067          	ret

00013d34 <__fp_unlock>:
   13d34:	00000513          	li	a0,0
   13d38:	00008067          	ret

00013d3c <__sfmoreglue>:
   13d3c:	ff010113          	addi	sp,sp,-16
   13d40:	fff58613          	addi	a2,a1,-1
   13d44:	00812423          	sw	s0,8(sp)
   13d48:	00161413          	slli	s0,a2,0x1
   13d4c:	00c40433          	add	s0,s0,a2
   13d50:	00241413          	slli	s0,s0,0x2
   13d54:	00c40433          	add	s0,s0,a2
   13d58:	00341413          	slli	s0,s0,0x3
   13d5c:	01212023          	sw	s2,0(sp)
   13d60:	00058913          	mv	s2,a1
   13d64:	07440593          	addi	a1,s0,116
   13d68:	00912223          	sw	s1,4(sp)
   13d6c:	00112623          	sw	ra,12(sp)
   13d70:	548030ef          	jal	ra,172b8 <_malloc_r>
   13d74:	00050493          	mv	s1,a0
   13d78:	02050063          	beqz	a0,13d98 <__sfmoreglue+0x5c>
   13d7c:	00c50513          	addi	a0,a0,12
   13d80:	0004a023          	sw	zero,0(s1)
   13d84:	0124a223          	sw	s2,4(s1)
   13d88:	00a4a423          	sw	a0,8(s1)
   13d8c:	06840613          	addi	a2,s0,104
   13d90:	00000593          	li	a1,0
   13d94:	fdcfc0ef          	jal	ra,10570 <memset>
   13d98:	00c12083          	lw	ra,12(sp)
   13d9c:	00812403          	lw	s0,8(sp)
   13da0:	00048513          	mv	a0,s1
   13da4:	00012903          	lw	s2,0(sp)
   13da8:	00412483          	lw	s1,4(sp)
   13dac:	01010113          	addi	sp,sp,16
   13db0:	00008067          	ret

00013db4 <__sfp>:
   13db4:	fe010113          	addi	sp,sp,-32
   13db8:	1b818793          	addi	a5,gp,440 # 26a78 <_global_impure_ptr>
   13dbc:	01212823          	sw	s2,16(sp)
   13dc0:	0007a903          	lw	s2,0(a5)
   13dc4:	01312623          	sw	s3,12(sp)
   13dc8:	00112e23          	sw	ra,28(sp)
   13dcc:	03892783          	lw	a5,56(s2)
   13dd0:	00812c23          	sw	s0,24(sp)
   13dd4:	00912a23          	sw	s1,20(sp)
   13dd8:	00050993          	mv	s3,a0
   13ddc:	0a078663          	beqz	a5,13e88 <__sfp+0xd4>
   13de0:	2e090913          	addi	s2,s2,736
   13de4:	fff00493          	li	s1,-1
   13de8:	00492783          	lw	a5,4(s2)
   13dec:	00892403          	lw	s0,8(s2)
   13df0:	fff78793          	addi	a5,a5,-1
   13df4:	0007da63          	bgez	a5,13e08 <__sfp+0x54>
   13df8:	0800006f          	j	13e78 <__sfp+0xc4>
   13dfc:	fff78793          	addi	a5,a5,-1
   13e00:	06840413          	addi	s0,s0,104
   13e04:	06978a63          	beq	a5,s1,13e78 <__sfp+0xc4>
   13e08:	00c41703          	lh	a4,12(s0)
   13e0c:	fe0718e3          	bnez	a4,13dfc <__sfp+0x48>
   13e10:	ffff07b7          	lui	a5,0xffff0
   13e14:	00178793          	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffc9519>
   13e18:	06042223          	sw	zero,100(s0)
   13e1c:	00042023          	sw	zero,0(s0)
   13e20:	00042223          	sw	zero,4(s0)
   13e24:	00042423          	sw	zero,8(s0)
   13e28:	00f42623          	sw	a5,12(s0)
   13e2c:	00042823          	sw	zero,16(s0)
   13e30:	00042a23          	sw	zero,20(s0)
   13e34:	00042c23          	sw	zero,24(s0)
   13e38:	00800613          	li	a2,8
   13e3c:	00000593          	li	a1,0
   13e40:	05c40513          	addi	a0,s0,92
   13e44:	f2cfc0ef          	jal	ra,10570 <memset>
   13e48:	02042823          	sw	zero,48(s0)
   13e4c:	02042a23          	sw	zero,52(s0)
   13e50:	04042223          	sw	zero,68(s0)
   13e54:	04042423          	sw	zero,72(s0)
   13e58:	00040513          	mv	a0,s0
   13e5c:	01c12083          	lw	ra,28(sp)
   13e60:	01812403          	lw	s0,24(sp)
   13e64:	01412483          	lw	s1,20(sp)
   13e68:	01012903          	lw	s2,16(sp)
   13e6c:	00c12983          	lw	s3,12(sp)
   13e70:	02010113          	addi	sp,sp,32
   13e74:	00008067          	ret
   13e78:	00092403          	lw	s0,0(s2)
   13e7c:	00040c63          	beqz	s0,13e94 <__sfp+0xe0>
   13e80:	00040913          	mv	s2,s0
   13e84:	f65ff06f          	j	13de8 <__sfp+0x34>
   13e88:	00090513          	mv	a0,s2
   13e8c:	d25ff0ef          	jal	ra,13bb0 <__sinit.part.0>
   13e90:	f51ff06f          	j	13de0 <__sfp+0x2c>
   13e94:	00400593          	li	a1,4
   13e98:	00098513          	mv	a0,s3
   13e9c:	ea1ff0ef          	jal	ra,13d3c <__sfmoreglue>
   13ea0:	00a92023          	sw	a0,0(s2)
   13ea4:	00050413          	mv	s0,a0
   13ea8:	fc051ce3          	bnez	a0,13e80 <__sfp+0xcc>
   13eac:	00c00793          	li	a5,12
   13eb0:	00f9a023          	sw	a5,0(s3)
   13eb4:	fa5ff06f          	j	13e58 <__sfp+0xa4>

00013eb8 <_cleanup>:
   13eb8:	1b818793          	addi	a5,gp,440 # 26a78 <_global_impure_ptr>
   13ebc:	0007a503          	lw	a0,0(a5)
   13ec0:	00009597          	auipc	a1,0x9
   13ec4:	59858593          	addi	a1,a1,1432 # 1d458 <_fclose_r>
   13ec8:	51c0006f          	j	143e4 <_fwalk_reent>

00013ecc <__sinit>:
   13ecc:	03852783          	lw	a5,56(a0)
   13ed0:	00078463          	beqz	a5,13ed8 <__sinit+0xc>
   13ed4:	00008067          	ret
   13ed8:	cd9ff06f          	j	13bb0 <__sinit.part.0>

00013edc <__sfp_lock_acquire>:
   13edc:	00008067          	ret

00013ee0 <__sfp_lock_release>:
   13ee0:	00008067          	ret

00013ee4 <__sinit_lock_acquire>:
   13ee4:	00008067          	ret

00013ee8 <__sinit_lock_release>:
   13ee8:	00008067          	ret

00013eec <__fp_lock_all>:
   13eec:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   13ef0:	0007a503          	lw	a0,0(a5)
   13ef4:	00000597          	auipc	a1,0x0
   13ef8:	ca858593          	addi	a1,a1,-856 # 13b9c <__fp_lock>
   13efc:	4380006f          	j	14334 <_fwalk>

00013f00 <__fp_unlock_all>:
   13f00:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   13f04:	0007a503          	lw	a0,0(a5)
   13f08:	00000597          	auipc	a1,0x0
   13f0c:	e2c58593          	addi	a1,a1,-468 # 13d34 <__fp_unlock>
   13f10:	4240006f          	j	14334 <_fwalk>

00013f14 <_malloc_trim_r>:
   13f14:	fe010113          	addi	sp,sp,-32
   13f18:	00812c23          	sw	s0,24(sp)
   13f1c:	00912a23          	sw	s1,20(sp)
   13f20:	01212823          	sw	s2,16(sp)
   13f24:	01312623          	sw	s3,12(sp)
   13f28:	00058413          	mv	s0,a1
   13f2c:	00112e23          	sw	ra,28(sp)
   13f30:	d9418993          	addi	s3,gp,-620 # 26654 <__malloc_av_>
   13f34:	00050913          	mv	s2,a0
   13f38:	49d030ef          	jal	ra,17bd4 <__malloc_lock>
   13f3c:	0089a683          	lw	a3,8(s3)
   13f40:	00001737          	lui	a4,0x1
   13f44:	fef70793          	addi	a5,a4,-17 # fef <register_fini-0xf085>
   13f48:	0046a483          	lw	s1,4(a3)
   13f4c:	40878433          	sub	s0,a5,s0
   13f50:	ffc4f493          	andi	s1,s1,-4
   13f54:	00940433          	add	s0,s0,s1
   13f58:	00c45413          	srli	s0,s0,0xc
   13f5c:	fff40413          	addi	s0,s0,-1
   13f60:	00c41413          	slli	s0,s0,0xc
   13f64:	00e44e63          	blt	s0,a4,13f80 <_malloc_trim_r+0x6c>
   13f68:	00000593          	li	a1,0
   13f6c:	00090513          	mv	a0,s2
   13f70:	51d040ef          	jal	ra,18c8c <_sbrk_r>
   13f74:	0089a783          	lw	a5,8(s3)
   13f78:	009787b3          	add	a5,a5,s1
   13f7c:	02f50663          	beq	a0,a5,13fa8 <_malloc_trim_r+0x94>
   13f80:	00090513          	mv	a0,s2
   13f84:	455030ef          	jal	ra,17bd8 <__malloc_unlock>
   13f88:	01c12083          	lw	ra,28(sp)
   13f8c:	01812403          	lw	s0,24(sp)
   13f90:	01412483          	lw	s1,20(sp)
   13f94:	01012903          	lw	s2,16(sp)
   13f98:	00c12983          	lw	s3,12(sp)
   13f9c:	00000513          	li	a0,0
   13fa0:	02010113          	addi	sp,sp,32
   13fa4:	00008067          	ret
   13fa8:	408005b3          	neg	a1,s0
   13fac:	00090513          	mv	a0,s2
   13fb0:	4dd040ef          	jal	ra,18c8c <_sbrk_r>
   13fb4:	fff00793          	li	a5,-1
   13fb8:	04f50663          	beq	a0,a5,14004 <_malloc_trim_r+0xf0>
   13fbc:	1fc18793          	addi	a5,gp,508 # 26abc <__malloc_current_mallinfo>
   13fc0:	0007a783          	lw	a5,0(a5)
   13fc4:	0089a703          	lw	a4,8(s3)
   13fc8:	408484b3          	sub	s1,s1,s0
   13fcc:	0014e493          	ori	s1,s1,1
   13fd0:	40878433          	sub	s0,a5,s0
   13fd4:	00090513          	mv	a0,s2
   13fd8:	00972223          	sw	s1,4(a4)
   13fdc:	1e81ae23          	sw	s0,508(gp) # 26abc <__malloc_current_mallinfo>
   13fe0:	3f9030ef          	jal	ra,17bd8 <__malloc_unlock>
   13fe4:	01c12083          	lw	ra,28(sp)
   13fe8:	01812403          	lw	s0,24(sp)
   13fec:	01412483          	lw	s1,20(sp)
   13ff0:	01012903          	lw	s2,16(sp)
   13ff4:	00c12983          	lw	s3,12(sp)
   13ff8:	00100513          	li	a0,1
   13ffc:	02010113          	addi	sp,sp,32
   14000:	00008067          	ret
   14004:	00000593          	li	a1,0
   14008:	00090513          	mv	a0,s2
   1400c:	481040ef          	jal	ra,18c8c <_sbrk_r>
   14010:	0089a703          	lw	a4,8(s3)
   14014:	00f00693          	li	a3,15
   14018:	40e507b3          	sub	a5,a0,a4
   1401c:	f6f6d2e3          	bge	a3,a5,13f80 <_malloc_trim_r+0x6c>
   14020:	1c418693          	addi	a3,gp,452 # 26a84 <__malloc_sbrk_base>
   14024:	0006a683          	lw	a3,0(a3)
   14028:	0017e793          	ori	a5,a5,1
   1402c:	00f72223          	sw	a5,4(a4)
   14030:	40d50533          	sub	a0,a0,a3
   14034:	1ea1ae23          	sw	a0,508(gp) # 26abc <__malloc_current_mallinfo>
   14038:	f49ff06f          	j	13f80 <_malloc_trim_r+0x6c>

0001403c <_free_r>:
   1403c:	12058663          	beqz	a1,14168 <_free_r+0x12c>
   14040:	ff010113          	addi	sp,sp,-16
   14044:	00812423          	sw	s0,8(sp)
   14048:	00912223          	sw	s1,4(sp)
   1404c:	00058413          	mv	s0,a1
   14050:	00050493          	mv	s1,a0
   14054:	00112623          	sw	ra,12(sp)
   14058:	37d030ef          	jal	ra,17bd4 <__malloc_lock>
   1405c:	ffc42583          	lw	a1,-4(s0)
   14060:	ff840713          	addi	a4,s0,-8
   14064:	d9418513          	addi	a0,gp,-620 # 26654 <__malloc_av_>
   14068:	ffe5f793          	andi	a5,a1,-2
   1406c:	00f70633          	add	a2,a4,a5
   14070:	00462683          	lw	a3,4(a2)
   14074:	00852803          	lw	a6,8(a0)
   14078:	ffc6f693          	andi	a3,a3,-4
   1407c:	18c80e63          	beq	a6,a2,14218 <_free_r+0x1dc>
   14080:	00d62223          	sw	a3,4(a2)
   14084:	0015f593          	andi	a1,a1,1
   14088:	00d60833          	add	a6,a2,a3
   1408c:	0a059063          	bnez	a1,1412c <_free_r+0xf0>
   14090:	ff842303          	lw	t1,-8(s0)
   14094:	00482583          	lw	a1,4(a6)
   14098:	d9c18893          	addi	a7,gp,-612 # 2665c <__malloc_av_+0x8>
   1409c:	40670733          	sub	a4,a4,t1
   140a0:	00872803          	lw	a6,8(a4)
   140a4:	006787b3          	add	a5,a5,t1
   140a8:	0015f593          	andi	a1,a1,1
   140ac:	15180063          	beq	a6,a7,141ec <_free_r+0x1b0>
   140b0:	00c72303          	lw	t1,12(a4)
   140b4:	00682623          	sw	t1,12(a6)
   140b8:	01032423          	sw	a6,8(t1)
   140bc:	1c058a63          	beqz	a1,14290 <_free_r+0x254>
   140c0:	0017e693          	ori	a3,a5,1
   140c4:	00d72223          	sw	a3,4(a4)
   140c8:	00f62023          	sw	a5,0(a2)
   140cc:	1ff00693          	li	a3,511
   140d0:	0af6e863          	bltu	a3,a5,14180 <_free_r+0x144>
   140d4:	0037d793          	srli	a5,a5,0x3
   140d8:	00178693          	addi	a3,a5,1
   140dc:	00369693          	slli	a3,a3,0x3
   140e0:	00452583          	lw	a1,4(a0)
   140e4:	00d50533          	add	a0,a0,a3
   140e8:	00052603          	lw	a2,0(a0)
   140ec:	4027d693          	srai	a3,a5,0x2
   140f0:	00100793          	li	a5,1
   140f4:	00d797b3          	sll	a5,a5,a3
   140f8:	00b7e7b3          	or	a5,a5,a1
   140fc:	ff850693          	addi	a3,a0,-8
   14100:	00d72623          	sw	a3,12(a4)
   14104:	00c72423          	sw	a2,8(a4)
   14108:	d8f1ac23          	sw	a5,-616(gp) # 26658 <__malloc_av_+0x4>
   1410c:	00e52023          	sw	a4,0(a0)
   14110:	00e62623          	sw	a4,12(a2)
   14114:	00812403          	lw	s0,8(sp)
   14118:	00c12083          	lw	ra,12(sp)
   1411c:	00048513          	mv	a0,s1
   14120:	00412483          	lw	s1,4(sp)
   14124:	01010113          	addi	sp,sp,16
   14128:	2b10306f          	j	17bd8 <__malloc_unlock>
   1412c:	00482583          	lw	a1,4(a6)
   14130:	0015f593          	andi	a1,a1,1
   14134:	02059c63          	bnez	a1,1416c <_free_r+0x130>
   14138:	00d787b3          	add	a5,a5,a3
   1413c:	d9c18893          	addi	a7,gp,-612 # 2665c <__malloc_av_+0x8>
   14140:	00862683          	lw	a3,8(a2)
   14144:	0017e813          	ori	a6,a5,1
   14148:	00f705b3          	add	a1,a4,a5
   1414c:	15168e63          	beq	a3,a7,142a8 <_free_r+0x26c>
   14150:	00c62603          	lw	a2,12(a2)
   14154:	00c6a623          	sw	a2,12(a3)
   14158:	00d62423          	sw	a3,8(a2)
   1415c:	01072223          	sw	a6,4(a4)
   14160:	00f5a023          	sw	a5,0(a1)
   14164:	f69ff06f          	j	140cc <_free_r+0x90>
   14168:	00008067          	ret
   1416c:	0017e693          	ori	a3,a5,1
   14170:	fed42e23          	sw	a3,-4(s0)
   14174:	00f62023          	sw	a5,0(a2)
   14178:	1ff00693          	li	a3,511
   1417c:	f4f6fce3          	bgeu	a3,a5,140d4 <_free_r+0x98>
   14180:	0097d693          	srli	a3,a5,0x9
   14184:	00400613          	li	a2,4
   14188:	0ed66263          	bltu	a2,a3,1426c <_free_r+0x230>
   1418c:	0067d693          	srli	a3,a5,0x6
   14190:	03968593          	addi	a1,a3,57
   14194:	03868613          	addi	a2,a3,56
   14198:	00359593          	slli	a1,a1,0x3
   1419c:	00b505b3          	add	a1,a0,a1
   141a0:	0005a683          	lw	a3,0(a1)
   141a4:	ff858593          	addi	a1,a1,-8
   141a8:	10d58e63          	beq	a1,a3,142c4 <_free_r+0x288>
   141ac:	0046a603          	lw	a2,4(a3)
   141b0:	ffc67613          	andi	a2,a2,-4
   141b4:	00c7f663          	bgeu	a5,a2,141c0 <_free_r+0x184>
   141b8:	0086a683          	lw	a3,8(a3)
   141bc:	fed598e3          	bne	a1,a3,141ac <_free_r+0x170>
   141c0:	00c6a583          	lw	a1,12(a3)
   141c4:	00b72623          	sw	a1,12(a4)
   141c8:	00d72423          	sw	a3,8(a4)
   141cc:	00812403          	lw	s0,8(sp)
   141d0:	00e5a423          	sw	a4,8(a1)
   141d4:	00c12083          	lw	ra,12(sp)
   141d8:	00048513          	mv	a0,s1
   141dc:	00412483          	lw	s1,4(sp)
   141e0:	00e6a623          	sw	a4,12(a3)
   141e4:	01010113          	addi	sp,sp,16
   141e8:	1f10306f          	j	17bd8 <__malloc_unlock>
   141ec:	12059c63          	bnez	a1,14324 <_free_r+0x2e8>
   141f0:	00862583          	lw	a1,8(a2)
   141f4:	00c62603          	lw	a2,12(a2)
   141f8:	00f687b3          	add	a5,a3,a5
   141fc:	0017e693          	ori	a3,a5,1
   14200:	00c5a623          	sw	a2,12(a1)
   14204:	00b62423          	sw	a1,8(a2)
   14208:	00d72223          	sw	a3,4(a4)
   1420c:	00f70733          	add	a4,a4,a5
   14210:	00f72023          	sw	a5,0(a4)
   14214:	f01ff06f          	j	14114 <_free_r+0xd8>
   14218:	0015f593          	andi	a1,a1,1
   1421c:	00d787b3          	add	a5,a5,a3
   14220:	02059063          	bnez	a1,14240 <_free_r+0x204>
   14224:	ff842583          	lw	a1,-8(s0)
   14228:	40b70733          	sub	a4,a4,a1
   1422c:	00c72683          	lw	a3,12(a4)
   14230:	00872603          	lw	a2,8(a4)
   14234:	00b787b3          	add	a5,a5,a1
   14238:	00d62623          	sw	a3,12(a2)
   1423c:	00c6a423          	sw	a2,8(a3)
   14240:	1c818693          	addi	a3,gp,456 # 26a88 <__malloc_trim_threshold>
   14244:	0017e613          	ori	a2,a5,1
   14248:	0006a683          	lw	a3,0(a3)
   1424c:	00c72223          	sw	a2,4(a4)
   14250:	d8e1ae23          	sw	a4,-612(gp) # 2665c <__malloc_av_+0x8>
   14254:	ecd7e0e3          	bltu	a5,a3,14114 <_free_r+0xd8>
   14258:	1d818793          	addi	a5,gp,472 # 26a98 <__malloc_top_pad>
   1425c:	0007a583          	lw	a1,0(a5)
   14260:	00048513          	mv	a0,s1
   14264:	cb1ff0ef          	jal	ra,13f14 <_malloc_trim_r>
   14268:	eadff06f          	j	14114 <_free_r+0xd8>
   1426c:	01400613          	li	a2,20
   14270:	02d67463          	bgeu	a2,a3,14298 <_free_r+0x25c>
   14274:	05400613          	li	a2,84
   14278:	06d66463          	bltu	a2,a3,142e0 <_free_r+0x2a4>
   1427c:	00c7d693          	srli	a3,a5,0xc
   14280:	06f68593          	addi	a1,a3,111
   14284:	06e68613          	addi	a2,a3,110
   14288:	00359593          	slli	a1,a1,0x3
   1428c:	f11ff06f          	j	1419c <_free_r+0x160>
   14290:	00d787b3          	add	a5,a5,a3
   14294:	eadff06f          	j	14140 <_free_r+0x104>
   14298:	05c68593          	addi	a1,a3,92
   1429c:	05b68613          	addi	a2,a3,91
   142a0:	00359593          	slli	a1,a1,0x3
   142a4:	ef9ff06f          	j	1419c <_free_r+0x160>
   142a8:	dae1a423          	sw	a4,-600(gp) # 26668 <__malloc_av_+0x14>
   142ac:	dae1a223          	sw	a4,-604(gp) # 26664 <__malloc_av_+0x10>
   142b0:	01172623          	sw	a7,12(a4)
   142b4:	01172423          	sw	a7,8(a4)
   142b8:	01072223          	sw	a6,4(a4)
   142bc:	00f5a023          	sw	a5,0(a1)
   142c0:	e55ff06f          	j	14114 <_free_r+0xd8>
   142c4:	00452503          	lw	a0,4(a0)
   142c8:	00100793          	li	a5,1
   142cc:	40265613          	srai	a2,a2,0x2
   142d0:	00c79633          	sll	a2,a5,a2
   142d4:	00a66633          	or	a2,a2,a0
   142d8:	d8c1ac23          	sw	a2,-616(gp) # 26658 <__malloc_av_+0x4>
   142dc:	ee9ff06f          	j	141c4 <_free_r+0x188>
   142e0:	15400613          	li	a2,340
   142e4:	00d66c63          	bltu	a2,a3,142fc <_free_r+0x2c0>
   142e8:	00f7d693          	srli	a3,a5,0xf
   142ec:	07868593          	addi	a1,a3,120
   142f0:	07768613          	addi	a2,a3,119
   142f4:	00359593          	slli	a1,a1,0x3
   142f8:	ea5ff06f          	j	1419c <_free_r+0x160>
   142fc:	55400613          	li	a2,1364
   14300:	00d66c63          	bltu	a2,a3,14318 <_free_r+0x2dc>
   14304:	0127d693          	srli	a3,a5,0x12
   14308:	07d68593          	addi	a1,a3,125
   1430c:	07c68613          	addi	a2,a3,124
   14310:	00359593          	slli	a1,a1,0x3
   14314:	e89ff06f          	j	1419c <_free_r+0x160>
   14318:	3f800593          	li	a1,1016
   1431c:	07e00613          	li	a2,126
   14320:	e7dff06f          	j	1419c <_free_r+0x160>
   14324:	0017e693          	ori	a3,a5,1
   14328:	00d72223          	sw	a3,4(a4)
   1432c:	00f62023          	sw	a5,0(a2)
   14330:	de5ff06f          	j	14114 <_free_r+0xd8>

00014334 <_fwalk>:
   14334:	fe010113          	addi	sp,sp,-32
   14338:	01512223          	sw	s5,4(sp)
   1433c:	00112e23          	sw	ra,28(sp)
   14340:	00812c23          	sw	s0,24(sp)
   14344:	00912a23          	sw	s1,20(sp)
   14348:	01212823          	sw	s2,16(sp)
   1434c:	01312623          	sw	s3,12(sp)
   14350:	01412423          	sw	s4,8(sp)
   14354:	01612023          	sw	s6,0(sp)
   14358:	2e050a93          	addi	s5,a0,736
   1435c:	080a8063          	beqz	s5,143dc <_fwalk+0xa8>
   14360:	00058b13          	mv	s6,a1
   14364:	00000a13          	li	s4,0
   14368:	00100993          	li	s3,1
   1436c:	fff00913          	li	s2,-1
   14370:	004aa483          	lw	s1,4(s5)
   14374:	008aa403          	lw	s0,8(s5)
   14378:	fff48493          	addi	s1,s1,-1
   1437c:	0204c663          	bltz	s1,143a8 <_fwalk+0x74>
   14380:	00c45783          	lhu	a5,12(s0)
   14384:	fff48493          	addi	s1,s1,-1
   14388:	00f9fc63          	bgeu	s3,a5,143a0 <_fwalk+0x6c>
   1438c:	00e41783          	lh	a5,14(s0)
   14390:	00040513          	mv	a0,s0
   14394:	01278663          	beq	a5,s2,143a0 <_fwalk+0x6c>
   14398:	000b00e7          	jalr	s6
   1439c:	00aa6a33          	or	s4,s4,a0
   143a0:	06840413          	addi	s0,s0,104
   143a4:	fd249ee3          	bne	s1,s2,14380 <_fwalk+0x4c>
   143a8:	000aaa83          	lw	s5,0(s5)
   143ac:	fc0a92e3          	bnez	s5,14370 <_fwalk+0x3c>
   143b0:	01c12083          	lw	ra,28(sp)
   143b4:	01812403          	lw	s0,24(sp)
   143b8:	000a0513          	mv	a0,s4
   143bc:	01412483          	lw	s1,20(sp)
   143c0:	01012903          	lw	s2,16(sp)
   143c4:	00c12983          	lw	s3,12(sp)
   143c8:	00812a03          	lw	s4,8(sp)
   143cc:	00412a83          	lw	s5,4(sp)
   143d0:	00012b03          	lw	s6,0(sp)
   143d4:	02010113          	addi	sp,sp,32
   143d8:	00008067          	ret
   143dc:	00000a13          	li	s4,0
   143e0:	fd1ff06f          	j	143b0 <_fwalk+0x7c>

000143e4 <_fwalk_reent>:
   143e4:	fd010113          	addi	sp,sp,-48
   143e8:	01512a23          	sw	s5,20(sp)
   143ec:	02112623          	sw	ra,44(sp)
   143f0:	02812423          	sw	s0,40(sp)
   143f4:	02912223          	sw	s1,36(sp)
   143f8:	03212023          	sw	s2,32(sp)
   143fc:	01312e23          	sw	s3,28(sp)
   14400:	01412c23          	sw	s4,24(sp)
   14404:	01612823          	sw	s6,16(sp)
   14408:	01712623          	sw	s7,12(sp)
   1440c:	2e050a93          	addi	s5,a0,736
   14410:	080a8663          	beqz	s5,1449c <_fwalk_reent+0xb8>
   14414:	00058b93          	mv	s7,a1
   14418:	00050b13          	mv	s6,a0
   1441c:	00000a13          	li	s4,0
   14420:	00100993          	li	s3,1
   14424:	fff00913          	li	s2,-1
   14428:	004aa483          	lw	s1,4(s5)
   1442c:	008aa403          	lw	s0,8(s5)
   14430:	fff48493          	addi	s1,s1,-1
   14434:	0204c863          	bltz	s1,14464 <_fwalk_reent+0x80>
   14438:	00c45783          	lhu	a5,12(s0)
   1443c:	fff48493          	addi	s1,s1,-1
   14440:	00f9fe63          	bgeu	s3,a5,1445c <_fwalk_reent+0x78>
   14444:	00e41783          	lh	a5,14(s0)
   14448:	00040593          	mv	a1,s0
   1444c:	000b0513          	mv	a0,s6
   14450:	01278663          	beq	a5,s2,1445c <_fwalk_reent+0x78>
   14454:	000b80e7          	jalr	s7
   14458:	00aa6a33          	or	s4,s4,a0
   1445c:	06840413          	addi	s0,s0,104
   14460:	fd249ce3          	bne	s1,s2,14438 <_fwalk_reent+0x54>
   14464:	000aaa83          	lw	s5,0(s5)
   14468:	fc0a90e3          	bnez	s5,14428 <_fwalk_reent+0x44>
   1446c:	02c12083          	lw	ra,44(sp)
   14470:	02812403          	lw	s0,40(sp)
   14474:	000a0513          	mv	a0,s4
   14478:	02412483          	lw	s1,36(sp)
   1447c:	02012903          	lw	s2,32(sp)
   14480:	01c12983          	lw	s3,28(sp)
   14484:	01812a03          	lw	s4,24(sp)
   14488:	01412a83          	lw	s5,20(sp)
   1448c:	01012b03          	lw	s6,16(sp)
   14490:	00c12b83          	lw	s7,12(sp)
   14494:	03010113          	addi	sp,sp,48
   14498:	00008067          	ret
   1449c:	00000a13          	li	s4,0
   144a0:	fcdff06f          	j	1446c <_fwalk_reent+0x88>

000144a4 <eshdn1>:
   144a4:	00450693          	addi	a3,a0,4
   144a8:	00000793          	li	a5,0
   144ac:	01a50513          	addi	a0,a0,26
   144b0:	ffff8837          	lui	a6,0xffff8
   144b4:	01c0006f          	j	144d0 <eshdn1+0x2c>
   144b8:	00179793          	slli	a5,a5,0x1
   144bc:	00e69023          	sh	a4,0(a3)
   144c0:	01079793          	slli	a5,a5,0x10
   144c4:	00268693          	addi	a3,a3,2
   144c8:	0107d793          	srli	a5,a5,0x10
   144cc:	02d50e63          	beq	a0,a3,14508 <eshdn1+0x64>
   144d0:	0006d703          	lhu	a4,0(a3)
   144d4:	00177613          	andi	a2,a4,1
   144d8:	00060463          	beqz	a2,144e0 <eshdn1+0x3c>
   144dc:	0017e793          	ori	a5,a5,1
   144e0:	00175713          	srli	a4,a4,0x1
   144e4:	0027f613          	andi	a2,a5,2
   144e8:	010765b3          	or	a1,a4,a6
   144ec:	fc0606e3          	beqz	a2,144b8 <eshdn1+0x14>
   144f0:	00179793          	slli	a5,a5,0x1
   144f4:	00b69023          	sh	a1,0(a3)
   144f8:	01079793          	slli	a5,a5,0x10
   144fc:	00268693          	addi	a3,a3,2
   14500:	0107d793          	srli	a5,a5,0x10
   14504:	fcd516e3          	bne	a0,a3,144d0 <eshdn1+0x2c>
   14508:	00008067          	ret

0001450c <eshup1>:
   1450c:	01850693          	addi	a3,a0,24
   14510:	00000713          	li	a4,0
   14514:	00250513          	addi	a0,a0,2
   14518:	01c0006f          	j	14534 <eshup1+0x28>
   1451c:	00171713          	slli	a4,a4,0x1
   14520:	00f69023          	sh	a5,0(a3)
   14524:	01071713          	slli	a4,a4,0x10
   14528:	ffe68693          	addi	a3,a3,-2
   1452c:	01075713          	srli	a4,a4,0x10
   14530:	04d50463          	beq	a0,a3,14578 <eshup1+0x6c>
   14534:	0006d783          	lhu	a5,0(a3)
   14538:	01079613          	slli	a2,a5,0x10
   1453c:	41065613          	srai	a2,a2,0x10
   14540:	00179793          	slli	a5,a5,0x1
   14544:	00065463          	bgez	a2,1454c <eshup1+0x40>
   14548:	00176713          	ori	a4,a4,1
   1454c:	01079793          	slli	a5,a5,0x10
   14550:	0107d793          	srli	a5,a5,0x10
   14554:	00277613          	andi	a2,a4,2
   14558:	0017e593          	ori	a1,a5,1
   1455c:	fc0600e3          	beqz	a2,1451c <eshup1+0x10>
   14560:	00171713          	slli	a4,a4,0x1
   14564:	00b69023          	sh	a1,0(a3)
   14568:	01071713          	slli	a4,a4,0x10
   1456c:	ffe68693          	addi	a3,a3,-2
   14570:	01075713          	srli	a4,a4,0x10
   14574:	fcd510e3          	bne	a0,a3,14534 <eshup1+0x28>
   14578:	00008067          	ret

0001457c <m16m>:
   1457c:	fc010113          	addi	sp,sp,-64
   14580:	03412423          	sw	s4,40(sp)
   14584:	00010a37          	lui	s4,0x10
   14588:	02812c23          	sw	s0,56(sp)
   1458c:	02912a23          	sw	s1,52(sp)
   14590:	03212823          	sw	s2,48(sp)
   14594:	03312623          	sw	s3,44(sp)
   14598:	03512223          	sw	s5,36(sp)
   1459c:	02112e23          	sw	ra,60(sp)
   145a0:	00050a93          	mv	s5,a0
   145a4:	00060493          	mv	s1,a2
   145a8:	00011d23          	sh	zero,26(sp)
   145ac:	00011e23          	sh	zero,28(sp)
   145b0:	01858913          	addi	s2,a1,24
   145b4:	01c10413          	addi	s0,sp,28
   145b8:	00810993          	addi	s3,sp,8
   145bc:	fffa0a13          	addi	s4,s4,-1 # ffff <register_fini-0x75>
   145c0:	00095783          	lhu	a5,0(s2)
   145c4:	000a8593          	mv	a1,s5
   145c8:	ffe40413          	addi	s0,s0,-2
   145cc:	ffe90913          	addi	s2,s2,-2
   145d0:	00078513          	mv	a0,a5
   145d4:	04079663          	bnez	a5,14620 <m16m+0xa4>
   145d8:	fe041f23          	sh	zero,-2(s0)
   145dc:	ff3412e3          	bne	s0,s3,145c0 <m16m+0x44>
   145e0:	00448613          	addi	a2,s1,4
   145e4:	01e10713          	addi	a4,sp,30
   145e8:	00045783          	lhu	a5,0(s0)
   145ec:	00260613          	addi	a2,a2,2
   145f0:	00240413          	addi	s0,s0,2
   145f4:	fef61f23          	sh	a5,-2(a2)
   145f8:	fee418e3          	bne	s0,a4,145e8 <m16m+0x6c>
   145fc:	03c12083          	lw	ra,60(sp)
   14600:	03812403          	lw	s0,56(sp)
   14604:	03412483          	lw	s1,52(sp)
   14608:	03012903          	lw	s2,48(sp)
   1460c:	02c12983          	lw	s3,44(sp)
   14610:	02812a03          	lw	s4,40(sp)
   14614:	02412a83          	lw	s5,36(sp)
   14618:	04010113          	addi	sp,sp,64
   1461c:	00008067          	ret
   14620:	d3dfb0ef          	jal	ra,1035c <__mulsi3>
   14624:	00245703          	lhu	a4,2(s0)
   14628:	00045683          	lhu	a3,0(s0)
   1462c:	014577b3          	and	a5,a0,s4
   14630:	00e787b3          	add	a5,a5,a4
   14634:	01055513          	srli	a0,a0,0x10
   14638:	0107d713          	srli	a4,a5,0x10
   1463c:	00d50533          	add	a0,a0,a3
   14640:	00e50533          	add	a0,a0,a4
   14644:	01055713          	srli	a4,a0,0x10
   14648:	00f41123          	sh	a5,2(s0)
   1464c:	00a41023          	sh	a0,0(s0)
   14650:	fee41f23          	sh	a4,-2(s0)
   14654:	f73416e3          	bne	s0,s3,145c0 <m16m+0x44>
   14658:	f89ff06f          	j	145e0 <m16m+0x64>

0001465c <eisnan.part.0>:
   1465c:	01250713          	addi	a4,a0,18
   14660:	00250513          	addi	a0,a0,2
   14664:	ffe55783          	lhu	a5,-2(a0)
   14668:	00079863          	bnez	a5,14678 <eisnan.part.0+0x1c>
   1466c:	fea71ae3          	bne	a4,a0,14660 <eisnan.part.0+0x4>
   14670:	00000513          	li	a0,0
   14674:	00008067          	ret
   14678:	00100513          	li	a0,1
   1467c:	00008067          	ret

00014680 <eneg>:
   14680:	ff010113          	addi	sp,sp,-16
   14684:	00812423          	sw	s0,8(sp)
   14688:	01255403          	lhu	s0,18(a0)
   1468c:	00912223          	sw	s1,4(sp)
   14690:	00112623          	sw	ra,12(sp)
   14694:	fff44793          	not	a5,s0
   14698:	01179713          	slli	a4,a5,0x11
   1469c:	00050493          	mv	s1,a0
   146a0:	00071663          	bnez	a4,146ac <eneg+0x2c>
   146a4:	fb9ff0ef          	jal	ra,1465c <eisnan.part.0>
   146a8:	00051863          	bnez	a0,146b8 <eneg+0x38>
   146ac:	ffff87b7          	lui	a5,0xffff8
   146b0:	00f44433          	xor	s0,s0,a5
   146b4:	00849923          	sh	s0,18(s1)
   146b8:	00c12083          	lw	ra,12(sp)
   146bc:	00812403          	lw	s0,8(sp)
   146c0:	00412483          	lw	s1,4(sp)
   146c4:	01010113          	addi	sp,sp,16
   146c8:	00008067          	ret

000146cc <eisneg>:
   146cc:	ff010113          	addi	sp,sp,-16
   146d0:	00812423          	sw	s0,8(sp)
   146d4:	01255403          	lhu	s0,18(a0)
   146d8:	00112623          	sw	ra,12(sp)
   146dc:	fff44793          	not	a5,s0
   146e0:	01179713          	slli	a4,a5,0x11
   146e4:	00071863          	bnez	a4,146f4 <eisneg+0x28>
   146e8:	f75ff0ef          	jal	ra,1465c <eisnan.part.0>
   146ec:	00000793          	li	a5,0
   146f0:	00051463          	bnez	a0,146f8 <eisneg+0x2c>
   146f4:	00f45793          	srli	a5,s0,0xf
   146f8:	00c12083          	lw	ra,12(sp)
   146fc:	00812403          	lw	s0,8(sp)
   14700:	00078513          	mv	a0,a5
   14704:	01010113          	addi	sp,sp,16
   14708:	00008067          	ret

0001470c <emovi>:
   1470c:	01255783          	lhu	a5,18(a0)
   14710:	ff010113          	addi	sp,sp,-16
   14714:	00812423          	sw	s0,8(sp)
   14718:	00f7d793          	srli	a5,a5,0xf
   1471c:	00912223          	sw	s1,4(sp)
   14720:	00112623          	sw	ra,12(sp)
   14724:	01212023          	sw	s2,0(sp)
   14728:	40f007b3          	neg	a5,a5
   1472c:	00f59023          	sh	a5,0(a1)
   14730:	01255783          	lhu	a5,18(a0)
   14734:	000086b7          	lui	a3,0x8
   14738:	fff68693          	addi	a3,a3,-1 # 7fff <register_fini-0x8075>
   1473c:	00f6f7b3          	and	a5,a3,a5
   14740:	00f59123          	sh	a5,2(a1)
   14744:	00050493          	mv	s1,a0
   14748:	01050413          	addi	s0,a0,16
   1474c:	04d78063          	beq	a5,a3,1478c <emovi+0x80>
   14750:	00658793          	addi	a5,a1,6
   14754:	00059223          	sh	zero,4(a1)
   14758:	ffe50513          	addi	a0,a0,-2
   1475c:	ffe40413          	addi	s0,s0,-2
   14760:	00245703          	lhu	a4,2(s0)
   14764:	00278793          	addi	a5,a5,2 # ffff8002 <__BSS_END__+0xfffd151a>
   14768:	fee79f23          	sh	a4,-2(a5)
   1476c:	fea418e3          	bne	s0,a0,1475c <emovi+0x50>
   14770:	00059c23          	sh	zero,24(a1)
   14774:	00c12083          	lw	ra,12(sp)
   14778:	00812403          	lw	s0,8(sp)
   1477c:	00412483          	lw	s1,4(sp)
   14780:	00012903          	lw	s2,0(sp)
   14784:	01010113          	addi	sp,sp,16
   14788:	00008067          	ret
   1478c:	01255703          	lhu	a4,18(a0)
   14790:	00058913          	mv	s2,a1
   14794:	00e7f733          	and	a4,a5,a4
   14798:	02f71863          	bne	a4,a5,147c8 <emovi+0xbc>
   1479c:	ec1ff0ef          	jal	ra,1465c <eisnan.part.0>
   147a0:	02050463          	beqz	a0,147c8 <emovi+0xbc>
   147a4:	00690713          	addi	a4,s2,6
   147a8:	00091223          	sh	zero,4(s2)
   147ac:	ffc48793          	addi	a5,s1,-4
   147b0:	ffe40413          	addi	s0,s0,-2
   147b4:	00245683          	lhu	a3,2(s0)
   147b8:	00270713          	addi	a4,a4,2
   147bc:	fed71f23          	sh	a3,-2(a4)
   147c0:	fe8798e3          	bne	a5,s0,147b0 <emovi+0xa4>
   147c4:	fb1ff06f          	j	14774 <emovi+0x68>
   147c8:	00490793          	addi	a5,s2,4
   147cc:	01a90593          	addi	a1,s2,26
   147d0:	00278793          	addi	a5,a5,2
   147d4:	fe079f23          	sh	zero,-2(a5)
   147d8:	fef59ce3          	bne	a1,a5,147d0 <emovi+0xc4>
   147dc:	00c12083          	lw	ra,12(sp)
   147e0:	00812403          	lw	s0,8(sp)
   147e4:	00412483          	lw	s1,4(sp)
   147e8:	00012903          	lw	s2,0(sp)
   147ec:	01010113          	addi	sp,sp,16
   147f0:	00008067          	ret

000147f4 <ecmp>:
   147f4:	01255783          	lhu	a5,18(a0)
   147f8:	fb010113          	addi	sp,sp,-80
   147fc:	04812423          	sw	s0,72(sp)
   14800:	fff7c793          	not	a5,a5
   14804:	04912223          	sw	s1,68(sp)
   14808:	04112623          	sw	ra,76(sp)
   1480c:	01179713          	slli	a4,a5,0x11
   14810:	00050493          	mv	s1,a0
   14814:	00058413          	mv	s0,a1
   14818:	00071663          	bnez	a4,14824 <ecmp+0x30>
   1481c:	e41ff0ef          	jal	ra,1465c <eisnan.part.0>
   14820:	08051263          	bnez	a0,148a4 <ecmp+0xb0>
   14824:	01245783          	lhu	a5,18(s0)
   14828:	fff7c793          	not	a5,a5
   1482c:	01179713          	slli	a4,a5,0x11
   14830:	06070463          	beqz	a4,14898 <ecmp+0xa4>
   14834:	00810593          	addi	a1,sp,8
   14838:	00048513          	mv	a0,s1
   1483c:	ed1ff0ef          	jal	ra,1470c <emovi>
   14840:	02410593          	addi	a1,sp,36
   14844:	00040513          	mv	a0,s0
   14848:	ec5ff0ef          	jal	ra,1470c <emovi>
   1484c:	00815583          	lhu	a1,8(sp)
   14850:	02415503          	lhu	a0,36(sp)
   14854:	04b50c63          	beq	a0,a1,148ac <ecmp+0xb8>
   14858:	00a10793          	addi	a5,sp,10
   1485c:	02610713          	addi	a4,sp,38
   14860:	02010613          	addi	a2,sp,32
   14864:	0007d683          	lhu	a3,0(a5)
   14868:	00278793          	addi	a5,a5,2
   1486c:	08069a63          	bnez	a3,14900 <ecmp+0x10c>
   14870:	00075683          	lhu	a3,0(a4)
   14874:	00270713          	addi	a4,a4,2
   14878:	08069463          	bnez	a3,14900 <ecmp+0x10c>
   1487c:	fec794e3          	bne	a5,a2,14864 <ecmp+0x70>
   14880:	00000513          	li	a0,0
   14884:	04c12083          	lw	ra,76(sp)
   14888:	04812403          	lw	s0,72(sp)
   1488c:	04412483          	lw	s1,68(sp)
   14890:	05010113          	addi	sp,sp,80
   14894:	00008067          	ret
   14898:	00040513          	mv	a0,s0
   1489c:	dc1ff0ef          	jal	ra,1465c <eisnan.part.0>
   148a0:	f8050ae3          	beqz	a0,14834 <ecmp+0x40>
   148a4:	ffe00513          	li	a0,-2
   148a8:	fddff06f          	j	14884 <ecmp+0x90>
   148ac:	00a10713          	addi	a4,sp,10
   148b0:	02610793          	addi	a5,sp,38
   148b4:	00278793          	addi	a5,a5,2
   148b8:	00270713          	addi	a4,a4,2
   148bc:	00153513          	seqz	a0,a0
   148c0:	ffe75603          	lhu	a2,-2(a4)
   148c4:	ffe7d683          	lhu	a3,-2(a5)
   148c8:	40a00533          	neg	a0,a0
   148cc:	00257513          	andi	a0,a0,2
   148d0:	fff50513          	addi	a0,a0,-1
   148d4:	03c10593          	addi	a1,sp,60
   148d8:	00d61e63          	bne	a2,a3,148f4 <ecmp+0x100>
   148dc:	fab782e3          	beq	a5,a1,14880 <ecmp+0x8c>
   148e0:	00278793          	addi	a5,a5,2
   148e4:	00270713          	addi	a4,a4,2
   148e8:	ffe75603          	lhu	a2,-2(a4)
   148ec:	ffe7d683          	lhu	a3,-2(a5)
   148f0:	fed606e3          	beq	a2,a3,148dc <ecmp+0xe8>
   148f4:	f8c6e8e3          	bltu	a3,a2,14884 <ecmp+0x90>
   148f8:	40a00533          	neg	a0,a0
   148fc:	f89ff06f          	j	14884 <ecmp+0x90>
   14900:	00100513          	li	a0,1
   14904:	f80580e3          	beqz	a1,14884 <ecmp+0x90>
   14908:	fff00513          	li	a0,-1
   1490c:	f79ff06f          	j	14884 <ecmp+0x90>

00014910 <eisinf.part.1>:
   14910:	ff010113          	addi	sp,sp,-16
   14914:	00112623          	sw	ra,12(sp)
   14918:	d45ff0ef          	jal	ra,1465c <eisnan.part.0>
   1491c:	00c12083          	lw	ra,12(sp)
   14920:	00153513          	seqz	a0,a0
   14924:	01010113          	addi	sp,sp,16
   14928:	00008067          	ret

0001492c <eshift.part.3>:
   1492c:	ff010113          	addi	sp,sp,-16
   14930:	00812423          	sw	s0,8(sp)
   14934:	01212023          	sw	s2,0(sp)
   14938:	00112623          	sw	ra,12(sp)
   1493c:	00912223          	sw	s1,4(sp)
   14940:	00058913          	mv	s2,a1
   14944:	00050413          	mv	s0,a0
   14948:	0a05c263          	bltz	a1,149ec <eshift.part.3+0xc0>
   1494c:	00f00793          	li	a5,15
   14950:	00058613          	mv	a2,a1
   14954:	00450513          	addi	a0,a0,4
   14958:	01840693          	addi	a3,s0,24
   1495c:	00f00593          	li	a1,15
   14960:	0327d463          	bge	a5,s2,14988 <eshift.part.3+0x5c>
   14964:	00050793          	mv	a5,a0
   14968:	00278793          	addi	a5,a5,2
   1496c:	0007d703          	lhu	a4,0(a5)
   14970:	fee79f23          	sh	a4,-2(a5)
   14974:	fed79ae3          	bne	a5,a3,14968 <eshift.part.3+0x3c>
   14978:	00041c23          	sh	zero,24(s0)
   1497c:	ff060613          	addi	a2,a2,-16
   14980:	fec5c2e3          	blt	a1,a2,14964 <eshift.part.3+0x38>
   14984:	00f97913          	andi	s2,s2,15
   14988:	00700793          	li	a5,7
   1498c:	0327d863          	bge	a5,s2,149bc <eshift.part.3+0x90>
   14990:	01840793          	addi	a5,s0,24
   14994:	00240593          	addi	a1,s0,2
   14998:	00000713          	li	a4,0
   1499c:	0007d683          	lhu	a3,0(a5)
   149a0:	ffe78793          	addi	a5,a5,-2
   149a4:	00869613          	slli	a2,a3,0x8
   149a8:	00c76733          	or	a4,a4,a2
   149ac:	00e79123          	sh	a4,2(a5)
   149b0:	0086d713          	srli	a4,a3,0x8
   149b4:	feb794e3          	bne	a5,a1,1499c <eshift.part.3+0x70>
   149b8:	ff890913          	addi	s2,s2,-8
   149bc:	00090a63          	beqz	s2,149d0 <eshift.part.3+0xa4>
   149c0:	fff90913          	addi	s2,s2,-1
   149c4:	00040513          	mv	a0,s0
   149c8:	b45ff0ef          	jal	ra,1450c <eshup1>
   149cc:	fe091ae3          	bnez	s2,149c0 <eshift.part.3+0x94>
   149d0:	00c12083          	lw	ra,12(sp)
   149d4:	00812403          	lw	s0,8(sp)
   149d8:	00412483          	lw	s1,4(sp)
   149dc:	00012903          	lw	s2,0(sp)
   149e0:	00000513          	li	a0,0
   149e4:	01010113          	addi	sp,sp,16
   149e8:	00008067          	ret
   149ec:	ff100793          	li	a5,-15
   149f0:	40b004b3          	neg	s1,a1
   149f4:	0cf5d463          	bge	a1,a5,14abc <eshift.part.3+0x190>
   149f8:	01850593          	addi	a1,a0,24
   149fc:	00000913          	li	s2,0
   14a00:	00450693          	addi	a3,a0,4
   14a04:	00f00613          	li	a2,15
   14a08:	01845703          	lhu	a4,24(s0)
   14a0c:	00058793          	mv	a5,a1
   14a10:	00e96933          	or	s2,s2,a4
   14a14:	ffe78793          	addi	a5,a5,-2
   14a18:	0007d703          	lhu	a4,0(a5)
   14a1c:	00e79123          	sh	a4,2(a5)
   14a20:	fed79ae3          	bne	a5,a3,14a14 <eshift.part.3+0xe8>
   14a24:	00041223          	sh	zero,4(s0)
   14a28:	ff048493          	addi	s1,s1,-16
   14a2c:	fc964ee3          	blt	a2,s1,14a08 <eshift.part.3+0xdc>
   14a30:	00700793          	li	a5,7
   14a34:	0497d663          	bge	a5,s1,14a80 <eshift.part.3+0x154>
   14a38:	01091913          	slli	s2,s2,0x10
   14a3c:	41095913          	srai	s2,s2,0x10
   14a40:	01844783          	lbu	a5,24(s0)
   14a44:	01a40593          	addi	a1,s0,26
   14a48:	00000713          	li	a4,0
   14a4c:	00f96933          	or	s2,s2,a5
   14a50:	01091913          	slli	s2,s2,0x10
   14a54:	01095913          	srli	s2,s2,0x10
   14a58:	0006d783          	lhu	a5,0(a3)
   14a5c:	00268693          	addi	a3,a3,2
   14a60:	0087d613          	srli	a2,a5,0x8
   14a64:	00c76733          	or	a4,a4,a2
   14a68:	00879793          	slli	a5,a5,0x8
   14a6c:	fee69f23          	sh	a4,-2(a3)
   14a70:	01079713          	slli	a4,a5,0x10
   14a74:	01075713          	srli	a4,a4,0x10
   14a78:	feb690e3          	bne	a3,a1,14a58 <eshift.part.3+0x12c>
   14a7c:	ff848493          	addi	s1,s1,-8
   14a80:	02048063          	beqz	s1,14aa0 <eshift.part.3+0x174>
   14a84:	01845783          	lhu	a5,24(s0)
   14a88:	fff48493          	addi	s1,s1,-1
   14a8c:	00040513          	mv	a0,s0
   14a90:	0017f793          	andi	a5,a5,1
   14a94:	0127e933          	or	s2,a5,s2
   14a98:	a0dff0ef          	jal	ra,144a4 <eshdn1>
   14a9c:	fe0494e3          	bnez	s1,14a84 <eshift.part.3+0x158>
   14aa0:	00c12083          	lw	ra,12(sp)
   14aa4:	00812403          	lw	s0,8(sp)
   14aa8:	01203533          	snez	a0,s2
   14aac:	00412483          	lw	s1,4(sp)
   14ab0:	00012903          	lw	s2,0(sp)
   14ab4:	01010113          	addi	sp,sp,16
   14ab8:	00008067          	ret
   14abc:	ff900793          	li	a5,-7
   14ac0:	00f5c663          	blt	a1,a5,14acc <eshift.part.3+0x1a0>
   14ac4:	00000913          	li	s2,0
   14ac8:	fbdff06f          	j	14a84 <eshift.part.3+0x158>
   14acc:	00000913          	li	s2,0
   14ad0:	00440693          	addi	a3,s0,4
   14ad4:	f6dff06f          	j	14a40 <eshift.part.3+0x114>

00014ad8 <enormlz>:
   14ad8:	00455783          	lhu	a5,4(a0)
   14adc:	ff010113          	addi	sp,sp,-16
   14ae0:	00912223          	sw	s1,4(sp)
   14ae4:	00112623          	sw	ra,12(sp)
   14ae8:	00812423          	sw	s0,8(sp)
   14aec:	01212023          	sw	s2,0(sp)
   14af0:	00050493          	mv	s1,a0
   14af4:	0c079c63          	bnez	a5,14bcc <enormlz+0xf4>
   14af8:	00655703          	lhu	a4,6(a0)
   14afc:	00000413          	li	s0,0
   14b00:	01071793          	slli	a5,a4,0x10
   14b04:	4107d793          	srai	a5,a5,0x10
   14b08:	0a07c463          	bltz	a5,14bb0 <enormlz+0xd8>
   14b0c:	01a50693          	addi	a3,a0,26
   14b10:	0a000613          	li	a2,160
   14b14:	02071863          	bnez	a4,14b44 <enormlz+0x6c>
   14b18:	00648793          	addi	a5,s1,6
   14b1c:	0080006f          	j	14b24 <enormlz+0x4c>
   14b20:	0007d703          	lhu	a4,0(a5)
   14b24:	00278793          	addi	a5,a5,2
   14b28:	fee79e23          	sh	a4,-4(a5)
   14b2c:	fef69ae3          	bne	a3,a5,14b20 <enormlz+0x48>
   14b30:	00049c23          	sh	zero,24(s1)
   14b34:	01040413          	addi	s0,s0,16
   14b38:	06c40c63          	beq	s0,a2,14bb0 <enormlz+0xd8>
   14b3c:	0064d703          	lhu	a4,6(s1)
   14b40:	fc070ce3          	beqz	a4,14b18 <enormlz+0x40>
   14b44:	f0077793          	andi	a5,a4,-256
   14b48:	04079063          	bnez	a5,14b88 <enormlz+0xb0>
   14b4c:	01848513          	addi	a0,s1,24
   14b50:	00248593          	addi	a1,s1,2
   14b54:	00000713          	li	a4,0
   14b58:	00050793          	mv	a5,a0
   14b5c:	0007d683          	lhu	a3,0(a5)
   14b60:	ffe78793          	addi	a5,a5,-2
   14b64:	00869613          	slli	a2,a3,0x8
   14b68:	00c76733          	or	a4,a4,a2
   14b6c:	00e79123          	sh	a4,2(a5)
   14b70:	0086d713          	srli	a4,a3,0x8
   14b74:	fef594e3          	bne	a1,a5,14b5c <enormlz+0x84>
   14b78:	0064d703          	lhu	a4,6(s1)
   14b7c:	00840413          	addi	s0,s0,8
   14b80:	f0077793          	andi	a5,a4,-256
   14b84:	fc0788e3          	beqz	a5,14b54 <enormlz+0x7c>
   14b88:	0a000913          	li	s2,160
   14b8c:	0140006f          	j	14ba0 <enormlz+0xc8>
   14b90:	00140413          	addi	s0,s0,1
   14b94:	979ff0ef          	jal	ra,1450c <eshup1>
   14b98:	00894c63          	blt	s2,s0,14bb0 <enormlz+0xd8>
   14b9c:	0064d703          	lhu	a4,6(s1)
   14ba0:	01071713          	slli	a4,a4,0x10
   14ba4:	41075713          	srai	a4,a4,0x10
   14ba8:	00048513          	mv	a0,s1
   14bac:	fe0752e3          	bgez	a4,14b90 <enormlz+0xb8>
   14bb0:	00040513          	mv	a0,s0
   14bb4:	00c12083          	lw	ra,12(sp)
   14bb8:	00812403          	lw	s0,8(sp)
   14bbc:	00412483          	lw	s1,4(sp)
   14bc0:	00012903          	lw	s2,0(sp)
   14bc4:	01010113          	addi	sp,sp,16
   14bc8:	00008067          	ret
   14bcc:	f007f713          	andi	a4,a5,-256
   14bd0:	00000413          	li	s0,0
   14bd4:	04071063          	bnez	a4,14c14 <enormlz+0x13c>
   14bd8:	f6f00913          	li	s2,-145
   14bdc:	0140006f          	j	14bf0 <enormlz+0x118>
   14be0:	fff40413          	addi	s0,s0,-1
   14be4:	8c1ff0ef          	jal	ra,144a4 <eshdn1>
   14be8:	fd2404e3          	beq	s0,s2,14bb0 <enormlz+0xd8>
   14bec:	0044d783          	lhu	a5,4(s1)
   14bf0:	00048513          	mv	a0,s1
   14bf4:	fe0796e3          	bnez	a5,14be0 <enormlz+0x108>
   14bf8:	00040513          	mv	a0,s0
   14bfc:	00c12083          	lw	ra,12(sp)
   14c00:	00812403          	lw	s0,8(sp)
   14c04:	00412483          	lw	s1,4(sp)
   14c08:	00012903          	lw	s2,0(sp)
   14c0c:	01010113          	addi	sp,sp,16
   14c10:	00008067          	ret
   14c14:	00450693          	addi	a3,a0,4
   14c18:	01a50593          	addi	a1,a0,26
   14c1c:	00000713          	li	a4,0
   14c20:	0080006f          	j	14c28 <enormlz+0x150>
   14c24:	0006d783          	lhu	a5,0(a3)
   14c28:	0087d613          	srli	a2,a5,0x8
   14c2c:	00c76733          	or	a4,a4,a2
   14c30:	00879793          	slli	a5,a5,0x8
   14c34:	00e69023          	sh	a4,0(a3)
   14c38:	01079713          	slli	a4,a5,0x10
   14c3c:	00268693          	addi	a3,a3,2
   14c40:	01075713          	srli	a4,a4,0x10
   14c44:	feb690e3          	bne	a3,a1,14c24 <enormlz+0x14c>
   14c48:	0044d783          	lhu	a5,4(s1)
   14c4c:	ff800413          	li	s0,-8
   14c50:	f89ff06f          	j	14bd8 <enormlz+0x100>

00014c54 <emdnorm>:
   14c54:	fe010113          	addi	sp,sp,-32
   14c58:	00812c23          	sw	s0,24(sp)
   14c5c:	00912a23          	sw	s1,20(sp)
   14c60:	01212823          	sw	s2,16(sp)
   14c64:	01312623          	sw	s3,12(sp)
   14c68:	01412423          	sw	s4,8(sp)
   14c6c:	01512223          	sw	s5,4(sp)
   14c70:	00068913          	mv	s2,a3
   14c74:	00078493          	mv	s1,a5
   14c78:	00112e23          	sw	ra,28(sp)
   14c7c:	00050413          	mv	s0,a0
   14c80:	00058993          	mv	s3,a1
   14c84:	00060a13          	mv	s4,a2
   14c88:	00070a93          	mv	s5,a4
   14c8c:	e4dff0ef          	jal	ra,14ad8 <enormlz>
   14c90:	09000793          	li	a5,144
   14c94:	40a90933          	sub	s2,s2,a0
   14c98:	06a7de63          	bge	a5,a0,14d14 <emdnorm+0xc0>
   14c9c:	000087b7          	lui	a5,0x8
   14ca0:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x8076>
   14ca4:	2127da63          	bge	a5,s2,14eb8 <emdnorm+0x264>
   14ca8:	1e0a8463          	beqz	s5,14e90 <emdnorm+0x23c>
   14cac:	0044a503          	lw	a0,4(s1)
   14cb0:	0004a783          	lw	a5,0(s1)
   14cb4:	0ea78a63          	beq	a5,a0,14da8 <emdnorm+0x154>
   14cb8:	01a48713          	addi	a4,s1,26
   14cbc:	03448793          	addi	a5,s1,52
   14cc0:	00270713          	addi	a4,a4,2
   14cc4:	fe071f23          	sh	zero,-2(a4)
   14cc8:	fef71ce3          	bne	a4,a5,14cc0 <emdnorm+0x6c>
   14ccc:	03800793          	li	a5,56
   14cd0:	36f50063          	beq	a0,a5,15030 <emdnorm+0x3dc>
   14cd4:	06a7d263          	bge	a5,a0,14d38 <emdnorm+0xe4>
   14cd8:	04000793          	li	a5,64
   14cdc:	2ef50a63          	beq	a0,a5,14fd0 <emdnorm+0x37c>
   14ce0:	07100793          	li	a5,113
   14ce4:	30f51c63          	bne	a0,a5,14ffc <emdnorm+0x3a8>
   14ce8:	400087b7          	lui	a5,0x40008
   14cec:	fff78793          	addi	a5,a5,-1 # 40007fff <__BSS_END__+0x3ffe1517>
   14cf0:	00a00713          	li	a4,10
   14cf4:	00f4aa23          	sw	a5,20(s1)
   14cf8:	ffff87b7          	lui	a5,0xffff8
   14cfc:	00e4a423          	sw	a4,8(s1)
   14d00:	00f49c23          	sh	a5,24(s1)
   14d04:	00e4a623          	sw	a4,12(s1)
   14d08:	00a00793          	li	a5,10
   14d0c:	00008737          	lui	a4,0x8
   14d10:	0600006f          	j	14d70 <emdnorm+0x11c>
   14d14:	1e095263          	bgez	s2,14ef8 <emdnorm+0x2a4>
   14d18:	f7000793          	li	a5,-144
   14d1c:	1af95a63          	bge	s2,a5,14ed0 <emdnorm+0x27c>
   14d20:	00240793          	addi	a5,s0,2
   14d24:	01a40413          	addi	s0,s0,26
   14d28:	00278793          	addi	a5,a5,2 # ffff8002 <__BSS_END__+0xfffd151a>
   14d2c:	fe079f23          	sh	zero,-2(a5)
   14d30:	fe879ce3          	bne	a5,s0,14d28 <emdnorm+0xd4>
   14d34:	1380006f          	j	14e6c <emdnorm+0x218>
   14d38:	01800793          	li	a5,24
   14d3c:	26f50463          	beq	a0,a5,14fa4 <emdnorm+0x350>
   14d40:	03500793          	li	a5,53
   14d44:	2af51c63          	bne	a0,a5,14ffc <emdnorm+0x3a8>
   14d48:	00001737          	lui	a4,0x1
   14d4c:	040007b7          	lui	a5,0x4000
   14d50:	00600693          	li	a3,6
   14d54:	7ff78793          	addi	a5,a5,2047 # 40007ff <__BSS_END__+0x3fd9d17>
   14d58:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf874>
   14d5c:	00f4aa23          	sw	a5,20(s1)
   14d60:	00d4a423          	sw	a3,8(s1)
   14d64:	00e49c23          	sh	a4,24(s1)
   14d68:	00d4a623          	sw	a3,12(s1)
   14d6c:	00600793          	li	a5,6
   14d70:	00878793          	addi	a5,a5,8
   14d74:	00179793          	slli	a5,a5,0x1
   14d78:	00f487b3          	add	a5,s1,a5
   14d7c:	00e79523          	sh	a4,10(a5)
   14d80:	00a4a023          	sw	a0,0(s1)
   14d84:	03204263          	bgtz	s2,14da8 <emdnorm+0x154>
   14d88:	09000793          	li	a5,144
   14d8c:	1ef50863          	beq	a0,a5,14f7c <emdnorm+0x328>
   14d90:	01845783          	lhu	a5,24(s0)
   14d94:	00040513          	mv	a0,s0
   14d98:	0017f793          	andi	a5,a5,1
   14d9c:	00f9e9b3          	or	s3,s3,a5
   14da0:	f04ff0ef          	jal	ra,144a4 <eshdn1>
   14da4:	0044a503          	lw	a0,4(s1)
   14da8:	0084a583          	lw	a1,8(s1)
   14dac:	0144d783          	lhu	a5,20(s1)
   14db0:	08f00813          	li	a6,143
   14db4:	00159613          	slli	a2,a1,0x1
   14db8:	00c40633          	add	a2,s0,a2
   14dbc:	00065703          	lhu	a4,0(a2)
   14dc0:	00f776b3          	and	a3,a4,a5
   14dc4:	02a84a63          	blt	a6,a0,14df8 <emdnorm+0x1a4>
   14dc8:	00b00813          	li	a6,11
   14dcc:	02b84663          	blt	a6,a1,14df8 <emdnorm+0x1a4>
   14dd0:	00060713          	mv	a4,a2
   14dd4:	01840593          	addi	a1,s0,24
   14dd8:	00275783          	lhu	a5,2(a4)
   14ddc:	00078463          	beqz	a5,14de4 <emdnorm+0x190>
   14de0:	0016e693          	ori	a3,a3,1
   14de4:	00071123          	sh	zero,2(a4)
   14de8:	00270713          	addi	a4,a4,2
   14dec:	fee596e3          	bne	a1,a4,14dd8 <emdnorm+0x184>
   14df0:	00065703          	lhu	a4,0(a2)
   14df4:	0144d783          	lhu	a5,20(s1)
   14df8:	fff7c793          	not	a5,a5
   14dfc:	00e7f7b3          	and	a5,a5,a4
   14e00:	00f61023          	sh	a5,0(a2)
   14e04:	0164d783          	lhu	a5,22(s1)
   14e08:	00d7f733          	and	a4,a5,a3
   14e0c:	04070063          	beqz	a4,14e4c <emdnorm+0x1f8>
   14e10:	12d78263          	beq	a5,a3,14f34 <emdnorm+0x2e0>
   14e14:	03248613          	addi	a2,s1,50
   14e18:	01840713          	addi	a4,s0,24
   14e1c:	01c48493          	addi	s1,s1,28
   14e20:	00000693          	li	a3,0
   14e24:	00065783          	lhu	a5,0(a2)
   14e28:	00075583          	lhu	a1,0(a4)
   14e2c:	ffe70713          	addi	a4,a4,-2
   14e30:	ffe60613          	addi	a2,a2,-2
   14e34:	00b787b3          	add	a5,a5,a1
   14e38:	00d787b3          	add	a5,a5,a3
   14e3c:	00f71123          	sh	a5,2(a4)
   14e40:	0107d793          	srli	a5,a5,0x10
   14e44:	0017f693          	andi	a3,a5,1
   14e48:	fc961ee3          	bne	a2,s1,14e24 <emdnorm+0x1d0>
   14e4c:	11205663          	blez	s2,14f58 <emdnorm+0x304>
   14e50:	00445783          	lhu	a5,4(s0)
   14e54:	0a079c63          	bnez	a5,14f0c <emdnorm+0x2b8>
   14e58:	000087b7          	lui	a5,0x8
   14e5c:	00041c23          	sh	zero,24(s0)
   14e60:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x8076>
   14e64:	0327c863          	blt	a5,s2,14e94 <emdnorm+0x240>
   14e68:	01241123          	sh	s2,2(s0)
   14e6c:	01c12083          	lw	ra,28(sp)
   14e70:	01812403          	lw	s0,24(sp)
   14e74:	01412483          	lw	s1,20(sp)
   14e78:	01012903          	lw	s2,16(sp)
   14e7c:	00c12983          	lw	s3,12(sp)
   14e80:	00812a03          	lw	s4,8(sp)
   14e84:	00412a83          	lw	s5,4(sp)
   14e88:	02010113          	addi	sp,sp,32
   14e8c:	00008067          	ret
   14e90:	00041c23          	sh	zero,24(s0)
   14e94:	ffff87b7          	lui	a5,0xffff8
   14e98:	fff7c793          	not	a5,a5
   14e9c:	00f41123          	sh	a5,2(s0)
   14ea0:	00440793          	addi	a5,s0,4
   14ea4:	01840413          	addi	s0,s0,24
   14ea8:	00079023          	sh	zero,0(a5) # ffff8000 <__BSS_END__+0xfffd1518>
   14eac:	00278793          	addi	a5,a5,2
   14eb0:	fef41ce3          	bne	s0,a5,14ea8 <emdnorm+0x254>
   14eb4:	fb9ff06f          	j	14e6c <emdnorm+0x218>
   14eb8:	00240793          	addi	a5,s0,2
   14ebc:	01a40413          	addi	s0,s0,26
   14ec0:	00278793          	addi	a5,a5,2
   14ec4:	fe079f23          	sh	zero,-2(a5)
   14ec8:	fe879ce3          	bne	a5,s0,14ec0 <emdnorm+0x26c>
   14ecc:	fa1ff06f          	j	14e6c <emdnorm+0x218>
   14ed0:	00090593          	mv	a1,s2
   14ed4:	00040513          	mv	a0,s0
   14ed8:	a55ff0ef          	jal	ra,1492c <eshift.part.3>
   14edc:	00050463          	beqz	a0,14ee4 <emdnorm+0x290>
   14ee0:	00100993          	li	s3,1
   14ee4:	0a0a8a63          	beqz	s5,14f98 <emdnorm+0x344>
   14ee8:	0044a503          	lw	a0,4(s1)
   14eec:	0004a783          	lw	a5,0(s1)
   14ef0:	dca794e3          	bne	a5,a0,14cb8 <emdnorm+0x64>
   14ef4:	e95ff06f          	j	14d88 <emdnorm+0x134>
   14ef8:	f60a80e3          	beqz	s5,14e58 <emdnorm+0x204>
   14efc:	0044a503          	lw	a0,4(s1)
   14f00:	0004a783          	lw	a5,0(s1)
   14f04:	daf51ae3          	bne	a0,a5,14cb8 <emdnorm+0x64>
   14f08:	e7dff06f          	j	14d84 <emdnorm+0x130>
   14f0c:	00040513          	mv	a0,s0
   14f10:	d94ff0ef          	jal	ra,144a4 <eshdn1>
   14f14:	000087b7          	lui	a5,0x8
   14f18:	00190913          	addi	s2,s2,1
   14f1c:	00041c23          	sh	zero,24(s0)
   14f20:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x8076>
   14f24:	f727c8e3          	blt	a5,s2,14e94 <emdnorm+0x240>
   14f28:	f40950e3          	bgez	s2,14e68 <emdnorm+0x214>
   14f2c:	00041123          	sh	zero,2(s0)
   14f30:	f3dff06f          	j	14e6c <emdnorm+0x218>
   14f34:	0e099a63          	bnez	s3,15028 <emdnorm+0x3d4>
   14f38:	00c4a783          	lw	a5,12(s1)
   14f3c:	0184d703          	lhu	a4,24(s1)
   14f40:	00179793          	slli	a5,a5,0x1
   14f44:	00f407b3          	add	a5,s0,a5
   14f48:	0007d783          	lhu	a5,0(a5)
   14f4c:	00e7f7b3          	and	a5,a5,a4
   14f50:	ec0792e3          	bnez	a5,14e14 <emdnorm+0x1c0>
   14f54:	ef204ee3          	bgtz	s2,14e50 <emdnorm+0x1fc>
   14f58:	09000793          	li	a5,144
   14f5c:	00f50663          	beq	a0,a5,14f68 <emdnorm+0x314>
   14f60:	00040513          	mv	a0,s0
   14f64:	da8ff0ef          	jal	ra,1450c <eshup1>
   14f68:	00445783          	lhu	a5,4(s0)
   14f6c:	fa0790e3          	bnez	a5,14f0c <emdnorm+0x2b8>
   14f70:	00041c23          	sh	zero,24(s0)
   14f74:	fa094ce3          	bltz	s2,14f2c <emdnorm+0x2d8>
   14f78:	ef1ff06f          	j	14e68 <emdnorm+0x214>
   14f7c:	0084a603          	lw	a2,8(s1)
   14f80:	0144d783          	lhu	a5,20(s1)
   14f84:	00161613          	slli	a2,a2,0x1
   14f88:	00c40633          	add	a2,s0,a2
   14f8c:	00065703          	lhu	a4,0(a2)
   14f90:	00e7f6b3          	and	a3,a5,a4
   14f94:	e65ff06f          	j	14df8 <emdnorm+0x1a4>
   14f98:	00041c23          	sh	zero,24(s0)
   14f9c:	00041123          	sh	zero,2(s0)
   14fa0:	ecdff06f          	j	14e6c <emdnorm+0x218>
   14fa4:	008007b7          	lui	a5,0x800
   14fa8:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7d9617>
   14fac:	00400713          	li	a4,4
   14fb0:	00f4aa23          	sw	a5,20(s1)
   14fb4:	10000793          	li	a5,256
   14fb8:	00e4a423          	sw	a4,8(s1)
   14fbc:	00f49c23          	sh	a5,24(s1)
   14fc0:	00e4a623          	sw	a4,12(s1)
   14fc4:	00400793          	li	a5,4
   14fc8:	10000713          	li	a4,256
   14fcc:	da5ff06f          	j	14d70 <emdnorm+0x11c>
   14fd0:	00700793          	li	a5,7
   14fd4:	00f4a423          	sw	a5,8(s1)
   14fd8:	800107b7          	lui	a5,0x80010
   14fdc:	fff78793          	addi	a5,a5,-1 # 8000ffff <__BSS_END__+0x7ffe9517>
   14fe0:	00f4aa23          	sw	a5,20(s1)
   14fe4:	00100793          	li	a5,1
   14fe8:	00f49c23          	sh	a5,24(s1)
   14fec:	00600793          	li	a5,6
   14ff0:	00f4a623          	sw	a5,12(s1)
   14ff4:	00100713          	li	a4,1
   14ff8:	d79ff06f          	j	14d70 <emdnorm+0x11c>
   14ffc:	00c00793          	li	a5,12
   15000:	00f4a423          	sw	a5,8(s1)
   15004:	800107b7          	lui	a5,0x80010
   15008:	fff78793          	addi	a5,a5,-1 # 8000ffff <__BSS_END__+0x7ffe9517>
   1500c:	00f4aa23          	sw	a5,20(s1)
   15010:	00100793          	li	a5,1
   15014:	00f49c23          	sh	a5,24(s1)
   15018:	00b00793          	li	a5,11
   1501c:	00f4a623          	sw	a5,12(s1)
   15020:	00100713          	li	a4,1
   15024:	d4dff06f          	j	14d70 <emdnorm+0x11c>
   15028:	de0a06e3          	beqz	s4,14e14 <emdnorm+0x1c0>
   1502c:	e21ff06f          	j	14e4c <emdnorm+0x1f8>
   15030:	008007b7          	lui	a5,0x800
   15034:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7d9617>
   15038:	00600713          	li	a4,6
   1503c:	00f4aa23          	sw	a5,20(s1)
   15040:	10000793          	li	a5,256
   15044:	00e4a423          	sw	a4,8(s1)
   15048:	00f49c23          	sh	a5,24(s1)
   1504c:	00e4a623          	sw	a4,12(s1)
   15050:	00600793          	li	a5,6
   15054:	10000713          	li	a4,256
   15058:	d19ff06f          	j	14d70 <emdnorm+0x11c>

0001505c <eiremain>:
   1505c:	fd010113          	addi	sp,sp,-48
   15060:	01312e23          	sw	s3,28(sp)
   15064:	00255983          	lhu	s3,2(a0)
   15068:	02912223          	sw	s1,36(sp)
   1506c:	00058493          	mv	s1,a1
   15070:	02112623          	sw	ra,44(sp)
   15074:	02812423          	sw	s0,40(sp)
   15078:	03212023          	sw	s2,32(sp)
   1507c:	01412c23          	sw	s4,24(sp)
   15080:	00060913          	mv	s2,a2
   15084:	01512a23          	sw	s5,20(sp)
   15088:	01612823          	sw	s6,16(sp)
   1508c:	01712623          	sw	s7,12(sp)
   15090:	01812423          	sw	s8,8(sp)
   15094:	01912223          	sw	s9,4(sp)
   15098:	01a12023          	sw	s10,0(sp)
   1509c:	00050a13          	mv	s4,a0
   150a0:	a39ff0ef          	jal	ra,14ad8 <enormlz>
   150a4:	0024d403          	lhu	s0,2(s1)
   150a8:	40a989b3          	sub	s3,s3,a0
   150ac:	00048513          	mv	a0,s1
   150b0:	a29ff0ef          	jal	ra,14ad8 <enormlz>
   150b4:	03490a93          	addi	s5,s2,52
   150b8:	40a40433          	sub	s0,s0,a0
   150bc:	04e90713          	addi	a4,s2,78
   150c0:	000a8793          	mv	a5,s5
   150c4:	00278793          	addi	a5,a5,2
   150c8:	fe079f23          	sh	zero,-2(a5)
   150cc:	fee79ce3          	bne	a5,a4,150c4 <eiremain+0x68>
   150d0:	09344a63          	blt	s0,s3,15164 <eiremain+0x108>
   150d4:	004a0b93          	addi	s7,s4,4
   150d8:	00448b13          	addi	s6,s1,4
   150dc:	fff98993          	addi	s3,s3,-1
   150e0:	01aa0c93          	addi	s9,s4,26
   150e4:	00248c13          	addi	s8,s1,2
   150e8:	000b0713          	mv	a4,s6
   150ec:	000b8793          	mv	a5,s7
   150f0:	00278793          	addi	a5,a5,2
   150f4:	00270713          	addi	a4,a4,2
   150f8:	ffe7d603          	lhu	a2,-2(a5)
   150fc:	ffe75683          	lhu	a3,-2(a4)
   15100:	0ad61a63          	bne	a2,a3,151b4 <eiremain+0x158>
   15104:	ff9796e3          	bne	a5,s9,150f0 <eiremain+0x94>
   15108:	018a0693          	addi	a3,s4,24
   1510c:	01848713          	addi	a4,s1,24
   15110:	00000613          	li	a2,0
   15114:	00075783          	lhu	a5,0(a4)
   15118:	0006d583          	lhu	a1,0(a3)
   1511c:	ffe70713          	addi	a4,a4,-2
   15120:	40c787b3          	sub	a5,a5,a2
   15124:	40b787b3          	sub	a5,a5,a1
   15128:	00f71123          	sh	a5,2(a4)
   1512c:	0107d793          	srli	a5,a5,0x10
   15130:	ffe68693          	addi	a3,a3,-2
   15134:	0017f613          	andi	a2,a5,1
   15138:	fcec1ee3          	bne	s8,a4,15114 <eiremain+0xb8>
   1513c:	00100d13          	li	s10,1
   15140:	000a8513          	mv	a0,s5
   15144:	bc8ff0ef          	jal	ra,1450c <eshup1>
   15148:	04c95783          	lhu	a5,76(s2)
   1514c:	fff40413          	addi	s0,s0,-1
   15150:	00048513          	mv	a0,s1
   15154:	00fd6d33          	or	s10,s10,a5
   15158:	05a91623          	sh	s10,76(s2)
   1515c:	bb0ff0ef          	jal	ra,1450c <eshup1>
   15160:	f93414e3          	bne	s0,s3,150e8 <eiremain+0x8c>
   15164:	00040693          	mv	a3,s0
   15168:	02812403          	lw	s0,40(sp)
   1516c:	02c12083          	lw	ra,44(sp)
   15170:	01c12983          	lw	s3,28(sp)
   15174:	01812a03          	lw	s4,24(sp)
   15178:	01412a83          	lw	s5,20(sp)
   1517c:	01012b03          	lw	s6,16(sp)
   15180:	00c12b83          	lw	s7,12(sp)
   15184:	00812c03          	lw	s8,8(sp)
   15188:	00412c83          	lw	s9,4(sp)
   1518c:	00012d03          	lw	s10,0(sp)
   15190:	00090793          	mv	a5,s2
   15194:	00048513          	mv	a0,s1
   15198:	02012903          	lw	s2,32(sp)
   1519c:	02412483          	lw	s1,36(sp)
   151a0:	00000713          	li	a4,0
   151a4:	00000613          	li	a2,0
   151a8:	00000593          	li	a1,0
   151ac:	03010113          	addi	sp,sp,48
   151b0:	aa5ff06f          	j	14c54 <emdnorm>
   151b4:	00000d13          	li	s10,0
   151b8:	f8c6e4e3          	bltu	a3,a2,15140 <eiremain+0xe4>
   151bc:	f4dff06f          	j	15108 <eiremain+0xac>

000151c0 <emovo.isra.6>:
   151c0:	00055703          	lhu	a4,0(a0)
   151c4:	00255783          	lhu	a5,2(a0)
   151c8:	00070663          	beqz	a4,151d4 <emovo.isra.6+0x14>
   151cc:	00008737          	lui	a4,0x8
   151d0:	00e7e7b3          	or	a5,a5,a4
   151d4:	00f59923          	sh	a5,18(a1)
   151d8:	00255703          	lhu	a4,2(a0)
   151dc:	000087b7          	lui	a5,0x8
   151e0:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   151e4:	02f70463          	beq	a4,a5,1520c <emovo.isra.6+0x4c>
   151e8:	00650793          	addi	a5,a0,6
   151ec:	01058593          	addi	a1,a1,16
   151f0:	01850513          	addi	a0,a0,24
   151f4:	00278793          	addi	a5,a5,2
   151f8:	ffe7d703          	lhu	a4,-2(a5)
   151fc:	ffe58593          	addi	a1,a1,-2
   15200:	00e59123          	sh	a4,2(a1)
   15204:	fea798e3          	bne	a5,a0,151f4 <emovo.isra.6+0x34>
   15208:	00008067          	ret
   1520c:	00650793          	addi	a5,a0,6
   15210:	01a50513          	addi	a0,a0,26
   15214:	0007d703          	lhu	a4,0(a5)
   15218:	00278793          	addi	a5,a5,2
   1521c:	02071a63          	bnez	a4,15250 <emovo.isra.6+0x90>
   15220:	fea79ae3          	bne	a5,a0,15214 <emovo.isra.6+0x54>
   15224:	01258713          	addi	a4,a1,18
   15228:	00058793          	mv	a5,a1
   1522c:	00278793          	addi	a5,a5,2
   15230:	fe079f23          	sh	zero,-2(a5)
   15234:	fef71ce3          	bne	a4,a5,1522c <emovo.isra.6+0x6c>
   15238:	0125d783          	lhu	a5,18(a1)
   1523c:	00008737          	lui	a4,0x8
   15240:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   15244:	00e7e7b3          	or	a5,a5,a4
   15248:	00f59923          	sh	a5,18(a1)
   1524c:	00008067          	ret
   15250:	01058713          	addi	a4,a1,16
   15254:	00058793          	mv	a5,a1
   15258:	00278793          	addi	a5,a5,2
   1525c:	fe079f23          	sh	zero,-2(a5)
   15260:	fef71ce3          	bne	a4,a5,15258 <emovo.isra.6+0x98>
   15264:	7fffc7b7          	lui	a5,0x7fffc
   15268:	00f5a823          	sw	a5,16(a1)
   1526c:	00008067          	ret

00015270 <emul>:
   15270:	f7010113          	addi	sp,sp,-144
   15274:	07512a23          	sw	s5,116(sp)
   15278:	01255a83          	lhu	s5,18(a0)
   1527c:	000087b7          	lui	a5,0x8
   15280:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   15284:	08812423          	sw	s0,136(sp)
   15288:	08912223          	sw	s1,132(sp)
   1528c:	09212023          	sw	s2,128(sp)
   15290:	07312e23          	sw	s3,124(sp)
   15294:	07612823          	sw	s6,112(sp)
   15298:	08112623          	sw	ra,140(sp)
   1529c:	07412c23          	sw	s4,120(sp)
   152a0:	07712623          	sw	s7,108(sp)
   152a4:	07812423          	sw	s8,104(sp)
   152a8:	07912223          	sw	s9,100(sp)
   152ac:	0157fb33          	and	s6,a5,s5
   152b0:	00050493          	mv	s1,a0
   152b4:	00058913          	mv	s2,a1
   152b8:	00060413          	mv	s0,a2
   152bc:	00068993          	mv	s3,a3
   152c0:	0afb1863          	bne	s6,a5,15370 <emul+0x100>
   152c4:	b98ff0ef          	jal	ra,1465c <eisnan.part.0>
   152c8:	20051c63          	bnez	a0,154e0 <emul+0x270>
   152cc:	01295a03          	lhu	s4,18(s2)
   152d0:	014b77b3          	and	a5,s6,s4
   152d4:	23679463          	bne	a5,s6,154fc <emul+0x28c>
   152d8:	00090513          	mv	a0,s2
   152dc:	b80ff0ef          	jal	ra,1465c <eisnan.part.0>
   152e0:	0a051463          	bnez	a0,15388 <emul+0x118>
   152e4:	00048513          	mv	a0,s1
   152e8:	e28ff0ef          	jal	ra,14910 <eisinf.part.1>
   152ec:	20051e63          	bnez	a0,15508 <emul+0x298>
   152f0:	000087b7          	lui	a5,0x8
   152f4:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   152f8:	0147fa33          	and	s4,a5,s4
   152fc:	010a1a13          	slli	s4,s4,0x10
   15300:	010a5a13          	srli	s4,s4,0x10
   15304:	2cfa1663          	bne	s4,a5,155d0 <emul+0x360>
   15308:	00090513          	mv	a0,s2
   1530c:	e04ff0ef          	jal	ra,14910 <eisinf.part.1>
   15310:	32051263          	bnez	a0,15634 <emul+0x3c4>
   15314:	0124d783          	lhu	a5,18(s1)
   15318:	00fa77b3          	and	a5,s4,a5
   1531c:	21478463          	beq	a5,s4,15524 <emul+0x2b4>
   15320:	00048513          	mv	a0,s1
   15324:	00c10593          	addi	a1,sp,12
   15328:	be4ff0ef          	jal	ra,1470c <emovi>
   1532c:	00090513          	mv	a0,s2
   15330:	02810593          	addi	a1,sp,40
   15334:	bd8ff0ef          	jal	ra,1470c <emovi>
   15338:	00e15483          	lhu	s1,14(sp)
   1533c:	02a15903          	lhu	s2,42(sp)
   15340:	08049a63          	bnez	s1,153d4 <emul+0x164>
   15344:	01010793          	addi	a5,sp,16
   15348:	02410693          	addi	a3,sp,36
   1534c:	2cd78063          	beq	a5,a3,1560c <emul+0x39c>
   15350:	00278793          	addi	a5,a5,2
   15354:	ffe7d703          	lhu	a4,-2(a5)
   15358:	fe070ae3          	beqz	a4,1534c <emul+0xdc>
   1535c:	00c10513          	addi	a0,sp,12
   15360:	f78ff0ef          	jal	ra,14ad8 <enormlz>
   15364:	40a004b3          	neg	s1,a0
   15368:	02a15703          	lhu	a4,42(sp)
   1536c:	06c0006f          	j	153d8 <emul+0x168>
   15370:	0125da03          	lhu	s4,18(a1)
   15374:	0147f733          	and	a4,a5,s4
   15378:	faf714e3          	bne	a4,a5,15320 <emul+0xb0>
   1537c:	00058513          	mv	a0,a1
   15380:	adcff0ef          	jal	ra,1465c <eisnan.part.0>
   15384:	f60506e3          	beqz	a0,152f0 <emul+0x80>
   15388:	01490713          	addi	a4,s2,20
   1538c:	00290913          	addi	s2,s2,2
   15390:	ffe95783          	lhu	a5,-2(s2)
   15394:	00240413          	addi	s0,s0,2
   15398:	fef41f23          	sh	a5,-2(s0)
   1539c:	fee918e3          	bne	s2,a4,1538c <emul+0x11c>
   153a0:	08c12083          	lw	ra,140(sp)
   153a4:	08812403          	lw	s0,136(sp)
   153a8:	08412483          	lw	s1,132(sp)
   153ac:	08012903          	lw	s2,128(sp)
   153b0:	07c12983          	lw	s3,124(sp)
   153b4:	07812a03          	lw	s4,120(sp)
   153b8:	07412a83          	lw	s5,116(sp)
   153bc:	07012b03          	lw	s6,112(sp)
   153c0:	06c12b83          	lw	s7,108(sp)
   153c4:	06812c03          	lw	s8,104(sp)
   153c8:	06412c83          	lw	s9,100(sp)
   153cc:	09010113          	addi	sp,sp,144
   153d0:	00008067          	ret
   153d4:	00090713          	mv	a4,s2
   153d8:	00090b13          	mv	s6,s2
   153dc:	02c10793          	addi	a5,sp,44
   153e0:	04010693          	addi	a3,sp,64
   153e4:	02071263          	bnez	a4,15408 <emul+0x198>
   153e8:	22f68c63          	beq	a3,a5,15620 <emul+0x3b0>
   153ec:	00278793          	addi	a5,a5,2
   153f0:	ffe7d703          	lhu	a4,-2(a5)
   153f4:	fe070ae3          	beqz	a4,153e8 <emul+0x178>
   153f8:	02810513          	addi	a0,sp,40
   153fc:	edcff0ef          	jal	ra,14ad8 <enormlz>
   15400:	02a15703          	lhu	a4,42(sp)
   15404:	40a90b33          	sub	s6,s2,a0
   15408:	02815783          	lhu	a5,40(sp)
   1540c:	03898a93          	addi	s5,s3,56
   15410:	02e99b23          	sh	a4,54(s3)
   15414:	02f99a23          	sh	a5,52(s3)
   15418:	04e98713          	addi	a4,s3,78
   1541c:	000a8793          	mv	a5,s5
   15420:	00079023          	sh	zero,0(a5)
   15424:	00278793          	addi	a5,a5,2
   15428:	fef71ce3          	bne	a4,a5,15420 <emul+0x1b0>
   1542c:	04c98b93          	addi	s7,s3,76
   15430:	00000a13          	li	s4,0
   15434:	02410913          	addi	s2,sp,36
   15438:	01010c93          	addi	s9,sp,16
   1543c:	04610c13          	addi	s8,sp,70
   15440:	00095503          	lhu	a0,0(s2)
   15444:	ffe90913          	addi	s2,s2,-2
   15448:	14051263          	bnez	a0,1558c <emul+0x31c>
   1544c:	04c9d703          	lhu	a4,76(s3)
   15450:	000b8793          	mv	a5,s7
   15454:	00ea6a33          	or	s4,s4,a4
   15458:	ffe78793          	addi	a5,a5,-2
   1545c:	0007d703          	lhu	a4,0(a5)
   15460:	00e79123          	sh	a4,2(a5)
   15464:	ff579ae3          	bne	a5,s5,15458 <emul+0x1e8>
   15468:	02099c23          	sh	zero,56(s3)
   1546c:	fd991ae3          	bne	s2,s9,15440 <emul+0x1d0>
   15470:	03498713          	addi	a4,s3,52
   15474:	02810793          	addi	a5,sp,40
   15478:	04210693          	addi	a3,sp,66
   1547c:	00075603          	lhu	a2,0(a4)
   15480:	00278793          	addi	a5,a5,2
   15484:	00270713          	addi	a4,a4,2
   15488:	fec79f23          	sh	a2,-2(a5)
   1548c:	fef698e3          	bne	a3,a5,1547c <emul+0x20c>
   15490:	ffffc6b7          	lui	a3,0xffffc
   15494:	016484b3          	add	s1,s1,s6
   15498:	00268693          	addi	a3,a3,2 # ffffc002 <__BSS_END__+0xfffd551a>
   1549c:	000a0593          	mv	a1,s4
   154a0:	02810513          	addi	a0,sp,40
   154a4:	00098793          	mv	a5,s3
   154a8:	04000713          	li	a4,64
   154ac:	00d486b3          	add	a3,s1,a3
   154b0:	00000613          	li	a2,0
   154b4:	fa0ff0ef          	jal	ra,14c54 <emdnorm>
   154b8:	02815703          	lhu	a4,40(sp)
   154bc:	00c15783          	lhu	a5,12(sp)
   154c0:	00040593          	mv	a1,s0
   154c4:	02810513          	addi	a0,sp,40
   154c8:	40e787b3          	sub	a5,a5,a4
   154cc:	00f037b3          	snez	a5,a5
   154d0:	40f007b3          	neg	a5,a5
   154d4:	02f11423          	sh	a5,40(sp)
   154d8:	ce9ff0ef          	jal	ra,151c0 <emovo.isra.6>
   154dc:	ec5ff06f          	j	153a0 <emul+0x130>
   154e0:	01448713          	addi	a4,s1,20
   154e4:	00248493          	addi	s1,s1,2
   154e8:	ffe4d783          	lhu	a5,-2(s1)
   154ec:	00240413          	addi	s0,s0,2
   154f0:	fef41f23          	sh	a5,-2(s0)
   154f4:	fee498e3          	bne	s1,a4,154e4 <emul+0x274>
   154f8:	ea9ff06f          	j	153a0 <emul+0x130>
   154fc:	00048513          	mv	a0,s1
   15500:	c10ff0ef          	jal	ra,14910 <eisinf.part.1>
   15504:	0c050863          	beqz	a0,155d4 <emul+0x364>
   15508:	00010597          	auipc	a1,0x10
   1550c:	8f058593          	addi	a1,a1,-1808 # 24df8 <ezero>
   15510:	00090513          	mv	a0,s2
   15514:	ae0ff0ef          	jal	ra,147f4 <ecmp>
   15518:	14050063          	beqz	a0,15658 <emul+0x3e8>
   1551c:	01295a03          	lhu	s4,18(s2)
   15520:	dd1ff06f          	j	152f0 <emul+0x80>
   15524:	00048513          	mv	a0,s1
   15528:	be8ff0ef          	jal	ra,14910 <eisinf.part.1>
   1552c:	00051863          	bnez	a0,1553c <emul+0x2cc>
   15530:	00090513          	mv	a0,s2
   15534:	bdcff0ef          	jal	ra,14910 <eisinf.part.1>
   15538:	de0504e3          	beqz	a0,15320 <emul+0xb0>
   1553c:	00048513          	mv	a0,s1
   15540:	98cff0ef          	jal	ra,146cc <eisneg>
   15544:	00050493          	mv	s1,a0
   15548:	00090513          	mv	a0,s2
   1554c:	980ff0ef          	jal	ra,146cc <eisneg>
   15550:	40a48533          	sub	a0,s1,a0
   15554:	00a03533          	snez	a0,a0
   15558:	00f51513          	slli	a0,a0,0xf
   1555c:	00a41923          	sh	a0,18(s0)
   15560:	01240713          	addi	a4,s0,18
   15564:	00040793          	mv	a5,s0
   15568:	00278793          	addi	a5,a5,2
   1556c:	fe079f23          	sh	zero,-2(a5)
   15570:	fee79ce3          	bne	a5,a4,15568 <emul+0x2f8>
   15574:	01245783          	lhu	a5,18(s0)
   15578:	00008737          	lui	a4,0x8
   1557c:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   15580:	00e7e7b3          	or	a5,a5,a4
   15584:	00f41923          	sh	a5,18(s0)
   15588:	e19ff06f          	j	153a0 <emul+0x130>
   1558c:	04410613          	addi	a2,sp,68
   15590:	02810593          	addi	a1,sp,40
   15594:	fe9fe0ef          	jal	ra,1457c <m16m>
   15598:	000b8613          	mv	a2,s7
   1559c:	00000593          	li	a1,0
   155a0:	05c10713          	addi	a4,sp,92
   155a4:	00065503          	lhu	a0,0(a2)
   155a8:	00075783          	lhu	a5,0(a4)
   155ac:	ffe60613          	addi	a2,a2,-2
   155b0:	ffe70713          	addi	a4,a4,-2
   155b4:	00a787b3          	add	a5,a5,a0
   155b8:	00b787b3          	add	a5,a5,a1
   155bc:	00f61123          	sh	a5,2(a2)
   155c0:	0107d793          	srli	a5,a5,0x10
   155c4:	0017f593          	andi	a1,a5,1
   155c8:	fd871ee3          	bne	a4,s8,155a4 <emul+0x334>
   155cc:	e81ff06f          	j	1544c <emul+0x1dc>
   155d0:	0124da83          	lhu	s5,18(s1)
   155d4:	000087b7          	lui	a5,0x8
   155d8:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   155dc:	0157fab3          	and	s5,a5,s5
   155e0:	010a9a93          	slli	s5,s5,0x10
   155e4:	010ada93          	srli	s5,s5,0x10
   155e8:	d2fa9ce3          	bne	s5,a5,15320 <emul+0xb0>
   155ec:	00048513          	mv	a0,s1
   155f0:	b20ff0ef          	jal	ra,14910 <eisinf.part.1>
   155f4:	f40514e3          	bnez	a0,1553c <emul+0x2cc>
   155f8:	01295783          	lhu	a5,18(s2)
   155fc:	fff7c793          	not	a5,a5
   15600:	01179713          	slli	a4,a5,0x11
   15604:	d0071ee3          	bnez	a4,15320 <emul+0xb0>
   15608:	f29ff06f          	j	15530 <emul+0x2c0>
   1560c:	01440793          	addi	a5,s0,20
   15610:	00240413          	addi	s0,s0,2
   15614:	fe041f23          	sh	zero,-2(s0)
   15618:	fe879ce3          	bne	a5,s0,15610 <emul+0x3a0>
   1561c:	d85ff06f          	j	153a0 <emul+0x130>
   15620:	01440793          	addi	a5,s0,20
   15624:	00240413          	addi	s0,s0,2
   15628:	fe041f23          	sh	zero,-2(s0)
   1562c:	fef41ce3          	bne	s0,a5,15624 <emul+0x3b4>
   15630:	d71ff06f          	j	153a0 <emul+0x130>
   15634:	0000f597          	auipc	a1,0xf
   15638:	7c458593          	addi	a1,a1,1988 # 24df8 <ezero>
   1563c:	00048513          	mv	a0,s1
   15640:	9b4ff0ef          	jal	ra,147f4 <ecmp>
   15644:	00050a63          	beqz	a0,15658 <emul+0x3e8>
   15648:	0124d783          	lhu	a5,18(s1)
   1564c:	00fa77b3          	and	a5,s4,a5
   15650:	f9478ee3          	beq	a5,s4,155ec <emul+0x37c>
   15654:	fa5ff06f          	j	155f8 <emul+0x388>
   15658:	01040713          	addi	a4,s0,16
   1565c:	00040793          	mv	a5,s0
   15660:	00278793          	addi	a5,a5,2
   15664:	fe079f23          	sh	zero,-2(a5)
   15668:	fee79ce3          	bne	a5,a4,15660 <emul+0x3f0>
   1566c:	7fffc7b7          	lui	a5,0x7fffc
   15670:	00f42823          	sw	a5,16(s0)
   15674:	d2dff06f          	j	153a0 <emul+0x130>

00015678 <ediv>:
   15678:	01255783          	lhu	a5,18(a0)
   1567c:	f5010113          	addi	sp,sp,-176
   15680:	0a812423          	sw	s0,168(sp)
   15684:	fff7c793          	not	a5,a5
   15688:	0a912223          	sw	s1,164(sp)
   1568c:	0b212023          	sw	s2,160(sp)
   15690:	09812423          	sw	s8,136(sp)
   15694:	0a112623          	sw	ra,172(sp)
   15698:	09312e23          	sw	s3,156(sp)
   1569c:	09412c23          	sw	s4,152(sp)
   156a0:	09512a23          	sw	s5,148(sp)
   156a4:	09612823          	sw	s6,144(sp)
   156a8:	09712623          	sw	s7,140(sp)
   156ac:	09912223          	sw	s9,132(sp)
   156b0:	09a12023          	sw	s10,128(sp)
   156b4:	07b12e23          	sw	s11,124(sp)
   156b8:	01179713          	slli	a4,a5,0x11
   156bc:	00050493          	mv	s1,a0
   156c0:	00058913          	mv	s2,a1
   156c4:	00060413          	mv	s0,a2
   156c8:	00068c13          	mv	s8,a3
   156cc:	00071663          	bnez	a4,156d8 <ediv+0x60>
   156d0:	f8dfe0ef          	jal	ra,1465c <eisnan.part.0>
   156d4:	38051263          	bnez	a0,15a58 <ediv+0x3e0>
   156d8:	01295783          	lhu	a5,18(s2)
   156dc:	fff7c793          	not	a5,a5
   156e0:	01179713          	slli	a4,a5,0x11
   156e4:	08070e63          	beqz	a4,15780 <ediv+0x108>
   156e8:	0000f597          	auipc	a1,0xf
   156ec:	71058593          	addi	a1,a1,1808 # 24df8 <ezero>
   156f0:	00048513          	mv	a0,s1
   156f4:	900ff0ef          	jal	ra,147f4 <ecmp>
   156f8:	10050463          	beqz	a0,15800 <ediv+0x188>
   156fc:	0124d983          	lhu	s3,18(s1)
   15700:	01295703          	lhu	a4,18(s2)
   15704:	000087b7          	lui	a5,0x8
   15708:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   1570c:	0137f9b3          	and	s3,a5,s3
   15710:	00e7fa33          	and	s4,a5,a4
   15714:	08f99a63          	bne	s3,a5,157a8 <ediv+0x130>
   15718:	00048513          	mv	a0,s1
   1571c:	9f4ff0ef          	jal	ra,14910 <eisinf.part.1>
   15720:	10050a63          	beqz	a0,15834 <ediv+0x1bc>
   15724:	013a1863          	bne	s4,s3,15734 <ediv+0xbc>
   15728:	00090513          	mv	a0,s2
   1572c:	9e4ff0ef          	jal	ra,14910 <eisinf.part.1>
   15730:	0e051263          	bnez	a0,15814 <ediv+0x19c>
   15734:	01440793          	addi	a5,s0,20
   15738:	00240413          	addi	s0,s0,2
   1573c:	fe041f23          	sh	zero,-2(s0)
   15740:	fef41ce3          	bne	s0,a5,15738 <ediv+0xc0>
   15744:	0ac12083          	lw	ra,172(sp)
   15748:	0a812403          	lw	s0,168(sp)
   1574c:	0a412483          	lw	s1,164(sp)
   15750:	0a012903          	lw	s2,160(sp)
   15754:	09c12983          	lw	s3,156(sp)
   15758:	09812a03          	lw	s4,152(sp)
   1575c:	09412a83          	lw	s5,148(sp)
   15760:	09012b03          	lw	s6,144(sp)
   15764:	08c12b83          	lw	s7,140(sp)
   15768:	08812c03          	lw	s8,136(sp)
   1576c:	08412c83          	lw	s9,132(sp)
   15770:	08012d03          	lw	s10,128(sp)
   15774:	07c12d83          	lw	s11,124(sp)
   15778:	0b010113          	addi	sp,sp,176
   1577c:	00008067          	ret
   15780:	00090513          	mv	a0,s2
   15784:	ed9fe0ef          	jal	ra,1465c <eisnan.part.0>
   15788:	f60500e3          	beqz	a0,156e8 <ediv+0x70>
   1578c:	01490713          	addi	a4,s2,20
   15790:	00290913          	addi	s2,s2,2
   15794:	ffe95783          	lhu	a5,-2(s2)
   15798:	00240413          	addi	s0,s0,2
   1579c:	fef41f23          	sh	a5,-2(s0)
   157a0:	fee918e3          	bne	s2,a4,15790 <ediv+0x118>
   157a4:	fa1ff06f          	j	15744 <ediv+0xcc>
   157a8:	08fa0863          	beq	s4,a5,15838 <ediv+0x1c0>
   157ac:	01c10593          	addi	a1,sp,28
   157b0:	00048513          	mv	a0,s1
   157b4:	f59fe0ef          	jal	ra,1470c <emovi>
   157b8:	00090513          	mv	a0,s2
   157bc:	03810593          	addi	a1,sp,56
   157c0:	f4dfe0ef          	jal	ra,1470c <emovi>
   157c4:	03a15c83          	lhu	s9,58(sp)
   157c8:	01e15903          	lhu	s2,30(sp)
   157cc:	0c0c9463          	bnez	s9,15894 <ediv+0x21c>
   157d0:	03c10793          	addi	a5,sp,60
   157d4:	05010493          	addi	s1,sp,80
   157d8:	34f48863          	beq	s1,a5,15b28 <ediv+0x4b0>
   157dc:	00278793          	addi	a5,a5,2
   157e0:	ffe7d703          	lhu	a4,-2(a5)
   157e4:	fe070ae3          	beqz	a4,157d8 <ediv+0x160>
   157e8:	03810513          	addi	a0,sp,56
   157ec:	aecff0ef          	jal	ra,14ad8 <enormlz>
   157f0:	40a007b3          	neg	a5,a0
   157f4:	00f12623          	sw	a5,12(sp)
   157f8:	01e15603          	lhu	a2,30(sp)
   157fc:	0a00006f          	j	1589c <ediv+0x224>
   15800:	0000f597          	auipc	a1,0xf
   15804:	5f858593          	addi	a1,a1,1528 # 24df8 <ezero>
   15808:	00090513          	mv	a0,s2
   1580c:	fe9fe0ef          	jal	ra,147f4 <ecmp>
   15810:	ee0516e3          	bnez	a0,156fc <ediv+0x84>
   15814:	01040713          	addi	a4,s0,16
   15818:	00040793          	mv	a5,s0
   1581c:	00278793          	addi	a5,a5,2
   15820:	fe079f23          	sh	zero,-2(a5)
   15824:	fee79ce3          	bne	a5,a4,1581c <ediv+0x1a4>
   15828:	7fffc7b7          	lui	a5,0x7fffc
   1582c:	00f42823          	sw	a5,16(s0)
   15830:	f15ff06f          	j	15744 <ediv+0xcc>
   15834:	f73a1ce3          	bne	s4,s3,157ac <ediv+0x134>
   15838:	00090513          	mv	a0,s2
   1583c:	8d4ff0ef          	jal	ra,14910 <eisinf.part.1>
   15840:	f60506e3          	beqz	a0,157ac <ediv+0x134>
   15844:	00048513          	mv	a0,s1
   15848:	e85fe0ef          	jal	ra,146cc <eisneg>
   1584c:	00050493          	mv	s1,a0
   15850:	00090513          	mv	a0,s2
   15854:	e79fe0ef          	jal	ra,146cc <eisneg>
   15858:	40a487b3          	sub	a5,s1,a0
   1585c:	00f037b3          	snez	a5,a5
   15860:	00f79793          	slli	a5,a5,0xf
   15864:	00f41923          	sh	a5,18(s0)
   15868:	01240713          	addi	a4,s0,18
   1586c:	00040793          	mv	a5,s0
   15870:	00278793          	addi	a5,a5,2 # 7fffc002 <__BSS_END__+0x7ffd551a>
   15874:	fe079f23          	sh	zero,-2(a5)
   15878:	fee79ce3          	bne	a5,a4,15870 <ediv+0x1f8>
   1587c:	01245783          	lhu	a5,18(s0)
   15880:	00008737          	lui	a4,0x8
   15884:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   15888:	00e7e7b3          	or	a5,a5,a4
   1588c:	00f41923          	sh	a5,18(s0)
   15890:	eb5ff06f          	j	15744 <ediv+0xcc>
   15894:	01912623          	sw	s9,12(sp)
   15898:	00090613          	mv	a2,s2
   1589c:	01212423          	sw	s2,8(sp)
   158a0:	02010793          	addi	a5,sp,32
   158a4:	03410693          	addi	a3,sp,52
   158a8:	02061263          	bnez	a2,158cc <ediv+0x254>
   158ac:	28f68863          	beq	a3,a5,15b3c <ediv+0x4c4>
   158b0:	00278793          	addi	a5,a5,2
   158b4:	ffe7d703          	lhu	a4,-2(a5)
   158b8:	fe070ae3          	beqz	a4,158ac <ediv+0x234>
   158bc:	01c10513          	addi	a0,sp,28
   158c0:	a18ff0ef          	jal	ra,14ad8 <enormlz>
   158c4:	40a907b3          	sub	a5,s2,a0
   158c8:	00f12423          	sw	a5,8(sp)
   158cc:	03812703          	lw	a4,56(sp)
   158d0:	038c0d93          	addi	s11,s8,56
   158d4:	000d8793          	mv	a5,s11
   158d8:	02ec2a23          	sw	a4,52(s8)
   158dc:	04ec0993          	addi	s3,s8,78
   158e0:	00278793          	addi	a5,a5,2
   158e4:	fe079f23          	sh	zero,-2(a5)
   158e8:	fef99ce3          	bne	s3,a5,158e0 <ediv+0x268>
   158ec:	03810513          	addi	a0,sp,56
   158f0:	bb5fe0ef          	jal	ra,144a4 <eshdn1>
   158f4:	02215d03          	lhu	s10,34(sp)
   158f8:	00010ab7          	lui	s5,0x10
   158fc:	05010493          	addi	s1,sp,80
   15900:	010d1b13          	slli	s6,s10,0x10
   15904:	41ab0b33          	sub	s6,s6,s10
   15908:	03a10b93          	addi	s7,sp,58
   1590c:	fffa8a93          	addi	s5,s5,-1 # ffff <register_fini-0x75>
   15910:	06e10913          	addi	s2,sp,110
   15914:	05610a13          	addi	s4,sp,86
   15918:	03c15503          	lhu	a0,60(sp)
   1591c:	03e15783          	lhu	a5,62(sp)
   15920:	000a8c93          	mv	s9,s5
   15924:	01051513          	slli	a0,a0,0x10
   15928:	00f50533          	add	a0,a0,a5
   1592c:	00ab6a63          	bltu	s6,a0,15940 <ediv+0x2c8>
   15930:	000d0593          	mv	a1,s10
   15934:	a55fa0ef          	jal	ra,10388 <__udivsi3>
   15938:	01051c93          	slli	s9,a0,0x10
   1593c:	010cdc93          	srli	s9,s9,0x10
   15940:	05410613          	addi	a2,sp,84
   15944:	01c10593          	addi	a1,sp,28
   15948:	000c8513          	mv	a0,s9
   1594c:	c31fe0ef          	jal	ra,1457c <m16m>
   15950:	03c10613          	addi	a2,sp,60
   15954:	05810793          	addi	a5,sp,88
   15958:	00278793          	addi	a5,a5,2
   1595c:	00260613          	addi	a2,a2,2
   15960:	ffe7d503          	lhu	a0,-2(a5)
   15964:	ffe65583          	lhu	a1,-2(a2)
   15968:	10b51663          	bne	a0,a1,15a74 <ediv+0x3fc>
   1596c:	ff2796e3          	bne	a5,s2,15958 <ediv+0x2e0>
   15970:	00000513          	li	a0,0
   15974:	06c10593          	addi	a1,sp,108
   15978:	00048613          	mv	a2,s1
   1597c:	00065783          	lhu	a5,0(a2)
   15980:	0005d803          	lhu	a6,0(a1)
   15984:	ffe60613          	addi	a2,a2,-2
   15988:	40a787b3          	sub	a5,a5,a0
   1598c:	410787b3          	sub	a5,a5,a6
   15990:	00f61123          	sh	a5,2(a2)
   15994:	0107d793          	srli	a5,a5,0x10
   15998:	ffe58593          	addi	a1,a1,-2
   1599c:	0017f513          	andi	a0,a5,1
   159a0:	fd761ee3          	bne	a2,s7,1597c <ediv+0x304>
   159a4:	019d9023          	sh	s9,0(s11)
   159a8:	03c10793          	addi	a5,sp,60
   159ac:	00278793          	addi	a5,a5,2
   159b0:	0007d683          	lhu	a3,0(a5)
   159b4:	fed79f23          	sh	a3,-2(a5)
   159b8:	fe979ae3          	bne	a5,s1,159ac <ediv+0x334>
   159bc:	04011823          	sh	zero,80(sp)
   159c0:	002d8d93          	addi	s11,s11,2
   159c4:	f5b99ae3          	bne	s3,s11,15918 <ediv+0x2a0>
   159c8:	00000593          	li	a1,0
   159cc:	03c10793          	addi	a5,sp,60
   159d0:	05210693          	addi	a3,sp,82
   159d4:	00278793          	addi	a5,a5,2
   159d8:	ffe7d703          	lhu	a4,-2(a5)
   159dc:	00e5e5b3          	or	a1,a1,a4
   159e0:	fed79ae3          	bne	a5,a3,159d4 <ediv+0x35c>
   159e4:	00b035b3          	snez	a1,a1
   159e8:	034c0713          	addi	a4,s8,52
   159ec:	03810793          	addi	a5,sp,56
   159f0:	00075603          	lhu	a2,0(a4)
   159f4:	00278793          	addi	a5,a5,2
   159f8:	00270713          	addi	a4,a4,2
   159fc:	fec79f23          	sh	a2,-2(a5)
   15a00:	fef698e3          	bne	a3,a5,159f0 <ediv+0x378>
   15a04:	00c12783          	lw	a5,12(sp)
   15a08:	00812703          	lw	a4,8(sp)
   15a0c:	000046b7          	lui	a3,0x4
   15a10:	fff68693          	addi	a3,a3,-1 # 3fff <register_fini-0xc075>
   15a14:	40e78cb3          	sub	s9,a5,a4
   15a18:	03810513          	addi	a0,sp,56
   15a1c:	000c0793          	mv	a5,s8
   15a20:	04000713          	li	a4,64
   15a24:	00dc86b3          	add	a3,s9,a3
   15a28:	00000613          	li	a2,0
   15a2c:	a28ff0ef          	jal	ra,14c54 <emdnorm>
   15a30:	03815703          	lhu	a4,56(sp)
   15a34:	01c15783          	lhu	a5,28(sp)
   15a38:	00040593          	mv	a1,s0
   15a3c:	03810513          	addi	a0,sp,56
   15a40:	40e787b3          	sub	a5,a5,a4
   15a44:	00f037b3          	snez	a5,a5
   15a48:	40f007b3          	neg	a5,a5
   15a4c:	02f11c23          	sh	a5,56(sp)
   15a50:	f70ff0ef          	jal	ra,151c0 <emovo.isra.6>
   15a54:	cf1ff06f          	j	15744 <ediv+0xcc>
   15a58:	01448713          	addi	a4,s1,20
   15a5c:	00248493          	addi	s1,s1,2
   15a60:	ffe4d783          	lhu	a5,-2(s1)
   15a64:	00240413          	addi	s0,s0,2
   15a68:	fef41f23          	sh	a5,-2(s0)
   15a6c:	fee498e3          	bne	s1,a4,15a5c <ediv+0x3e4>
   15a70:	cd5ff06f          	j	15744 <ediv+0xcc>
   15a74:	eea5fee3          	bgeu	a1,a0,15970 <ediv+0x2f8>
   15a78:	fffc8793          	addi	a5,s9,-1
   15a7c:	01079893          	slli	a7,a5,0x10
   15a80:	0108d893          	srli	a7,a7,0x10
   15a84:	00000513          	li	a0,0
   15a88:	03410593          	addi	a1,sp,52
   15a8c:	06c10613          	addi	a2,sp,108
   15a90:	00065783          	lhu	a5,0(a2)
   15a94:	0005d803          	lhu	a6,0(a1)
   15a98:	ffe60613          	addi	a2,a2,-2
   15a9c:	40a787b3          	sub	a5,a5,a0
   15aa0:	410787b3          	sub	a5,a5,a6
   15aa4:	00f61123          	sh	a5,2(a2)
   15aa8:	0107d793          	srli	a5,a5,0x10
   15aac:	ffe58593          	addi	a1,a1,-2
   15ab0:	0017f513          	andi	a0,a5,1
   15ab4:	fd461ee3          	bne	a2,s4,15a90 <ediv+0x418>
   15ab8:	03c10613          	addi	a2,sp,60
   15abc:	05810793          	addi	a5,sp,88
   15ac0:	00278793          	addi	a5,a5,2
   15ac4:	00260613          	addi	a2,a2,2
   15ac8:	ffe7d503          	lhu	a0,-2(a5)
   15acc:	ffe65583          	lhu	a1,-2(a2)
   15ad0:	00b51863          	bne	a0,a1,15ae0 <ediv+0x468>
   15ad4:	ff2796e3          	bne	a5,s2,15ac0 <ediv+0x448>
   15ad8:	00088c93          	mv	s9,a7
   15adc:	e95ff06f          	j	15970 <ediv+0x2f8>
   15ae0:	fea5fce3          	bgeu	a1,a0,15ad8 <ediv+0x460>
   15ae4:	ffec8693          	addi	a3,s9,-2
   15ae8:	01069c93          	slli	s9,a3,0x10
   15aec:	010cdc93          	srli	s9,s9,0x10
   15af0:	00000513          	li	a0,0
   15af4:	03410593          	addi	a1,sp,52
   15af8:	06c10613          	addi	a2,sp,108
   15afc:	00065783          	lhu	a5,0(a2)
   15b00:	0005d803          	lhu	a6,0(a1)
   15b04:	ffe60613          	addi	a2,a2,-2
   15b08:	40a787b3          	sub	a5,a5,a0
   15b0c:	410787b3          	sub	a5,a5,a6
   15b10:	00f61123          	sh	a5,2(a2)
   15b14:	0107d793          	srli	a5,a5,0x10
   15b18:	ffe58593          	addi	a1,a1,-2
   15b1c:	0017f513          	andi	a0,a5,1
   15b20:	fd461ee3          	bne	a2,s4,15afc <ediv+0x484>
   15b24:	e4dff06f          	j	15970 <ediv+0x2f8>
   15b28:	01440793          	addi	a5,s0,20
   15b2c:	00240413          	addi	s0,s0,2
   15b30:	fe041f23          	sh	zero,-2(s0)
   15b34:	fe879ce3          	bne	a5,s0,15b2c <ediv+0x4b4>
   15b38:	c0dff06f          	j	15744 <ediv+0xcc>
   15b3c:	01c15703          	lhu	a4,28(sp)
   15b40:	03815783          	lhu	a5,56(sp)
   15b44:	00f70463          	beq	a4,a5,15b4c <ediv+0x4d4>
   15b48:	00008637          	lui	a2,0x8
   15b4c:	00c41923          	sh	a2,18(s0)
   15b50:	01240713          	addi	a4,s0,18
   15b54:	00040793          	mv	a5,s0
   15b58:	00278793          	addi	a5,a5,2
   15b5c:	fe079f23          	sh	zero,-2(a5)
   15b60:	fef71ce3          	bne	a4,a5,15b58 <ediv+0x4e0>
   15b64:	01245783          	lhu	a5,18(s0)
   15b68:	00008737          	lui	a4,0x8
   15b6c:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   15b70:	00e7e7b3          	or	a5,a5,a4
   15b74:	00f41923          	sh	a5,18(s0)
   15b78:	bcdff06f          	j	15744 <ediv+0xcc>

00015b7c <e113toe.isra.8>:
   15b7c:	fd010113          	addi	sp,sp,-48
   15b80:	02812423          	sw	s0,40(sp)
   15b84:	02112623          	sw	ra,44(sp)
   15b88:	00058413          	mv	s0,a1
   15b8c:	00410793          	addi	a5,sp,4
   15b90:	01e10713          	addi	a4,sp,30
   15b94:	00278793          	addi	a5,a5,2
   15b98:	fe079f23          	sh	zero,-2(a5)
   15b9c:	fee79ce3          	bne	a5,a4,15b94 <e113toe.isra.8+0x18>
   15ba0:	00e55603          	lhu	a2,14(a0)
   15ba4:	01061793          	slli	a5,a2,0x10
   15ba8:	4107d793          	srai	a5,a5,0x10
   15bac:	0607ca63          	bltz	a5,15c20 <e113toe.isra.8+0xa4>
   15bb0:	000087b7          	lui	a5,0x8
   15bb4:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   15bb8:	00011223          	sh	zero,4(sp)
   15bbc:	00f67633          	and	a2,a2,a5
   15bc0:	06f60c63          	beq	a2,a5,15c38 <e113toe.isra.8+0xbc>
   15bc4:	00e50793          	addi	a5,a0,14
   15bc8:	00c11323          	sh	a2,6(sp)
   15bcc:	00a10713          	addi	a4,sp,10
   15bd0:	ffe78793          	addi	a5,a5,-2
   15bd4:	0007d683          	lhu	a3,0(a5)
   15bd8:	00270713          	addi	a4,a4,2
   15bdc:	fed71f23          	sh	a3,-2(a4)
   15be0:	fef518e3          	bne	a0,a5,15bd0 <e113toe.isra.8+0x54>
   15be4:	02061263          	bnez	a2,15c08 <e113toe.isra.8+0x8c>
   15be8:	00011423          	sh	zero,8(sp)
   15bec:	00040593          	mv	a1,s0
   15bf0:	00410513          	addi	a0,sp,4
   15bf4:	dccff0ef          	jal	ra,151c0 <emovo.isra.6>
   15bf8:	02c12083          	lw	ra,44(sp)
   15bfc:	02812403          	lw	s0,40(sp)
   15c00:	03010113          	addi	sp,sp,48
   15c04:	00008067          	ret
   15c08:	00100793          	li	a5,1
   15c0c:	fff00593          	li	a1,-1
   15c10:	00410513          	addi	a0,sp,4
   15c14:	00f11423          	sh	a5,8(sp)
   15c18:	d15fe0ef          	jal	ra,1492c <eshift.part.3>
   15c1c:	fd1ff06f          	j	15bec <e113toe.isra.8+0x70>
   15c20:	fff00793          	li	a5,-1
   15c24:	00f11223          	sh	a5,4(sp)
   15c28:	000087b7          	lui	a5,0x8
   15c2c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   15c30:	00f67633          	and	a2,a2,a5
   15c34:	f8f618e3          	bne	a2,a5,15bc4 <e113toe.isra.8+0x48>
   15c38:	00050793          	mv	a5,a0
   15c3c:	00e50693          	addi	a3,a0,14
   15c40:	0007d703          	lhu	a4,0(a5)
   15c44:	00278793          	addi	a5,a5,2
   15c48:	04071c63          	bnez	a4,15ca0 <e113toe.isra.8+0x124>
   15c4c:	fef69ae3          	bne	a3,a5,15c40 <e113toe.isra.8+0xc4>
   15c50:	01440713          	addi	a4,s0,20
   15c54:	00040793          	mv	a5,s0
   15c58:	00278793          	addi	a5,a5,2
   15c5c:	fe079f23          	sh	zero,-2(a5)
   15c60:	fee79ce3          	bne	a5,a4,15c58 <e113toe.isra.8+0xdc>
   15c64:	01240713          	addi	a4,s0,18
   15c68:	00040793          	mv	a5,s0
   15c6c:	00278793          	addi	a5,a5,2
   15c70:	fe079f23          	sh	zero,-2(a5)
   15c74:	fee79ce3          	bne	a5,a4,15c6c <e113toe.isra.8+0xf0>
   15c78:	01245783          	lhu	a5,18(s0)
   15c7c:	00008737          	lui	a4,0x8
   15c80:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   15c84:	00e7e7b3          	or	a5,a5,a4
   15c88:	00f41923          	sh	a5,18(s0)
   15c8c:	00e51783          	lh	a5,14(a0)
   15c90:	f607d4e3          	bgez	a5,15bf8 <e113toe.isra.8+0x7c>
   15c94:	00040513          	mv	a0,s0
   15c98:	9e9fe0ef          	jal	ra,14680 <eneg>
   15c9c:	f5dff06f          	j	15bf8 <e113toe.isra.8+0x7c>
   15ca0:	01040713          	addi	a4,s0,16
   15ca4:	00040793          	mv	a5,s0
   15ca8:	00278793          	addi	a5,a5,2
   15cac:	fe079f23          	sh	zero,-2(a5)
   15cb0:	fee79ce3          	bne	a5,a4,15ca8 <e113toe.isra.8+0x12c>
   15cb4:	7fffc7b7          	lui	a5,0x7fffc
   15cb8:	00f42823          	sw	a5,16(s0)
   15cbc:	f3dff06f          	j	15bf8 <e113toe.isra.8+0x7c>

00015cc0 <_ldtoa_r>:
   15cc0:	0005ae83          	lw	t4,0(a1)
   15cc4:	0045ae03          	lw	t3,4(a1)
   15cc8:	0085a303          	lw	t1,8(a1)
   15ccc:	00c5a583          	lw	a1,12(a1)
   15cd0:	e1010113          	addi	sp,sp,-496
   15cd4:	04052883          	lw	a7,64(a0)
   15cd8:	02b12e23          	sw	a1,60(sp)
   15cdc:	fff00593          	li	a1,-1
   15ce0:	16b12023          	sw	a1,352(sp)
   15ce4:	09000593          	li	a1,144
   15ce8:	1e812423          	sw	s0,488(sp)
   15cec:	1d612823          	sw	s6,464(sp)
   15cf0:	1e112623          	sw	ra,492(sp)
   15cf4:	1e912223          	sw	s1,484(sp)
   15cf8:	1f212023          	sw	s2,480(sp)
   15cfc:	1d312e23          	sw	s3,476(sp)
   15d00:	1d412c23          	sw	s4,472(sp)
   15d04:	1d512a23          	sw	s5,468(sp)
   15d08:	1d712623          	sw	s7,460(sp)
   15d0c:	1d812423          	sw	s8,456(sp)
   15d10:	1d912223          	sw	s9,452(sp)
   15d14:	1da12023          	sw	s10,448(sp)
   15d18:	1bb12e23          	sw	s11,444(sp)
   15d1c:	03d12823          	sw	t4,48(sp)
   15d20:	03c12a23          	sw	t3,52(sp)
   15d24:	02612c23          	sw	t1,56(sp)
   15d28:	16b12223          	sw	a1,356(sp)
   15d2c:	00c12423          	sw	a2,8(sp)
   15d30:	00d12823          	sw	a3,16(sp)
   15d34:	00e12a23          	sw	a4,20(sp)
   15d38:	03012023          	sw	a6,32(sp)
   15d3c:	00050b13          	mv	s6,a0
   15d40:	00078413          	mv	s0,a5
   15d44:	02088263          	beqz	a7,15d68 <_ldtoa_r+0xa8>
   15d48:	04452703          	lw	a4,68(a0)
   15d4c:	00100793          	li	a5,1
   15d50:	00088593          	mv	a1,a7
   15d54:	00e797b3          	sll	a5,a5,a4
   15d58:	00e8a223          	sw	a4,4(a7)
   15d5c:	00f8a423          	sw	a5,8(a7)
   15d60:	725010ef          	jal	ra,17c84 <_Bfree>
   15d64:	040b2023          	sw	zero,64(s6)
   15d68:	06010a13          	addi	s4,sp,96
   15d6c:	000a0593          	mv	a1,s4
   15d70:	03010513          	addi	a0,sp,48
   15d74:	e09ff0ef          	jal	ra,15b7c <e113toe.isra.8>
   15d78:	000a0513          	mv	a0,s4
   15d7c:	951fe0ef          	jal	ra,146cc <eisneg>
   15d80:	00812703          	lw	a4,8(sp)
   15d84:	00a03533          	snez	a0,a0
   15d88:	00a42023          	sw	a0,0(s0)
   15d8c:	00300793          	li	a5,3
   15d90:	1af704e3          	beq	a4,a5,16738 <_ldtoa_r+0xa78>
   15d94:	01400793          	li	a5,20
   15d98:	00f12623          	sw	a5,12(sp)
   15d9c:	600710e3          	bnez	a4,16b9c <_ldtoa_r+0xedc>
   15da0:	07215783          	lhu	a5,114(sp)
   15da4:	16412703          	lw	a4,356(sp)
   15da8:	fff7c793          	not	a5,a5
   15dac:	00e12e23          	sw	a4,28(sp)
   15db0:	01179713          	slli	a4,a5,0x11
   15db4:	00071863          	bnez	a4,15dc4 <_ldtoa_r+0x104>
   15db8:	000a0513          	mv	a0,s4
   15dbc:	8a1fe0ef          	jal	ra,1465c <eisnan.part.0>
   15dc0:	420514e3          	bnez	a0,169e8 <_ldtoa_r+0xd28>
   15dc4:	09000793          	li	a5,144
   15dc8:	16f12223          	sw	a5,356(sp)
   15dcc:	07c10713          	addi	a4,sp,124
   15dd0:	000a0793          	mv	a5,s4
   15dd4:	07410613          	addi	a2,sp,116
   15dd8:	00278793          	addi	a5,a5,2 # 7fffc002 <__BSS_END__+0x7ffd551a>
   15ddc:	ffe7d683          	lhu	a3,-2(a5)
   15de0:	00270713          	addi	a4,a4,2
   15de4:	fed71f23          	sh	a3,-2(a4)
   15de8:	fec798e3          	bne	a5,a2,15dd8 <_ldtoa_r+0x118>
   15dec:	08e15603          	lhu	a2,142(sp)
   15df0:	00012c23          	sw	zero,24(sp)
   15df4:	01061793          	slli	a5,a2,0x10
   15df8:	4107d793          	srai	a5,a5,0x10
   15dfc:	0007de63          	bgez	a5,15e18 <_ldtoa_r+0x158>
   15e00:	01161613          	slli	a2,a2,0x11
   15e04:	000107b7          	lui	a5,0x10
   15e08:	01165613          	srli	a2,a2,0x11
   15e0c:	fff78793          	addi	a5,a5,-1 # ffff <register_fini-0x75>
   15e10:	08c11723          	sh	a2,142(sp)
   15e14:	00f12c23          	sw	a5,24(sp)
   15e18:	00000693          	li	a3,0
   15e1c:	09810793          	addi	a5,sp,152
   15e20:	0000f717          	auipc	a4,0xf
   15e24:	fec70713          	addi	a4,a4,-20 # 24e0c <eone>
   15e28:	0ac10d93          	addi	s11,sp,172
   15e2c:	0080006f          	j	15e34 <_ldtoa_r+0x174>
   15e30:	00075683          	lhu	a3,0(a4)
   15e34:	00278793          	addi	a5,a5,2
   15e38:	fed79f23          	sh	a3,-2(a5)
   15e3c:	00270713          	addi	a4,a4,2
   15e40:	ffb798e3          	bne	a5,s11,15e30 <_ldtoa_r+0x170>
   15e44:	16060663          	beqz	a2,15fb0 <_ldtoa_r+0x2f0>
   15e48:	000087b7          	lui	a5,0x8
   15e4c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   15e50:	58f602e3          	beq	a2,a5,16bd4 <_ldtoa_r+0xf14>
   15e54:	08c11783          	lh	a5,140(sp)
   15e58:	6007d4e3          	bgez	a5,16c60 <_ldtoa_r+0xfa0>
   15e5c:	07c10593          	addi	a1,sp,124
   15e60:	0000f517          	auipc	a0,0xf
   15e64:	fac50513          	addi	a0,a0,-84 # 24e0c <eone>
   15e68:	98dfe0ef          	jal	ra,147f4 <ecmp>
   15e6c:	14050e63          	beqz	a0,15fc8 <_ldtoa_r+0x308>
   15e70:	0e054ae3          	bltz	a0,16764 <_ldtoa_r+0xaa4>
   15e74:	08e15783          	lhu	a5,142(sp)
   15e78:	680790e3          	bnez	a5,16cf8 <_ldtoa_r+0x1038>
   15e7c:	08c11783          	lh	a5,140(sp)
   15e80:	00000493          	li	s1,0
   15e84:	16010993          	addi	s3,sp,352
   15e88:	0207c663          	bltz	a5,15eb4 <_ldtoa_r+0x1f4>
   15e8c:	0000f417          	auipc	s0,0xf
   15e90:	08440413          	addi	s0,s0,132 # 24f10 <etens+0xf0>
   15e94:	07c10613          	addi	a2,sp,124
   15e98:	00098693          	mv	a3,s3
   15e9c:	00060593          	mv	a1,a2
   15ea0:	00040513          	mv	a0,s0
   15ea4:	bccff0ef          	jal	ra,15270 <emul>
   15ea8:	08c11783          	lh	a5,140(sp)
   15eac:	fff48493          	addi	s1,s1,-1
   15eb0:	fe07d2e3          	bgez	a5,15e94 <_ldtoa_r+0x1d4>
   15eb4:	0d010413          	addi	s0,sp,208
   15eb8:	0e810b93          	addi	s7,sp,232
   15ebc:	00040713          	mv	a4,s0
   15ec0:	07c10793          	addi	a5,sp,124
   15ec4:	09010613          	addi	a2,sp,144
   15ec8:	00278793          	addi	a5,a5,2
   15ecc:	ffe7d683          	lhu	a3,-2(a5)
   15ed0:	00270713          	addi	a4,a4,2
   15ed4:	fed71f23          	sh	a3,-2(a4)
   15ed8:	fec798e3          	bne	a5,a2,15ec8 <_ldtoa_r+0x208>
   15edc:	00000693          	li	a3,0
   15ee0:	09810793          	addi	a5,sp,152
   15ee4:	0000f717          	auipc	a4,0xf
   15ee8:	f2870713          	addi	a4,a4,-216 # 24e0c <eone>
   15eec:	0080006f          	j	15ef4 <_ldtoa_r+0x234>
   15ef0:	00075683          	lhu	a3,0(a4)
   15ef4:	00278793          	addi	a5,a5,2
   15ef8:	fed79f23          	sh	a3,-2(a5)
   15efc:	00270713          	addi	a4,a4,2
   15f00:	ffb798e3          	bne	a5,s11,15ef0 <_ldtoa_r+0x230>
   15f04:	fffff937          	lui	s2,0xfffff
   15f08:	0000fa97          	auipc	s5,0xf
   15f0c:	f18a8a93          	addi	s5,s5,-232 # 24e20 <etens>
   15f10:	0000fc97          	auipc	s9,0xf
   15f14:	014c8c93          	addi	s9,s9,20 # 24f24 <emtens>
   15f18:	0000fd17          	auipc	s10,0xf
   15f1c:	ef4d0d13          	addi	s10,s10,-268 # 24e0c <eone>
   15f20:	0000fd97          	auipc	s11,0xf
   15f24:	ff0d8d93          	addi	s11,s11,-16 # 24f10 <etens+0xf0>
   15f28:	00c0006f          	j	15f34 <_ldtoa_r+0x274>
   15f2c:	014c8c93          	addi	s9,s9,20
   15f30:	014a8a93          	addi	s5,s5,20
   15f34:	00040593          	mv	a1,s0
   15f38:	000d0513          	mv	a0,s10
   15f3c:	8b9fe0ef          	jal	ra,147f4 <ecmp>
   15f40:	00040593          	mv	a1,s0
   15f44:	04a05663          	blez	a0,15f90 <_ldtoa_r+0x2d0>
   15f48:	000c8513          	mv	a0,s9
   15f4c:	8a9fe0ef          	jal	ra,147f4 <ecmp>
   15f50:	00098693          	mv	a3,s3
   15f54:	00040613          	mv	a2,s0
   15f58:	00040593          	mv	a1,s0
   15f5c:	02054263          	bltz	a0,15f80 <_ldtoa_r+0x2c0>
   15f60:	000a8513          	mv	a0,s5
   15f64:	b0cff0ef          	jal	ra,15270 <emul>
   15f68:	09810613          	addi	a2,sp,152
   15f6c:	00098693          	mv	a3,s3
   15f70:	00060593          	mv	a1,a2
   15f74:	000a8513          	mv	a0,s5
   15f78:	af8ff0ef          	jal	ra,15270 <emul>
   15f7c:	012484b3          	add	s1,s1,s2
   15f80:	01f95793          	srli	a5,s2,0x1f
   15f84:	01278933          	add	s2,a5,s2
   15f88:	40195913          	srai	s2,s2,0x1
   15f8c:	fbba90e3          	bne	s5,s11,15f2c <_ldtoa_r+0x26c>
   15f90:	09810613          	addi	a2,sp,152
   15f94:	00098693          	mv	a3,s3
   15f98:	0000f597          	auipc	a1,0xf
   15f9c:	e7458593          	addi	a1,a1,-396 # 24e0c <eone>
   15fa0:	00060513          	mv	a0,a2
   15fa4:	ed4ff0ef          	jal	ra,15678 <ediv>
   15fa8:	12410913          	addi	s2,sp,292
   15fac:	0300006f          	j	15fdc <_ldtoa_r+0x31c>
   15fb0:	07c10793          	addi	a5,sp,124
   15fb4:	08e10693          	addi	a3,sp,142
   15fb8:	0007d703          	lhu	a4,0(a5)
   15fbc:	00278793          	addi	a5,a5,2
   15fc0:	e8071ee3          	bnez	a4,15e5c <_ldtoa_r+0x19c>
   15fc4:	fef69ae3          	bne	a3,a5,15fb8 <_ldtoa_r+0x2f8>
   15fc8:	00000493          	li	s1,0
   15fcc:	12410913          	addi	s2,sp,292
   15fd0:	16010993          	addi	s3,sp,352
   15fd4:	0d010413          	addi	s0,sp,208
   15fd8:	0e810b93          	addi	s7,sp,232
   15fdc:	00040593          	mv	a1,s0
   15fe0:	09810513          	addi	a0,sp,152
   15fe4:	f28fe0ef          	jal	ra,1470c <emovi>
   15fe8:	09810713          	addi	a4,sp,152
   15fec:	00040793          	mv	a5,s0
   15ff0:	00278793          	addi	a5,a5,2
   15ff4:	ffe7d683          	lhu	a3,-2(a5)
   15ff8:	00270713          	addi	a4,a4,2
   15ffc:	fed71f23          	sh	a3,-2(a4)
   16000:	ff7798e3          	bne	a5,s7,15ff0 <_ldtoa_r+0x330>
   16004:	00040593          	mv	a1,s0
   16008:	07c10513          	addi	a0,sp,124
   1600c:	0a011823          	sh	zero,176(sp)
   16010:	efcfe0ef          	jal	ra,1470c <emovi>
   16014:	07c10793          	addi	a5,sp,124
   16018:	00240413          	addi	s0,s0,2
   1601c:	ffe45703          	lhu	a4,-2(s0)
   16020:	00278793          	addi	a5,a5,2
   16024:	fee79f23          	sh	a4,-2(a5)
   16028:	ff7418e3          	bne	s0,s7,16018 <_ldtoa_r+0x358>
   1602c:	09810513          	addi	a0,sp,152
   16030:	00098613          	mv	a2,s3
   16034:	07c10593          	addi	a1,sp,124
   16038:	08011a23          	sh	zero,148(sp)
   1603c:	820ff0ef          	jal	ra,1505c <eiremain>
   16040:	1ac15503          	lhu	a0,428(sp)
   16044:	1c051863          	bnez	a0,16214 <_ldtoa_r+0x554>
   16048:	0000fa97          	auipc	s5,0xf
   1604c:	db0a8a93          	addi	s5,s5,-592 # 24df8 <ezero>
   16050:	09410d13          	addi	s10,sp,148
   16054:	07e10413          	addi	s0,sp,126
   16058:	0b610c93          	addi	s9,sp,182
   1605c:	000a8593          	mv	a1,s5
   16060:	07c10513          	addi	a0,sp,124
   16064:	f90fe0ef          	jal	ra,147f4 <ecmp>
   16068:	1a050663          	beqz	a0,16214 <_ldtoa_r+0x554>
   1606c:	00000713          	li	a4,0
   16070:	000d0693          	mv	a3,s10
   16074:	01c0006f          	j	16090 <_ldtoa_r+0x3d0>
   16078:	00171713          	slli	a4,a4,0x1
   1607c:	00f69023          	sh	a5,0(a3)
   16080:	01071713          	slli	a4,a4,0x10
   16084:	ffe68693          	addi	a3,a3,-2
   16088:	01075713          	srli	a4,a4,0x10
   1608c:	04868463          	beq	a3,s0,160d4 <_ldtoa_r+0x414>
   16090:	0006d783          	lhu	a5,0(a3)
   16094:	01079613          	slli	a2,a5,0x10
   16098:	41065613          	srai	a2,a2,0x10
   1609c:	00179793          	slli	a5,a5,0x1
   160a0:	00065463          	bgez	a2,160a8 <_ldtoa_r+0x3e8>
   160a4:	00176713          	ori	a4,a4,1
   160a8:	01079793          	slli	a5,a5,0x10
   160ac:	0107d793          	srli	a5,a5,0x10
   160b0:	00277613          	andi	a2,a4,2
   160b4:	0017e593          	ori	a1,a5,1
   160b8:	fc0600e3          	beqz	a2,16078 <_ldtoa_r+0x3b8>
   160bc:	00171713          	slli	a4,a4,0x1
   160c0:	00b69023          	sh	a1,0(a3)
   160c4:	01071713          	slli	a4,a4,0x10
   160c8:	ffe68693          	addi	a3,a3,-2
   160cc:	01075713          	srli	a4,a4,0x10
   160d0:	fc8690e3          	bne	a3,s0,16090 <_ldtoa_r+0x3d0>
   160d4:	0b410713          	addi	a4,sp,180
   160d8:	07c10793          	addi	a5,sp,124
   160dc:	00278793          	addi	a5,a5,2
   160e0:	ffe7d683          	lhu	a3,-2(a5)
   160e4:	00270713          	addi	a4,a4,2
   160e8:	fed71f23          	sh	a3,-2(a4)
   160ec:	ffa798e3          	bne	a5,s10,160dc <_ldtoa_r+0x41c>
   160f0:	0c011623          	sh	zero,204(sp)
   160f4:	00000713          	li	a4,0
   160f8:	0cc10693          	addi	a3,sp,204
   160fc:	01c0006f          	j	16118 <_ldtoa_r+0x458>
   16100:	00171713          	slli	a4,a4,0x1
   16104:	00f69023          	sh	a5,0(a3)
   16108:	01071713          	slli	a4,a4,0x10
   1610c:	ffe68693          	addi	a3,a3,-2
   16110:	01075713          	srli	a4,a4,0x10
   16114:	05968463          	beq	a3,s9,1615c <_ldtoa_r+0x49c>
   16118:	0006d783          	lhu	a5,0(a3)
   1611c:	01079613          	slli	a2,a5,0x10
   16120:	41065613          	srai	a2,a2,0x10
   16124:	00179793          	slli	a5,a5,0x1
   16128:	00065463          	bgez	a2,16130 <_ldtoa_r+0x470>
   1612c:	00176713          	ori	a4,a4,1
   16130:	01079793          	slli	a5,a5,0x10
   16134:	0107d793          	srli	a5,a5,0x10
   16138:	00277613          	andi	a2,a4,2
   1613c:	0017e593          	ori	a1,a5,1
   16140:	fc0600e3          	beqz	a2,16100 <_ldtoa_r+0x440>
   16144:	00171713          	slli	a4,a4,0x1
   16148:	00b69023          	sh	a1,0(a3)
   1614c:	01071713          	slli	a4,a4,0x10
   16150:	ffe68693          	addi	a3,a3,-2
   16154:	01075713          	srli	a4,a4,0x10
   16158:	fd9690e3          	bne	a3,s9,16118 <_ldtoa_r+0x458>
   1615c:	00000713          	li	a4,0
   16160:	0cc10693          	addi	a3,sp,204
   16164:	01c0006f          	j	16180 <_ldtoa_r+0x4c0>
   16168:	00171713          	slli	a4,a4,0x1
   1616c:	00f69023          	sh	a5,0(a3)
   16170:	01071713          	slli	a4,a4,0x10
   16174:	ffe68693          	addi	a3,a3,-2
   16178:	01075713          	srli	a4,a4,0x10
   1617c:	05968463          	beq	a3,s9,161c4 <_ldtoa_r+0x504>
   16180:	0006d783          	lhu	a5,0(a3)
   16184:	01079613          	slli	a2,a5,0x10
   16188:	41065613          	srai	a2,a2,0x10
   1618c:	00179793          	slli	a5,a5,0x1
   16190:	00065463          	bgez	a2,16198 <_ldtoa_r+0x4d8>
   16194:	00176713          	ori	a4,a4,1
   16198:	01079793          	slli	a5,a5,0x10
   1619c:	0107d793          	srli	a5,a5,0x10
   161a0:	00277613          	andi	a2,a4,2
   161a4:	0017e593          	ori	a1,a5,1
   161a8:	fc0600e3          	beqz	a2,16168 <_ldtoa_r+0x4a8>
   161ac:	00171713          	slli	a4,a4,0x1
   161b0:	00b69023          	sh	a1,0(a3)
   161b4:	01071713          	slli	a4,a4,0x10
   161b8:	ffe68693          	addi	a3,a3,-2
   161bc:	01075713          	srli	a4,a4,0x10
   161c0:	fd9690e3          	bne	a3,s9,16180 <_ldtoa_r+0x4c0>
   161c4:	00000613          	li	a2,0
   161c8:	000d0693          	mv	a3,s10
   161cc:	0cc10713          	addi	a4,sp,204
   161d0:	0006d583          	lhu	a1,0(a3)
   161d4:	00075783          	lhu	a5,0(a4)
   161d8:	ffe68693          	addi	a3,a3,-2
   161dc:	ffe70713          	addi	a4,a4,-2
   161e0:	00b787b3          	add	a5,a5,a1
   161e4:	00c787b3          	add	a5,a5,a2
   161e8:	00f69123          	sh	a5,2(a3)
   161ec:	0107d793          	srli	a5,a5,0x10
   161f0:	0017f613          	andi	a2,a5,1
   161f4:	fd971ee3          	bne	a4,s9,161d0 <_ldtoa_r+0x510>
   161f8:	09810513          	addi	a0,sp,152
   161fc:	00098613          	mv	a2,s3
   16200:	07c10593          	addi	a1,sp,124
   16204:	e59fe0ef          	jal	ra,1505c <eiremain>
   16208:	1ac15503          	lhu	a0,428(sp)
   1620c:	fff48493          	addi	s1,s1,-1
   16210:	e40506e3          	beqz	a0,1605c <_ldtoa_r+0x39c>
   16214:	01812783          	lw	a5,24(sp)
   16218:	00812703          	lw	a4,8(sp)
   1621c:	00c12403          	lw	s0,12(sp)
   16220:	00f037b3          	snez	a5,a5
   16224:	40f007b3          	neg	a5,a5
   16228:	00d7f793          	andi	a5,a5,13
   1622c:	02078793          	addi	a5,a5,32
   16230:	12f10223          	sb	a5,292(sp)
   16234:	00300793          	li	a5,3
   16238:	02f70463          	beq	a4,a5,16260 <_ldtoa_r+0x5a0>
   1623c:	00a00793          	li	a5,10
   16240:	1ef502e3          	beq	a0,a5,16c24 <_ldtoa_r+0xf64>
   16244:	03050513          	addi	a0,a0,48
   16248:	02e00793          	li	a5,46
   1624c:	12a102a3          	sb	a0,293(sp)
   16250:	12f10323          	sb	a5,294(sp)
   16254:	78044263          	bltz	s0,169d8 <_ldtoa_r+0xd18>
   16258:	12710c93          	addi	s9,sp,295
   1625c:	0300006f          	j	1628c <_ldtoa_r+0x5cc>
   16260:	00940433          	add	s0,s0,s1
   16264:	02a00793          	li	a5,42
   16268:	fc87dae3          	bge	a5,s0,1623c <_ldtoa_r+0x57c>
   1626c:	00a00793          	li	a5,10
   16270:	18f506e3          	beq	a0,a5,16bfc <_ldtoa_r+0xf3c>
   16274:	03050513          	addi	a0,a0,48
   16278:	02e00793          	li	a5,46
   1627c:	12a102a3          	sb	a0,293(sp)
   16280:	12f10323          	sb	a5,294(sp)
   16284:	02a00413          	li	s0,42
   16288:	12710c93          	addi	s9,sp,295
   1628c:	00000c13          	li	s8,0
   16290:	0b410a93          	addi	s5,sp,180
   16294:	09410d93          	addi	s11,sp,148
   16298:	07e10b93          	addi	s7,sp,126
   1629c:	0b610d13          	addi	s10,sp,182
   162a0:	00000713          	li	a4,0
   162a4:	000d8693          	mv	a3,s11
   162a8:	01c0006f          	j	162c4 <_ldtoa_r+0x604>
   162ac:	00171713          	slli	a4,a4,0x1
   162b0:	00f69023          	sh	a5,0(a3)
   162b4:	01071713          	slli	a4,a4,0x10
   162b8:	ffe68693          	addi	a3,a3,-2
   162bc:	01075713          	srli	a4,a4,0x10
   162c0:	05768463          	beq	a3,s7,16308 <_ldtoa_r+0x648>
   162c4:	0006d783          	lhu	a5,0(a3)
   162c8:	01079613          	slli	a2,a5,0x10
   162cc:	41065613          	srai	a2,a2,0x10
   162d0:	00179793          	slli	a5,a5,0x1
   162d4:	00065463          	bgez	a2,162dc <_ldtoa_r+0x61c>
   162d8:	00176713          	ori	a4,a4,1
   162dc:	01079793          	slli	a5,a5,0x10
   162e0:	0107d793          	srli	a5,a5,0x10
   162e4:	00277613          	andi	a2,a4,2
   162e8:	0017e593          	ori	a1,a5,1
   162ec:	fc0600e3          	beqz	a2,162ac <_ldtoa_r+0x5ec>
   162f0:	00171713          	slli	a4,a4,0x1
   162f4:	00b69023          	sh	a1,0(a3)
   162f8:	01071713          	slli	a4,a4,0x10
   162fc:	ffe68693          	addi	a3,a3,-2
   16300:	01075713          	srli	a4,a4,0x10
   16304:	fd7690e3          	bne	a3,s7,162c4 <_ldtoa_r+0x604>
   16308:	000a8713          	mv	a4,s5
   1630c:	07c10793          	addi	a5,sp,124
   16310:	00278793          	addi	a5,a5,2
   16314:	ffe7d683          	lhu	a3,-2(a5)
   16318:	00270713          	addi	a4,a4,2
   1631c:	fed71f23          	sh	a3,-2(a4)
   16320:	ffb798e3          	bne	a5,s11,16310 <_ldtoa_r+0x650>
   16324:	0c011623          	sh	zero,204(sp)
   16328:	00000713          	li	a4,0
   1632c:	0cc10693          	addi	a3,sp,204
   16330:	01c0006f          	j	1634c <_ldtoa_r+0x68c>
   16334:	00171713          	slli	a4,a4,0x1
   16338:	00f69023          	sh	a5,0(a3)
   1633c:	01071713          	slli	a4,a4,0x10
   16340:	ffe68693          	addi	a3,a3,-2
   16344:	01075713          	srli	a4,a4,0x10
   16348:	05a68463          	beq	a3,s10,16390 <_ldtoa_r+0x6d0>
   1634c:	0006d783          	lhu	a5,0(a3)
   16350:	01079613          	slli	a2,a5,0x10
   16354:	41065613          	srai	a2,a2,0x10
   16358:	00179793          	slli	a5,a5,0x1
   1635c:	00065463          	bgez	a2,16364 <_ldtoa_r+0x6a4>
   16360:	00176713          	ori	a4,a4,1
   16364:	01079793          	slli	a5,a5,0x10
   16368:	0107d793          	srli	a5,a5,0x10
   1636c:	00277613          	andi	a2,a4,2
   16370:	0017e593          	ori	a1,a5,1
   16374:	fc0600e3          	beqz	a2,16334 <_ldtoa_r+0x674>
   16378:	00171713          	slli	a4,a4,0x1
   1637c:	00b69023          	sh	a1,0(a3)
   16380:	01071713          	slli	a4,a4,0x10
   16384:	ffe68693          	addi	a3,a3,-2
   16388:	01075713          	srli	a4,a4,0x10
   1638c:	fda690e3          	bne	a3,s10,1634c <_ldtoa_r+0x68c>
   16390:	00000713          	li	a4,0
   16394:	0cc10693          	addi	a3,sp,204
   16398:	01c0006f          	j	163b4 <_ldtoa_r+0x6f4>
   1639c:	00171713          	slli	a4,a4,0x1
   163a0:	00f69023          	sh	a5,0(a3)
   163a4:	01071713          	slli	a4,a4,0x10
   163a8:	ffe68693          	addi	a3,a3,-2
   163ac:	01075713          	srli	a4,a4,0x10
   163b0:	05a68463          	beq	a3,s10,163f8 <_ldtoa_r+0x738>
   163b4:	0006d783          	lhu	a5,0(a3)
   163b8:	01079613          	slli	a2,a5,0x10
   163bc:	41065613          	srai	a2,a2,0x10
   163c0:	00179793          	slli	a5,a5,0x1
   163c4:	00065463          	bgez	a2,163cc <_ldtoa_r+0x70c>
   163c8:	00176713          	ori	a4,a4,1
   163cc:	01079793          	slli	a5,a5,0x10
   163d0:	0107d793          	srli	a5,a5,0x10
   163d4:	00277613          	andi	a2,a4,2
   163d8:	0017e593          	ori	a1,a5,1
   163dc:	fc0600e3          	beqz	a2,1639c <_ldtoa_r+0x6dc>
   163e0:	00171713          	slli	a4,a4,0x1
   163e4:	00b69023          	sh	a1,0(a3)
   163e8:	01071713          	slli	a4,a4,0x10
   163ec:	ffe68693          	addi	a3,a3,-2
   163f0:	01075713          	srli	a4,a4,0x10
   163f4:	fda690e3          	bne	a3,s10,163b4 <_ldtoa_r+0x6f4>
   163f8:	00000613          	li	a2,0
   163fc:	000d8693          	mv	a3,s11
   16400:	0cc10713          	addi	a4,sp,204
   16404:	0006d583          	lhu	a1,0(a3)
   16408:	00075783          	lhu	a5,0(a4)
   1640c:	ffe68693          	addi	a3,a3,-2
   16410:	ffe70713          	addi	a4,a4,-2
   16414:	00b787b3          	add	a5,a5,a1
   16418:	00c787b3          	add	a5,a5,a2
   1641c:	00f69123          	sh	a5,2(a3)
   16420:	0107d793          	srli	a5,a5,0x10
   16424:	0017f613          	andi	a2,a5,1
   16428:	fda71ee3          	bne	a4,s10,16404 <_ldtoa_r+0x744>
   1642c:	00098613          	mv	a2,s3
   16430:	07c10593          	addi	a1,sp,124
   16434:	09810513          	addi	a0,sp,152
   16438:	c25fe0ef          	jal	ra,1505c <eiremain>
   1643c:	1ac15783          	lhu	a5,428(sp)
   16440:	018c8733          	add	a4,s9,s8
   16444:	001c0c13          	addi	s8,s8,1
   16448:	03078693          	addi	a3,a5,48
   1644c:	00d70023          	sb	a3,0(a4)
   16450:	e58458e3          	bge	s0,s8,162a0 <_ldtoa_r+0x5e0>
   16454:	00140993          	addi	s3,s0,1
   16458:	013c89b3          	add	s3,s9,s3
   1645c:	008c8cb3          	add	s9,s9,s0
   16460:	00400713          	li	a4,4
   16464:	06f75e63          	bge	a4,a5,164e0 <_ldtoa_r+0x820>
   16468:	00500713          	li	a4,5
   1646c:	00e78ae3          	beq	a5,a4,16c80 <_ldtoa_r+0xfc0>
   16470:	ffe9c783          	lbu	a5,-2(s3)
   16474:	ffe98713          	addi	a4,s3,-2
   16478:	07f7f793          	andi	a5,a5,127
   1647c:	7c044a63          	bltz	s0,16c50 <_ldtoa_r+0xf90>
   16480:	02e00693          	li	a3,46
   16484:	04d78263          	beq	a5,a3,164c8 <_ldtoa_r+0x808>
   16488:	00178693          	addi	a3,a5,1
   1648c:	00d70023          	sb	a3,0(a4)
   16490:	03800693          	li	a3,56
   16494:	03000593          	li	a1,48
   16498:	02e00613          	li	a2,46
   1649c:	03800513          	li	a0,56
   164a0:	00f6c863          	blt	a3,a5,164b0 <_ldtoa_r+0x7f0>
   164a4:	03c0006f          	j	164e0 <_ldtoa_r+0x820>
   164a8:	00d70023          	sb	a3,0(a4)
   164ac:	02f57a63          	bgeu	a0,a5,164e0 <_ldtoa_r+0x820>
   164b0:	00b70023          	sb	a1,0(a4)
   164b4:	fff70713          	addi	a4,a4,-1
   164b8:	00074783          	lbu	a5,0(a4)
   164bc:	07f7f793          	andi	a5,a5,127
   164c0:	00178693          	addi	a3,a5,1
   164c4:	fec792e3          	bne	a5,a2,164a8 <_ldtoa_r+0x7e8>
   164c8:	fff74783          	lbu	a5,-1(a4)
   164cc:	03800693          	li	a3,56
   164d0:	00f6fee3          	bgeu	a3,a5,16cec <_ldtoa_r+0x102c>
   164d4:	03100793          	li	a5,49
   164d8:	00148493          	addi	s1,s1,1
   164dc:	fef70fa3          	sb	a5,-1(a4)
   164e0:	00048613          	mv	a2,s1
   164e4:	0000f597          	auipc	a1,0xf
   164e8:	b8c58593          	addi	a1,a1,-1140 # 25070 <bmask+0x48>
   164ec:	000c8513          	mv	a0,s9
   164f0:	10d020ef          	jal	ra,18dfc <sprintf>
   164f4:	07215783          	lhu	a5,114(sp)
   164f8:	01c12703          	lw	a4,28(sp)
   164fc:	16912823          	sw	s1,368(sp)
   16500:	fff7c793          	not	a5,a5
   16504:	16e12223          	sw	a4,356(sp)
   16508:	01179713          	slli	a4,a5,0x11
   1650c:	00071e63          	bnez	a4,16528 <_ldtoa_r+0x868>
   16510:	000a0513          	mv	a0,s4
   16514:	bfcfe0ef          	jal	ra,14910 <eisinf.part.1>
   16518:	22051c63          	bnez	a0,16750 <_ldtoa_r+0xa90>
   1651c:	000a0513          	mv	a0,s4
   16520:	93cfe0ef          	jal	ra,1465c <eisnan.part.0>
   16524:	22051663          	bnez	a0,16750 <_ldtoa_r+0xa90>
   16528:	01412683          	lw	a3,20(sp)
   1652c:	12414783          	lbu	a5,292(sp)
   16530:	00148713          	addi	a4,s1,1
   16534:	00e6a023          	sw	a4,0(a3)
   16538:	0c078ce3          	beqz	a5,16e10 <_ldtoa_r+0x1150>
   1653c:	02e00713          	li	a4,46
   16540:	06e78063          	beq	a5,a4,165a0 <_ldtoa_r+0x8e0>
   16544:	00090793          	mv	a5,s2
   16548:	02e00693          	li	a3,46
   1654c:	0080006f          	j	16554 <_ldtoa_r+0x894>
   16550:	04d70a63          	beq	a4,a3,165a4 <_ldtoa_r+0x8e4>
   16554:	00178793          	addi	a5,a5,1
   16558:	0007c703          	lbu	a4,0(a5)
   1655c:	fe071ae3          	bnez	a4,16550 <_ldtoa_r+0x890>
   16560:	04500693          	li	a3,69
   16564:	00f96663          	bltu	s2,a5,16570 <_ldtoa_r+0x8b0>
   16568:	0140006f          	j	1657c <_ldtoa_r+0x8bc>
   1656c:	01278863          	beq	a5,s2,1657c <_ldtoa_r+0x8bc>
   16570:	fff78793          	addi	a5,a5,-1
   16574:	0007c703          	lbu	a4,0(a5)
   16578:	fed71ae3          	bne	a4,a3,1656c <_ldtoa_r+0x8ac>
   1657c:	00078023          	sb	zero,0(a5)
   16580:	00090793          	mv	a5,s2
   16584:	02000693          	li	a3,32
   16588:	02d00613          	li	a2,45
   1658c:	0007c703          	lbu	a4,0(a5)
   16590:	00d70463          	beq	a4,a3,16598 <_ldtoa_r+0x8d8>
   16594:	02c71a63          	bne	a4,a2,165c8 <_ldtoa_r+0x908>
   16598:	00178793          	addi	a5,a5,1
   1659c:	ff1ff06f          	j	1658c <_ldtoa_r+0x8cc>
   165a0:	00090793          	mv	a5,s2
   165a4:	0017c703          	lbu	a4,1(a5)
   165a8:	00178793          	addi	a5,a5,1
   165ac:	fee78fa3          	sb	a4,-1(a5)
   165b0:	fa0708e3          	beqz	a4,16560 <_ldtoa_r+0x8a0>
   165b4:	0017c703          	lbu	a4,1(a5)
   165b8:	00178793          	addi	a5,a5,1
   165bc:	fee78fa3          	sb	a4,-1(a5)
   165c0:	fe0712e3          	bnez	a4,165a4 <_ldtoa_r+0x8e4>
   165c4:	f9dff06f          	j	16560 <_ldtoa_r+0x8a0>
   165c8:	00090413          	mv	s0,s2
   165cc:	00c0006f          	j	165d8 <_ldtoa_r+0x918>
   165d0:	0007c703          	lbu	a4,0(a5)
   165d4:	00068413          	mv	s0,a3
   165d8:	00e40023          	sb	a4,0(s0)
   165dc:	00140693          	addi	a3,s0,1
   165e0:	00178793          	addi	a5,a5,1
   165e4:	fe0716e3          	bnez	a4,165d0 <_ldtoa_r+0x910>
   165e8:	00812683          	lw	a3,8(sp)
   165ec:	00200793          	li	a5,2
   165f0:	fff44703          	lbu	a4,-1(s0)
   165f4:	12f68663          	beq	a3,a5,16720 <_ldtoa_r+0xa60>
   165f8:	00c12783          	lw	a5,12(sp)
   165fc:	00078693          	mv	a3,a5
   16600:	0097d463          	bge	a5,s1,16608 <_ldtoa_r+0x948>
   16604:	00048693          	mv	a3,s1
   16608:	03000793          	li	a5,48
   1660c:	02f71663          	bne	a4,a5,16638 <_ldtoa_r+0x978>
   16610:	412407b3          	sub	a5,s0,s2
   16614:	02f6d263          	bge	a3,a5,16638 <_ldtoa_r+0x978>
   16618:	03000613          	li	a2,48
   1661c:	0080006f          	j	16624 <_ldtoa_r+0x964>
   16620:	00e6dc63          	bge	a3,a4,16638 <_ldtoa_r+0x978>
   16624:	fff40413          	addi	s0,s0,-1
   16628:	fff44783          	lbu	a5,-1(s0)
   1662c:	00040023          	sb	zero,0(s0)
   16630:	41240733          	sub	a4,s0,s2
   16634:	fec786e3          	beq	a5,a2,16620 <_ldtoa_r+0x960>
   16638:	00812703          	lw	a4,8(sp)
   1663c:	00300793          	li	a5,3
   16640:	0af70263          	beq	a4,a5,166e4 <_ldtoa_r+0xa24>
   16644:	01012783          	lw	a5,16(sp)
   16648:	040b2223          	sw	zero,68(s6)
   1664c:	00978613          	addi	a2,a5,9
   16650:	01700793          	li	a5,23
   16654:	0cc7f263          	bgeu	a5,a2,16718 <_ldtoa_r+0xa58>
   16658:	00100713          	li	a4,1
   1665c:	00400793          	li	a5,4
   16660:	00179793          	slli	a5,a5,0x1
   16664:	01478693          	addi	a3,a5,20
   16668:	00070593          	mv	a1,a4
   1666c:	00170713          	addi	a4,a4,1
   16670:	fed678e3          	bgeu	a2,a3,16660 <_ldtoa_r+0x9a0>
   16674:	04bb2223          	sw	a1,68(s6)
   16678:	000b0513          	mv	a0,s6
   1667c:	560010ef          	jal	ra,17bdc <_Balloc>
   16680:	04ab2023          	sw	a0,64(s6)
   16684:	00090593          	mv	a1,s2
   16688:	00050493          	mv	s1,a0
   1668c:	2c5020ef          	jal	ra,19150 <strcpy>
   16690:	02012783          	lw	a5,32(sp)
   16694:	00078863          	beqz	a5,166a4 <_ldtoa_r+0x9e4>
   16698:	41240433          	sub	s0,s0,s2
   1669c:	00848433          	add	s0,s1,s0
   166a0:	0087a023          	sw	s0,0(a5)
   166a4:	1ec12083          	lw	ra,492(sp)
   166a8:	1e812403          	lw	s0,488(sp)
   166ac:	00048513          	mv	a0,s1
   166b0:	1e012903          	lw	s2,480(sp)
   166b4:	1e412483          	lw	s1,484(sp)
   166b8:	1dc12983          	lw	s3,476(sp)
   166bc:	1d812a03          	lw	s4,472(sp)
   166c0:	1d412a83          	lw	s5,468(sp)
   166c4:	1d012b03          	lw	s6,464(sp)
   166c8:	1cc12b83          	lw	s7,460(sp)
   166cc:	1c812c03          	lw	s8,456(sp)
   166d0:	1c412c83          	lw	s9,452(sp)
   166d4:	1c012d03          	lw	s10,448(sp)
   166d8:	1bc12d83          	lw	s11,444(sp)
   166dc:	1f010113          	addi	sp,sp,496
   166e0:	00008067          	ret
   166e4:	00c12783          	lw	a5,12(sp)
   166e8:	009784b3          	add	s1,a5,s1
   166ec:	4a04ce63          	bltz	s1,16ba8 <_ldtoa_r+0xee8>
   166f0:	01412783          	lw	a5,20(sp)
   166f4:	01012703          	lw	a4,16(sp)
   166f8:	0007a783          	lw	a5,0(a5)
   166fc:	00f707b3          	add	a5,a4,a5
   16700:	00f12823          	sw	a5,16(sp)
   16704:	01012783          	lw	a5,16(sp)
   16708:	040b2223          	sw	zero,68(s6)
   1670c:	00378613          	addi	a2,a5,3
   16710:	01700793          	li	a5,23
   16714:	f4c7e2e3          	bltu	a5,a2,16658 <_ldtoa_r+0x998>
   16718:	00000593          	li	a1,0
   1671c:	f5dff06f          	j	16678 <_ldtoa_r+0x9b8>
   16720:	03000793          	li	a5,48
   16724:	f2f710e3          	bne	a4,a5,16644 <_ldtoa_r+0x984>
   16728:	412407b3          	sub	a5,s0,s2
   1672c:	00100693          	li	a3,1
   16730:	eef6c4e3          	blt	a3,a5,16618 <_ldtoa_r+0x958>
   16734:	f11ff06f          	j	16644 <_ldtoa_r+0x984>
   16738:	01012b83          	lw	s7,16(sp)
   1673c:	01712623          	sw	s7,12(sp)
   16740:	02a00793          	li	a5,42
   16744:	e577de63          	bge	a5,s7,15da0 <_ldtoa_r+0xe0>
   16748:	00f12623          	sw	a5,12(sp)
   1674c:	e54ff06f          	j	15da0 <_ldtoa_r+0xe0>
   16750:	01412703          	lw	a4,20(sp)
   16754:	000027b7          	lui	a5,0x2
   16758:	70f78793          	addi	a5,a5,1807 # 270f <register_fini-0xd965>
   1675c:	00f72023          	sw	a5,0(a4)
   16760:	e21ff06f          	j	16580 <_ldtoa_r+0x8c0>
   16764:	0b410a93          	addi	s5,sp,180
   16768:	000a8713          	mv	a4,s5
   1676c:	07c10793          	addi	a5,sp,124
   16770:	09010613          	addi	a2,sp,144
   16774:	00278793          	addi	a5,a5,2
   16778:	ffe7d683          	lhu	a3,-2(a5)
   1677c:	00270713          	addi	a4,a4,2
   16780:	fed71f23          	sh	a3,-2(a4)
   16784:	fec798e3          	bne	a5,a2,16774 <_ldtoa_r+0xab4>
   16788:	000047b7          	lui	a5,0x4
   1678c:	08e78793          	addi	a5,a5,142 # 408e <register_fini-0xbfe6>
   16790:	0cf11323          	sh	a5,198(sp)
   16794:	000087b7          	lui	a5,0x8
   16798:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   1679c:	02f12223          	sw	a5,36(sp)
   167a0:	ffffc7b7          	lui	a5,0xffffc
   167a4:	00278793          	addi	a5,a5,2 # ffffc002 <__BSS_END__+0xfffd551a>
   167a8:	01000d13          	li	s10,16
   167ac:	00000493          	li	s1,0
   167b0:	0000ec17          	auipc	s8,0xe
   167b4:	710c0c13          	addi	s8,s8,1808 # 24ec0 <etens+0xa0>
   167b8:	12410913          	addi	s2,sp,292
   167bc:	16010993          	addi	s3,sp,352
   167c0:	0d010413          	addi	s0,sp,208
   167c4:	0aa10b93          	addi	s7,sp,170
   167c8:	02f12423          	sw	a5,40(sp)
   167cc:	05e10c93          	addi	s9,sp,94
   167d0:	00098693          	mv	a3,s3
   167d4:	09810613          	addi	a2,sp,152
   167d8:	000a8593          	mv	a1,s5
   167dc:	000c0513          	mv	a0,s8
   167e0:	e99fe0ef          	jal	ra,15678 <ediv>
   167e4:	04c10713          	addi	a4,sp,76
   167e8:	09810793          	addi	a5,sp,152
   167ec:	00278793          	addi	a5,a5,2
   167f0:	ffe7d683          	lhu	a3,-2(a5)
   167f4:	00270713          	addi	a4,a4,2
   167f8:	fed71f23          	sh	a3,-2(a4)
   167fc:	ffb798e3          	bne	a5,s11,167ec <_ldtoa_r+0xb2c>
   16800:	02412783          	lw	a5,36(sp)
   16804:	05e15503          	lhu	a0,94(sp)
   16808:	00f57633          	and	a2,a0,a5
   1680c:	02812783          	lw	a5,40(sp)
   16810:	00f605b3          	add	a1,a2,a5
   16814:	3ab05463          	blez	a1,16bbc <_ldtoa_r+0xefc>
   16818:	09000613          	li	a2,144
   1681c:	40b60633          	sub	a2,a2,a1
   16820:	00040713          	mv	a4,s0
   16824:	04c10793          	addi	a5,sp,76
   16828:	00278793          	addi	a5,a5,2
   1682c:	ffe7d683          	lhu	a3,-2(a5)
   16830:	00270713          	addi	a4,a4,2
   16834:	fed71f23          	sh	a3,-2(a4)
   16838:	ff4798e3          	bne	a5,s4,16828 <_ldtoa_r+0xb68>
   1683c:	06c05863          	blez	a2,168ac <_ldtoa_r+0xbec>
   16840:	00f00793          	li	a5,15
   16844:	00040713          	mv	a4,s0
   16848:	02c7dc63          	bge	a5,a2,16880 <_ldtoa_r+0xbc0>
   1684c:	ff060613          	addi	a2,a2,-16 # 7ff0 <register_fini-0x8084>
   16850:	00465693          	srli	a3,a2,0x4
   16854:	00168713          	addi	a4,a3,1
   16858:	00171713          	slli	a4,a4,0x1
   1685c:	00e40733          	add	a4,s0,a4
   16860:	00040793          	mv	a5,s0
   16864:	00278793          	addi	a5,a5,2
   16868:	fe079f23          	sh	zero,-2(a5)
   1686c:	fee79ce3          	bne	a5,a4,16864 <_ldtoa_r+0xba4>
   16870:	08000613          	li	a2,128
   16874:	40b60633          	sub	a2,a2,a1
   16878:	00469693          	slli	a3,a3,0x4
   1687c:	40d60633          	sub	a2,a2,a3
   16880:	0000e797          	auipc	a5,0xe
   16884:	57878793          	addi	a5,a5,1400 # 24df8 <ezero>
   16888:	00161613          	slli	a2,a2,0x1
   1688c:	00c78633          	add	a2,a5,a2
   16890:	23065683          	lhu	a3,560(a2)
   16894:	00075783          	lhu	a5,0(a4)
   16898:	00d7f7b3          	and	a5,a5,a3
   1689c:	00f71023          	sh	a5,0(a4)
   168a0:	01051513          	slli	a0,a0,0x10
   168a4:	41055513          	srai	a0,a0,0x10
   168a8:	16054063          	bltz	a0,16a08 <_ldtoa_r+0xd48>
   168ac:	09810793          	addi	a5,sp,152
   168b0:	00040713          	mv	a4,s0
   168b4:	0007d603          	lhu	a2,0(a5)
   168b8:	00075683          	lhu	a3,0(a4)
   168bc:	00278793          	addi	a5,a5,2
   168c0:	00270713          	addi	a4,a4,2
   168c4:	02d61463          	bne	a2,a3,168ec <_ldtoa_r+0xc2c>
   168c8:	fefb96e3          	bne	s7,a5,168b4 <_ldtoa_r+0xbf4>
   168cc:	000a8713          	mv	a4,s5
   168d0:	09810793          	addi	a5,sp,152
   168d4:	00278793          	addi	a5,a5,2
   168d8:	ffe7d683          	lhu	a3,-2(a5)
   168dc:	00270713          	addi	a4,a4,2
   168e0:	fed71f23          	sh	a3,-2(a4)
   168e4:	ffb798e3          	bne	a5,s11,168d4 <_ldtoa_r+0xc14>
   168e8:	01a484b3          	add	s1,s1,s10
   168ec:	014c0c13          	addi	s8,s8,20
   168f0:	0000e797          	auipc	a5,0xe
   168f4:	63478793          	addi	a5,a5,1588 # 24f24 <emtens>
   168f8:	001d5d13          	srli	s10,s10,0x1
   168fc:	ecfc1ae3          	bne	s8,a5,167d0 <_ldtoa_r+0xb10>
   16900:	0c615783          	lhu	a5,198(sp)
   16904:	08e15703          	lhu	a4,142(sp)
   16908:	0c810613          	addi	a2,sp,200
   1690c:	00e787b3          	add	a5,a5,a4
   16910:	ffffc737          	lui	a4,0xffffc
   16914:	f7270713          	addi	a4,a4,-142 # ffffbf72 <__BSS_END__+0xfffd548a>
   16918:	00e787b3          	add	a5,a5,a4
   1691c:	0cf11323          	sh	a5,198(sp)
   16920:	07c10713          	addi	a4,sp,124
   16924:	000a8793          	mv	a5,s5
   16928:	00278793          	addi	a5,a5,2
   1692c:	ffe7d683          	lhu	a3,-2(a5)
   16930:	00270713          	addi	a4,a4,2
   16934:	fed71f23          	sh	a3,-2(a4)
   16938:	fec798e3          	bne	a5,a2,16928 <_ldtoa_r+0xc68>
   1693c:	00000693          	li	a3,0
   16940:	09810793          	addi	a5,sp,152
   16944:	0000e717          	auipc	a4,0xe
   16948:	4c870713          	addi	a4,a4,1224 # 24e0c <eone>
   1694c:	0080006f          	j	16954 <_ldtoa_r+0xc94>
   16950:	00075683          	lhu	a3,0(a4)
   16954:	00278793          	addi	a5,a5,2
   16958:	fed79f23          	sh	a3,-2(a5)
   1695c:	00270713          	addi	a4,a4,2
   16960:	ffb798e3          	bne	a5,s11,16950 <_ldtoa_r+0xc90>
   16964:	00001d37          	lui	s10,0x1
   16968:	0000ec97          	auipc	s9,0xe
   1696c:	4b8c8c93          	addi	s9,s9,1208 # 24e20 <etens>
   16970:	0000ed97          	auipc	s11,0xe
   16974:	5a0d8d93          	addi	s11,s11,1440 # 24f10 <etens+0xf0>
   16978:	0100006f          	j	16988 <_ldtoa_r+0xcc8>
   1697c:	001d5d13          	srli	s10,s10,0x1
   16980:	2dbc8463          	beq	s9,s11,16c48 <_ldtoa_r+0xf88>
   16984:	014c8c93          	addi	s9,s9,20
   16988:	000a8593          	mv	a1,s5
   1698c:	000d8513          	mv	a0,s11
   16990:	e65fd0ef          	jal	ra,147f4 <ecmp>
   16994:	000a8593          	mv	a1,s5
   16998:	2aa04863          	bgtz	a0,16c48 <_ldtoa_r+0xf88>
   1699c:	000c8513          	mv	a0,s9
   169a0:	e55fd0ef          	jal	ra,147f4 <ecmp>
   169a4:	fca04ce3          	bgtz	a0,1697c <_ldtoa_r+0xcbc>
   169a8:	00098693          	mv	a3,s3
   169ac:	000a8613          	mv	a2,s5
   169b0:	000a8593          	mv	a1,s5
   169b4:	000c8513          	mv	a0,s9
   169b8:	cc1fe0ef          	jal	ra,15678 <ediv>
   169bc:	09810613          	addi	a2,sp,152
   169c0:	00098693          	mv	a3,s3
   169c4:	00060593          	mv	a1,a2
   169c8:	000c8513          	mv	a0,s9
   169cc:	8a5fe0ef          	jal	ra,15270 <emul>
   169d0:	01a484b3          	add	s1,s1,s10
   169d4:	fa9ff06f          	j	1697c <_ldtoa_r+0xcbc>
   169d8:	1ac15783          	lhu	a5,428(sp)
   169dc:	12610c93          	addi	s9,sp,294
   169e0:	12710993          	addi	s3,sp,295
   169e4:	a7dff06f          	j	16460 <_ldtoa_r+0x7a0>
   169e8:	12410913          	addi	s2,sp,292
   169ec:	0000e597          	auipc	a1,0xe
   169f0:	66058593          	addi	a1,a1,1632 # 2504c <bmask+0x24>
   169f4:	00090513          	mv	a0,s2
   169f8:	000024b7          	lui	s1,0x2
   169fc:	400020ef          	jal	ra,18dfc <sprintf>
   16a00:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd965>
   16a04:	af1ff06f          	j	164f4 <_ldtoa_r+0x834>
   16a08:	04c10793          	addi	a5,sp,76
   16a0c:	00040713          	mv	a4,s0
   16a10:	0080006f          	j	16a18 <_ldtoa_r+0xd58>
   16a14:	e8fc8ce3          	beq	s9,a5,168ac <_ldtoa_r+0xbec>
   16a18:	0007d603          	lhu	a2,0(a5)
   16a1c:	00075683          	lhu	a3,0(a4)
   16a20:	00278793          	addi	a5,a5,2
   16a24:	00270713          	addi	a4,a4,2
   16a28:	fed606e3          	beq	a2,a3,16a14 <_ldtoa_r+0xd54>
   16a2c:	0e215783          	lhu	a5,226(sp)
   16a30:	02412703          	lw	a4,36(sp)
   16a34:	00f777b3          	and	a5,a4,a5
   16a38:	00e79e63          	bne	a5,a4,16a54 <_ldtoa_r+0xd94>
   16a3c:	00040513          	mv	a0,s0
   16a40:	c1dfd0ef          	jal	ra,1465c <eisnan.part.0>
   16a44:	e60514e3          	bnez	a0,168ac <_ldtoa_r+0xbec>
   16a48:	00040513          	mv	a0,s0
   16a4c:	ec5fd0ef          	jal	ra,14910 <eisinf.part.1>
   16a50:	e4051ee3          	bnez	a0,168ac <_ldtoa_r+0xbec>
   16a54:	0ec10593          	addi	a1,sp,236
   16a58:	0000e517          	auipc	a0,0xe
   16a5c:	3b450513          	addi	a0,a0,948 # 24e0c <eone>
   16a60:	cadfd0ef          	jal	ra,1470c <emovi>
   16a64:	10810593          	addi	a1,sp,264
   16a68:	00040513          	mv	a0,s0
   16a6c:	ca1fd0ef          	jal	ra,1470c <emovi>
   16a70:	0ec15603          	lhu	a2,236(sp)
   16a74:	10a15503          	lhu	a0,266(sp)
   16a78:	0ee15803          	lhu	a6,238(sp)
   16a7c:	fff64613          	not	a2,a2
   16a80:	01061613          	slli	a2,a2,0x10
   16a84:	01065613          	srli	a2,a2,0x10
   16a88:	0ec11623          	sh	a2,236(sp)
   16a8c:	40a805b3          	sub	a1,a6,a0
   16a90:	00050693          	mv	a3,a0
   16a94:	06b05e63          	blez	a1,16b10 <_ldtoa_r+0xe50>
   16a98:	00090693          	mv	a3,s2
   16a9c:	10810713          	addi	a4,sp,264
   16aa0:	12010793          	addi	a5,sp,288
   16aa4:	00270713          	addi	a4,a4,2
   16aa8:	ffe75583          	lhu	a1,-2(a4)
   16aac:	00268693          	addi	a3,a3,2
   16ab0:	feb69f23          	sh	a1,-2(a3)
   16ab4:	fef718e3          	bne	a4,a5,16aa4 <_ldtoa_r+0xde4>
   16ab8:	12011e23          	sh	zero,316(sp)
   16abc:	10810713          	addi	a4,sp,264
   16ac0:	0ec10693          	addi	a3,sp,236
   16ac4:	0080006f          	j	16acc <_ldtoa_r+0xe0c>
   16ac8:	0006d603          	lhu	a2,0(a3)
   16acc:	00270713          	addi	a4,a4,2
   16ad0:	fec71f23          	sh	a2,-2(a4)
   16ad4:	00268693          	addi	a3,a3,2
   16ad8:	fef718e3          	bne	a4,a5,16ac8 <_ldtoa_r+0xe08>
   16adc:	12011023          	sh	zero,288(sp)
   16ae0:	0ec10713          	addi	a4,sp,236
   16ae4:	00090793          	mv	a5,s2
   16ae8:	13c10613          	addi	a2,sp,316
   16aec:	00278793          	addi	a5,a5,2
   16af0:	ffe7d683          	lhu	a3,-2(a5)
   16af4:	00270713          	addi	a4,a4,2
   16af8:	fed71f23          	sh	a3,-2(a4)
   16afc:	fec798e3          	bne	a5,a2,16aec <_ldtoa_r+0xe2c>
   16b00:	10a15683          	lhu	a3,266(sp)
   16b04:	410505b3          	sub	a1,a0,a6
   16b08:	10011223          	sh	zero,260(sp)
   16b0c:	00068513          	mv	a0,a3
   16b10:	30058863          	beqz	a1,16e20 <_ldtoa_r+0x1160>
   16b14:	02d12623          	sw	a3,44(sp)
   16b18:	f6f00793          	li	a5,-145
   16b1c:	06f5c863          	blt	a1,a5,16b8c <_ldtoa_r+0xecc>
   16b20:	0ec10513          	addi	a0,sp,236
   16b24:	e09fd0ef          	jal	ra,1492c <eshift.part.3>
   16b28:	02c12683          	lw	a3,44(sp)
   16b2c:	00050593          	mv	a1,a0
   16b30:	12010793          	addi	a5,sp,288
   16b34:	10410813          	addi	a6,sp,260
   16b38:	0ec15603          	lhu	a2,236(sp)
   16b3c:	10815703          	lhu	a4,264(sp)
   16b40:	32e60c63          	beq	a2,a4,16e78 <_ldtoa_r+0x11b8>
   16b44:	00000713          	li	a4,0
   16b48:	00070613          	mv	a2,a4
   16b4c:	0007d703          	lhu	a4,0(a5)
   16b50:	00085503          	lhu	a0,0(a6) # ffff8000 <__BSS_END__+0xfffd1518>
   16b54:	ffe78793          	addi	a5,a5,-2
   16b58:	40c70733          	sub	a4,a4,a2
   16b5c:	40a70733          	sub	a4,a4,a0
   16b60:	00e79123          	sh	a4,2(a5)
   16b64:	01075713          	srli	a4,a4,0x10
   16b68:	00177613          	andi	a2,a4,1
   16b6c:	10a10713          	addi	a4,sp,266
   16b70:	ffe80813          	addi	a6,a6,-2
   16b74:	fce79ce3          	bne	a5,a4,16b4c <_ldtoa_r+0xe8c>
   16b78:	00100613          	li	a2,1
   16b7c:	00098793          	mv	a5,s3
   16b80:	04000713          	li	a4,64
   16b84:	10810513          	addi	a0,sp,264
   16b88:	8ccfe0ef          	jal	ra,14c54 <emdnorm>
   16b8c:	00040593          	mv	a1,s0
   16b90:	10810513          	addi	a0,sp,264
   16b94:	e2cfe0ef          	jal	ra,151c0 <emovo.isra.6>
   16b98:	d15ff06f          	j	168ac <_ldtoa_r+0xbec>
   16b9c:	01012783          	lw	a5,16(sp)
   16ba0:	fff78b93          	addi	s7,a5,-1
   16ba4:	b99ff06f          	j	1673c <_ldtoa_r+0xa7c>
   16ba8:	01412783          	lw	a5,20(sp)
   16bac:	12010223          	sb	zero,292(sp)
   16bb0:	00090413          	mv	s0,s2
   16bb4:	0007a023          	sw	zero,0(a5)
   16bb8:	b4dff06f          	j	16704 <_ldtoa_r+0xa44>
   16bbc:	00040793          	mv	a5,s0
   16bc0:	0e410713          	addi	a4,sp,228
   16bc4:	00278793          	addi	a5,a5,2
   16bc8:	fe079f23          	sh	zero,-2(a5)
   16bcc:	fee79ce3          	bne	a5,a4,16bc4 <_ldtoa_r+0xf04>
   16bd0:	cd1ff06f          	j	168a0 <_ldtoa_r+0xbe0>
   16bd4:	01812783          	lw	a5,24(sp)
   16bd8:	12410913          	addi	s2,sp,292
   16bdc:	0e078a63          	beqz	a5,16cd0 <_ldtoa_r+0x1010>
   16be0:	0000e597          	auipc	a1,0xe
   16be4:	47458593          	addi	a1,a1,1140 # 25054 <bmask+0x2c>
   16be8:	00090513          	mv	a0,s2
   16bec:	000024b7          	lui	s1,0x2
   16bf0:	20c020ef          	jal	ra,18dfc <sprintf>
   16bf4:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd965>
   16bf8:	8fdff06f          	j	164f4 <_ldtoa_r+0x834>
   16bfc:	03100793          	li	a5,49
   16c00:	12f102a3          	sb	a5,293(sp)
   16c04:	02e00793          	li	a5,46
   16c08:	12f10323          	sb	a5,294(sp)
   16c0c:	00148493          	addi	s1,s1,1
   16c10:	02900413          	li	s0,41
   16c14:	03000793          	li	a5,48
   16c18:	12f103a3          	sb	a5,295(sp)
   16c1c:	12810c93          	addi	s9,sp,296
   16c20:	e6cff06f          	j	1628c <_ldtoa_r+0x5cc>
   16c24:	03100793          	li	a5,49
   16c28:	12f102a3          	sb	a5,293(sp)
   16c2c:	02e00793          	li	a5,46
   16c30:	12f10323          	sb	a5,294(sp)
   16c34:	00148493          	addi	s1,s1,1
   16c38:	1e804063          	bgtz	s0,16e18 <_ldtoa_r+0x1158>
   16c3c:	12710c93          	addi	s9,sp,295
   16c40:	8a0410e3          	bnez	s0,164e0 <_ldtoa_r+0x820>
   16c44:	e48ff06f          	j	1628c <_ldtoa_r+0x5cc>
   16c48:	0e810b93          	addi	s7,sp,232
   16c4c:	b90ff06f          	j	15fdc <_ldtoa_r+0x31c>
   16c50:	03100793          	li	a5,49
   16c54:	fef98f23          	sb	a5,-2(s3)
   16c58:	00148493          	addi	s1,s1,1
   16c5c:	885ff06f          	j	164e0 <_ldtoa_r+0x820>
   16c60:	12410913          	addi	s2,sp,292
   16c64:	0000e597          	auipc	a1,0xe
   16c68:	40858593          	addi	a1,a1,1032 # 2506c <bmask+0x44>
   16c6c:	00090513          	mv	a0,s2
   16c70:	000024b7          	lui	s1,0x2
   16c74:	188020ef          	jal	ra,18dfc <sprintf>
   16c78:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd965>
   16c7c:	879ff06f          	j	164f4 <_ldtoa_r+0x834>
   16c80:	09810593          	addi	a1,sp,152
   16c84:	07c10513          	addi	a0,sp,124
   16c88:	d38fe0ef          	jal	ra,151c0 <emovo.isra.6>
   16c8c:	0000e597          	auipc	a1,0xe
   16c90:	16c58593          	addi	a1,a1,364 # 24df8 <ezero>
   16c94:	09810513          	addi	a0,sp,152
   16c98:	b5dfd0ef          	jal	ra,147f4 <ecmp>
   16c9c:	fc051a63          	bnez	a0,16470 <_ldtoa_r+0x7b0>
   16ca0:	840440e3          	bltz	s0,164e0 <_ldtoa_r+0x820>
   16ca4:	ffe9c783          	lbu	a5,-2(s3)
   16ca8:	fd278713          	addi	a4,a5,-46
   16cac:	00173713          	seqz	a4,a4
   16cb0:	fff74713          	not	a4,a4
   16cb4:	00ec8733          	add	a4,s9,a4
   16cb8:	00074703          	lbu	a4,0(a4)
   16cbc:	00177713          	andi	a4,a4,1
   16cc0:	820700e3          	beqz	a4,164e0 <_ldtoa_r+0x820>
   16cc4:	ffe98713          	addi	a4,s3,-2
   16cc8:	07f7f793          	andi	a5,a5,127
   16ccc:	fb4ff06f          	j	16480 <_ldtoa_r+0x7c0>
   16cd0:	0000e597          	auipc	a1,0xe
   16cd4:	39058593          	addi	a1,a1,912 # 25060 <bmask+0x38>
   16cd8:	00090513          	mv	a0,s2
   16cdc:	000024b7          	lui	s1,0x2
   16ce0:	11c020ef          	jal	ra,18dfc <sprintf>
   16ce4:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd965>
   16ce8:	80dff06f          	j	164f4 <_ldtoa_r+0x834>
   16cec:	00178793          	addi	a5,a5,1
   16cf0:	fef70fa3          	sb	a5,-1(a4)
   16cf4:	fecff06f          	j	164e0 <_ldtoa_r+0x820>
   16cf8:	0d010413          	addi	s0,sp,208
   16cfc:	00040593          	mv	a1,s0
   16d00:	07c10513          	addi	a0,sp,124
   16d04:	00004ab7          	lui	s5,0x4
   16d08:	a05fd0ef          	jal	ra,1470c <emovi>
   16d0c:	00000493          	li	s1,0
   16d10:	0e810b93          	addi	s7,sp,232
   16d14:	0cc10913          	addi	s2,sp,204
   16d18:	0d210993          	addi	s3,sp,210
   16d1c:	ffea8a93          	addi	s5,s5,-2 # 3ffe <register_fini-0xc076>
   16d20:	fd500c93          	li	s9,-43
   16d24:	0e815783          	lhu	a5,232(sp)
   16d28:	0077f793          	andi	a5,a5,7
   16d2c:	0c079863          	bnez	a5,16dfc <_ldtoa_r+0x113c>
   16d30:	0b410713          	addi	a4,sp,180
   16d34:	00040793          	mv	a5,s0
   16d38:	00278793          	addi	a5,a5,2
   16d3c:	ffe7d683          	lhu	a3,-2(a5)
   16d40:	00270713          	addi	a4,a4,2
   16d44:	fed71f23          	sh	a3,-2(a4)
   16d48:	ff7798e3          	bne	a5,s7,16d38 <_ldtoa_r+0x1078>
   16d4c:	0b410513          	addi	a0,sp,180
   16d50:	0c011623          	sh	zero,204(sp)
   16d54:	f50fd0ef          	jal	ra,144a4 <eshdn1>
   16d58:	0b410513          	addi	a0,sp,180
   16d5c:	f48fd0ef          	jal	ra,144a4 <eshdn1>
   16d60:	00000613          	li	a2,0
   16d64:	00090693          	mv	a3,s2
   16d68:	000b8713          	mv	a4,s7
   16d6c:	0006d583          	lhu	a1,0(a3)
   16d70:	00075783          	lhu	a5,0(a4)
   16d74:	ffe68693          	addi	a3,a3,-2
   16d78:	ffe70713          	addi	a4,a4,-2
   16d7c:	00b787b3          	add	a5,a5,a1
   16d80:	00c787b3          	add	a5,a5,a2
   16d84:	00f69123          	sh	a5,2(a3)
   16d88:	0107d793          	srli	a5,a5,0x10
   16d8c:	0017f613          	andi	a2,a5,1
   16d90:	fd371ee3          	bne	a4,s3,16d6c <_ldtoa_r+0x10ac>
   16d94:	0b615783          	lhu	a5,182(sp)
   16d98:	0b815703          	lhu	a4,184(sp)
   16d9c:	00378793          	addi	a5,a5,3
   16da0:	0af11b23          	sh	a5,182(sp)
   16da4:	02070063          	beqz	a4,16dc4 <_ldtoa_r+0x1104>
   16da8:	0b410513          	addi	a0,sp,180
   16dac:	ef8fd0ef          	jal	ra,144a4 <eshdn1>
   16db0:	0b615783          	lhu	a5,182(sp)
   16db4:	0b815703          	lhu	a4,184(sp)
   16db8:	00178793          	addi	a5,a5,1
   16dbc:	0af11b23          	sh	a5,182(sp)
   16dc0:	fe0714e3          	bnez	a4,16da8 <_ldtoa_r+0x10e8>
   16dc4:	0cc15783          	lhu	a5,204(sp)
   16dc8:	02079a63          	bnez	a5,16dfc <_ldtoa_r+0x113c>
   16dcc:	0b615783          	lhu	a5,182(sp)
   16dd0:	02fae663          	bltu	s5,a5,16dfc <_ldtoa_r+0x113c>
   16dd4:	00040713          	mv	a4,s0
   16dd8:	0b410793          	addi	a5,sp,180
   16ddc:	00278793          	addi	a5,a5,2
   16de0:	ffe7d683          	lhu	a3,-2(a5)
   16de4:	00270713          	addi	a4,a4,2
   16de8:	fed71f23          	sh	a3,-2(a4)
   16dec:	ff2798e3          	bne	a5,s2,16ddc <_ldtoa_r+0x111c>
   16df0:	0e011423          	sh	zero,232(sp)
   16df4:	fff48493          	addi	s1,s1,-1
   16df8:	f39496e3          	bne	s1,s9,16d24 <_ldtoa_r+0x1064>
   16dfc:	07c10593          	addi	a1,sp,124
   16e00:	00040513          	mv	a0,s0
   16e04:	bbcfe0ef          	jal	ra,151c0 <emovo.isra.6>
   16e08:	16010993          	addi	s3,sp,352
   16e0c:	8b0ff06f          	j	15ebc <_ldtoa_r+0x1fc>
   16e10:	00090793          	mv	a5,s2
   16e14:	f68ff06f          	j	1657c <_ldtoa_r+0x8bc>
   16e18:	fff40413          	addi	s0,s0,-1
   16e1c:	df9ff06f          	j	16c14 <_ldtoa_r+0xf54>
   16e20:	10c10713          	addi	a4,sp,268
   16e24:	0f010793          	addi	a5,sp,240
   16e28:	00278793          	addi	a5,a5,2
   16e2c:	00270713          	addi	a4,a4,2
   16e30:	ffe7d803          	lhu	a6,-2(a5)
   16e34:	ffe75603          	lhu	a2,-2(a4)
   16e38:	02c81863          	bne	a6,a2,16e68 <_ldtoa_r+0x11a8>
   16e3c:	10610613          	addi	a2,sp,262
   16e40:	fec794e3          	bne	a5,a2,16e28 <_ldtoa_r+0x1168>
   16e44:	0ec15703          	lhu	a4,236(sp)
   16e48:	10815783          	lhu	a5,264(sp)
   16e4c:	06f70463          	beq	a4,a5,16eb4 <_ldtoa_r+0x11f4>
   16e50:	00040793          	mv	a5,s0
   16e54:	0e410713          	addi	a4,sp,228
   16e58:	00278793          	addi	a5,a5,2
   16e5c:	fe079f23          	sh	zero,-2(a5)
   16e60:	fee79ce3          	bne	a5,a4,16e58 <_ldtoa_r+0x1198>
   16e64:	a49ff06f          	j	168ac <_ldtoa_r+0xbec>
   16e68:	0d066863          	bltu	a2,a6,16f38 <_ldtoa_r+0x1278>
   16e6c:	12010793          	addi	a5,sp,288
   16e70:	10410813          	addi	a6,sp,260
   16e74:	cc5ff06f          	j	16b38 <_ldtoa_r+0xe78>
   16e78:	00000613          	li	a2,0
   16e7c:	00080713          	mv	a4,a6
   16e80:	0ee10893          	addi	a7,sp,238
   16e84:	0007d803          	lhu	a6,0(a5)
   16e88:	00075503          	lhu	a0,0(a4)
   16e8c:	ffe78793          	addi	a5,a5,-2
   16e90:	ffe70713          	addi	a4,a4,-2
   16e94:	01050533          	add	a0,a0,a6
   16e98:	00c50633          	add	a2,a0,a2
   16e9c:	00c79123          	sh	a2,2(a5)
   16ea0:	01065613          	srli	a2,a2,0x10
   16ea4:	00167613          	andi	a2,a2,1
   16ea8:	fd171ee3          	bne	a4,a7,16e84 <_ldtoa_r+0x11c4>
   16eac:	00000613          	li	a2,0
   16eb0:	ccdff06f          	j	16b7c <_ldtoa_r+0xebc>
   16eb4:	00068713          	mv	a4,a3
   16eb8:	06069263          	bnez	a3,16f1c <_ldtoa_r+0x125c>
   16ebc:	10e11783          	lh	a5,270(sp)
   16ec0:	0407ce63          	bltz	a5,16f1c <_ldtoa_r+0x125c>
   16ec4:	12010693          	addi	a3,sp,288
   16ec8:	0200006f          	j	16ee8 <_ldtoa_r+0x1228>
   16ecc:	00f69023          	sh	a5,0(a3)
   16ed0:	00171713          	slli	a4,a4,0x1
   16ed4:	01071713          	slli	a4,a4,0x10
   16ed8:	ffe68693          	addi	a3,a3,-2
   16edc:	10a10793          	addi	a5,sp,266
   16ee0:	01075713          	srli	a4,a4,0x10
   16ee4:	caf684e3          	beq	a3,a5,16b8c <_ldtoa_r+0xecc>
   16ee8:	0006d783          	lhu	a5,0(a3)
   16eec:	01079613          	slli	a2,a5,0x10
   16ef0:	41065613          	srai	a2,a2,0x10
   16ef4:	00179793          	slli	a5,a5,0x1
   16ef8:	00065463          	bgez	a2,16f00 <_ldtoa_r+0x1240>
   16efc:	00176713          	ori	a4,a4,1
   16f00:	01079793          	slli	a5,a5,0x10
   16f04:	0107d793          	srli	a5,a5,0x10
   16f08:	00277613          	andi	a2,a4,2
   16f0c:	0017e593          	ori	a1,a5,1
   16f10:	fa060ee3          	beqz	a2,16ecc <_ldtoa_r+0x120c>
   16f14:	00b69023          	sh	a1,0(a3)
   16f18:	fb9ff06f          	j	16ed0 <_ldtoa_r+0x1210>
   16f1c:	10c10613          	addi	a2,sp,268
   16f20:	12010793          	addi	a5,sp,288
   16f24:	08071263          	bnez	a4,16fa8 <_ldtoa_r+0x12e8>
   16f28:	08c78263          	beq	a5,a2,16fac <_ldtoa_r+0x12ec>
   16f2c:	00065703          	lhu	a4,0(a2)
   16f30:	00260613          	addi	a2,a2,2
   16f34:	ff1ff06f          	j	16f24 <_ldtoa_r+0x1264>
   16f38:	00090613          	mv	a2,s2
   16f3c:	10810713          	addi	a4,sp,264
   16f40:	12010793          	addi	a5,sp,288
   16f44:	00270713          	addi	a4,a4,2
   16f48:	ffe75503          	lhu	a0,-2(a4)
   16f4c:	00260613          	addi	a2,a2,2
   16f50:	fea61f23          	sh	a0,-2(a2)
   16f54:	fef718e3          	bne	a4,a5,16f44 <_ldtoa_r+0x1284>
   16f58:	12011e23          	sh	zero,316(sp)
   16f5c:	10810613          	addi	a2,sp,264
   16f60:	0ec10713          	addi	a4,sp,236
   16f64:	10410813          	addi	a6,sp,260
   16f68:	00270713          	addi	a4,a4,2
   16f6c:	ffe75503          	lhu	a0,-2(a4)
   16f70:	00260613          	addi	a2,a2,2
   16f74:	fea61f23          	sh	a0,-2(a2)
   16f78:	ff0718e3          	bne	a4,a6,16f68 <_ldtoa_r+0x12a8>
   16f7c:	12011023          	sh	zero,288(sp)
   16f80:	0ec10513          	addi	a0,sp,236
   16f84:	00090713          	mv	a4,s2
   16f88:	13c10613          	addi	a2,sp,316
   16f8c:	00270713          	addi	a4,a4,2
   16f90:	ffe75883          	lhu	a7,-2(a4)
   16f94:	00250513          	addi	a0,a0,2
   16f98:	ff151f23          	sh	a7,-2(a0)
   16f9c:	fec718e3          	bne	a4,a2,16f8c <_ldtoa_r+0x12cc>
   16fa0:	10011223          	sh	zero,260(sp)
   16fa4:	b95ff06f          	j	16b38 <_ldtoa_r+0xe78>
   16fa8:	00168513          	addi	a0,a3,1
   16fac:	10a11523          	sh	a0,266(sp)
   16fb0:	bddff06f          	j	16b8c <_ldtoa_r+0xecc>

00016fb4 <_ldcheck>:
   16fb4:	00852703          	lw	a4,8(a0)
   16fb8:	00c52783          	lw	a5,12(a0)
   16fbc:	00052603          	lw	a2,0(a0)
   16fc0:	00452683          	lw	a3,4(a0)
   16fc4:	fc010113          	addi	sp,sp,-64
   16fc8:	00010513          	mv	a0,sp
   16fcc:	01410593          	addi	a1,sp,20
   16fd0:	00e12423          	sw	a4,8(sp)
   16fd4:	00f12623          	sw	a5,12(sp)
   16fd8:	02112e23          	sw	ra,60(sp)
   16fdc:	00c12023          	sw	a2,0(sp)
   16fe0:	00d12223          	sw	a3,4(sp)
   16fe4:	b99fe0ef          	jal	ra,15b7c <e113toe.isra.8>
   16fe8:	02615783          	lhu	a5,38(sp)
   16fec:	00000513          	li	a0,0
   16ff0:	fff7c793          	not	a5,a5
   16ff4:	01179713          	slli	a4,a5,0x11
   16ff8:	00071a63          	bnez	a4,1700c <_ldcheck+0x58>
   16ffc:	01410513          	addi	a0,sp,20
   17000:	e5cfd0ef          	jal	ra,1465c <eisnan.part.0>
   17004:	00153513          	seqz	a0,a0
   17008:	00150513          	addi	a0,a0,1
   1700c:	03c12083          	lw	ra,60(sp)
   17010:	04010113          	addi	sp,sp,64
   17014:	00008067          	ret

00017018 <__localeconv_l>:
   17018:	0f050513          	addi	a0,a0,240
   1701c:	00008067          	ret

00017020 <_localeconv_r>:
   17020:	d1818513          	addi	a0,gp,-744 # 265d8 <__global_locale+0xf0>
   17024:	00008067          	ret

00017028 <localeconv>:
   17028:	d1818513          	addi	a0,gp,-744 # 265d8 <__global_locale+0xf0>
   1702c:	00008067          	ret

00017030 <_setlocale_r>:
   17030:	04060063          	beqz	a2,17070 <_setlocale_r+0x40>
   17034:	ff010113          	addi	sp,sp,-16
   17038:	0000e597          	auipc	a1,0xe
   1703c:	04058593          	addi	a1,a1,64 # 25078 <bmask+0x50>
   17040:	00060513          	mv	a0,a2
   17044:	00812423          	sw	s0,8(sp)
   17048:	00112623          	sw	ra,12(sp)
   1704c:	00060413          	mv	s0,a2
   17050:	785010ef          	jal	ra,18fd4 <strcmp>
   17054:	02051463          	bnez	a0,1707c <_setlocale_r+0x4c>
   17058:	0000e517          	auipc	a0,0xe
   1705c:	01c50513          	addi	a0,a0,28 # 25074 <bmask+0x4c>
   17060:	00c12083          	lw	ra,12(sp)
   17064:	00812403          	lw	s0,8(sp)
   17068:	01010113          	addi	sp,sp,16
   1706c:	00008067          	ret
   17070:	0000e517          	auipc	a0,0xe
   17074:	00450513          	addi	a0,a0,4 # 25074 <bmask+0x4c>
   17078:	00008067          	ret
   1707c:	0000e597          	auipc	a1,0xe
   17080:	ff858593          	addi	a1,a1,-8 # 25074 <bmask+0x4c>
   17084:	00040513          	mv	a0,s0
   17088:	74d010ef          	jal	ra,18fd4 <strcmp>
   1708c:	fc0506e3          	beqz	a0,17058 <_setlocale_r+0x28>
   17090:	0000e597          	auipc	a1,0xe
   17094:	d5858593          	addi	a1,a1,-680 # 24de8 <zeroes.4505+0x44>
   17098:	00040513          	mv	a0,s0
   1709c:	739010ef          	jal	ra,18fd4 <strcmp>
   170a0:	fa050ce3          	beqz	a0,17058 <_setlocale_r+0x28>
   170a4:	00000513          	li	a0,0
   170a8:	fb9ff06f          	j	17060 <_setlocale_r+0x30>

000170ac <__locale_mb_cur_max>:
   170ac:	d501c503          	lbu	a0,-688(gp) # 26610 <__global_locale+0x128>
   170b0:	00008067          	ret

000170b4 <setlocale>:
   170b4:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   170b8:	00058613          	mv	a2,a1
   170bc:	00050593          	mv	a1,a0
   170c0:	0007a503          	lw	a0,0(a5)
   170c4:	f6dff06f          	j	17030 <_setlocale_r>

000170c8 <__swhatbuf_r>:
   170c8:	f9010113          	addi	sp,sp,-112
   170cc:	06812423          	sw	s0,104(sp)
   170d0:	00058413          	mv	s0,a1
   170d4:	00e59583          	lh	a1,14(a1)
   170d8:	06912223          	sw	s1,100(sp)
   170dc:	07212023          	sw	s2,96(sp)
   170e0:	06112623          	sw	ra,108(sp)
   170e4:	00060493          	mv	s1,a2
   170e8:	00068913          	mv	s2,a3
   170ec:	0405ca63          	bltz	a1,17140 <__swhatbuf_r+0x78>
   170f0:	00810613          	addi	a2,sp,8
   170f4:	660060ef          	jal	ra,1d754 <_fstat_r>
   170f8:	04054463          	bltz	a0,17140 <__swhatbuf_r+0x78>
   170fc:	00c12703          	lw	a4,12(sp)
   17100:	0000f7b7          	lui	a5,0xf
   17104:	06c12083          	lw	ra,108(sp)
   17108:	00e7f7b3          	and	a5,a5,a4
   1710c:	ffffe737          	lui	a4,0xffffe
   17110:	00e787b3          	add	a5,a5,a4
   17114:	0017b793          	seqz	a5,a5
   17118:	06812403          	lw	s0,104(sp)
   1711c:	00f92023          	sw	a5,0(s2) # fffff000 <__BSS_END__+0xfffd8518>
   17120:	40000793          	li	a5,1024
   17124:	00f4a023          	sw	a5,0(s1)
   17128:	00001537          	lui	a0,0x1
   1712c:	06412483          	lw	s1,100(sp)
   17130:	06012903          	lw	s2,96(sp)
   17134:	80050513          	addi	a0,a0,-2048 # 800 <register_fini-0xf874>
   17138:	07010113          	addi	sp,sp,112
   1713c:	00008067          	ret
   17140:	00c45783          	lhu	a5,12(s0)
   17144:	00092023          	sw	zero,0(s2)
   17148:	0807f793          	andi	a5,a5,128
   1714c:	02078463          	beqz	a5,17174 <__swhatbuf_r+0xac>
   17150:	06c12083          	lw	ra,108(sp)
   17154:	06812403          	lw	s0,104(sp)
   17158:	04000793          	li	a5,64
   1715c:	00f4a023          	sw	a5,0(s1)
   17160:	06012903          	lw	s2,96(sp)
   17164:	06412483          	lw	s1,100(sp)
   17168:	00000513          	li	a0,0
   1716c:	07010113          	addi	sp,sp,112
   17170:	00008067          	ret
   17174:	06c12083          	lw	ra,108(sp)
   17178:	06812403          	lw	s0,104(sp)
   1717c:	40000793          	li	a5,1024
   17180:	00f4a023          	sw	a5,0(s1)
   17184:	06012903          	lw	s2,96(sp)
   17188:	06412483          	lw	s1,100(sp)
   1718c:	00000513          	li	a0,0
   17190:	07010113          	addi	sp,sp,112
   17194:	00008067          	ret

00017198 <__smakebuf_r>:
   17198:	00c5d703          	lhu	a4,12(a1)
   1719c:	fe010113          	addi	sp,sp,-32
   171a0:	00812c23          	sw	s0,24(sp)
   171a4:	00112e23          	sw	ra,28(sp)
   171a8:	00912a23          	sw	s1,20(sp)
   171ac:	01212823          	sw	s2,16(sp)
   171b0:	00277713          	andi	a4,a4,2
   171b4:	00058413          	mv	s0,a1
   171b8:	02070863          	beqz	a4,171e8 <__smakebuf_r+0x50>
   171bc:	04358713          	addi	a4,a1,67
   171c0:	00e5a023          	sw	a4,0(a1)
   171c4:	00e5a823          	sw	a4,16(a1)
   171c8:	00100713          	li	a4,1
   171cc:	00e5aa23          	sw	a4,20(a1)
   171d0:	01c12083          	lw	ra,28(sp)
   171d4:	01812403          	lw	s0,24(sp)
   171d8:	01412483          	lw	s1,20(sp)
   171dc:	01012903          	lw	s2,16(sp)
   171e0:	02010113          	addi	sp,sp,32
   171e4:	00008067          	ret
   171e8:	00c10693          	addi	a3,sp,12
   171ec:	00810613          	addi	a2,sp,8
   171f0:	00050493          	mv	s1,a0
   171f4:	ed5ff0ef          	jal	ra,170c8 <__swhatbuf_r>
   171f8:	00812583          	lw	a1,8(sp)
   171fc:	00050913          	mv	s2,a0
   17200:	00048513          	mv	a0,s1
   17204:	0b4000ef          	jal	ra,172b8 <_malloc_r>
   17208:	00c41783          	lh	a5,12(s0)
   1720c:	04050863          	beqz	a0,1725c <__smakebuf_r+0xc4>
   17210:	ffffd697          	auipc	a3,0xffffd
   17214:	99468693          	addi	a3,a3,-1644 # 13ba4 <_cleanup_r>
   17218:	02d4ae23          	sw	a3,60(s1)
   1721c:	00812683          	lw	a3,8(sp)
   17220:	00c12703          	lw	a4,12(sp)
   17224:	0807e793          	ori	a5,a5,128
   17228:	00f41623          	sh	a5,12(s0)
   1722c:	00a42023          	sw	a0,0(s0)
   17230:	00a42823          	sw	a0,16(s0)
   17234:	00d42a23          	sw	a3,20(s0)
   17238:	04071863          	bnez	a4,17288 <__smakebuf_r+0xf0>
   1723c:	0127e7b3          	or	a5,a5,s2
   17240:	00f41623          	sh	a5,12(s0)
   17244:	01c12083          	lw	ra,28(sp)
   17248:	01812403          	lw	s0,24(sp)
   1724c:	01412483          	lw	s1,20(sp)
   17250:	01012903          	lw	s2,16(sp)
   17254:	02010113          	addi	sp,sp,32
   17258:	00008067          	ret
   1725c:	2007f713          	andi	a4,a5,512
   17260:	f60718e3          	bnez	a4,171d0 <__smakebuf_r+0x38>
   17264:	ffc7f793          	andi	a5,a5,-4
   17268:	0027e793          	ori	a5,a5,2
   1726c:	04340713          	addi	a4,s0,67
   17270:	00f41623          	sh	a5,12(s0)
   17274:	00100793          	li	a5,1
   17278:	00e42023          	sw	a4,0(s0)
   1727c:	00e42823          	sw	a4,16(s0)
   17280:	00f42a23          	sw	a5,20(s0)
   17284:	f4dff06f          	j	171d0 <__smakebuf_r+0x38>
   17288:	00e41583          	lh	a1,14(s0)
   1728c:	00048513          	mv	a0,s1
   17290:	1dd060ef          	jal	ra,1dc6c <_isatty_r>
   17294:	00051663          	bnez	a0,172a0 <__smakebuf_r+0x108>
   17298:	00c41783          	lh	a5,12(s0)
   1729c:	fa1ff06f          	j	1723c <__smakebuf_r+0xa4>
   172a0:	00c45783          	lhu	a5,12(s0)
   172a4:	ffc7f793          	andi	a5,a5,-4
   172a8:	0017e793          	ori	a5,a5,1
   172ac:	01079793          	slli	a5,a5,0x10
   172b0:	4107d793          	srai	a5,a5,0x10
   172b4:	f89ff06f          	j	1723c <__smakebuf_r+0xa4>

000172b8 <_malloc_r>:
   172b8:	fd010113          	addi	sp,sp,-48
   172bc:	02912223          	sw	s1,36(sp)
   172c0:	03212023          	sw	s2,32(sp)
   172c4:	02112623          	sw	ra,44(sp)
   172c8:	02812423          	sw	s0,40(sp)
   172cc:	01312e23          	sw	s3,28(sp)
   172d0:	01412c23          	sw	s4,24(sp)
   172d4:	01512a23          	sw	s5,20(sp)
   172d8:	01612823          	sw	s6,16(sp)
   172dc:	01712623          	sw	s7,12(sp)
   172e0:	01812423          	sw	s8,8(sp)
   172e4:	01912223          	sw	s9,4(sp)
   172e8:	00b58493          	addi	s1,a1,11
   172ec:	01600793          	li	a5,22
   172f0:	00050913          	mv	s2,a0
   172f4:	0697e463          	bltu	a5,s1,1735c <_malloc_r+0xa4>
   172f8:	01000793          	li	a5,16
   172fc:	20b7ec63          	bltu	a5,a1,17514 <_malloc_r+0x25c>
   17300:	0d5000ef          	jal	ra,17bd4 <__malloc_lock>
   17304:	01000493          	li	s1,16
   17308:	01800793          	li	a5,24
   1730c:	00200613          	li	a2,2
   17310:	d9418993          	addi	s3,gp,-620 # 26654 <__malloc_av_>
   17314:	00f987b3          	add	a5,s3,a5
   17318:	0047a403          	lw	s0,4(a5) # f004 <register_fini-0x1070>
   1731c:	ff878713          	addi	a4,a5,-8
   17320:	24e40263          	beq	s0,a4,17564 <_malloc_r+0x2ac>
   17324:	00442783          	lw	a5,4(s0)
   17328:	00c42683          	lw	a3,12(s0)
   1732c:	00842603          	lw	a2,8(s0)
   17330:	ffc7f793          	andi	a5,a5,-4
   17334:	00f407b3          	add	a5,s0,a5
   17338:	0047a703          	lw	a4,4(a5)
   1733c:	00d62623          	sw	a3,12(a2)
   17340:	00c6a423          	sw	a2,8(a3)
   17344:	00176713          	ori	a4,a4,1
   17348:	00090513          	mv	a0,s2
   1734c:	00e7a223          	sw	a4,4(a5)
   17350:	089000ef          	jal	ra,17bd8 <__malloc_unlock>
   17354:	00840513          	addi	a0,s0,8
   17358:	1c80006f          	j	17520 <_malloc_r+0x268>
   1735c:	ff84f493          	andi	s1,s1,-8
   17360:	1a04ca63          	bltz	s1,17514 <_malloc_r+0x25c>
   17364:	1ab4e863          	bltu	s1,a1,17514 <_malloc_r+0x25c>
   17368:	06d000ef          	jal	ra,17bd4 <__malloc_lock>
   1736c:	1f700793          	li	a5,503
   17370:	4897f063          	bgeu	a5,s1,177f0 <_malloc_r+0x538>
   17374:	0094d793          	srli	a5,s1,0x9
   17378:	1c078e63          	beqz	a5,17554 <_malloc_r+0x29c>
   1737c:	00400713          	li	a4,4
   17380:	40f76463          	bltu	a4,a5,17788 <_malloc_r+0x4d0>
   17384:	0064d793          	srli	a5,s1,0x6
   17388:	03978613          	addi	a2,a5,57
   1738c:	03878513          	addi	a0,a5,56
   17390:	00361693          	slli	a3,a2,0x3
   17394:	d9418993          	addi	s3,gp,-620 # 26654 <__malloc_av_>
   17398:	00d986b3          	add	a3,s3,a3
   1739c:	0046a403          	lw	s0,4(a3)
   173a0:	ff868693          	addi	a3,a3,-8
   173a4:	02868c63          	beq	a3,s0,173dc <_malloc_r+0x124>
   173a8:	00442783          	lw	a5,4(s0)
   173ac:	00f00593          	li	a1,15
   173b0:	ffc7f793          	andi	a5,a5,-4
   173b4:	40978733          	sub	a4,a5,s1
   173b8:	02e5c063          	blt	a1,a4,173d8 <_malloc_r+0x120>
   173bc:	36075063          	bgez	a4,1771c <_malloc_r+0x464>
   173c0:	00c42403          	lw	s0,12(s0)
   173c4:	00868c63          	beq	a3,s0,173dc <_malloc_r+0x124>
   173c8:	00442783          	lw	a5,4(s0)
   173cc:	ffc7f793          	andi	a5,a5,-4
   173d0:	40978733          	sub	a4,a5,s1
   173d4:	fee5d4e3          	bge	a1,a4,173bc <_malloc_r+0x104>
   173d8:	00050613          	mv	a2,a0
   173dc:	0109a403          	lw	s0,16(s3)
   173e0:	d9c18813          	addi	a6,gp,-612 # 2665c <__malloc_av_+0x8>
   173e4:	19040c63          	beq	s0,a6,1757c <_malloc_r+0x2c4>
   173e8:	00442583          	lw	a1,4(s0)
   173ec:	00f00713          	li	a4,15
   173f0:	ffc5f593          	andi	a1,a1,-4
   173f4:	409587b3          	sub	a5,a1,s1
   173f8:	42f74263          	blt	a4,a5,1781c <_malloc_r+0x564>
   173fc:	db01a423          	sw	a6,-600(gp) # 26668 <__malloc_av_+0x14>
   17400:	db01a223          	sw	a6,-604(gp) # 26664 <__malloc_av_+0x10>
   17404:	3e07dc63          	bgez	a5,177fc <_malloc_r+0x544>
   17408:	1ff00793          	li	a5,511
   1740c:	30b7ee63          	bltu	a5,a1,17728 <_malloc_r+0x470>
   17410:	0035d593          	srli	a1,a1,0x3
   17414:	00158793          	addi	a5,a1,1
   17418:	00379793          	slli	a5,a5,0x3
   1741c:	0049a503          	lw	a0,4(s3)
   17420:	00f987b3          	add	a5,s3,a5
   17424:	0007a683          	lw	a3,0(a5)
   17428:	4025d593          	srai	a1,a1,0x2
   1742c:	00100713          	li	a4,1
   17430:	00b71733          	sll	a4,a4,a1
   17434:	00a76733          	or	a4,a4,a0
   17438:	ff878593          	addi	a1,a5,-8
   1743c:	00b42623          	sw	a1,12(s0)
   17440:	00d42423          	sw	a3,8(s0)
   17444:	d8e1ac23          	sw	a4,-616(gp) # 26658 <__malloc_av_+0x4>
   17448:	0087a023          	sw	s0,0(a5)
   1744c:	0086a623          	sw	s0,12(a3)
   17450:	40265793          	srai	a5,a2,0x2
   17454:	00100693          	li	a3,1
   17458:	00f696b3          	sll	a3,a3,a5
   1745c:	12d76a63          	bltu	a4,a3,17590 <_malloc_r+0x2d8>
   17460:	00e6f7b3          	and	a5,a3,a4
   17464:	02079463          	bnez	a5,1748c <_malloc_r+0x1d4>
   17468:	00169693          	slli	a3,a3,0x1
   1746c:	ffc67613          	andi	a2,a2,-4
   17470:	00e6f7b3          	and	a5,a3,a4
   17474:	00460613          	addi	a2,a2,4
   17478:	00079a63          	bnez	a5,1748c <_malloc_r+0x1d4>
   1747c:	00169693          	slli	a3,a3,0x1
   17480:	00e6f7b3          	and	a5,a3,a4
   17484:	00460613          	addi	a2,a2,4
   17488:	fe078ae3          	beqz	a5,1747c <_malloc_r+0x1c4>
   1748c:	00f00513          	li	a0,15
   17490:	00361893          	slli	a7,a2,0x3
   17494:	011988b3          	add	a7,s3,a7
   17498:	00088593          	mv	a1,a7
   1749c:	00060313          	mv	t1,a2
   174a0:	00c5a403          	lw	s0,12(a1)
   174a4:	00859a63          	bne	a1,s0,174b8 <_malloc_r+0x200>
   174a8:	3040006f          	j	177ac <_malloc_r+0x4f4>
   174ac:	30075a63          	bgez	a4,177c0 <_malloc_r+0x508>
   174b0:	00c42403          	lw	s0,12(s0)
   174b4:	2e858c63          	beq	a1,s0,177ac <_malloc_r+0x4f4>
   174b8:	00442783          	lw	a5,4(s0)
   174bc:	ffc7f793          	andi	a5,a5,-4
   174c0:	40978733          	sub	a4,a5,s1
   174c4:	fee554e3          	bge	a0,a4,174ac <_malloc_r+0x1f4>
   174c8:	00c42683          	lw	a3,12(s0)
   174cc:	00842603          	lw	a2,8(s0)
   174d0:	0014e593          	ori	a1,s1,1
   174d4:	00b42223          	sw	a1,4(s0)
   174d8:	00d62623          	sw	a3,12(a2)
   174dc:	00c6a423          	sw	a2,8(a3)
   174e0:	009404b3          	add	s1,s0,s1
   174e4:	da91a423          	sw	s1,-600(gp) # 26668 <__malloc_av_+0x14>
   174e8:	da91a223          	sw	s1,-604(gp) # 26664 <__malloc_av_+0x10>
   174ec:	00176693          	ori	a3,a4,1
   174f0:	0104a623          	sw	a6,12(s1)
   174f4:	0104a423          	sw	a6,8(s1)
   174f8:	00d4a223          	sw	a3,4(s1)
   174fc:	00f407b3          	add	a5,s0,a5
   17500:	00090513          	mv	a0,s2
   17504:	00e7a023          	sw	a4,0(a5)
   17508:	6d0000ef          	jal	ra,17bd8 <__malloc_unlock>
   1750c:	00840513          	addi	a0,s0,8
   17510:	0100006f          	j	17520 <_malloc_r+0x268>
   17514:	00c00793          	li	a5,12
   17518:	00f92023          	sw	a5,0(s2)
   1751c:	00000513          	li	a0,0
   17520:	02c12083          	lw	ra,44(sp)
   17524:	02812403          	lw	s0,40(sp)
   17528:	02412483          	lw	s1,36(sp)
   1752c:	02012903          	lw	s2,32(sp)
   17530:	01c12983          	lw	s3,28(sp)
   17534:	01812a03          	lw	s4,24(sp)
   17538:	01412a83          	lw	s5,20(sp)
   1753c:	01012b03          	lw	s6,16(sp)
   17540:	00c12b83          	lw	s7,12(sp)
   17544:	00812c03          	lw	s8,8(sp)
   17548:	00412c83          	lw	s9,4(sp)
   1754c:	03010113          	addi	sp,sp,48
   17550:	00008067          	ret
   17554:	20000693          	li	a3,512
   17558:	04000613          	li	a2,64
   1755c:	03f00513          	li	a0,63
   17560:	e35ff06f          	j	17394 <_malloc_r+0xdc>
   17564:	00c7a403          	lw	s0,12(a5)
   17568:	00260613          	addi	a2,a2,2
   1756c:	da879ce3          	bne	a5,s0,17324 <_malloc_r+0x6c>
   17570:	0109a403          	lw	s0,16(s3)
   17574:	d9c18813          	addi	a6,gp,-612 # 2665c <__malloc_av_+0x8>
   17578:	e70418e3          	bne	s0,a6,173e8 <_malloc_r+0x130>
   1757c:	0049a703          	lw	a4,4(s3)
   17580:	40265793          	srai	a5,a2,0x2
   17584:	00100693          	li	a3,1
   17588:	00f696b3          	sll	a3,a3,a5
   1758c:	ecd77ae3          	bgeu	a4,a3,17460 <_malloc_r+0x1a8>
   17590:	0089a403          	lw	s0,8(s3)
   17594:	00442a83          	lw	s5,4(s0)
   17598:	ffcafb93          	andi	s7,s5,-4
   1759c:	009be863          	bltu	s7,s1,175ac <_malloc_r+0x2f4>
   175a0:	409b87b3          	sub	a5,s7,s1
   175a4:	00f00713          	li	a4,15
   175a8:	14f74663          	blt	a4,a5,176f4 <_malloc_r+0x43c>
   175ac:	1d818793          	addi	a5,gp,472 # 26a98 <__malloc_top_pad>
   175b0:	1c418c13          	addi	s8,gp,452 # 26a84 <__malloc_sbrk_base>
   175b4:	0007aa83          	lw	s5,0(a5)
   175b8:	000c2703          	lw	a4,0(s8)
   175bc:	fff00793          	li	a5,-1
   175c0:	01740a33          	add	s4,s0,s7
   175c4:	01548ab3          	add	s5,s1,s5
   175c8:	32f70c63          	beq	a4,a5,17900 <_malloc_r+0x648>
   175cc:	000017b7          	lui	a5,0x1
   175d0:	00f78793          	addi	a5,a5,15 # 100f <register_fini-0xf065>
   175d4:	00fa8ab3          	add	s5,s5,a5
   175d8:	fffff7b7          	lui	a5,0xfffff
   175dc:	00fafab3          	and	s5,s5,a5
   175e0:	000a8593          	mv	a1,s5
   175e4:	00090513          	mv	a0,s2
   175e8:	6a4010ef          	jal	ra,18c8c <_sbrk_r>
   175ec:	fff00793          	li	a5,-1
   175f0:	00050b13          	mv	s6,a0
   175f4:	26f50e63          	beq	a0,a5,17870 <_malloc_r+0x5b8>
   175f8:	27456a63          	bltu	a0,s4,1786c <_malloc_r+0x5b4>
   175fc:	1fc18c93          	addi	s9,gp,508 # 26abc <__malloc_current_mallinfo>
   17600:	000ca783          	lw	a5,0(s9)
   17604:	00fa87b3          	add	a5,s5,a5
   17608:	1ef1ae23          	sw	a5,508(gp) # 26abc <__malloc_current_mallinfo>
   1760c:	00078713          	mv	a4,a5
   17610:	38aa0a63          	beq	s4,a0,179a4 <_malloc_r+0x6ec>
   17614:	000c2683          	lw	a3,0(s8)
   17618:	fff00793          	li	a5,-1
   1761c:	3af68263          	beq	a3,a5,179c0 <_malloc_r+0x708>
   17620:	414b07b3          	sub	a5,s6,s4
   17624:	00e787b3          	add	a5,a5,a4
   17628:	1ef1ae23          	sw	a5,508(gp) # 26abc <__malloc_current_mallinfo>
   1762c:	007b7c13          	andi	s8,s6,7
   17630:	2e0c0a63          	beqz	s8,17924 <_malloc_r+0x66c>
   17634:	418b0b33          	sub	s6,s6,s8
   17638:	000017b7          	lui	a5,0x1
   1763c:	008b0b13          	addi	s6,s6,8
   17640:	fff78a13          	addi	s4,a5,-1 # fff <register_fini-0xf075>
   17644:	015b0ab3          	add	s5,s6,s5
   17648:	00878793          	addi	a5,a5,8
   1764c:	014af733          	and	a4,s5,s4
   17650:	418787b3          	sub	a5,a5,s8
   17654:	40e787b3          	sub	a5,a5,a4
   17658:	0147fa33          	and	s4,a5,s4
   1765c:	000a0593          	mv	a1,s4
   17660:	00090513          	mv	a0,s2
   17664:	628010ef          	jal	ra,18c8c <_sbrk_r>
   17668:	fff00793          	li	a5,-1
   1766c:	3af50463          	beq	a0,a5,17a14 <_malloc_r+0x75c>
   17670:	41650533          	sub	a0,a0,s6
   17674:	01450ab3          	add	s5,a0,s4
   17678:	000ca783          	lw	a5,0(s9)
   1767c:	d961ae23          	sw	s6,-612(gp) # 2665c <__malloc_av_+0x8>
   17680:	001aea93          	ori	s5,s5,1
   17684:	00fa07b3          	add	a5,s4,a5
   17688:	1ef1ae23          	sw	a5,508(gp) # 26abc <__malloc_current_mallinfo>
   1768c:	015b2223          	sw	s5,4(s6)
   17690:	33340c63          	beq	s0,s3,179c8 <_malloc_r+0x710>
   17694:	00f00613          	li	a2,15
   17698:	33767c63          	bgeu	a2,s7,179d0 <_malloc_r+0x718>
   1769c:	00442683          	lw	a3,4(s0)
   176a0:	ff4b8713          	addi	a4,s7,-12
   176a4:	ff877713          	andi	a4,a4,-8
   176a8:	0016f693          	andi	a3,a3,1
   176ac:	00e6e6b3          	or	a3,a3,a4
   176b0:	00d42223          	sw	a3,4(s0)
   176b4:	00500593          	li	a1,5
   176b8:	00e406b3          	add	a3,s0,a4
   176bc:	00b6a223          	sw	a1,4(a3)
   176c0:	00b6a423          	sw	a1,8(a3)
   176c4:	36e66263          	bltu	a2,a4,17a28 <_malloc_r+0x770>
   176c8:	004b2a83          	lw	s5,4(s6)
   176cc:	000b0413          	mv	s0,s6
   176d0:	1d418713          	addi	a4,gp,468 # 26a94 <__malloc_max_sbrked_mem>
   176d4:	00072703          	lw	a4,0(a4) # ffffe000 <__BSS_END__+0xfffd7518>
   176d8:	00f77463          	bgeu	a4,a5,176e0 <_malloc_r+0x428>
   176dc:	1cf1aa23          	sw	a5,468(gp) # 26a94 <__malloc_max_sbrked_mem>
   176e0:	1d018713          	addi	a4,gp,464 # 26a90 <__malloc_max_total_mem>
   176e4:	00072703          	lw	a4,0(a4)
   176e8:	18f77863          	bgeu	a4,a5,17878 <_malloc_r+0x5c0>
   176ec:	1cf1a823          	sw	a5,464(gp) # 26a90 <__malloc_max_total_mem>
   176f0:	1880006f          	j	17878 <_malloc_r+0x5c0>
   176f4:	0014e713          	ori	a4,s1,1
   176f8:	00e42223          	sw	a4,4(s0)
   176fc:	009404b3          	add	s1,s0,s1
   17700:	d891ae23          	sw	s1,-612(gp) # 2665c <__malloc_av_+0x8>
   17704:	0017e793          	ori	a5,a5,1
   17708:	00090513          	mv	a0,s2
   1770c:	00f4a223          	sw	a5,4(s1)
   17710:	4c8000ef          	jal	ra,17bd8 <__malloc_unlock>
   17714:	00840513          	addi	a0,s0,8
   17718:	e09ff06f          	j	17520 <_malloc_r+0x268>
   1771c:	00c42683          	lw	a3,12(s0)
   17720:	00842603          	lw	a2,8(s0)
   17724:	c11ff06f          	j	17334 <_malloc_r+0x7c>
   17728:	0095d793          	srli	a5,a1,0x9
   1772c:	00400713          	li	a4,4
   17730:	12f77463          	bgeu	a4,a5,17858 <_malloc_r+0x5a0>
   17734:	01400713          	li	a4,20
   17738:	22f76063          	bltu	a4,a5,17958 <_malloc_r+0x6a0>
   1773c:	05c78693          	addi	a3,a5,92
   17740:	05b78713          	addi	a4,a5,91
   17744:	00369693          	slli	a3,a3,0x3
   17748:	00d986b3          	add	a3,s3,a3
   1774c:	0006a783          	lw	a5,0(a3)
   17750:	ff868693          	addi	a3,a3,-8
   17754:	1af68a63          	beq	a3,a5,17908 <_malloc_r+0x650>
   17758:	0047a703          	lw	a4,4(a5)
   1775c:	ffc77713          	andi	a4,a4,-4
   17760:	00e5f663          	bgeu	a1,a4,1776c <_malloc_r+0x4b4>
   17764:	0087a783          	lw	a5,8(a5)
   17768:	fef698e3          	bne	a3,a5,17758 <_malloc_r+0x4a0>
   1776c:	00c7a683          	lw	a3,12(a5)
   17770:	0049a703          	lw	a4,4(s3)
   17774:	00d42623          	sw	a3,12(s0)
   17778:	00f42423          	sw	a5,8(s0)
   1777c:	0086a423          	sw	s0,8(a3)
   17780:	0087a623          	sw	s0,12(a5)
   17784:	ccdff06f          	j	17450 <_malloc_r+0x198>
   17788:	01400713          	li	a4,20
   1778c:	10f77863          	bgeu	a4,a5,1789c <_malloc_r+0x5e4>
   17790:	05400713          	li	a4,84
   17794:	1ef76063          	bltu	a4,a5,17974 <_malloc_r+0x6bc>
   17798:	00c4d793          	srli	a5,s1,0xc
   1779c:	06f78613          	addi	a2,a5,111
   177a0:	06e78513          	addi	a0,a5,110
   177a4:	00361693          	slli	a3,a2,0x3
   177a8:	bedff06f          	j	17394 <_malloc_r+0xdc>
   177ac:	00130313          	addi	t1,t1,1
   177b0:	00337793          	andi	a5,t1,3
   177b4:	00858593          	addi	a1,a1,8
   177b8:	ce0794e3          	bnez	a5,174a0 <_malloc_r+0x1e8>
   177bc:	0fc0006f          	j	178b8 <_malloc_r+0x600>
   177c0:	00f407b3          	add	a5,s0,a5
   177c4:	0047a703          	lw	a4,4(a5)
   177c8:	00c42683          	lw	a3,12(s0)
   177cc:	00842603          	lw	a2,8(s0)
   177d0:	00176713          	ori	a4,a4,1
   177d4:	00e7a223          	sw	a4,4(a5)
   177d8:	00d62623          	sw	a3,12(a2)
   177dc:	00090513          	mv	a0,s2
   177e0:	00c6a423          	sw	a2,8(a3)
   177e4:	3f4000ef          	jal	ra,17bd8 <__malloc_unlock>
   177e8:	00840513          	addi	a0,s0,8
   177ec:	d35ff06f          	j	17520 <_malloc_r+0x268>
   177f0:	0034d613          	srli	a2,s1,0x3
   177f4:	00848793          	addi	a5,s1,8
   177f8:	b19ff06f          	j	17310 <_malloc_r+0x58>
   177fc:	00b405b3          	add	a1,s0,a1
   17800:	0045a783          	lw	a5,4(a1)
   17804:	00090513          	mv	a0,s2
   17808:	0017e793          	ori	a5,a5,1
   1780c:	00f5a223          	sw	a5,4(a1)
   17810:	3c8000ef          	jal	ra,17bd8 <__malloc_unlock>
   17814:	00840513          	addi	a0,s0,8
   17818:	d09ff06f          	j	17520 <_malloc_r+0x268>
   1781c:	0014e713          	ori	a4,s1,1
   17820:	00e42223          	sw	a4,4(s0)
   17824:	009404b3          	add	s1,s0,s1
   17828:	da91a423          	sw	s1,-600(gp) # 26668 <__malloc_av_+0x14>
   1782c:	da91a223          	sw	s1,-604(gp) # 26664 <__malloc_av_+0x10>
   17830:	0017e713          	ori	a4,a5,1
   17834:	0104a623          	sw	a6,12(s1)
   17838:	0104a423          	sw	a6,8(s1)
   1783c:	00e4a223          	sw	a4,4(s1)
   17840:	00b405b3          	add	a1,s0,a1
   17844:	00090513          	mv	a0,s2
   17848:	00f5a023          	sw	a5,0(a1)
   1784c:	38c000ef          	jal	ra,17bd8 <__malloc_unlock>
   17850:	00840513          	addi	a0,s0,8
   17854:	ccdff06f          	j	17520 <_malloc_r+0x268>
   17858:	0065d793          	srli	a5,a1,0x6
   1785c:	03978693          	addi	a3,a5,57
   17860:	03878713          	addi	a4,a5,56
   17864:	00369693          	slli	a3,a3,0x3
   17868:	ee1ff06f          	j	17748 <_malloc_r+0x490>
   1786c:	13340263          	beq	s0,s3,17990 <_malloc_r+0x6d8>
   17870:	0089a403          	lw	s0,8(s3)
   17874:	00442a83          	lw	s5,4(s0)
   17878:	ffcafa93          	andi	s5,s5,-4
   1787c:	409a87b3          	sub	a5,s5,s1
   17880:	009ae663          	bltu	s5,s1,1788c <_malloc_r+0x5d4>
   17884:	00f00713          	li	a4,15
   17888:	e6f746e3          	blt	a4,a5,176f4 <_malloc_r+0x43c>
   1788c:	00090513          	mv	a0,s2
   17890:	348000ef          	jal	ra,17bd8 <__malloc_unlock>
   17894:	00000513          	li	a0,0
   17898:	c89ff06f          	j	17520 <_malloc_r+0x268>
   1789c:	05c78613          	addi	a2,a5,92
   178a0:	05b78513          	addi	a0,a5,91
   178a4:	00361693          	slli	a3,a2,0x3
   178a8:	aedff06f          	j	17394 <_malloc_r+0xdc>
   178ac:	0088a783          	lw	a5,8(a7)
   178b0:	fff60613          	addi	a2,a2,-1
   178b4:	1d179463          	bne	a5,a7,17a7c <_malloc_r+0x7c4>
   178b8:	00367793          	andi	a5,a2,3
   178bc:	ff888893          	addi	a7,a7,-8
   178c0:	fe0796e3          	bnez	a5,178ac <_malloc_r+0x5f4>
   178c4:	0049a703          	lw	a4,4(s3)
   178c8:	fff6c793          	not	a5,a3
   178cc:	00e7f7b3          	and	a5,a5,a4
   178d0:	d8f1ac23          	sw	a5,-616(gp) # 26658 <__malloc_av_+0x4>
   178d4:	00169693          	slli	a3,a3,0x1
   178d8:	cad7ece3          	bltu	a5,a3,17590 <_malloc_r+0x2d8>
   178dc:	ca068ae3          	beqz	a3,17590 <_malloc_r+0x2d8>
   178e0:	00f6f733          	and	a4,a3,a5
   178e4:	00071a63          	bnez	a4,178f8 <_malloc_r+0x640>
   178e8:	00169693          	slli	a3,a3,0x1
   178ec:	00f6f733          	and	a4,a3,a5
   178f0:	00430313          	addi	t1,t1,4
   178f4:	fe070ae3          	beqz	a4,178e8 <_malloc_r+0x630>
   178f8:	00030613          	mv	a2,t1
   178fc:	b95ff06f          	j	17490 <_malloc_r+0x1d8>
   17900:	010a8a93          	addi	s5,s5,16
   17904:	cddff06f          	j	175e0 <_malloc_r+0x328>
   17908:	0049a503          	lw	a0,4(s3)
   1790c:	40275593          	srai	a1,a4,0x2
   17910:	00100713          	li	a4,1
   17914:	00b71733          	sll	a4,a4,a1
   17918:	00a76733          	or	a4,a4,a0
   1791c:	d8e1ac23          	sw	a4,-616(gp) # 26658 <__malloc_av_+0x4>
   17920:	e55ff06f          	j	17774 <_malloc_r+0x4bc>
   17924:	000017b7          	lui	a5,0x1
   17928:	fff78713          	addi	a4,a5,-1 # fff <register_fini-0xf075>
   1792c:	015b0a33          	add	s4,s6,s5
   17930:	00ea7a33          	and	s4,s4,a4
   17934:	414787b3          	sub	a5,a5,s4
   17938:	00e7fa33          	and	s4,a5,a4
   1793c:	000a0593          	mv	a1,s4
   17940:	00090513          	mv	a0,s2
   17944:	348010ef          	jal	ra,18c8c <_sbrk_r>
   17948:	fff00793          	li	a5,-1
   1794c:	d2f512e3          	bne	a0,a5,17670 <_malloc_r+0x3b8>
   17950:	00000a13          	li	s4,0
   17954:	d25ff06f          	j	17678 <_malloc_r+0x3c0>
   17958:	05400713          	li	a4,84
   1795c:	08f76063          	bltu	a4,a5,179dc <_malloc_r+0x724>
   17960:	00c5d793          	srli	a5,a1,0xc
   17964:	06f78693          	addi	a3,a5,111
   17968:	06e78713          	addi	a4,a5,110
   1796c:	00369693          	slli	a3,a3,0x3
   17970:	dd9ff06f          	j	17748 <_malloc_r+0x490>
   17974:	15400713          	li	a4,340
   17978:	08f76063          	bltu	a4,a5,179f8 <_malloc_r+0x740>
   1797c:	00f4d793          	srli	a5,s1,0xf
   17980:	07878613          	addi	a2,a5,120
   17984:	07778513          	addi	a0,a5,119
   17988:	00361693          	slli	a3,a2,0x3
   1798c:	a09ff06f          	j	17394 <_malloc_r+0xdc>
   17990:	1fc18c93          	addi	s9,gp,508 # 26abc <__malloc_current_mallinfo>
   17994:	000ca783          	lw	a5,0(s9)
   17998:	00fa8733          	add	a4,s5,a5
   1799c:	1ee1ae23          	sw	a4,508(gp) # 26abc <__malloc_current_mallinfo>
   179a0:	c75ff06f          	j	17614 <_malloc_r+0x35c>
   179a4:	014a1693          	slli	a3,s4,0x14
   179a8:	c60696e3          	bnez	a3,17614 <_malloc_r+0x35c>
   179ac:	0089a403          	lw	s0,8(s3)
   179b0:	015b8ab3          	add	s5,s7,s5
   179b4:	001aea93          	ori	s5,s5,1
   179b8:	01542223          	sw	s5,4(s0)
   179bc:	d15ff06f          	j	176d0 <_malloc_r+0x418>
   179c0:	1d61a223          	sw	s6,452(gp) # 26a84 <__malloc_sbrk_base>
   179c4:	c69ff06f          	j	1762c <_malloc_r+0x374>
   179c8:	000b0413          	mv	s0,s6
   179cc:	d05ff06f          	j	176d0 <_malloc_r+0x418>
   179d0:	00100793          	li	a5,1
   179d4:	00fb2223          	sw	a5,4(s6)
   179d8:	eb5ff06f          	j	1788c <_malloc_r+0x5d4>
   179dc:	15400713          	li	a4,340
   179e0:	06f76263          	bltu	a4,a5,17a44 <_malloc_r+0x78c>
   179e4:	00f5d793          	srli	a5,a1,0xf
   179e8:	07878693          	addi	a3,a5,120
   179ec:	07778713          	addi	a4,a5,119
   179f0:	00369693          	slli	a3,a3,0x3
   179f4:	d55ff06f          	j	17748 <_malloc_r+0x490>
   179f8:	55400713          	li	a4,1364
   179fc:	06f76263          	bltu	a4,a5,17a60 <_malloc_r+0x7a8>
   17a00:	0124d793          	srli	a5,s1,0x12
   17a04:	07d78613          	addi	a2,a5,125
   17a08:	07c78513          	addi	a0,a5,124
   17a0c:	00361693          	slli	a3,a2,0x3
   17a10:	985ff06f          	j	17394 <_malloc_r+0xdc>
   17a14:	ff8c0c13          	addi	s8,s8,-8
   17a18:	018a8ab3          	add	s5,s5,s8
   17a1c:	416a8ab3          	sub	s5,s5,s6
   17a20:	00000a13          	li	s4,0
   17a24:	c55ff06f          	j	17678 <_malloc_r+0x3c0>
   17a28:	00840593          	addi	a1,s0,8
   17a2c:	00090513          	mv	a0,s2
   17a30:	e0cfc0ef          	jal	ra,1403c <_free_r>
   17a34:	0089a403          	lw	s0,8(s3)
   17a38:	000ca783          	lw	a5,0(s9)
   17a3c:	00442a83          	lw	s5,4(s0)
   17a40:	c91ff06f          	j	176d0 <_malloc_r+0x418>
   17a44:	55400713          	li	a4,1364
   17a48:	02f76463          	bltu	a4,a5,17a70 <_malloc_r+0x7b8>
   17a4c:	0125d793          	srli	a5,a1,0x12
   17a50:	07d78693          	addi	a3,a5,125
   17a54:	07c78713          	addi	a4,a5,124
   17a58:	00369693          	slli	a3,a3,0x3
   17a5c:	cedff06f          	j	17748 <_malloc_r+0x490>
   17a60:	3f800693          	li	a3,1016
   17a64:	07f00613          	li	a2,127
   17a68:	07e00513          	li	a0,126
   17a6c:	929ff06f          	j	17394 <_malloc_r+0xdc>
   17a70:	3f800693          	li	a3,1016
   17a74:	07e00713          	li	a4,126
   17a78:	cd1ff06f          	j	17748 <_malloc_r+0x490>
   17a7c:	0049a783          	lw	a5,4(s3)
   17a80:	e55ff06f          	j	178d4 <_malloc_r+0x61c>

00017a84 <_mbtowc_r>:
   17a84:	c2818793          	addi	a5,gp,-984 # 264e8 <__global_locale>
   17a88:	0e47a303          	lw	t1,228(a5)
   17a8c:	00030067          	jr	t1

00017a90 <__ascii_mbtowc>:
   17a90:	02058063          	beqz	a1,17ab0 <__ascii_mbtowc+0x20>
   17a94:	04060263          	beqz	a2,17ad8 <__ascii_mbtowc+0x48>
   17a98:	04068863          	beqz	a3,17ae8 <__ascii_mbtowc+0x58>
   17a9c:	00064783          	lbu	a5,0(a2)
   17aa0:	00f5a023          	sw	a5,0(a1)
   17aa4:	00064503          	lbu	a0,0(a2)
   17aa8:	00a03533          	snez	a0,a0
   17aac:	00008067          	ret
   17ab0:	ff010113          	addi	sp,sp,-16
   17ab4:	00c10593          	addi	a1,sp,12
   17ab8:	02060463          	beqz	a2,17ae0 <__ascii_mbtowc+0x50>
   17abc:	02068a63          	beqz	a3,17af0 <__ascii_mbtowc+0x60>
   17ac0:	00064783          	lbu	a5,0(a2)
   17ac4:	00f5a023          	sw	a5,0(a1)
   17ac8:	00064503          	lbu	a0,0(a2)
   17acc:	00a03533          	snez	a0,a0
   17ad0:	01010113          	addi	sp,sp,16
   17ad4:	00008067          	ret
   17ad8:	00000513          	li	a0,0
   17adc:	00008067          	ret
   17ae0:	00000513          	li	a0,0
   17ae4:	fedff06f          	j	17ad0 <__ascii_mbtowc+0x40>
   17ae8:	ffe00513          	li	a0,-2
   17aec:	00008067          	ret
   17af0:	ffe00513          	li	a0,-2
   17af4:	fddff06f          	j	17ad0 <__ascii_mbtowc+0x40>

00017af8 <memchr>:
   17af8:	00357793          	andi	a5,a0,3
   17afc:	0ff5f813          	andi	a6,a1,255
   17b00:	0c078663          	beqz	a5,17bcc <memchr+0xd4>
   17b04:	fff60793          	addi	a5,a2,-1
   17b08:	04060e63          	beqz	a2,17b64 <memchr+0x6c>
   17b0c:	00054703          	lbu	a4,0(a0)
   17b10:	05070c63          	beq	a4,a6,17b68 <memchr+0x70>
   17b14:	fff00693          	li	a3,-1
   17b18:	0140006f          	j	17b2c <memchr+0x34>
   17b1c:	fff78793          	addi	a5,a5,-1
   17b20:	04d78263          	beq	a5,a3,17b64 <memchr+0x6c>
   17b24:	00054703          	lbu	a4,0(a0)
   17b28:	05070063          	beq	a4,a6,17b68 <memchr+0x70>
   17b2c:	00150513          	addi	a0,a0,1
   17b30:	00357713          	andi	a4,a0,3
   17b34:	fe0714e3          	bnez	a4,17b1c <memchr+0x24>
   17b38:	00300713          	li	a4,3
   17b3c:	02f76863          	bltu	a4,a5,17b6c <memchr+0x74>
   17b40:	02078263          	beqz	a5,17b64 <memchr+0x6c>
   17b44:	00054703          	lbu	a4,0(a0)
   17b48:	03070063          	beq	a4,a6,17b68 <memchr+0x70>
   17b4c:	00f507b3          	add	a5,a0,a5
   17b50:	00c0006f          	j	17b5c <memchr+0x64>
   17b54:	00054703          	lbu	a4,0(a0)
   17b58:	01070863          	beq	a4,a6,17b68 <memchr+0x70>
   17b5c:	00150513          	addi	a0,a0,1
   17b60:	fea79ae3          	bne	a5,a0,17b54 <memchr+0x5c>
   17b64:	00000513          	li	a0,0
   17b68:	00008067          	ret
   17b6c:	00010737          	lui	a4,0x10
   17b70:	00859893          	slli	a7,a1,0x8
   17b74:	fff70713          	addi	a4,a4,-1 # ffff <register_fini-0x75>
   17b78:	00e8f8b3          	and	a7,a7,a4
   17b7c:	0ff5f593          	andi	a1,a1,255
   17b80:	00b8e5b3          	or	a1,a7,a1
   17b84:	01059893          	slli	a7,a1,0x10
   17b88:	00b8e8b3          	or	a7,a7,a1
   17b8c:	80808637          	lui	a2,0x80808
   17b90:	feff05b7          	lui	a1,0xfeff0
   17b94:	eff58593          	addi	a1,a1,-257 # fefefeff <__BSS_END__+0xfefc9417>
   17b98:	08060613          	addi	a2,a2,128 # 80808080 <__BSS_END__+0x807e1598>
   17b9c:	00300313          	li	t1,3
   17ba0:	00052703          	lw	a4,0(a0)
   17ba4:	00e8c733          	xor	a4,a7,a4
   17ba8:	00b706b3          	add	a3,a4,a1
   17bac:	fff74713          	not	a4,a4
   17bb0:	00e6f733          	and	a4,a3,a4
   17bb4:	00c77733          	and	a4,a4,a2
   17bb8:	f80716e3          	bnez	a4,17b44 <memchr+0x4c>
   17bbc:	ffc78793          	addi	a5,a5,-4
   17bc0:	00450513          	addi	a0,a0,4
   17bc4:	fcf36ee3          	bltu	t1,a5,17ba0 <memchr+0xa8>
   17bc8:	f79ff06f          	j	17b40 <memchr+0x48>
   17bcc:	00060793          	mv	a5,a2
   17bd0:	f69ff06f          	j	17b38 <memchr+0x40>

00017bd4 <__malloc_lock>:
   17bd4:	00008067          	ret

00017bd8 <__malloc_unlock>:
   17bd8:	00008067          	ret

00017bdc <_Balloc>:
   17bdc:	04c52783          	lw	a5,76(a0)
   17be0:	ff010113          	addi	sp,sp,-16
   17be4:	00812423          	sw	s0,8(sp)
   17be8:	00912223          	sw	s1,4(sp)
   17bec:	00112623          	sw	ra,12(sp)
   17bf0:	01212023          	sw	s2,0(sp)
   17bf4:	00050413          	mv	s0,a0
   17bf8:	00058493          	mv	s1,a1
   17bfc:	02078e63          	beqz	a5,17c38 <_Balloc+0x5c>
   17c00:	00249713          	slli	a4,s1,0x2
   17c04:	00e787b3          	add	a5,a5,a4
   17c08:	0007a503          	lw	a0,0(a5)
   17c0c:	04050663          	beqz	a0,17c58 <_Balloc+0x7c>
   17c10:	00052703          	lw	a4,0(a0)
   17c14:	00e7a023          	sw	a4,0(a5)
   17c18:	00052823          	sw	zero,16(a0)
   17c1c:	00052623          	sw	zero,12(a0)
   17c20:	00c12083          	lw	ra,12(sp)
   17c24:	00812403          	lw	s0,8(sp)
   17c28:	00412483          	lw	s1,4(sp)
   17c2c:	00012903          	lw	s2,0(sp)
   17c30:	01010113          	addi	sp,sp,16
   17c34:	00008067          	ret
   17c38:	02100613          	li	a2,33
   17c3c:	00400593          	li	a1,4
   17c40:	6fc050ef          	jal	ra,1d33c <_calloc_r>
   17c44:	04a42623          	sw	a0,76(s0)
   17c48:	00050793          	mv	a5,a0
   17c4c:	fa051ae3          	bnez	a0,17c00 <_Balloc+0x24>
   17c50:	00000513          	li	a0,0
   17c54:	fcdff06f          	j	17c20 <_Balloc+0x44>
   17c58:	00100913          	li	s2,1
   17c5c:	00991933          	sll	s2,s2,s1
   17c60:	00590613          	addi	a2,s2,5
   17c64:	00261613          	slli	a2,a2,0x2
   17c68:	00100593          	li	a1,1
   17c6c:	00040513          	mv	a0,s0
   17c70:	6cc050ef          	jal	ra,1d33c <_calloc_r>
   17c74:	fc050ee3          	beqz	a0,17c50 <_Balloc+0x74>
   17c78:	00952223          	sw	s1,4(a0)
   17c7c:	01252423          	sw	s2,8(a0)
   17c80:	f99ff06f          	j	17c18 <_Balloc+0x3c>

00017c84 <_Bfree>:
   17c84:	02058063          	beqz	a1,17ca4 <_Bfree+0x20>
   17c88:	0045a703          	lw	a4,4(a1)
   17c8c:	04c52783          	lw	a5,76(a0)
   17c90:	00271713          	slli	a4,a4,0x2
   17c94:	00e787b3          	add	a5,a5,a4
   17c98:	0007a703          	lw	a4,0(a5)
   17c9c:	00e5a023          	sw	a4,0(a1)
   17ca0:	00b7a023          	sw	a1,0(a5)
   17ca4:	00008067          	ret

00017ca8 <__multadd>:
   17ca8:	fd010113          	addi	sp,sp,-48
   17cac:	01312e23          	sw	s3,28(sp)
   17cb0:	0105a983          	lw	s3,16(a1)
   17cb4:	01812423          	sw	s8,8(sp)
   17cb8:	00010c37          	lui	s8,0x10
   17cbc:	02812423          	sw	s0,40(sp)
   17cc0:	02912223          	sw	s1,36(sp)
   17cc4:	03212023          	sw	s2,32(sp)
   17cc8:	01412c23          	sw	s4,24(sp)
   17ccc:	01512a23          	sw	s5,20(sp)
   17cd0:	01612823          	sw	s6,16(sp)
   17cd4:	02112623          	sw	ra,44(sp)
   17cd8:	01712623          	sw	s7,12(sp)
   17cdc:	00058a13          	mv	s4,a1
   17ce0:	00050a93          	mv	s5,a0
   17ce4:	00060913          	mv	s2,a2
   17ce8:	00068413          	mv	s0,a3
   17cec:	01458493          	addi	s1,a1,20
   17cf0:	00000b13          	li	s6,0
   17cf4:	fffc0c13          	addi	s8,s8,-1 # ffff <register_fini-0x75>
   17cf8:	0004ab83          	lw	s7,0(s1)
   17cfc:	00090593          	mv	a1,s2
   17d00:	00448493          	addi	s1,s1,4
   17d04:	018bf533          	and	a0,s7,s8
   17d08:	e54f80ef          	jal	ra,1035c <__mulsi3>
   17d0c:	00850433          	add	s0,a0,s0
   17d10:	00090593          	mv	a1,s2
   17d14:	010bd513          	srli	a0,s7,0x10
   17d18:	e44f80ef          	jal	ra,1035c <__mulsi3>
   17d1c:	01045693          	srli	a3,s0,0x10
   17d20:	00d50533          	add	a0,a0,a3
   17d24:	01051693          	slli	a3,a0,0x10
   17d28:	01847433          	and	s0,s0,s8
   17d2c:	00868433          	add	s0,a3,s0
   17d30:	fe84ae23          	sw	s0,-4(s1)
   17d34:	001b0b13          	addi	s6,s6,1
   17d38:	01055413          	srli	s0,a0,0x10
   17d3c:	fb3b4ee3          	blt	s6,s3,17cf8 <__multadd+0x50>
   17d40:	02040263          	beqz	s0,17d64 <__multadd+0xbc>
   17d44:	008a2783          	lw	a5,8(s4)
   17d48:	04f9d863          	bge	s3,a5,17d98 <__multadd+0xf0>
   17d4c:	00498793          	addi	a5,s3,4
   17d50:	00279793          	slli	a5,a5,0x2
   17d54:	00fa07b3          	add	a5,s4,a5
   17d58:	0087a223          	sw	s0,4(a5)
   17d5c:	00198993          	addi	s3,s3,1
   17d60:	013a2823          	sw	s3,16(s4)
   17d64:	02c12083          	lw	ra,44(sp)
   17d68:	02812403          	lw	s0,40(sp)
   17d6c:	000a0513          	mv	a0,s4
   17d70:	02412483          	lw	s1,36(sp)
   17d74:	02012903          	lw	s2,32(sp)
   17d78:	01c12983          	lw	s3,28(sp)
   17d7c:	01812a03          	lw	s4,24(sp)
   17d80:	01412a83          	lw	s5,20(sp)
   17d84:	01012b03          	lw	s6,16(sp)
   17d88:	00c12b83          	lw	s7,12(sp)
   17d8c:	00812c03          	lw	s8,8(sp)
   17d90:	03010113          	addi	sp,sp,48
   17d94:	00008067          	ret
   17d98:	004a2583          	lw	a1,4(s4)
   17d9c:	000a8513          	mv	a0,s5
   17da0:	00158593          	addi	a1,a1,1
   17da4:	e39ff0ef          	jal	ra,17bdc <_Balloc>
   17da8:	010a2603          	lw	a2,16(s4)
   17dac:	00050493          	mv	s1,a0
   17db0:	00ca0593          	addi	a1,s4,12
   17db4:	00260613          	addi	a2,a2,2
   17db8:	00c50513          	addi	a0,a0,12
   17dbc:	00261613          	slli	a2,a2,0x2
   17dc0:	761050ef          	jal	ra,1dd20 <memcpy>
   17dc4:	004a2703          	lw	a4,4(s4)
   17dc8:	04caa783          	lw	a5,76(s5)
   17dcc:	00271713          	slli	a4,a4,0x2
   17dd0:	00e787b3          	add	a5,a5,a4
   17dd4:	0007a703          	lw	a4,0(a5)
   17dd8:	00ea2023          	sw	a4,0(s4)
   17ddc:	0147a023          	sw	s4,0(a5)
   17de0:	00498793          	addi	a5,s3,4
   17de4:	00048a13          	mv	s4,s1
   17de8:	00279793          	slli	a5,a5,0x2
   17dec:	00fa07b3          	add	a5,s4,a5
   17df0:	0087a223          	sw	s0,4(a5)
   17df4:	00198993          	addi	s3,s3,1
   17df8:	013a2823          	sw	s3,16(s4)
   17dfc:	f69ff06f          	j	17d64 <__multadd+0xbc>

00017e00 <__s2b>:
   17e00:	fe010113          	addi	sp,sp,-32
   17e04:	00812c23          	sw	s0,24(sp)
   17e08:	01212823          	sw	s2,16(sp)
   17e0c:	00058413          	mv	s0,a1
   17e10:	00050913          	mv	s2,a0
   17e14:	00900593          	li	a1,9
   17e18:	00868513          	addi	a0,a3,8
   17e1c:	00912a23          	sw	s1,20(sp)
   17e20:	01312623          	sw	s3,12(sp)
   17e24:	01412423          	sw	s4,8(sp)
   17e28:	00112e23          	sw	ra,28(sp)
   17e2c:	01512223          	sw	s5,4(sp)
   17e30:	00068493          	mv	s1,a3
   17e34:	00060a13          	mv	s4,a2
   17e38:	00070993          	mv	s3,a4
   17e3c:	d44f80ef          	jal	ra,10380 <__divsi3>
   17e40:	00900793          	li	a5,9
   17e44:	0c97d263          	bge	a5,s1,17f08 <__s2b+0x108>
   17e48:	00100793          	li	a5,1
   17e4c:	00000593          	li	a1,0
   17e50:	00179793          	slli	a5,a5,0x1
   17e54:	00158593          	addi	a1,a1,1
   17e58:	fea7cce3          	blt	a5,a0,17e50 <__s2b+0x50>
   17e5c:	00090513          	mv	a0,s2
   17e60:	d7dff0ef          	jal	ra,17bdc <_Balloc>
   17e64:	00100793          	li	a5,1
   17e68:	00f52823          	sw	a5,16(a0)
   17e6c:	01352a23          	sw	s3,20(a0)
   17e70:	00900793          	li	a5,9
   17e74:	0947d463          	bge	a5,s4,17efc <__s2b+0xfc>
   17e78:	00940a93          	addi	s5,s0,9
   17e7c:	014409b3          	add	s3,s0,s4
   17e80:	000a8413          	mv	s0,s5
   17e84:	00140413          	addi	s0,s0,1
   17e88:	fff44683          	lbu	a3,-1(s0)
   17e8c:	00050593          	mv	a1,a0
   17e90:	00a00613          	li	a2,10
   17e94:	fd068693          	addi	a3,a3,-48
   17e98:	00090513          	mv	a0,s2
   17e9c:	e0dff0ef          	jal	ra,17ca8 <__multadd>
   17ea0:	fe8992e3          	bne	s3,s0,17e84 <__s2b+0x84>
   17ea4:	ff8a0413          	addi	s0,s4,-8
   17ea8:	008a8433          	add	s0,s5,s0
   17eac:	029a5663          	bge	s4,s1,17ed8 <__s2b+0xd8>
   17eb0:	414484b3          	sub	s1,s1,s4
   17eb4:	009404b3          	add	s1,s0,s1
   17eb8:	00140413          	addi	s0,s0,1
   17ebc:	fff44683          	lbu	a3,-1(s0)
   17ec0:	00050593          	mv	a1,a0
   17ec4:	00a00613          	li	a2,10
   17ec8:	fd068693          	addi	a3,a3,-48
   17ecc:	00090513          	mv	a0,s2
   17ed0:	dd9ff0ef          	jal	ra,17ca8 <__multadd>
   17ed4:	fe8492e3          	bne	s1,s0,17eb8 <__s2b+0xb8>
   17ed8:	01c12083          	lw	ra,28(sp)
   17edc:	01812403          	lw	s0,24(sp)
   17ee0:	01412483          	lw	s1,20(sp)
   17ee4:	01012903          	lw	s2,16(sp)
   17ee8:	00c12983          	lw	s3,12(sp)
   17eec:	00812a03          	lw	s4,8(sp)
   17ef0:	00412a83          	lw	s5,4(sp)
   17ef4:	02010113          	addi	sp,sp,32
   17ef8:	00008067          	ret
   17efc:	00a40413          	addi	s0,s0,10
   17f00:	00900a13          	li	s4,9
   17f04:	fa9ff06f          	j	17eac <__s2b+0xac>
   17f08:	00000593          	li	a1,0
   17f0c:	f51ff06f          	j	17e5c <__s2b+0x5c>

00017f10 <__hi0bits>:
   17f10:	ffff0737          	lui	a4,0xffff0
   17f14:	00e57733          	and	a4,a0,a4
   17f18:	00050793          	mv	a5,a0
   17f1c:	00000513          	li	a0,0
   17f20:	00071663          	bnez	a4,17f2c <__hi0bits+0x1c>
   17f24:	01079793          	slli	a5,a5,0x10
   17f28:	01000513          	li	a0,16
   17f2c:	ff000737          	lui	a4,0xff000
   17f30:	00e7f733          	and	a4,a5,a4
   17f34:	00071663          	bnez	a4,17f40 <__hi0bits+0x30>
   17f38:	00850513          	addi	a0,a0,8
   17f3c:	00879793          	slli	a5,a5,0x8
   17f40:	f0000737          	lui	a4,0xf0000
   17f44:	00e7f733          	and	a4,a5,a4
   17f48:	00071663          	bnez	a4,17f54 <__hi0bits+0x44>
   17f4c:	00450513          	addi	a0,a0,4
   17f50:	00479793          	slli	a5,a5,0x4
   17f54:	c0000737          	lui	a4,0xc0000
   17f58:	00e7f733          	and	a4,a5,a4
   17f5c:	00071663          	bnez	a4,17f68 <__hi0bits+0x58>
   17f60:	00250513          	addi	a0,a0,2
   17f64:	00279793          	slli	a5,a5,0x2
   17f68:	0007c863          	bltz	a5,17f78 <__hi0bits+0x68>
   17f6c:	00179713          	slli	a4,a5,0x1
   17f70:	00150513          	addi	a0,a0,1
   17f74:	00075463          	bgez	a4,17f7c <__hi0bits+0x6c>
   17f78:	00008067          	ret
   17f7c:	02000513          	li	a0,32
   17f80:	00008067          	ret

00017f84 <__lo0bits>:
   17f84:	00052783          	lw	a5,0(a0)
   17f88:	0077f713          	andi	a4,a5,7
   17f8c:	02070663          	beqz	a4,17fb8 <__lo0bits+0x34>
   17f90:	0017f693          	andi	a3,a5,1
   17f94:	00000713          	li	a4,0
   17f98:	00069c63          	bnez	a3,17fb0 <__lo0bits+0x2c>
   17f9c:	0027f713          	andi	a4,a5,2
   17fa0:	08070463          	beqz	a4,18028 <__lo0bits+0xa4>
   17fa4:	0017d793          	srli	a5,a5,0x1
   17fa8:	00f52023          	sw	a5,0(a0)
   17fac:	00100713          	li	a4,1
   17fb0:	00070513          	mv	a0,a4
   17fb4:	00008067          	ret
   17fb8:	01079693          	slli	a3,a5,0x10
   17fbc:	0106d693          	srli	a3,a3,0x10
   17fc0:	00000713          	li	a4,0
   17fc4:	00069663          	bnez	a3,17fd0 <__lo0bits+0x4c>
   17fc8:	0107d793          	srli	a5,a5,0x10
   17fcc:	01000713          	li	a4,16
   17fd0:	0ff7f693          	andi	a3,a5,255
   17fd4:	00069663          	bnez	a3,17fe0 <__lo0bits+0x5c>
   17fd8:	00870713          	addi	a4,a4,8 # c0000008 <__BSS_END__+0xbffd9520>
   17fdc:	0087d793          	srli	a5,a5,0x8
   17fe0:	00f7f693          	andi	a3,a5,15
   17fe4:	00069663          	bnez	a3,17ff0 <__lo0bits+0x6c>
   17fe8:	00470713          	addi	a4,a4,4
   17fec:	0047d793          	srli	a5,a5,0x4
   17ff0:	0037f693          	andi	a3,a5,3
   17ff4:	00069663          	bnez	a3,18000 <__lo0bits+0x7c>
   17ff8:	00270713          	addi	a4,a4,2
   17ffc:	0027d793          	srli	a5,a5,0x2
   18000:	0017f693          	andi	a3,a5,1
   18004:	00069863          	bnez	a3,18014 <__lo0bits+0x90>
   18008:	0017d793          	srli	a5,a5,0x1
   1800c:	00170713          	addi	a4,a4,1
   18010:	00078863          	beqz	a5,18020 <__lo0bits+0x9c>
   18014:	00f52023          	sw	a5,0(a0)
   18018:	00070513          	mv	a0,a4
   1801c:	00008067          	ret
   18020:	02000713          	li	a4,32
   18024:	f8dff06f          	j	17fb0 <__lo0bits+0x2c>
   18028:	0027d793          	srli	a5,a5,0x2
   1802c:	00200713          	li	a4,2
   18030:	00f52023          	sw	a5,0(a0)
   18034:	00070513          	mv	a0,a4
   18038:	00008067          	ret

0001803c <__i2b>:
   1803c:	ff010113          	addi	sp,sp,-16
   18040:	00812423          	sw	s0,8(sp)
   18044:	00058413          	mv	s0,a1
   18048:	00100593          	li	a1,1
   1804c:	00112623          	sw	ra,12(sp)
   18050:	b8dff0ef          	jal	ra,17bdc <_Balloc>
   18054:	00852a23          	sw	s0,20(a0)
   18058:	00c12083          	lw	ra,12(sp)
   1805c:	00812403          	lw	s0,8(sp)
   18060:	00100713          	li	a4,1
   18064:	00e52823          	sw	a4,16(a0)
   18068:	01010113          	addi	sp,sp,16
   1806c:	00008067          	ret

00018070 <__multiply>:
   18070:	fb010113          	addi	sp,sp,-80
   18074:	03312e23          	sw	s3,60(sp)
   18078:	03812423          	sw	s8,40(sp)
   1807c:	01062983          	lw	s3,16(a2)
   18080:	0105ac03          	lw	s8,16(a1)
   18084:	03412c23          	sw	s4,56(sp)
   18088:	03912223          	sw	s9,36(sp)
   1808c:	04112623          	sw	ra,76(sp)
   18090:	04812423          	sw	s0,72(sp)
   18094:	04912223          	sw	s1,68(sp)
   18098:	05212023          	sw	s2,64(sp)
   1809c:	03512a23          	sw	s5,52(sp)
   180a0:	03612823          	sw	s6,48(sp)
   180a4:	03712623          	sw	s7,44(sp)
   180a8:	03a12023          	sw	s10,32(sp)
   180ac:	01b12e23          	sw	s11,28(sp)
   180b0:	00058a13          	mv	s4,a1
   180b4:	00060c93          	mv	s9,a2
   180b8:	013c4c63          	blt	s8,s3,180d0 <__multiply+0x60>
   180bc:	00098713          	mv	a4,s3
   180c0:	00058c93          	mv	s9,a1
   180c4:	000c0993          	mv	s3,s8
   180c8:	00060a13          	mv	s4,a2
   180cc:	00070c13          	mv	s8,a4
   180d0:	008ca783          	lw	a5,8(s9)
   180d4:	004ca583          	lw	a1,4(s9)
   180d8:	01898b33          	add	s6,s3,s8
   180dc:	0167a7b3          	slt	a5,a5,s6
   180e0:	00f585b3          	add	a1,a1,a5
   180e4:	af9ff0ef          	jal	ra,17bdc <_Balloc>
   180e8:	01450b93          	addi	s7,a0,20
   180ec:	002b1a93          	slli	s5,s6,0x2
   180f0:	015b87b3          	add	a5,s7,s5
   180f4:	00078713          	mv	a4,a5
   180f8:	00f12023          	sw	a5,0(sp)
   180fc:	00a12623          	sw	a0,12(sp)
   18100:	000b8793          	mv	a5,s7
   18104:	00ebfa63          	bgeu	s7,a4,18118 <__multiply+0xa8>
   18108:	00012703          	lw	a4,0(sp)
   1810c:	0007a023          	sw	zero,0(a5)
   18110:	00478793          	addi	a5,a5,4
   18114:	fee7eae3          	bltu	a5,a4,18108 <__multiply+0x98>
   18118:	014a0a13          	addi	s4,s4,20
   1811c:	002c1c13          	slli	s8,s8,0x2
   18120:	014c8793          	addi	a5,s9,20
   18124:	018a0733          	add	a4,s4,s8
   18128:	00299993          	slli	s3,s3,0x2
   1812c:	000104b7          	lui	s1,0x10
   18130:	00f12423          	sw	a5,8(sp)
   18134:	00e12223          	sw	a4,4(sp)
   18138:	013789b3          	add	s3,a5,s3
   1813c:	fff48493          	addi	s1,s1,-1 # ffff <register_fini-0x75>
   18140:	02ea6063          	bltu	s4,a4,18160 <__multiply+0xf0>
   18144:	1240006f          	j	18268 <__multiply+0x1f8>
   18148:	0107d913          	srli	s2,a5,0x10
   1814c:	08091c63          	bnez	s2,181e4 <__multiply+0x174>
   18150:	00412783          	lw	a5,4(sp)
   18154:	004a0a13          	addi	s4,s4,4
   18158:	004b8b93          	addi	s7,s7,4
   1815c:	10fa7663          	bgeu	s4,a5,18268 <__multiply+0x1f8>
   18160:	000a2783          	lw	a5,0(s4)
   18164:	0097f933          	and	s2,a5,s1
   18168:	fe0900e3          	beqz	s2,18148 <__multiply+0xd8>
   1816c:	00812d03          	lw	s10,8(sp)
   18170:	000b8c13          	mv	s8,s7
   18174:	00000c93          	li	s9,0
   18178:	000d2a83          	lw	s5,0(s10) # 1000 <register_fini-0xf074>
   1817c:	000c2403          	lw	s0,0(s8)
   18180:	00090593          	mv	a1,s2
   18184:	009af533          	and	a0,s5,s1
   18188:	9d4f80ef          	jal	ra,1035c <__mulsi3>
   1818c:	00947db3          	and	s11,s0,s1
   18190:	01b50db3          	add	s11,a0,s11
   18194:	00090593          	mv	a1,s2
   18198:	010ad513          	srli	a0,s5,0x10
   1819c:	019d8db3          	add	s11,s11,s9
   181a0:	9bcf80ef          	jal	ra,1035c <__mulsi3>
   181a4:	01045413          	srli	s0,s0,0x10
   181a8:	00850533          	add	a0,a0,s0
   181ac:	010dd413          	srli	s0,s11,0x10
   181b0:	00850533          	add	a0,a0,s0
   181b4:	01051693          	slli	a3,a0,0x10
   181b8:	009dfdb3          	and	s11,s11,s1
   181bc:	004c0c13          	addi	s8,s8,4
   181c0:	01b6edb3          	or	s11,a3,s11
   181c4:	004d0d13          	addi	s10,s10,4
   181c8:	ffbc2e23          	sw	s11,-4(s8)
   181cc:	01055c93          	srli	s9,a0,0x10
   181d0:	fb3d64e3          	bltu	s10,s3,18178 <__multiply+0x108>
   181d4:	019c2023          	sw	s9,0(s8)
   181d8:	000a2783          	lw	a5,0(s4)
   181dc:	0107d913          	srli	s2,a5,0x10
   181e0:	f60908e3          	beqz	s2,18150 <__multiply+0xe0>
   181e4:	000ba403          	lw	s0,0(s7)
   181e8:	00812c03          	lw	s8,8(sp)
   181ec:	000b8d13          	mv	s10,s7
   181f0:	00040d93          	mv	s11,s0
   181f4:	00000c93          	li	s9,0
   181f8:	000c2503          	lw	a0,0(s8)
   181fc:	00090593          	mv	a1,s2
   18200:	010ddd93          	srli	s11,s11,0x10
   18204:	00957533          	and	a0,a0,s1
   18208:	954f80ef          	jal	ra,1035c <__mulsi3>
   1820c:	01b50db3          	add	s11,a0,s11
   18210:	019d8cb3          	add	s9,s11,s9
   18214:	010c9513          	slli	a0,s9,0x10
   18218:	00947433          	and	s0,s0,s1
   1821c:	00856433          	or	s0,a0,s0
   18220:	004d0d13          	addi	s10,s10,4
   18224:	fe8d2e23          	sw	s0,-4(s10)
   18228:	004c0c13          	addi	s8,s8,4
   1822c:	000d2d83          	lw	s11,0(s10)
   18230:	ffec5503          	lhu	a0,-2(s8)
   18234:	00090593          	mv	a1,s2
   18238:	009df433          	and	s0,s11,s1
   1823c:	920f80ef          	jal	ra,1035c <__mulsi3>
   18240:	010cd793          	srli	a5,s9,0x10
   18244:	00850433          	add	s0,a0,s0
   18248:	00f40433          	add	s0,s0,a5
   1824c:	01045c93          	srli	s9,s0,0x10
   18250:	fb3c64e3          	bltu	s8,s3,181f8 <__multiply+0x188>
   18254:	00412783          	lw	a5,4(sp)
   18258:	008d2023          	sw	s0,0(s10)
   1825c:	004a0a13          	addi	s4,s4,4
   18260:	004b8b93          	addi	s7,s7,4
   18264:	eefa6ee3          	bltu	s4,a5,18160 <__multiply+0xf0>
   18268:	03605663          	blez	s6,18294 <__multiply+0x224>
   1826c:	00012703          	lw	a4,0(sp)
   18270:	ffc72783          	lw	a5,-4(a4)
   18274:	ffc70a93          	addi	s5,a4,-4
   18278:	00078863          	beqz	a5,18288 <__multiply+0x218>
   1827c:	0180006f          	j	18294 <__multiply+0x224>
   18280:	000aa783          	lw	a5,0(s5)
   18284:	00079863          	bnez	a5,18294 <__multiply+0x224>
   18288:	fffb0b13          	addi	s6,s6,-1
   1828c:	ffca8a93          	addi	s5,s5,-4
   18290:	fe0b18e3          	bnez	s6,18280 <__multiply+0x210>
   18294:	00c12783          	lw	a5,12(sp)
   18298:	04c12083          	lw	ra,76(sp)
   1829c:	04812403          	lw	s0,72(sp)
   182a0:	0167a823          	sw	s6,16(a5)
   182a4:	04412483          	lw	s1,68(sp)
   182a8:	04012903          	lw	s2,64(sp)
   182ac:	03c12983          	lw	s3,60(sp)
   182b0:	03812a03          	lw	s4,56(sp)
   182b4:	03412a83          	lw	s5,52(sp)
   182b8:	03012b03          	lw	s6,48(sp)
   182bc:	02c12b83          	lw	s7,44(sp)
   182c0:	02812c03          	lw	s8,40(sp)
   182c4:	02412c83          	lw	s9,36(sp)
   182c8:	02012d03          	lw	s10,32(sp)
   182cc:	01c12d83          	lw	s11,28(sp)
   182d0:	00078513          	mv	a0,a5
   182d4:	05010113          	addi	sp,sp,80
   182d8:	00008067          	ret

000182dc <__pow5mult>:
   182dc:	fe010113          	addi	sp,sp,-32
   182e0:	00812c23          	sw	s0,24(sp)
   182e4:	01312623          	sw	s3,12(sp)
   182e8:	01412423          	sw	s4,8(sp)
   182ec:	00112e23          	sw	ra,28(sp)
   182f0:	00912a23          	sw	s1,20(sp)
   182f4:	01212823          	sw	s2,16(sp)
   182f8:	00367793          	andi	a5,a2,3
   182fc:	00060413          	mv	s0,a2
   18300:	00050993          	mv	s3,a0
   18304:	00058a13          	mv	s4,a1
   18308:	0c079463          	bnez	a5,183d0 <__pow5mult+0xf4>
   1830c:	40245413          	srai	s0,s0,0x2
   18310:	000a0913          	mv	s2,s4
   18314:	06040863          	beqz	s0,18384 <__pow5mult+0xa8>
   18318:	0489a483          	lw	s1,72(s3)
   1831c:	0c048e63          	beqz	s1,183f8 <__pow5mult+0x11c>
   18320:	00147793          	andi	a5,s0,1
   18324:	000a0913          	mv	s2,s4
   18328:	02079063          	bnez	a5,18348 <__pow5mult+0x6c>
   1832c:	40145413          	srai	s0,s0,0x1
   18330:	04040a63          	beqz	s0,18384 <__pow5mult+0xa8>
   18334:	0004a503          	lw	a0,0(s1)
   18338:	06050863          	beqz	a0,183a8 <__pow5mult+0xcc>
   1833c:	00050493          	mv	s1,a0
   18340:	00147793          	andi	a5,s0,1
   18344:	fe0784e3          	beqz	a5,1832c <__pow5mult+0x50>
   18348:	00048613          	mv	a2,s1
   1834c:	00090593          	mv	a1,s2
   18350:	00098513          	mv	a0,s3
   18354:	d1dff0ef          	jal	ra,18070 <__multiply>
   18358:	06090863          	beqz	s2,183c8 <__pow5mult+0xec>
   1835c:	00492703          	lw	a4,4(s2)
   18360:	04c9a783          	lw	a5,76(s3)
   18364:	40145413          	srai	s0,s0,0x1
   18368:	00271713          	slli	a4,a4,0x2
   1836c:	00e787b3          	add	a5,a5,a4
   18370:	0007a703          	lw	a4,0(a5)
   18374:	00e92023          	sw	a4,0(s2)
   18378:	0127a023          	sw	s2,0(a5)
   1837c:	00050913          	mv	s2,a0
   18380:	fa041ae3          	bnez	s0,18334 <__pow5mult+0x58>
   18384:	01c12083          	lw	ra,28(sp)
   18388:	01812403          	lw	s0,24(sp)
   1838c:	00090513          	mv	a0,s2
   18390:	01412483          	lw	s1,20(sp)
   18394:	01012903          	lw	s2,16(sp)
   18398:	00c12983          	lw	s3,12(sp)
   1839c:	00812a03          	lw	s4,8(sp)
   183a0:	02010113          	addi	sp,sp,32
   183a4:	00008067          	ret
   183a8:	00048613          	mv	a2,s1
   183ac:	00048593          	mv	a1,s1
   183b0:	00098513          	mv	a0,s3
   183b4:	cbdff0ef          	jal	ra,18070 <__multiply>
   183b8:	00a4a023          	sw	a0,0(s1)
   183bc:	00052023          	sw	zero,0(a0)
   183c0:	00050493          	mv	s1,a0
   183c4:	f7dff06f          	j	18340 <__pow5mult+0x64>
   183c8:	00050913          	mv	s2,a0
   183cc:	f61ff06f          	j	1832c <__pow5mult+0x50>
   183d0:	fff78793          	addi	a5,a5,-1
   183d4:	0000d717          	auipc	a4,0xd
   183d8:	cb470713          	addi	a4,a4,-844 # 25088 <p05.3298>
   183dc:	00279793          	slli	a5,a5,0x2
   183e0:	00f707b3          	add	a5,a4,a5
   183e4:	0007a603          	lw	a2,0(a5)
   183e8:	00000693          	li	a3,0
   183ec:	8bdff0ef          	jal	ra,17ca8 <__multadd>
   183f0:	00050a13          	mv	s4,a0
   183f4:	f19ff06f          	j	1830c <__pow5mult+0x30>
   183f8:	00100593          	li	a1,1
   183fc:	00098513          	mv	a0,s3
   18400:	fdcff0ef          	jal	ra,17bdc <_Balloc>
   18404:	27100793          	li	a5,625
   18408:	00f52a23          	sw	a5,20(a0)
   1840c:	00100793          	li	a5,1
   18410:	00f52823          	sw	a5,16(a0)
   18414:	04a9a423          	sw	a0,72(s3)
   18418:	00050493          	mv	s1,a0
   1841c:	00052023          	sw	zero,0(a0)
   18420:	f01ff06f          	j	18320 <__pow5mult+0x44>

00018424 <__lshift>:
   18424:	fe010113          	addi	sp,sp,-32
   18428:	01412423          	sw	s4,8(sp)
   1842c:	0105aa03          	lw	s4,16(a1)
   18430:	00912a23          	sw	s1,20(sp)
   18434:	0085a783          	lw	a5,8(a1)
   18438:	40565493          	srai	s1,a2,0x5
   1843c:	01448a33          	add	s4,s1,s4
   18440:	00812c23          	sw	s0,24(sp)
   18444:	01212823          	sw	s2,16(sp)
   18448:	01312623          	sw	s3,12(sp)
   1844c:	01512223          	sw	s5,4(sp)
   18450:	00112e23          	sw	ra,28(sp)
   18454:	001a0413          	addi	s0,s4,1
   18458:	00058993          	mv	s3,a1
   1845c:	00060913          	mv	s2,a2
   18460:	00050a93          	mv	s5,a0
   18464:	0045a583          	lw	a1,4(a1)
   18468:	0087d863          	bge	a5,s0,18478 <__lshift+0x54>
   1846c:	00179793          	slli	a5,a5,0x1
   18470:	00158593          	addi	a1,a1,1
   18474:	fe87cce3          	blt	a5,s0,1846c <__lshift+0x48>
   18478:	000a8513          	mv	a0,s5
   1847c:	f60ff0ef          	jal	ra,17bdc <_Balloc>
   18480:	01450713          	addi	a4,a0,20
   18484:	02905463          	blez	s1,184ac <__lshift+0x88>
   18488:	00548493          	addi	s1,s1,5
   1848c:	00249493          	slli	s1,s1,0x2
   18490:	009506b3          	add	a3,a0,s1
   18494:	00070793          	mv	a5,a4
   18498:	00478793          	addi	a5,a5,4
   1849c:	fe07ae23          	sw	zero,-4(a5)
   184a0:	fef69ce3          	bne	a3,a5,18498 <__lshift+0x74>
   184a4:	fec48493          	addi	s1,s1,-20
   184a8:	00970733          	add	a4,a4,s1
   184ac:	0109a803          	lw	a6,16(s3)
   184b0:	01498793          	addi	a5,s3,20
   184b4:	01f97613          	andi	a2,s2,31
   184b8:	00281813          	slli	a6,a6,0x2
   184bc:	01078833          	add	a6,a5,a6
   184c0:	08060263          	beqz	a2,18544 <__lshift+0x120>
   184c4:	02000893          	li	a7,32
   184c8:	40c888b3          	sub	a7,a7,a2
   184cc:	00000593          	li	a1,0
   184d0:	0007a683          	lw	a3,0(a5)
   184d4:	00470713          	addi	a4,a4,4
   184d8:	00478793          	addi	a5,a5,4
   184dc:	00c696b3          	sll	a3,a3,a2
   184e0:	00b6e6b3          	or	a3,a3,a1
   184e4:	fed72e23          	sw	a3,-4(a4)
   184e8:	ffc7a683          	lw	a3,-4(a5)
   184ec:	0116d5b3          	srl	a1,a3,a7
   184f0:	ff07e0e3          	bltu	a5,a6,184d0 <__lshift+0xac>
   184f4:	00b72023          	sw	a1,0(a4)
   184f8:	00058463          	beqz	a1,18500 <__lshift+0xdc>
   184fc:	00040a13          	mv	s4,s0
   18500:	0049a703          	lw	a4,4(s3)
   18504:	04caa783          	lw	a5,76(s5)
   18508:	01c12083          	lw	ra,28(sp)
   1850c:	00271713          	slli	a4,a4,0x2
   18510:	00e787b3          	add	a5,a5,a4
   18514:	0007a703          	lw	a4,0(a5)
   18518:	01452823          	sw	s4,16(a0)
   1851c:	01812403          	lw	s0,24(sp)
   18520:	00e9a023          	sw	a4,0(s3)
   18524:	0137a023          	sw	s3,0(a5)
   18528:	01412483          	lw	s1,20(sp)
   1852c:	01012903          	lw	s2,16(sp)
   18530:	00c12983          	lw	s3,12(sp)
   18534:	00812a03          	lw	s4,8(sp)
   18538:	00412a83          	lw	s5,4(sp)
   1853c:	02010113          	addi	sp,sp,32
   18540:	00008067          	ret
   18544:	00478793          	addi	a5,a5,4
   18548:	ffc7a683          	lw	a3,-4(a5)
   1854c:	00470713          	addi	a4,a4,4
   18550:	fed72e23          	sw	a3,-4(a4)
   18554:	fb07f6e3          	bgeu	a5,a6,18500 <__lshift+0xdc>
   18558:	00478793          	addi	a5,a5,4
   1855c:	ffc7a683          	lw	a3,-4(a5)
   18560:	00470713          	addi	a4,a4,4
   18564:	fed72e23          	sw	a3,-4(a4)
   18568:	fd07eee3          	bltu	a5,a6,18544 <__lshift+0x120>
   1856c:	f95ff06f          	j	18500 <__lshift+0xdc>

00018570 <__mcmp>:
   18570:	00050613          	mv	a2,a0
   18574:	0105a783          	lw	a5,16(a1)
   18578:	01052503          	lw	a0,16(a0)
   1857c:	40f50533          	sub	a0,a0,a5
   18580:	04051463          	bnez	a0,185c8 <__mcmp+0x58>
   18584:	00279713          	slli	a4,a5,0x2
   18588:	01460613          	addi	a2,a2,20
   1858c:	01458593          	addi	a1,a1,20
   18590:	00e607b3          	add	a5,a2,a4
   18594:	00e585b3          	add	a1,a1,a4
   18598:	0080006f          	j	185a0 <__mcmp+0x30>
   1859c:	02f67663          	bgeu	a2,a5,185c8 <__mcmp+0x58>
   185a0:	ffc78793          	addi	a5,a5,-4
   185a4:	ffc58593          	addi	a1,a1,-4
   185a8:	0007a703          	lw	a4,0(a5)
   185ac:	0005a683          	lw	a3,0(a1)
   185b0:	fed706e3          	beq	a4,a3,1859c <__mcmp+0x2c>
   185b4:	00d73733          	sltu	a4,a4,a3
   185b8:	40e00533          	neg	a0,a4
   185bc:	ffe57513          	andi	a0,a0,-2
   185c0:	00150513          	addi	a0,a0,1
   185c4:	00008067          	ret
   185c8:	00008067          	ret

000185cc <__mdiff>:
   185cc:	fe010113          	addi	sp,sp,-32
   185d0:	01212823          	sw	s2,16(sp)
   185d4:	01062703          	lw	a4,16(a2)
   185d8:	0105a903          	lw	s2,16(a1)
   185dc:	00812c23          	sw	s0,24(sp)
   185e0:	00912a23          	sw	s1,20(sp)
   185e4:	01312623          	sw	s3,12(sp)
   185e8:	01412423          	sw	s4,8(sp)
   185ec:	00112e23          	sw	ra,28(sp)
   185f0:	40e90933          	sub	s2,s2,a4
   185f4:	00058993          	mv	s3,a1
   185f8:	00060a13          	mv	s4,a2
   185fc:	01458413          	addi	s0,a1,20
   18600:	01460493          	addi	s1,a2,20
   18604:	04091863          	bnez	s2,18654 <__mdiff+0x88>
   18608:	00271713          	slli	a4,a4,0x2
   1860c:	00e407b3          	add	a5,s0,a4
   18610:	00e48733          	add	a4,s1,a4
   18614:	0080006f          	j	1861c <__mdiff+0x50>
   18618:	16f47263          	bgeu	s0,a5,1877c <__mdiff+0x1b0>
   1861c:	ffc78793          	addi	a5,a5,-4
   18620:	ffc70713          	addi	a4,a4,-4
   18624:	0007a583          	lw	a1,0(a5)
   18628:	00072683          	lw	a3,0(a4)
   1862c:	fed586e3          	beq	a1,a3,18618 <__mdiff+0x4c>
   18630:	02d5f663          	bgeu	a1,a3,1865c <__mdiff+0x90>
   18634:	00040713          	mv	a4,s0
   18638:	00098793          	mv	a5,s3
   1863c:	00048413          	mv	s0,s1
   18640:	000a0993          	mv	s3,s4
   18644:	00070493          	mv	s1,a4
   18648:	00078a13          	mv	s4,a5
   1864c:	00100913          	li	s2,1
   18650:	00c0006f          	j	1865c <__mdiff+0x90>
   18654:	fe0940e3          	bltz	s2,18634 <__mdiff+0x68>
   18658:	00000913          	li	s2,0
   1865c:	0049a583          	lw	a1,4(s3)
   18660:	d7cff0ef          	jal	ra,17bdc <_Balloc>
   18664:	0109a303          	lw	t1,16(s3)
   18668:	010a2e83          	lw	t4,16(s4)
   1866c:	00010637          	lui	a2,0x10
   18670:	00231e13          	slli	t3,t1,0x2
   18674:	002e9e93          	slli	t4,t4,0x2
   18678:	01252623          	sw	s2,12(a0)
   1867c:	01c40e33          	add	t3,s0,t3
   18680:	01d48eb3          	add	t4,s1,t4
   18684:	01450813          	addi	a6,a0,20
   18688:	00000793          	li	a5,0
   1868c:	fff60613          	addi	a2,a2,-1 # ffff <register_fini-0x75>
   18690:	0080006f          	j	18698 <__mdiff+0xcc>
   18694:	00088813          	mv	a6,a7
   18698:	00042703          	lw	a4,0(s0)
   1869c:	0004a583          	lw	a1,0(s1)
   186a0:	00480893          	addi	a7,a6,4
   186a4:	00c776b3          	and	a3,a4,a2
   186a8:	00f686b3          	add	a3,a3,a5
   186ac:	00c5f7b3          	and	a5,a1,a2
   186b0:	40f686b3          	sub	a3,a3,a5
   186b4:	0105d593          	srli	a1,a1,0x10
   186b8:	01075793          	srli	a5,a4,0x10
   186bc:	40b787b3          	sub	a5,a5,a1
   186c0:	4106d713          	srai	a4,a3,0x10
   186c4:	00e787b3          	add	a5,a5,a4
   186c8:	01079713          	slli	a4,a5,0x10
   186cc:	00c6f6b3          	and	a3,a3,a2
   186d0:	00d766b3          	or	a3,a4,a3
   186d4:	00448493          	addi	s1,s1,4
   186d8:	fed8ae23          	sw	a3,-4(a7)
   186dc:	00440413          	addi	s0,s0,4
   186e0:	4107d793          	srai	a5,a5,0x10
   186e4:	fbd4e8e3          	bltu	s1,t4,18694 <__mdiff+0xc8>
   186e8:	05c47e63          	bgeu	s0,t3,18744 <__mdiff+0x178>
   186ec:	00010eb7          	lui	t4,0x10
   186f0:	00088813          	mv	a6,a7
   186f4:	00040593          	mv	a1,s0
   186f8:	fffe8e93          	addi	t4,t4,-1 # ffff <register_fini-0x75>
   186fc:	0005a703          	lw	a4,0(a1)
   18700:	00480813          	addi	a6,a6,4
   18704:	00458593          	addi	a1,a1,4
   18708:	01d77633          	and	a2,a4,t4
   1870c:	00f60633          	add	a2,a2,a5
   18710:	41065693          	srai	a3,a2,0x10
   18714:	01075793          	srli	a5,a4,0x10
   18718:	00d787b3          	add	a5,a5,a3
   1871c:	01079693          	slli	a3,a5,0x10
   18720:	01d67633          	and	a2,a2,t4
   18724:	00c6e6b3          	or	a3,a3,a2
   18728:	fed82e23          	sw	a3,-4(a6)
   1872c:	4107d793          	srai	a5,a5,0x10
   18730:	fdc5e6e3          	bltu	a1,t3,186fc <__mdiff+0x130>
   18734:	fffe0813          	addi	a6,t3,-1
   18738:	40880833          	sub	a6,a6,s0
   1873c:	ffc87813          	andi	a6,a6,-4
   18740:	01088833          	add	a6,a7,a6
   18744:	00069a63          	bnez	a3,18758 <__mdiff+0x18c>
   18748:	ffc80813          	addi	a6,a6,-4
   1874c:	00082783          	lw	a5,0(a6)
   18750:	fff30313          	addi	t1,t1,-1
   18754:	fe078ae3          	beqz	a5,18748 <__mdiff+0x17c>
   18758:	01c12083          	lw	ra,28(sp)
   1875c:	01812403          	lw	s0,24(sp)
   18760:	00652823          	sw	t1,16(a0)
   18764:	01412483          	lw	s1,20(sp)
   18768:	01012903          	lw	s2,16(sp)
   1876c:	00c12983          	lw	s3,12(sp)
   18770:	00812a03          	lw	s4,8(sp)
   18774:	02010113          	addi	sp,sp,32
   18778:	00008067          	ret
   1877c:	00000593          	li	a1,0
   18780:	c5cff0ef          	jal	ra,17bdc <_Balloc>
   18784:	01c12083          	lw	ra,28(sp)
   18788:	01812403          	lw	s0,24(sp)
   1878c:	00100793          	li	a5,1
   18790:	00f52823          	sw	a5,16(a0)
   18794:	00052a23          	sw	zero,20(a0)
   18798:	01412483          	lw	s1,20(sp)
   1879c:	01012903          	lw	s2,16(sp)
   187a0:	00c12983          	lw	s3,12(sp)
   187a4:	00812a03          	lw	s4,8(sp)
   187a8:	02010113          	addi	sp,sp,32
   187ac:	00008067          	ret

000187b0 <__ulp>:
   187b0:	7ff007b7          	lui	a5,0x7ff00
   187b4:	00b7f5b3          	and	a1,a5,a1
   187b8:	fcc007b7          	lui	a5,0xfcc00
   187bc:	00f585b3          	add	a1,a1,a5
   187c0:	00b05863          	blez	a1,187d0 <__ulp+0x20>
   187c4:	00000793          	li	a5,0
   187c8:	00078513          	mv	a0,a5
   187cc:	00008067          	ret
   187d0:	40b005b3          	neg	a1,a1
   187d4:	4145d593          	srai	a1,a1,0x14
   187d8:	01300793          	li	a5,19
   187dc:	00b7c863          	blt	a5,a1,187ec <__ulp+0x3c>
   187e0:	000807b7          	lui	a5,0x80
   187e4:	40b7d5b3          	sra	a1,a5,a1
   187e8:	fddff06f          	j	187c4 <__ulp+0x14>
   187ec:	fec58713          	addi	a4,a1,-20
   187f0:	01e00693          	li	a3,30
   187f4:	00000593          	li	a1,0
   187f8:	00100793          	li	a5,1
   187fc:	fce6c6e3          	blt	a3,a4,187c8 <__ulp+0x18>
   18800:	800007b7          	lui	a5,0x80000
   18804:	00e7d7b3          	srl	a5,a5,a4
   18808:	00078513          	mv	a0,a5
   1880c:	00008067          	ret

00018810 <__b2d>:
   18810:	fe010113          	addi	sp,sp,-32
   18814:	00812c23          	sw	s0,24(sp)
   18818:	01052403          	lw	s0,16(a0)
   1881c:	00912a23          	sw	s1,20(sp)
   18820:	01450493          	addi	s1,a0,20
   18824:	00241413          	slli	s0,s0,0x2
   18828:	00848433          	add	s0,s1,s0
   1882c:	01212823          	sw	s2,16(sp)
   18830:	ffc42903          	lw	s2,-4(s0)
   18834:	01312623          	sw	s3,12(sp)
   18838:	01412423          	sw	s4,8(sp)
   1883c:	00090513          	mv	a0,s2
   18840:	00058a13          	mv	s4,a1
   18844:	00112e23          	sw	ra,28(sp)
   18848:	ec8ff0ef          	jal	ra,17f10 <__hi0bits>
   1884c:	02000713          	li	a4,32
   18850:	40a707b3          	sub	a5,a4,a0
   18854:	00fa2023          	sw	a5,0(s4)
   18858:	00a00793          	li	a5,10
   1885c:	ffc40993          	addi	s3,s0,-4
   18860:	08a7d063          	bge	a5,a0,188e0 <__b2d+0xd0>
   18864:	ff550513          	addi	a0,a0,-11
   18868:	0534f063          	bgeu	s1,s3,188a8 <__b2d+0x98>
   1886c:	ff842783          	lw	a5,-8(s0)
   18870:	04050063          	beqz	a0,188b0 <__b2d+0xa0>
   18874:	40a70633          	sub	a2,a4,a0
   18878:	00c7d733          	srl	a4,a5,a2
   1887c:	00a916b3          	sll	a3,s2,a0
   18880:	00e6e6b3          	or	a3,a3,a4
   18884:	ff840593          	addi	a1,s0,-8
   18888:	3ff00737          	lui	a4,0x3ff00
   1888c:	00e6e6b3          	or	a3,a3,a4
   18890:	00a797b3          	sll	a5,a5,a0
   18894:	02b4f263          	bgeu	s1,a1,188b8 <__b2d+0xa8>
   18898:	ff442703          	lw	a4,-12(s0)
   1889c:	00c75733          	srl	a4,a4,a2
   188a0:	00e7e7b3          	or	a5,a5,a4
   188a4:	0140006f          	j	188b8 <__b2d+0xa8>
   188a8:	00000793          	li	a5,0
   188ac:	06051463          	bnez	a0,18914 <__b2d+0x104>
   188b0:	3ff00737          	lui	a4,0x3ff00
   188b4:	00e966b3          	or	a3,s2,a4
   188b8:	01c12083          	lw	ra,28(sp)
   188bc:	01812403          	lw	s0,24(sp)
   188c0:	01412483          	lw	s1,20(sp)
   188c4:	01012903          	lw	s2,16(sp)
   188c8:	00c12983          	lw	s3,12(sp)
   188cc:	00812a03          	lw	s4,8(sp)
   188d0:	00078513          	mv	a0,a5
   188d4:	00068593          	mv	a1,a3
   188d8:	02010113          	addi	sp,sp,32
   188dc:	00008067          	ret
   188e0:	00b00613          	li	a2,11
   188e4:	40a60633          	sub	a2,a2,a0
   188e8:	00c95733          	srl	a4,s2,a2
   188ec:	3ff006b7          	lui	a3,0x3ff00
   188f0:	00d766b3          	or	a3,a4,a3
   188f4:	00000713          	li	a4,0
   188f8:	0134f663          	bgeu	s1,s3,18904 <__b2d+0xf4>
   188fc:	ff842703          	lw	a4,-8(s0)
   18900:	00c75733          	srl	a4,a4,a2
   18904:	01550513          	addi	a0,a0,21
   18908:	00a91533          	sll	a0,s2,a0
   1890c:	00e567b3          	or	a5,a0,a4
   18910:	fa9ff06f          	j	188b8 <__b2d+0xa8>
   18914:	00a91533          	sll	a0,s2,a0
   18918:	3ff00737          	lui	a4,0x3ff00
   1891c:	00e566b3          	or	a3,a0,a4
   18920:	00000793          	li	a5,0
   18924:	f95ff06f          	j	188b8 <__b2d+0xa8>

00018928 <__d2b>:
   18928:	fd010113          	addi	sp,sp,-48
   1892c:	01512a23          	sw	s5,20(sp)
   18930:	00058a93          	mv	s5,a1
   18934:	00100593          	li	a1,1
   18938:	02812423          	sw	s0,40(sp)
   1893c:	02912223          	sw	s1,36(sp)
   18940:	03212023          	sw	s2,32(sp)
   18944:	00060493          	mv	s1,a2
   18948:	01312e23          	sw	s3,28(sp)
   1894c:	01412c23          	sw	s4,24(sp)
   18950:	02112623          	sw	ra,44(sp)
   18954:	00068a13          	mv	s4,a3
   18958:	00070993          	mv	s3,a4
   1895c:	a80ff0ef          	jal	ra,17bdc <_Balloc>
   18960:	00100637          	lui	a2,0x100
   18964:	0144d413          	srli	s0,s1,0x14
   18968:	fff60793          	addi	a5,a2,-1 # fffff <__BSS_END__+0xd9517>
   1896c:	7ff47413          	andi	s0,s0,2047
   18970:	00050913          	mv	s2,a0
   18974:	0097f7b3          	and	a5,a5,s1
   18978:	00040463          	beqz	s0,18980 <__d2b+0x58>
   1897c:	00c7e7b3          	or	a5,a5,a2
   18980:	00f12623          	sw	a5,12(sp)
   18984:	080a8e63          	beqz	s5,18a20 <__d2b+0xf8>
   18988:	00810513          	addi	a0,sp,8
   1898c:	01512423          	sw	s5,8(sp)
   18990:	df4ff0ef          	jal	ra,17f84 <__lo0bits>
   18994:	00050793          	mv	a5,a0
   18998:	00c12703          	lw	a4,12(sp)
   1899c:	06051063          	bnez	a0,189fc <__d2b+0xd4>
   189a0:	00812683          	lw	a3,8(sp)
   189a4:	00d92a23          	sw	a3,20(s2)
   189a8:	00e034b3          	snez	s1,a4
   189ac:	00148493          	addi	s1,s1,1
   189b0:	00e92c23          	sw	a4,24(s2)
   189b4:	00992823          	sw	s1,16(s2)
   189b8:	08040663          	beqz	s0,18a44 <__d2b+0x11c>
   189bc:	bcd40413          	addi	s0,s0,-1075
   189c0:	00f40433          	add	s0,s0,a5
   189c4:	03500713          	li	a4,53
   189c8:	008a2023          	sw	s0,0(s4)
   189cc:	40f707b3          	sub	a5,a4,a5
   189d0:	00f9a023          	sw	a5,0(s3)
   189d4:	02c12083          	lw	ra,44(sp)
   189d8:	02812403          	lw	s0,40(sp)
   189dc:	00090513          	mv	a0,s2
   189e0:	02412483          	lw	s1,36(sp)
   189e4:	02012903          	lw	s2,32(sp)
   189e8:	01c12983          	lw	s3,28(sp)
   189ec:	01812a03          	lw	s4,24(sp)
   189f0:	01412a83          	lw	s5,20(sp)
   189f4:	03010113          	addi	sp,sp,48
   189f8:	00008067          	ret
   189fc:	02000693          	li	a3,32
   18a00:	00812603          	lw	a2,8(sp)
   18a04:	40a686b3          	sub	a3,a3,a0
   18a08:	00d716b3          	sll	a3,a4,a3
   18a0c:	00c6e6b3          	or	a3,a3,a2
   18a10:	00a75733          	srl	a4,a4,a0
   18a14:	00d92a23          	sw	a3,20(s2)
   18a18:	00e12623          	sw	a4,12(sp)
   18a1c:	f8dff06f          	j	189a8 <__d2b+0x80>
   18a20:	00c10513          	addi	a0,sp,12
   18a24:	d60ff0ef          	jal	ra,17f84 <__lo0bits>
   18a28:	00100793          	li	a5,1
   18a2c:	00f92823          	sw	a5,16(s2)
   18a30:	00c12783          	lw	a5,12(sp)
   18a34:	00100493          	li	s1,1
   18a38:	00f92a23          	sw	a5,20(s2)
   18a3c:	02050793          	addi	a5,a0,32
   18a40:	f6041ee3          	bnez	s0,189bc <__d2b+0x94>
   18a44:	00249713          	slli	a4,s1,0x2
   18a48:	00e90733          	add	a4,s2,a4
   18a4c:	01072503          	lw	a0,16(a4) # 3ff00010 <__BSS_END__+0x3fed9528>
   18a50:	bce78793          	addi	a5,a5,-1074 # 7ffffbce <__BSS_END__+0x7ffd90e6>
   18a54:	00fa2023          	sw	a5,0(s4)
   18a58:	cb8ff0ef          	jal	ra,17f10 <__hi0bits>
   18a5c:	00549493          	slli	s1,s1,0x5
   18a60:	40a484b3          	sub	s1,s1,a0
   18a64:	0099a023          	sw	s1,0(s3)
   18a68:	f6dff06f          	j	189d4 <__d2b+0xac>

00018a6c <__ratio>:
   18a6c:	fd010113          	addi	sp,sp,-48
   18a70:	03212023          	sw	s2,32(sp)
   18a74:	00058913          	mv	s2,a1
   18a78:	00810593          	addi	a1,sp,8
   18a7c:	02112623          	sw	ra,44(sp)
   18a80:	02812423          	sw	s0,40(sp)
   18a84:	02912223          	sw	s1,36(sp)
   18a88:	01312e23          	sw	s3,28(sp)
   18a8c:	00050993          	mv	s3,a0
   18a90:	d81ff0ef          	jal	ra,18810 <__b2d>
   18a94:	00050493          	mv	s1,a0
   18a98:	00058413          	mv	s0,a1
   18a9c:	00090513          	mv	a0,s2
   18aa0:	00c10593          	addi	a1,sp,12
   18aa4:	d6dff0ef          	jal	ra,18810 <__b2d>
   18aa8:	01092783          	lw	a5,16(s2)
   18aac:	0109a703          	lw	a4,16(s3)
   18ab0:	00812683          	lw	a3,8(sp)
   18ab4:	40f70733          	sub	a4,a4,a5
   18ab8:	00c12783          	lw	a5,12(sp)
   18abc:	00571713          	slli	a4,a4,0x5
   18ac0:	40f686b3          	sub	a3,a3,a5
   18ac4:	00d707b3          	add	a5,a4,a3
   18ac8:	02f05e63          	blez	a5,18b04 <__ratio+0x98>
   18acc:	01479793          	slli	a5,a5,0x14
   18ad0:	00878433          	add	s0,a5,s0
   18ad4:	00050613          	mv	a2,a0
   18ad8:	00058693          	mv	a3,a1
   18adc:	00048513          	mv	a0,s1
   18ae0:	00040593          	mv	a1,s0
   18ae4:	5ed070ef          	jal	ra,208d0 <__divdf3>
   18ae8:	02c12083          	lw	ra,44(sp)
   18aec:	02812403          	lw	s0,40(sp)
   18af0:	02412483          	lw	s1,36(sp)
   18af4:	02012903          	lw	s2,32(sp)
   18af8:	01c12983          	lw	s3,28(sp)
   18afc:	03010113          	addi	sp,sp,48
   18b00:	00008067          	ret
   18b04:	01479713          	slli	a4,a5,0x14
   18b08:	40e585b3          	sub	a1,a1,a4
   18b0c:	fc9ff06f          	j	18ad4 <__ratio+0x68>

00018b10 <_mprec_log10>:
   18b10:	ff010113          	addi	sp,sp,-16
   18b14:	00812423          	sw	s0,8(sp)
   18b18:	00112623          	sw	ra,12(sp)
   18b1c:	01212223          	sw	s2,4(sp)
   18b20:	01312023          	sw	s3,0(sp)
   18b24:	01700793          	li	a5,23
   18b28:	00050413          	mv	s0,a0
   18b2c:	04a7d863          	bge	a5,a0,18b7c <_mprec_log10+0x6c>
   18b30:	0000e797          	auipc	a5,0xe
   18b34:	f3078793          	addi	a5,a5,-208 # 26a60 <__SDATA_BEGIN__>
   18b38:	0007a503          	lw	a0,0(a5)
   18b3c:	0047a583          	lw	a1,4(a5)
   18b40:	0000e797          	auipc	a5,0xe
   18b44:	f2878793          	addi	a5,a5,-216 # 26a68 <__SDATA_BEGIN__+0x8>
   18b48:	0007a903          	lw	s2,0(a5)
   18b4c:	0047a983          	lw	s3,4(a5)
   18b50:	fff40413          	addi	s0,s0,-1
   18b54:	00090613          	mv	a2,s2
   18b58:	00098693          	mv	a3,s3
   18b5c:	544080ef          	jal	ra,210a0 <__muldf3>
   18b60:	fe0418e3          	bnez	s0,18b50 <_mprec_log10+0x40>
   18b64:	00c12083          	lw	ra,12(sp)
   18b68:	00812403          	lw	s0,8(sp)
   18b6c:	00412903          	lw	s2,4(sp)
   18b70:	00012983          	lw	s3,0(sp)
   18b74:	01010113          	addi	sp,sp,16
   18b78:	00008067          	ret
   18b7c:	00351413          	slli	s0,a0,0x3
   18b80:	0000c797          	auipc	a5,0xc
   18b84:	50878793          	addi	a5,a5,1288 # 25088 <p05.3298>
   18b88:	00878433          	add	s0,a5,s0
   18b8c:	01042503          	lw	a0,16(s0)
   18b90:	01442583          	lw	a1,20(s0)
   18b94:	00c12083          	lw	ra,12(sp)
   18b98:	00812403          	lw	s0,8(sp)
   18b9c:	00412903          	lw	s2,4(sp)
   18ba0:	00012983          	lw	s3,0(sp)
   18ba4:	01010113          	addi	sp,sp,16
   18ba8:	00008067          	ret

00018bac <__copybits>:
   18bac:	01062683          	lw	a3,16(a2)
   18bb0:	fff58593          	addi	a1,a1,-1
   18bb4:	4055d593          	srai	a1,a1,0x5
   18bb8:	00158593          	addi	a1,a1,1
   18bbc:	01460793          	addi	a5,a2,20
   18bc0:	00269693          	slli	a3,a3,0x2
   18bc4:	00259593          	slli	a1,a1,0x2
   18bc8:	00d786b3          	add	a3,a5,a3
   18bcc:	00b505b3          	add	a1,a0,a1
   18bd0:	02d7f863          	bgeu	a5,a3,18c00 <__copybits+0x54>
   18bd4:	00050713          	mv	a4,a0
   18bd8:	00478793          	addi	a5,a5,4
   18bdc:	ffc7a803          	lw	a6,-4(a5)
   18be0:	00470713          	addi	a4,a4,4
   18be4:	ff072e23          	sw	a6,-4(a4)
   18be8:	fed7e8e3          	bltu	a5,a3,18bd8 <__copybits+0x2c>
   18bec:	40c687b3          	sub	a5,a3,a2
   18bf0:	feb78793          	addi	a5,a5,-21
   18bf4:	ffc7f793          	andi	a5,a5,-4
   18bf8:	00478793          	addi	a5,a5,4
   18bfc:	00f50533          	add	a0,a0,a5
   18c00:	00b57863          	bgeu	a0,a1,18c10 <__copybits+0x64>
   18c04:	00450513          	addi	a0,a0,4
   18c08:	fe052e23          	sw	zero,-4(a0)
   18c0c:	feb56ce3          	bltu	a0,a1,18c04 <__copybits+0x58>
   18c10:	00008067          	ret

00018c14 <__any_on>:
   18c14:	01052703          	lw	a4,16(a0)
   18c18:	4055d613          	srai	a2,a1,0x5
   18c1c:	01450693          	addi	a3,a0,20
   18c20:	02c75a63          	bge	a4,a2,18c54 <__any_on+0x40>
   18c24:	00271793          	slli	a5,a4,0x2
   18c28:	00f687b3          	add	a5,a3,a5
   18c2c:	04f6fc63          	bgeu	a3,a5,18c84 <__any_on+0x70>
   18c30:	ffc7a503          	lw	a0,-4(a5)
   18c34:	ffc78793          	addi	a5,a5,-4
   18c38:	00051a63          	bnez	a0,18c4c <__any_on+0x38>
   18c3c:	04f6f263          	bgeu	a3,a5,18c80 <__any_on+0x6c>
   18c40:	ffc78793          	addi	a5,a5,-4
   18c44:	0007a703          	lw	a4,0(a5)
   18c48:	fe070ae3          	beqz	a4,18c3c <__any_on+0x28>
   18c4c:	00100513          	li	a0,1
   18c50:	00008067          	ret
   18c54:	00261793          	slli	a5,a2,0x2
   18c58:	00f687b3          	add	a5,a3,a5
   18c5c:	fce658e3          	bge	a2,a4,18c2c <__any_on+0x18>
   18c60:	01f5f593          	andi	a1,a1,31
   18c64:	fc0584e3          	beqz	a1,18c2c <__any_on+0x18>
   18c68:	0007a603          	lw	a2,0(a5)
   18c6c:	00100513          	li	a0,1
   18c70:	00b65733          	srl	a4,a2,a1
   18c74:	00b715b3          	sll	a1,a4,a1
   18c78:	fab60ae3          	beq	a2,a1,18c2c <__any_on+0x18>
   18c7c:	00008067          	ret
   18c80:	00008067          	ret
   18c84:	00000513          	li	a0,0
   18c88:	00008067          	ret

00018c8c <_sbrk_r>:
   18c8c:	ff010113          	addi	sp,sp,-16
   18c90:	00812423          	sw	s0,8(sp)
   18c94:	00050413          	mv	s0,a0
   18c98:	00058513          	mv	a0,a1
   18c9c:	2201a223          	sw	zero,548(gp) # 26ae4 <errno>
   18ca0:	00112623          	sw	ra,12(sp)
   18ca4:	7c9060ef          	jal	ra,1fc6c <_sbrk>
   18ca8:	fff00793          	li	a5,-1
   18cac:	00f50a63          	beq	a0,a5,18cc0 <_sbrk_r+0x34>
   18cb0:	00c12083          	lw	ra,12(sp)
   18cb4:	00812403          	lw	s0,8(sp)
   18cb8:	01010113          	addi	sp,sp,16
   18cbc:	00008067          	ret
   18cc0:	22418793          	addi	a5,gp,548 # 26ae4 <errno>
   18cc4:	0007a783          	lw	a5,0(a5)
   18cc8:	fe0784e3          	beqz	a5,18cb0 <_sbrk_r+0x24>
   18ccc:	00f42023          	sw	a5,0(s0)
   18cd0:	00c12083          	lw	ra,12(sp)
   18cd4:	00812403          	lw	s0,8(sp)
   18cd8:	01010113          	addi	sp,sp,16
   18cdc:	00008067          	ret

00018ce0 <frexp>:
   18ce0:	ff010113          	addi	sp,sp,-16
   18ce4:	00812423          	sw	s0,8(sp)
   18ce8:	80000437          	lui	s0,0x80000
   18cec:	00912223          	sw	s1,4(sp)
   18cf0:	00112623          	sw	ra,12(sp)
   18cf4:	fff44413          	not	s0,s0
   18cf8:	00060493          	mv	s1,a2
   18cfc:	00062023          	sw	zero,0(a2)
   18d00:	00b47733          	and	a4,s0,a1
   18d04:	7ff00637          	lui	a2,0x7ff00
   18d08:	00058793          	mv	a5,a1
   18d0c:	00050693          	mv	a3,a0
   18d10:	06c75263          	bge	a4,a2,18d74 <frexp+0x94>
   18d14:	00a768b3          	or	a7,a4,a0
   18d18:	04088e63          	beqz	a7,18d74 <frexp+0x94>
   18d1c:	00c5f633          	and	a2,a1,a2
   18d20:	00058813          	mv	a6,a1
   18d24:	00000893          	li	a7,0
   18d28:	02061463          	bnez	a2,18d50 <frexp+0x70>
   18d2c:	0000e797          	auipc	a5,0xe
   18d30:	d4478793          	addi	a5,a5,-700 # 26a70 <__SDATA_BEGIN__+0x10>
   18d34:	0047a683          	lw	a3,4(a5)
   18d38:	0007a603          	lw	a2,0(a5)
   18d3c:	364080ef          	jal	ra,210a0 <__muldf3>
   18d40:	00050693          	mv	a3,a0
   18d44:	00058813          	mv	a6,a1
   18d48:	00b47733          	and	a4,s0,a1
   18d4c:	fca00893          	li	a7,-54
   18d50:	41475713          	srai	a4,a4,0x14
   18d54:	801007b7          	lui	a5,0x80100
   18d58:	fff78793          	addi	a5,a5,-1 # 800fffff <__BSS_END__+0x800d9517>
   18d5c:	c0270713          	addi	a4,a4,-1022
   18d60:	00f87833          	and	a6,a6,a5
   18d64:	01170733          	add	a4,a4,a7
   18d68:	3fe007b7          	lui	a5,0x3fe00
   18d6c:	00f867b3          	or	a5,a6,a5
   18d70:	00e4a023          	sw	a4,0(s1)
   18d74:	00c12083          	lw	ra,12(sp)
   18d78:	00812403          	lw	s0,8(sp)
   18d7c:	00412483          	lw	s1,4(sp)
   18d80:	00068513          	mv	a0,a3
   18d84:	00078593          	mv	a1,a5
   18d88:	01010113          	addi	sp,sp,16
   18d8c:	00008067          	ret

00018d90 <_sprintf_r>:
   18d90:	f6010113          	addi	sp,sp,-160
   18d94:	08c10e13          	addi	t3,sp,140
   18d98:	08f12a23          	sw	a5,148(sp)
   18d9c:	80000337          	lui	t1,0x80000
   18da0:	ffff07b7          	lui	a5,0xffff0
   18da4:	00058e93          	mv	t4,a1
   18da8:	fff34313          	not	t1,t1
   18dac:	08d12623          	sw	a3,140(sp)
   18db0:	20878793          	addi	a5,a5,520 # ffff0208 <__BSS_END__+0xfffc9720>
   18db4:	00810593          	addi	a1,sp,8
   18db8:	000e0693          	mv	a3,t3
   18dbc:	06112e23          	sw	ra,124(sp)
   18dc0:	00f12a23          	sw	a5,20(sp)
   18dc4:	08e12823          	sw	a4,144(sp)
   18dc8:	09012c23          	sw	a6,152(sp)
   18dcc:	09112e23          	sw	a7,156(sp)
   18dd0:	01d12423          	sw	t4,8(sp)
   18dd4:	01d12c23          	sw	t4,24(sp)
   18dd8:	00612e23          	sw	t1,28(sp)
   18ddc:	00612823          	sw	t1,16(sp)
   18de0:	01c12223          	sw	t3,4(sp)
   18de4:	574000ef          	jal	ra,19358 <_svfprintf_r>
   18de8:	00812783          	lw	a5,8(sp)
   18dec:	00078023          	sb	zero,0(a5)
   18df0:	07c12083          	lw	ra,124(sp)
   18df4:	0a010113          	addi	sp,sp,160
   18df8:	00008067          	ret

00018dfc <sprintf>:
   18dfc:	00050e93          	mv	t4,a0
   18e00:	1c018513          	addi	a0,gp,448 # 26a80 <_impure_ptr>
   18e04:	f6010113          	addi	sp,sp,-160
   18e08:	00052503          	lw	a0,0(a0)
   18e0c:	08810e13          	addi	t3,sp,136
   18e10:	08f12a23          	sw	a5,148(sp)
   18e14:	80000337          	lui	t1,0x80000
   18e18:	ffff07b7          	lui	a5,0xffff0
   18e1c:	fff34313          	not	t1,t1
   18e20:	08c12423          	sw	a2,136(sp)
   18e24:	08d12623          	sw	a3,140(sp)
   18e28:	20878793          	addi	a5,a5,520 # ffff0208 <__BSS_END__+0xfffc9720>
   18e2c:	00058613          	mv	a2,a1
   18e30:	000e0693          	mv	a3,t3
   18e34:	00810593          	addi	a1,sp,8
   18e38:	06112e23          	sw	ra,124(sp)
   18e3c:	00f12a23          	sw	a5,20(sp)
   18e40:	08e12823          	sw	a4,144(sp)
   18e44:	09012c23          	sw	a6,152(sp)
   18e48:	09112e23          	sw	a7,156(sp)
   18e4c:	01d12423          	sw	t4,8(sp)
   18e50:	01d12c23          	sw	t4,24(sp)
   18e54:	00612e23          	sw	t1,28(sp)
   18e58:	00612823          	sw	t1,16(sp)
   18e5c:	01c12223          	sw	t3,4(sp)
   18e60:	4f8000ef          	jal	ra,19358 <_svfprintf_r>
   18e64:	00812783          	lw	a5,8(sp)
   18e68:	00078023          	sb	zero,0(a5)
   18e6c:	07c12083          	lw	ra,124(sp)
   18e70:	0a010113          	addi	sp,sp,160
   18e74:	00008067          	ret

00018e78 <__sread>:
   18e78:	ff010113          	addi	sp,sp,-16
   18e7c:	00812423          	sw	s0,8(sp)
   18e80:	00058413          	mv	s0,a1
   18e84:	00e59583          	lh	a1,14(a1)
   18e88:	00112623          	sw	ra,12(sp)
   18e8c:	0d0050ef          	jal	ra,1df5c <_read_r>
   18e90:	02054063          	bltz	a0,18eb0 <__sread+0x38>
   18e94:	05042783          	lw	a5,80(s0) # 80000050 <__BSS_END__+0x7ffd9568>
   18e98:	00c12083          	lw	ra,12(sp)
   18e9c:	00a787b3          	add	a5,a5,a0
   18ea0:	04f42823          	sw	a5,80(s0)
   18ea4:	00812403          	lw	s0,8(sp)
   18ea8:	01010113          	addi	sp,sp,16
   18eac:	00008067          	ret
   18eb0:	00c45783          	lhu	a5,12(s0)
   18eb4:	fffff737          	lui	a4,0xfffff
   18eb8:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffd8517>
   18ebc:	00e7f7b3          	and	a5,a5,a4
   18ec0:	00f41623          	sh	a5,12(s0)
   18ec4:	00c12083          	lw	ra,12(sp)
   18ec8:	00812403          	lw	s0,8(sp)
   18ecc:	01010113          	addi	sp,sp,16
   18ed0:	00008067          	ret

00018ed4 <__seofread>:
   18ed4:	00000513          	li	a0,0
   18ed8:	00008067          	ret

00018edc <__swrite>:
   18edc:	00c59783          	lh	a5,12(a1)
   18ee0:	fe010113          	addi	sp,sp,-32
   18ee4:	00812c23          	sw	s0,24(sp)
   18ee8:	00912a23          	sw	s1,20(sp)
   18eec:	01212823          	sw	s2,16(sp)
   18ef0:	01312623          	sw	s3,12(sp)
   18ef4:	00112e23          	sw	ra,28(sp)
   18ef8:	1007f713          	andi	a4,a5,256
   18efc:	00058413          	mv	s0,a1
   18f00:	00050493          	mv	s1,a0
   18f04:	00060913          	mv	s2,a2
   18f08:	00068993          	mv	s3,a3
   18f0c:	00e59583          	lh	a1,14(a1)
   18f10:	02071e63          	bnez	a4,18f4c <__swrite+0x70>
   18f14:	fffff737          	lui	a4,0xfffff
   18f18:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffd8517>
   18f1c:	00e7f7b3          	and	a5,a5,a4
   18f20:	00f41623          	sh	a5,12(s0)
   18f24:	01812403          	lw	s0,24(sp)
   18f28:	01c12083          	lw	ra,28(sp)
   18f2c:	00098693          	mv	a3,s3
   18f30:	00090613          	mv	a2,s2
   18f34:	00c12983          	lw	s3,12(sp)
   18f38:	01012903          	lw	s2,16(sp)
   18f3c:	00048513          	mv	a0,s1
   18f40:	01412483          	lw	s1,20(sp)
   18f44:	02010113          	addi	sp,sp,32
   18f48:	3940406f          	j	1d2dc <_write_r>
   18f4c:	00200693          	li	a3,2
   18f50:	00000613          	li	a2,0
   18f54:	56d040ef          	jal	ra,1dcc0 <_lseek_r>
   18f58:	00c41783          	lh	a5,12(s0)
   18f5c:	00e41583          	lh	a1,14(s0)
   18f60:	fb5ff06f          	j	18f14 <__swrite+0x38>

00018f64 <__sseek>:
   18f64:	ff010113          	addi	sp,sp,-16
   18f68:	00812423          	sw	s0,8(sp)
   18f6c:	00058413          	mv	s0,a1
   18f70:	00e59583          	lh	a1,14(a1)
   18f74:	00112623          	sw	ra,12(sp)
   18f78:	549040ef          	jal	ra,1dcc0 <_lseek_r>
   18f7c:	fff00793          	li	a5,-1
   18f80:	02f50463          	beq	a0,a5,18fa8 <__sseek+0x44>
   18f84:	00c45783          	lhu	a5,12(s0)
   18f88:	00001737          	lui	a4,0x1
   18f8c:	04a42823          	sw	a0,80(s0)
   18f90:	00e7e7b3          	or	a5,a5,a4
   18f94:	00f41623          	sh	a5,12(s0)
   18f98:	00c12083          	lw	ra,12(sp)
   18f9c:	00812403          	lw	s0,8(sp)
   18fa0:	01010113          	addi	sp,sp,16
   18fa4:	00008067          	ret
   18fa8:	00c45783          	lhu	a5,12(s0)
   18fac:	fffff737          	lui	a4,0xfffff
   18fb0:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffd8517>
   18fb4:	00e7f7b3          	and	a5,a5,a4
   18fb8:	00f41623          	sh	a5,12(s0)
   18fbc:	00c12083          	lw	ra,12(sp)
   18fc0:	00812403          	lw	s0,8(sp)
   18fc4:	01010113          	addi	sp,sp,16
   18fc8:	00008067          	ret

00018fcc <__sclose>:
   18fcc:	00e59583          	lh	a1,14(a1)
   18fd0:	4340406f          	j	1d404 <_close_r>

00018fd4 <strcmp>:
   18fd4:	00b56733          	or	a4,a0,a1
   18fd8:	fff00393          	li	t2,-1
   18fdc:	00377713          	andi	a4,a4,3
   18fe0:	10071063          	bnez	a4,190e0 <strcmp+0x10c>
   18fe4:	7f7f87b7          	lui	a5,0x7f7f8
   18fe8:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7d1497>
   18fec:	00052603          	lw	a2,0(a0)
   18ff0:	0005a683          	lw	a3,0(a1)
   18ff4:	00f672b3          	and	t0,a2,a5
   18ff8:	00f66333          	or	t1,a2,a5
   18ffc:	00f282b3          	add	t0,t0,a5
   19000:	0062e2b3          	or	t0,t0,t1
   19004:	10729263          	bne	t0,t2,19108 <strcmp+0x134>
   19008:	08d61663          	bne	a2,a3,19094 <strcmp+0xc0>
   1900c:	00452603          	lw	a2,4(a0)
   19010:	0045a683          	lw	a3,4(a1)
   19014:	00f672b3          	and	t0,a2,a5
   19018:	00f66333          	or	t1,a2,a5
   1901c:	00f282b3          	add	t0,t0,a5
   19020:	0062e2b3          	or	t0,t0,t1
   19024:	0c729e63          	bne	t0,t2,19100 <strcmp+0x12c>
   19028:	06d61663          	bne	a2,a3,19094 <strcmp+0xc0>
   1902c:	00852603          	lw	a2,8(a0)
   19030:	0085a683          	lw	a3,8(a1)
   19034:	00f672b3          	and	t0,a2,a5
   19038:	00f66333          	or	t1,a2,a5
   1903c:	00f282b3          	add	t0,t0,a5
   19040:	0062e2b3          	or	t0,t0,t1
   19044:	0c729863          	bne	t0,t2,19114 <strcmp+0x140>
   19048:	04d61663          	bne	a2,a3,19094 <strcmp+0xc0>
   1904c:	00c52603          	lw	a2,12(a0)
   19050:	00c5a683          	lw	a3,12(a1)
   19054:	00f672b3          	and	t0,a2,a5
   19058:	00f66333          	or	t1,a2,a5
   1905c:	00f282b3          	add	t0,t0,a5
   19060:	0062e2b3          	or	t0,t0,t1
   19064:	0c729263          	bne	t0,t2,19128 <strcmp+0x154>
   19068:	02d61663          	bne	a2,a3,19094 <strcmp+0xc0>
   1906c:	01052603          	lw	a2,16(a0)
   19070:	0105a683          	lw	a3,16(a1)
   19074:	00f672b3          	and	t0,a2,a5
   19078:	00f66333          	or	t1,a2,a5
   1907c:	00f282b3          	add	t0,t0,a5
   19080:	0062e2b3          	or	t0,t0,t1
   19084:	0a729c63          	bne	t0,t2,1913c <strcmp+0x168>
   19088:	01450513          	addi	a0,a0,20
   1908c:	01458593          	addi	a1,a1,20
   19090:	f4d60ee3          	beq	a2,a3,18fec <strcmp+0x18>
   19094:	01061713          	slli	a4,a2,0x10
   19098:	01069793          	slli	a5,a3,0x10
   1909c:	00f71e63          	bne	a4,a5,190b8 <strcmp+0xe4>
   190a0:	01065713          	srli	a4,a2,0x10
   190a4:	0106d793          	srli	a5,a3,0x10
   190a8:	40f70533          	sub	a0,a4,a5
   190ac:	0ff57593          	andi	a1,a0,255
   190b0:	02059063          	bnez	a1,190d0 <strcmp+0xfc>
   190b4:	00008067          	ret
   190b8:	01075713          	srli	a4,a4,0x10
   190bc:	0107d793          	srli	a5,a5,0x10
   190c0:	40f70533          	sub	a0,a4,a5
   190c4:	0ff57593          	andi	a1,a0,255
   190c8:	00059463          	bnez	a1,190d0 <strcmp+0xfc>
   190cc:	00008067          	ret
   190d0:	0ff77713          	andi	a4,a4,255
   190d4:	0ff7f793          	andi	a5,a5,255
   190d8:	40f70533          	sub	a0,a4,a5
   190dc:	00008067          	ret
   190e0:	00054603          	lbu	a2,0(a0)
   190e4:	0005c683          	lbu	a3,0(a1)
   190e8:	00150513          	addi	a0,a0,1
   190ec:	00158593          	addi	a1,a1,1
   190f0:	00d61463          	bne	a2,a3,190f8 <strcmp+0x124>
   190f4:	fe0616e3          	bnez	a2,190e0 <strcmp+0x10c>
   190f8:	40d60533          	sub	a0,a2,a3
   190fc:	00008067          	ret
   19100:	00450513          	addi	a0,a0,4
   19104:	00458593          	addi	a1,a1,4
   19108:	fcd61ce3          	bne	a2,a3,190e0 <strcmp+0x10c>
   1910c:	00000513          	li	a0,0
   19110:	00008067          	ret
   19114:	00850513          	addi	a0,a0,8
   19118:	00858593          	addi	a1,a1,8
   1911c:	fcd612e3          	bne	a2,a3,190e0 <strcmp+0x10c>
   19120:	00000513          	li	a0,0
   19124:	00008067          	ret
   19128:	00c50513          	addi	a0,a0,12
   1912c:	00c58593          	addi	a1,a1,12
   19130:	fad618e3          	bne	a2,a3,190e0 <strcmp+0x10c>
   19134:	00000513          	li	a0,0
   19138:	00008067          	ret
   1913c:	01050513          	addi	a0,a0,16
   19140:	01058593          	addi	a1,a1,16
   19144:	f8d61ee3          	bne	a2,a3,190e0 <strcmp+0x10c>
   19148:	00000513          	li	a0,0
   1914c:	00008067          	ret

00019150 <strcpy>:
   19150:	00b567b3          	or	a5,a0,a1
   19154:	0037f793          	andi	a5,a5,3
   19158:	08079263          	bnez	a5,191dc <strcpy+0x8c>
   1915c:	0005a703          	lw	a4,0(a1)
   19160:	7f7f86b7          	lui	a3,0x7f7f8
   19164:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7d1497>
   19168:	00d777b3          	and	a5,a4,a3
   1916c:	00d787b3          	add	a5,a5,a3
   19170:	00e7e7b3          	or	a5,a5,a4
   19174:	00d7e7b3          	or	a5,a5,a3
   19178:	fff00613          	li	a2,-1
   1917c:	06c79e63          	bne	a5,a2,191f8 <strcpy+0xa8>
   19180:	00050613          	mv	a2,a0
   19184:	fff00813          	li	a6,-1
   19188:	00460613          	addi	a2,a2,4 # 7ff00004 <__BSS_END__+0x7fed951c>
   1918c:	00458593          	addi	a1,a1,4
   19190:	fee62e23          	sw	a4,-4(a2)
   19194:	0005a703          	lw	a4,0(a1)
   19198:	00d777b3          	and	a5,a4,a3
   1919c:	00d787b3          	add	a5,a5,a3
   191a0:	00e7e7b3          	or	a5,a5,a4
   191a4:	00d7e7b3          	or	a5,a5,a3
   191a8:	ff0780e3          	beq	a5,a6,19188 <strcpy+0x38>
   191ac:	0005c783          	lbu	a5,0(a1)
   191b0:	0015c703          	lbu	a4,1(a1)
   191b4:	0025c683          	lbu	a3,2(a1)
   191b8:	00f60023          	sb	a5,0(a2)
   191bc:	00078a63          	beqz	a5,191d0 <strcpy+0x80>
   191c0:	00e600a3          	sb	a4,1(a2)
   191c4:	00070663          	beqz	a4,191d0 <strcpy+0x80>
   191c8:	00d60123          	sb	a3,2(a2)
   191cc:	00069463          	bnez	a3,191d4 <strcpy+0x84>
   191d0:	00008067          	ret
   191d4:	000601a3          	sb	zero,3(a2)
   191d8:	00008067          	ret
   191dc:	00050793          	mv	a5,a0
   191e0:	0005c703          	lbu	a4,0(a1)
   191e4:	00178793          	addi	a5,a5,1
   191e8:	00158593          	addi	a1,a1,1
   191ec:	fee78fa3          	sb	a4,-1(a5)
   191f0:	fe0718e3          	bnez	a4,191e0 <strcpy+0x90>
   191f4:	00008067          	ret
   191f8:	00050613          	mv	a2,a0
   191fc:	fb1ff06f          	j	191ac <strcpy+0x5c>

00019200 <strlen>:
   19200:	00357793          	andi	a5,a0,3
   19204:	00050713          	mv	a4,a0
   19208:	04079c63          	bnez	a5,19260 <strlen+0x60>
   1920c:	7f7f86b7          	lui	a3,0x7f7f8
   19210:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7d1497>
   19214:	fff00593          	li	a1,-1
   19218:	00470713          	addi	a4,a4,4
   1921c:	ffc72603          	lw	a2,-4(a4)
   19220:	00d677b3          	and	a5,a2,a3
   19224:	00d787b3          	add	a5,a5,a3
   19228:	00c7e7b3          	or	a5,a5,a2
   1922c:	00d7e7b3          	or	a5,a5,a3
   19230:	feb784e3          	beq	a5,a1,19218 <strlen+0x18>
   19234:	ffc74683          	lbu	a3,-4(a4)
   19238:	40a707b3          	sub	a5,a4,a0
   1923c:	ffd74603          	lbu	a2,-3(a4)
   19240:	ffe74503          	lbu	a0,-2(a4)
   19244:	04068063          	beqz	a3,19284 <strlen+0x84>
   19248:	02060a63          	beqz	a2,1927c <strlen+0x7c>
   1924c:	00a03533          	snez	a0,a0
   19250:	00f50533          	add	a0,a0,a5
   19254:	ffe50513          	addi	a0,a0,-2
   19258:	00008067          	ret
   1925c:	fa0688e3          	beqz	a3,1920c <strlen+0xc>
   19260:	00074783          	lbu	a5,0(a4)
   19264:	00170713          	addi	a4,a4,1
   19268:	00377693          	andi	a3,a4,3
   1926c:	fe0798e3          	bnez	a5,1925c <strlen+0x5c>
   19270:	40a70733          	sub	a4,a4,a0
   19274:	fff70513          	addi	a0,a4,-1
   19278:	00008067          	ret
   1927c:	ffd78513          	addi	a0,a5,-3
   19280:	00008067          	ret
   19284:	ffc78513          	addi	a0,a5,-4
   19288:	00008067          	ret

0001928c <strncpy>:
   1928c:	00a5e7b3          	or	a5,a1,a0
   19290:	0037f793          	andi	a5,a5,3
   19294:	06079a63          	bnez	a5,19308 <strncpy+0x7c>
   19298:	00300793          	li	a5,3
   1929c:	00050713          	mv	a4,a0
   192a0:	06c7e863          	bltu	a5,a2,19310 <strncpy+0x84>
   192a4:	06060063          	beqz	a2,19304 <strncpy+0x78>
   192a8:	0005c803          	lbu	a6,0(a1)
   192ac:	fff60693          	addi	a3,a2,-1
   192b0:	00158593          	addi	a1,a1,1
   192b4:	01070023          	sb	a6,0(a4)
   192b8:	00170793          	addi	a5,a4,1
   192bc:	02080863          	beqz	a6,192ec <strncpy+0x60>
   192c0:	00c70633          	add	a2,a4,a2
   192c4:	00d706b3          	add	a3,a4,a3
   192c8:	0140006f          	j	192dc <strncpy+0x50>
   192cc:	fff5c703          	lbu	a4,-1(a1)
   192d0:	00178793          	addi	a5,a5,1
   192d4:	fee78fa3          	sb	a4,-1(a5)
   192d8:	00070c63          	beqz	a4,192f0 <strncpy+0x64>
   192dc:	00158593          	addi	a1,a1,1
   192e0:	40f68833          	sub	a6,a3,a5
   192e4:	fec794e3          	bne	a5,a2,192cc <strncpy+0x40>
   192e8:	00008067          	ret
   192ec:	00068813          	mv	a6,a3
   192f0:	01078733          	add	a4,a5,a6
   192f4:	06080063          	beqz	a6,19354 <strncpy+0xc8>
   192f8:	00178793          	addi	a5,a5,1
   192fc:	fe078fa3          	sb	zero,-1(a5)
   19300:	fee79ce3          	bne	a5,a4,192f8 <strncpy+0x6c>
   19304:	00008067          	ret
   19308:	00050713          	mv	a4,a0
   1930c:	f99ff06f          	j	192a4 <strncpy+0x18>
   19310:	feff0337          	lui	t1,0xfeff0
   19314:	808088b7          	lui	a7,0x80808
   19318:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefc9417>
   1931c:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807e1598>
   19320:	00300e13          	li	t3,3
   19324:	0005a683          	lw	a3,0(a1)
   19328:	006687b3          	add	a5,a3,t1
   1932c:	fff6c813          	not	a6,a3
   19330:	0107f7b3          	and	a5,a5,a6
   19334:	0117f7b3          	and	a5,a5,a7
   19338:	f60798e3          	bnez	a5,192a8 <strncpy+0x1c>
   1933c:	00470713          	addi	a4,a4,4
   19340:	ffc60613          	addi	a2,a2,-4
   19344:	fed72e23          	sw	a3,-4(a4)
   19348:	00458593          	addi	a1,a1,4
   1934c:	fcce6ce3          	bltu	t3,a2,19324 <strncpy+0x98>
   19350:	f55ff06f          	j	192a4 <strncpy+0x18>
   19354:	00008067          	ret

00019358 <_svfprintf_r>:
   19358:	e1010113          	addi	sp,sp,-496
   1935c:	1e112623          	sw	ra,492(sp)
   19360:	1e812423          	sw	s0,488(sp)
   19364:	1d912223          	sw	s9,452(sp)
   19368:	00058413          	mv	s0,a1
   1936c:	00b12423          	sw	a1,8(sp)
   19370:	00060c93          	mv	s9,a2
   19374:	00d12823          	sw	a3,16(sp)
   19378:	1e912223          	sw	s1,484(sp)
   1937c:	1f212023          	sw	s2,480(sp)
   19380:	1d312e23          	sw	s3,476(sp)
   19384:	1d412c23          	sw	s4,472(sp)
   19388:	1d512a23          	sw	s5,468(sp)
   1938c:	1d612823          	sw	s6,464(sp)
   19390:	1d712623          	sw	s7,460(sp)
   19394:	1d812423          	sw	s8,456(sp)
   19398:	1da12023          	sw	s10,448(sp)
   1939c:	1bb12e23          	sw	s11,444(sp)
   193a0:	02a12223          	sw	a0,36(sp)
   193a4:	c7dfd0ef          	jal	ra,17020 <_localeconv_r>
   193a8:	00052783          	lw	a5,0(a0)
   193ac:	00078513          	mv	a0,a5
   193b0:	02f12823          	sw	a5,48(sp)
   193b4:	e4dff0ef          	jal	ra,19200 <strlen>
   193b8:	00c45783          	lhu	a5,12(s0)
   193bc:	02a12423          	sw	a0,40(sp)
   193c0:	0e012823          	sw	zero,240(sp)
   193c4:	0e012a23          	sw	zero,244(sp)
   193c8:	0e012c23          	sw	zero,248(sp)
   193cc:	0e012e23          	sw	zero,252(sp)
   193d0:	0807f793          	andi	a5,a5,128
   193d4:	00078863          	beqz	a5,193e4 <_svfprintf_r+0x8c>
   193d8:	01042783          	lw	a5,16(s0)
   193dc:	00079463          	bnez	a5,193e4 <_svfprintf_r+0x8c>
   193e0:	6a40106f          	j	1aa84 <_svfprintf_r+0x172c>
   193e4:	10c10793          	addi	a5,sp,268
   193e8:	000c8d13          	mv	s10,s9
   193ec:	0ef12223          	sw	a5,228(sp)
   193f0:	00078d93          	mv	s11,a5
   193f4:	000d4783          	lbu	a5,0(s10)
   193f8:	0e012623          	sw	zero,236(sp)
   193fc:	0e012423          	sw	zero,232(sp)
   19400:	00012c23          	sw	zero,24(sp)
   19404:	02012623          	sw	zero,44(sp)
   19408:	02012c23          	sw	zero,56(sp)
   1940c:	02012e23          	sw	zero,60(sp)
   19410:	04012023          	sw	zero,64(sp)
   19414:	04012223          	sw	zero,68(sp)
   19418:	00012223          	sw	zero,4(sp)
   1941c:	01000c13          	li	s8,16
   19420:	02412a83          	lw	s5,36(sp)
   19424:	38078863          	beqz	a5,197b4 <_svfprintf_r+0x45c>
   19428:	02500713          	li	a4,37
   1942c:	00e79463          	bne	a5,a4,19434 <_svfprintf_r+0xdc>
   19430:	4f80106f          	j	1a928 <_svfprintf_r+0x15d0>
   19434:	000d0413          	mv	s0,s10
   19438:	00c0006f          	j	19444 <_svfprintf_r+0xec>
   1943c:	0ee78a63          	beq	a5,a4,19530 <_svfprintf_r+0x1d8>
   19440:	00048413          	mv	s0,s1
   19444:	00144783          	lbu	a5,1(s0)
   19448:	00140493          	addi	s1,s0,1
   1944c:	fe0798e3          	bnez	a5,1943c <_svfprintf_r+0xe4>
   19450:	41a48933          	sub	s2,s1,s10
   19454:	36090063          	beqz	s2,197b4 <_svfprintf_r+0x45c>
   19458:	0ec12703          	lw	a4,236(sp)
   1945c:	0e812783          	lw	a5,232(sp)
   19460:	01ada023          	sw	s10,0(s11)
   19464:	01270733          	add	a4,a4,s2
   19468:	00178793          	addi	a5,a5,1
   1946c:	012da223          	sw	s2,4(s11)
   19470:	0ee12623          	sw	a4,236(sp)
   19474:	0ef12423          	sw	a5,232(sp)
   19478:	00700713          	li	a4,7
   1947c:	008d8d93          	addi	s11,s11,8
   19480:	0af74e63          	blt	a4,a5,1953c <_svfprintf_r+0x1e4>
   19484:	00412703          	lw	a4,4(sp)
   19488:	00144783          	lbu	a5,1(s0)
   1948c:	01270733          	add	a4,a4,s2
   19490:	00e12223          	sw	a4,4(sp)
   19494:	32078063          	beqz	a5,197b4 <_svfprintf_r+0x45c>
   19498:	00148913          	addi	s2,s1,1
   1949c:	0014c403          	lbu	s0,1(s1)
   194a0:	0c0103a3          	sb	zero,199(sp)
   194a4:	fff00b13          	li	s6,-1
   194a8:	00000493          	li	s1,0
   194ac:	00000993          	li	s3,0
   194b0:	00900a13          	li	s4,9
   194b4:	02a00b93          	li	s7,42
   194b8:	00190913          	addi	s2,s2,1
   194bc:	05a00713          	li	a4,90
   194c0:	fe040793          	addi	a5,s0,-32
   194c4:	1ef76463          	bltu	a4,a5,196ac <_svfprintf_r+0x354>
   194c8:	0000c697          	auipc	a3,0xc
   194cc:	ce868693          	addi	a3,a3,-792 # 251b0 <__mprec_bigtens+0x28>
   194d0:	00279793          	slli	a5,a5,0x2
   194d4:	00d787b3          	add	a5,a5,a3
   194d8:	0007a783          	lw	a5,0(a5)
   194dc:	00d787b3          	add	a5,a5,a3
   194e0:	00078067          	jr	a5
   194e4:	000a8513          	mv	a0,s5
   194e8:	b39fd0ef          	jal	ra,17020 <_localeconv_r>
   194ec:	00452783          	lw	a5,4(a0)
   194f0:	00078513          	mv	a0,a5
   194f4:	04f12223          	sw	a5,68(sp)
   194f8:	d09ff0ef          	jal	ra,19200 <strlen>
   194fc:	04a12023          	sw	a0,64(sp)
   19500:	00050413          	mv	s0,a0
   19504:	000a8513          	mv	a0,s5
   19508:	b19fd0ef          	jal	ra,17020 <_localeconv_r>
   1950c:	00852783          	lw	a5,8(a0)
   19510:	02f12e23          	sw	a5,60(sp)
   19514:	00040463          	beqz	s0,1951c <_svfprintf_r+0x1c4>
   19518:	4c40106f          	j	1a9dc <_svfprintf_r+0x1684>
   1951c:	00094403          	lbu	s0,0(s2)
   19520:	f99ff06f          	j	194b8 <_svfprintf_r+0x160>
   19524:	0209e993          	ori	s3,s3,32
   19528:	00094403          	lbu	s0,0(s2)
   1952c:	f8dff06f          	j	194b8 <_svfprintf_r+0x160>
   19530:	41a48933          	sub	s2,s1,s10
   19534:	f60902e3          	beqz	s2,19498 <_svfprintf_r+0x140>
   19538:	f21ff06f          	j	19458 <_svfprintf_r+0x100>
   1953c:	00812583          	lw	a1,8(sp)
   19540:	0e410613          	addi	a2,sp,228
   19544:	000a8513          	mv	a0,s5
   19548:	194050ef          	jal	ra,1e6dc <__ssprint_r>
   1954c:	02051a63          	bnez	a0,19580 <_svfprintf_r+0x228>
   19550:	10c10d93          	addi	s11,sp,268
   19554:	f31ff06f          	j	19484 <_svfprintf_r+0x12c>
   19558:	00812583          	lw	a1,8(sp)
   1955c:	0e410613          	addi	a2,sp,228
   19560:	000a8513          	mv	a0,s5
   19564:	178050ef          	jal	ra,1e6dc <__ssprint_r>
   19568:	020500e3          	beqz	a0,19d88 <_svfprintf_r+0xa30>
   1956c:	00c12783          	lw	a5,12(sp)
   19570:	00078863          	beqz	a5,19580 <_svfprintf_r+0x228>
   19574:	00c12583          	lw	a1,12(sp)
   19578:	02412503          	lw	a0,36(sp)
   1957c:	ac1fa0ef          	jal	ra,1403c <_free_r>
   19580:	00812783          	lw	a5,8(sp)
   19584:	00c7d783          	lhu	a5,12(a5)
   19588:	0407f793          	andi	a5,a5,64
   1958c:	00078463          	beqz	a5,19594 <_svfprintf_r+0x23c>
   19590:	5400206f          	j	1bad0 <_svfprintf_r+0x2778>
   19594:	1ec12083          	lw	ra,492(sp)
   19598:	1e812403          	lw	s0,488(sp)
   1959c:	00412503          	lw	a0,4(sp)
   195a0:	1e412483          	lw	s1,484(sp)
   195a4:	1e012903          	lw	s2,480(sp)
   195a8:	1dc12983          	lw	s3,476(sp)
   195ac:	1d812a03          	lw	s4,472(sp)
   195b0:	1d412a83          	lw	s5,468(sp)
   195b4:	1d012b03          	lw	s6,464(sp)
   195b8:	1cc12b83          	lw	s7,460(sp)
   195bc:	1c812c03          	lw	s8,456(sp)
   195c0:	1c412c83          	lw	s9,452(sp)
   195c4:	1c012d03          	lw	s10,448(sp)
   195c8:	1bc12d83          	lw	s11,444(sp)
   195cc:	1f010113          	addi	sp,sp,496
   195d0:	00008067          	ret
   195d4:	0000b797          	auipc	a5,0xb
   195d8:	7f078793          	addi	a5,a5,2032 # 24dc4 <zeroes.4505+0x20>
   195dc:	02f12623          	sw	a5,44(sp)
   195e0:	0209f793          	andi	a5,s3,32
   195e4:	0e078c63          	beqz	a5,196dc <_svfprintf_r+0x384>
   195e8:	01012783          	lw	a5,16(sp)
   195ec:	00778793          	addi	a5,a5,7
   195f0:	ff87f793          	andi	a5,a5,-8
   195f4:	0007ac83          	lw	s9,0(a5)
   195f8:	0047ab83          	lw	s7,4(a5)
   195fc:	00878713          	addi	a4,a5,8
   19600:	00e12823          	sw	a4,16(sp)
   19604:	0019f713          	andi	a4,s3,1
   19608:	00070863          	beqz	a4,19618 <_svfprintf_r+0x2c0>
   1960c:	017ce733          	or	a4,s9,s7
   19610:	00070463          	beqz	a4,19618 <_svfprintf_r+0x2c0>
   19614:	3ac0106f          	j	1a9c0 <_svfprintf_r+0x1668>
   19618:	bff9fa13          	andi	s4,s3,-1025
   1961c:	00200713          	li	a4,2
   19620:	0c0103a3          	sb	zero,199(sp)
   19624:	fff00693          	li	a3,-1
   19628:	20db00e3          	beq	s6,a3,1a028 <_svfprintf_r+0xcd0>
   1962c:	017ce6b3          	or	a3,s9,s7
   19630:	f7fa7993          	andi	s3,s4,-129
   19634:	76069ae3          	bnez	a3,1a5a8 <_svfprintf_r+0x1250>
   19638:	3e0b16e3          	bnez	s6,1a224 <_svfprintf_r+0xecc>
   1963c:	60071863          	bnez	a4,19c4c <_svfprintf_r+0x8f4>
   19640:	001a7b93          	andi	s7,s4,1
   19644:	1b010d13          	addi	s10,sp,432
   19648:	000b8463          	beqz	s7,19650 <_svfprintf_r+0x2f8>
   1964c:	3340106f          	j	1a980 <_svfprintf_r+0x1628>
   19650:	000b8a13          	mv	s4,s7
   19654:	016bd463          	bge	s7,s6,1965c <_svfprintf_r+0x304>
   19658:	000b0a13          	mv	s4,s6
   1965c:	0c714783          	lbu	a5,199(sp)
   19660:	00012623          	sw	zero,12(sp)
   19664:	02012023          	sw	zero,32(sp)
   19668:	00012e23          	sw	zero,28(sp)
   1966c:	00012a23          	sw	zero,20(sp)
   19670:	62078263          	beqz	a5,19c94 <_svfprintf_r+0x93c>
   19674:	001a0a13          	addi	s4,s4,1
   19678:	61c0006f          	j	19c94 <_svfprintf_r+0x93c>
   1967c:	00000493          	li	s1,0
   19680:	fd040693          	addi	a3,s0,-48
   19684:	00190913          	addi	s2,s2,1
   19688:	00249793          	slli	a5,s1,0x2
   1968c:	fff94403          	lbu	s0,-1(s2)
   19690:	009787b3          	add	a5,a5,s1
   19694:	00179793          	slli	a5,a5,0x1
   19698:	00f684b3          	add	s1,a3,a5
   1969c:	fd040693          	addi	a3,s0,-48
   196a0:	feda72e3          	bgeu	s4,a3,19684 <_svfprintf_r+0x32c>
   196a4:	fe040793          	addi	a5,s0,-32
   196a8:	e2f770e3          	bgeu	a4,a5,194c8 <_svfprintf_r+0x170>
   196ac:	10040463          	beqz	s0,197b4 <_svfprintf_r+0x45c>
   196b0:	14810623          	sb	s0,332(sp)
   196b4:	0c0103a3          	sb	zero,199(sp)
   196b8:	00100a13          	li	s4,1
   196bc:	00100b93          	li	s7,1
   196c0:	14c10d13          	addi	s10,sp,332
   196c4:	5bc0006f          	j	19c80 <_svfprintf_r+0x928>
   196c8:	0000b797          	auipc	a5,0xb
   196cc:	71078793          	addi	a5,a5,1808 # 24dd8 <zeroes.4505+0x34>
   196d0:	02f12623          	sw	a5,44(sp)
   196d4:	0209f793          	andi	a5,s3,32
   196d8:	f00798e3          	bnez	a5,195e8 <_svfprintf_r+0x290>
   196dc:	01012703          	lw	a4,16(sp)
   196e0:	0109f793          	andi	a5,s3,16
   196e4:	00072c83          	lw	s9,0(a4)
   196e8:	00470713          	addi	a4,a4,4
   196ec:	00e12823          	sw	a4,16(sp)
   196f0:	00078463          	beqz	a5,196f8 <_svfprintf_r+0x3a0>
   196f4:	2a40106f          	j	1a998 <_svfprintf_r+0x1640>
   196f8:	0409f793          	andi	a5,s3,64
   196fc:	00079463          	bnez	a5,19704 <_svfprintf_r+0x3ac>
   19700:	2900106f          	j	1a990 <_svfprintf_r+0x1638>
   19704:	010c9c93          	slli	s9,s9,0x10
   19708:	010cdc93          	srli	s9,s9,0x10
   1970c:	00000b93          	li	s7,0
   19710:	ef5ff06f          	j	19604 <_svfprintf_r+0x2ac>
   19714:	00094403          	lbu	s0,0(s2)
   19718:	0049e993          	ori	s3,s3,4
   1971c:	d9dff06f          	j	194b8 <_svfprintf_r+0x160>
   19720:	0209f793          	andi	a5,s3,32
   19724:	260790e3          	bnez	a5,1a184 <_svfprintf_r+0xe2c>
   19728:	01012683          	lw	a3,16(sp)
   1972c:	0109f793          	andi	a5,s3,16
   19730:	00468713          	addi	a4,a3,4
   19734:	0006ac83          	lw	s9,0(a3)
   19738:	4a079663          	bnez	a5,19be4 <_svfprintf_r+0x88c>
   1973c:	0409f793          	andi	a5,s3,64
   19740:	00079463          	bnez	a5,19748 <_svfprintf_r+0x3f0>
   19744:	1950106f          	j	1b0d8 <_svfprintf_r+0x1d80>
   19748:	010c9c93          	slli	s9,s9,0x10
   1974c:	010cdc93          	srli	s9,s9,0x10
   19750:	00000b93          	li	s7,0
   19754:	00e12823          	sw	a4,16(sp)
   19758:	2490006f          	j	1a1a0 <_svfprintf_r+0xe48>
   1975c:	01012683          	lw	a3,16(sp)
   19760:	0209f793          	andi	a5,s3,32
   19764:	00468713          	addi	a4,a3,4
   19768:	00078463          	beqz	a5,19770 <_svfprintf_r+0x418>
   1976c:	2340106f          	j	1a9a0 <_svfprintf_r+0x1648>
   19770:	0109f793          	andi	a5,s3,16
   19774:	00078463          	beqz	a5,1977c <_svfprintf_r+0x424>
   19778:	0310106f          	j	1afa8 <_svfprintf_r+0x1c50>
   1977c:	0409f793          	andi	a5,s3,64
   19780:	00078463          	beqz	a5,19788 <_svfprintf_r+0x430>
   19784:	25d0106f          	j	1b1e0 <_svfprintf_r+0x1e88>
   19788:	2009f993          	andi	s3,s3,512
   1978c:	00099463          	bnez	s3,19794 <_svfprintf_r+0x43c>
   19790:	0190106f          	j	1afa8 <_svfprintf_r+0x1c50>
   19794:	01012783          	lw	a5,16(sp)
   19798:	00e12823          	sw	a4,16(sp)
   1979c:	00412703          	lw	a4,4(sp)
   197a0:	0007a783          	lw	a5,0(a5)
   197a4:	00090d13          	mv	s10,s2
   197a8:	00e78023          	sb	a4,0(a5)
   197ac:	000d4783          	lbu	a5,0(s10)
   197b0:	c6079ce3          	bnez	a5,19428 <_svfprintf_r+0xd0>
   197b4:	0ec12783          	lw	a5,236(sp)
   197b8:	dc0784e3          	beqz	a5,19580 <_svfprintf_r+0x228>
   197bc:	00812403          	lw	s0,8(sp)
   197c0:	02412503          	lw	a0,36(sp)
   197c4:	0e410613          	addi	a2,sp,228
   197c8:	00040593          	mv	a1,s0
   197cc:	711040ef          	jal	ra,1e6dc <__ssprint_r>
   197d0:	00c45783          	lhu	a5,12(s0)
   197d4:	db5ff06f          	j	19588 <_svfprintf_r+0x230>
   197d8:	00094403          	lbu	s0,0(s2)
   197dc:	06c00793          	li	a5,108
   197e0:	00f41463          	bne	s0,a5,197e8 <_svfprintf_r+0x490>
   197e4:	2900106f          	j	1aa74 <_svfprintf_r+0x171c>
   197e8:	0109e993          	ori	s3,s3,16
   197ec:	ccdff06f          	j	194b8 <_svfprintf_r+0x160>
   197f0:	00094403          	lbu	s0,0(s2)
   197f4:	06800793          	li	a5,104
   197f8:	00f41463          	bne	s0,a5,19800 <_svfprintf_r+0x4a8>
   197fc:	2680106f          	j	1aa64 <_svfprintf_r+0x170c>
   19800:	0409e993          	ori	s3,s3,64
   19804:	cb5ff06f          	j	194b8 <_svfprintf_r+0x160>
   19808:	01012783          	lw	a5,16(sp)
   1980c:	ffff8737          	lui	a4,0xffff8
   19810:	83074713          	xori	a4,a4,-2000
   19814:	0007ac83          	lw	s9,0(a5)
   19818:	00478793          	addi	a5,a5,4
   1981c:	00f12823          	sw	a5,16(sp)
   19820:	0000b797          	auipc	a5,0xb
   19824:	5a478793          	addi	a5,a5,1444 # 24dc4 <zeroes.4505+0x20>
   19828:	0ce11423          	sh	a4,200(sp)
   1982c:	00000b93          	li	s7,0
   19830:	0029ea13          	ori	s4,s3,2
   19834:	02f12623          	sw	a5,44(sp)
   19838:	00200713          	li	a4,2
   1983c:	07800413          	li	s0,120
   19840:	de1ff06f          	j	19620 <_svfprintf_r+0x2c8>
   19844:	0089f793          	andi	a5,s3,8
   19848:	00078463          	beqz	a5,19850 <_svfprintf_r+0x4f8>
   1984c:	1b40106f          	j	1aa00 <_svfprintf_r+0x16a8>
   19850:	01012783          	lw	a5,16(sp)
   19854:	0b010513          	addi	a0,sp,176
   19858:	00778793          	addi	a5,a5,7
   1985c:	ff87f793          	andi	a5,a5,-8
   19860:	0007a583          	lw	a1,0(a5)
   19864:	0047a603          	lw	a2,4(a5)
   19868:	00878793          	addi	a5,a5,8
   1986c:	00f12823          	sw	a5,16(sp)
   19870:	5d90a0ef          	jal	ra,24648 <__extenddftf2>
   19874:	0b012783          	lw	a5,176(sp)
   19878:	0ef12823          	sw	a5,240(sp)
   1987c:	0b412783          	lw	a5,180(sp)
   19880:	0ef12a23          	sw	a5,244(sp)
   19884:	0b812783          	lw	a5,184(sp)
   19888:	0ef12c23          	sw	a5,248(sp)
   1988c:	0bc12783          	lw	a5,188(sp)
   19890:	0ef12e23          	sw	a5,252(sp)
   19894:	0f010513          	addi	a0,sp,240
   19898:	f1cfd0ef          	jal	ra,16fb4 <_ldcheck>
   1989c:	0ca12623          	sw	a0,204(sp)
   198a0:	00200793          	li	a5,2
   198a4:	00f51463          	bne	a0,a5,198ac <_svfprintf_r+0x554>
   198a8:	6800106f          	j	1af28 <_svfprintf_r+0x1bd0>
   198ac:	00100793          	li	a5,1
   198b0:	00f51463          	bne	a0,a5,198b8 <_svfprintf_r+0x560>
   198b4:	0610106f          	j	1b114 <_svfprintf_r+0x1dbc>
   198b8:	06100793          	li	a5,97
   198bc:	00f41463          	bne	s0,a5,198c4 <_svfprintf_r+0x56c>
   198c0:	1200206f          	j	1b9e0 <_svfprintf_r+0x2688>
   198c4:	04100793          	li	a5,65
   198c8:	00f41463          	bne	s0,a5,198d0 <_svfprintf_r+0x578>
   198cc:	4b50106f          	j	1b580 <_svfprintf_r+0x2228>
   198d0:	fdf47713          	andi	a4,s0,-33
   198d4:	fff00793          	li	a5,-1
   198d8:	04e12423          	sw	a4,72(sp)
   198dc:	00fb1463          	bne	s6,a5,198e4 <_svfprintf_r+0x58c>
   198e0:	1a10106f          	j	1b280 <_svfprintf_r+0x1f28>
   198e4:	04700793          	li	a5,71
   198e8:	00f71463          	bne	a4,a5,198f0 <_svfprintf_r+0x598>
   198ec:	1d40206f          	j	1bac0 <_svfprintf_r+0x2768>
   198f0:	0fc12e03          	lw	t3,252(sp)
   198f4:	05312a23          	sw	s3,84(sp)
   198f8:	1009e793          	ori	a5,s3,256
   198fc:	0f012e83          	lw	t4,240(sp)
   19900:	0f412f03          	lw	t5,244(sp)
   19904:	0f812f83          	lw	t6,248(sp)
   19908:	000e5463          	bgez	t3,19910 <_svfprintf_r+0x5b8>
   1990c:	03c0206f          	j	1b948 <_svfprintf_r+0x25f0>
   19910:	04012e23          	sw	zero,92(sp)
   19914:	00078993          	mv	s3,a5
   19918:	00012623          	sw	zero,12(sp)
   1991c:	04812703          	lw	a4,72(sp)
   19920:	04600793          	li	a5,70
   19924:	00f71463          	bne	a4,a5,1992c <_svfprintf_r+0x5d4>
   19928:	2a50106f          	j	1b3cc <_svfprintf_r+0x2074>
   1992c:	04500793          	li	a5,69
   19930:	00f71463          	bne	a4,a5,19938 <_svfprintf_r+0x5e0>
   19934:	0bc0206f          	j	1b9f0 <_svfprintf_r+0x2698>
   19938:	0b010b93          	addi	s7,sp,176
   1993c:	0d010793          	addi	a5,sp,208
   19940:	0cc10713          	addi	a4,sp,204
   19944:	0dc10813          	addi	a6,sp,220
   19948:	000b0693          	mv	a3,s6
   1994c:	00200613          	li	a2,2
   19950:	000b8593          	mv	a1,s7
   19954:	000a8513          	mv	a0,s5
   19958:	0bd12823          	sw	t4,176(sp)
   1995c:	03d12023          	sw	t4,32(sp)
   19960:	0be12a23          	sw	t5,180(sp)
   19964:	01e12e23          	sw	t5,28(sp)
   19968:	0bf12c23          	sw	t6,184(sp)
   1996c:	01f12c23          	sw	t6,24(sp)
   19970:	0bc12e23          	sw	t3,188(sp)
   19974:	01c12a23          	sw	t3,20(sp)
   19978:	b48fc0ef          	jal	ra,15cc0 <_ldtoa_r>
   1997c:	04812703          	lw	a4,72(sp)
   19980:	04700793          	li	a5,71
   19984:	00050d13          	mv	s10,a0
   19988:	01412e03          	lw	t3,20(sp)
   1998c:	01812f83          	lw	t6,24(sp)
   19990:	01c12f03          	lw	t5,28(sp)
   19994:	02012e83          	lw	t4,32(sp)
   19998:	00f70463          	beq	a4,a5,199a0 <_svfprintf_r+0x648>
   1999c:	4080206f          	j	1bda4 <_svfprintf_r+0x2a4c>
   199a0:	05412783          	lw	a5,84(sp)
   199a4:	0017f793          	andi	a5,a5,1
   199a8:	00078463          	beqz	a5,199b0 <_svfprintf_r+0x658>
   199ac:	1040206f          	j	1bab0 <_svfprintf_r+0x2758>
   199b0:	0dc12783          	lw	a5,220(sp)
   199b4:	41a787b3          	sub	a5,a5,s10
   199b8:	00f12c23          	sw	a5,24(sp)
   199bc:	0cc12703          	lw	a4,204(sp)
   199c0:	04700793          	li	a5,71
   199c4:	00e12a23          	sw	a4,20(sp)
   199c8:	04812703          	lw	a4,72(sp)
   199cc:	00f71463          	bne	a4,a5,199d4 <_svfprintf_r+0x67c>
   199d0:	0f10106f          	j	1b2c0 <_svfprintf_r+0x1f68>
   199d4:	04812703          	lw	a4,72(sp)
   199d8:	04600793          	li	a5,70
   199dc:	00f71463          	bne	a4,a5,199e4 <_svfprintf_r+0x68c>
   199e0:	37d0106f          	j	1b55c <_svfprintf_r+0x2204>
   199e4:	01412783          	lw	a5,20(sp)
   199e8:	04812603          	lw	a2,72(sp)
   199ec:	04100693          	li	a3,65
   199f0:	fff78a13          	addi	s4,a5,-1
   199f4:	0d412623          	sw	s4,204(sp)
   199f8:	0ff47793          	andi	a5,s0,255
   199fc:	00000713          	li	a4,0
   19a00:	00d61863          	bne	a2,a3,19a10 <_svfprintf_r+0x6b8>
   19a04:	00f78793          	addi	a5,a5,15
   19a08:	0ff7f793          	andi	a5,a5,255
   19a0c:	00100713          	li	a4,1
   19a10:	0cf10a23          	sb	a5,212(sp)
   19a14:	02b00793          	li	a5,43
   19a18:	000a5a63          	bgez	s4,19a2c <_svfprintf_r+0x6d4>
   19a1c:	01412783          	lw	a5,20(sp)
   19a20:	00100a13          	li	s4,1
   19a24:	40fa0a33          	sub	s4,s4,a5
   19a28:	02d00793          	li	a5,45
   19a2c:	0cf10aa3          	sb	a5,213(sp)
   19a30:	00900793          	li	a5,9
   19a34:	0147c463          	blt	a5,s4,19a3c <_svfprintf_r+0x6e4>
   19a38:	2300206f          	j	1bc68 <_svfprintf_r+0x2910>
   19a3c:	0e310b13          	addi	s6,sp,227
   19a40:	000b0b93          	mv	s7,s6
   19a44:	06300993          	li	s3,99
   19a48:	00c0006f          	j	19a54 <_svfprintf_r+0x6fc>
   19a4c:	00068b93          	mv	s7,a3
   19a50:	00050a13          	mv	s4,a0
   19a54:	00a00593          	li	a1,10
   19a58:	000a0513          	mv	a0,s4
   19a5c:	9a9f60ef          	jal	ra,10404 <__modsi3>
   19a60:	03050513          	addi	a0,a0,48
   19a64:	feab8fa3          	sb	a0,-1(s7)
   19a68:	00a00593          	li	a1,10
   19a6c:	000a0513          	mv	a0,s4
   19a70:	911f60ef          	jal	ra,10380 <__divsi3>
   19a74:	fffb8693          	addi	a3,s7,-1
   19a78:	fd49cae3          	blt	s3,s4,19a4c <_svfprintf_r+0x6f4>
   19a7c:	03050793          	addi	a5,a0,48
   19a80:	0ff7f793          	andi	a5,a5,255
   19a84:	ffeb8713          	addi	a4,s7,-2
   19a88:	fef68fa3          	sb	a5,-1(a3)
   19a8c:	01676463          	bltu	a4,s6,19a94 <_svfprintf_r+0x73c>
   19a90:	31c0206f          	j	1bdac <_svfprintf_r+0x2a54>
   19a94:	0d610693          	addi	a3,sp,214
   19a98:	0080006f          	j	19aa0 <_svfprintf_r+0x748>
   19a9c:	00074783          	lbu	a5,0(a4) # ffff8000 <__BSS_END__+0xfffd1518>
   19aa0:	00168693          	addi	a3,a3,1
   19aa4:	00170713          	addi	a4,a4,1
   19aa8:	fef68fa3          	sb	a5,-1(a3)
   19aac:	ff6718e3          	bne	a4,s6,19a9c <_svfprintf_r+0x744>
   19ab0:	0e510793          	addi	a5,sp,229
   19ab4:	0d610713          	addi	a4,sp,214
   19ab8:	417787b3          	sub	a5,a5,s7
   19abc:	00f707b3          	add	a5,a4,a5
   19ac0:	0d410713          	addi	a4,sp,212
   19ac4:	40e787b3          	sub	a5,a5,a4
   19ac8:	02f12c23          	sw	a5,56(sp)
   19acc:	01812703          	lw	a4,24(sp)
   19ad0:	03812683          	lw	a3,56(sp)
   19ad4:	00100793          	li	a5,1
   19ad8:	00d70bb3          	add	s7,a4,a3
   19adc:	00e7c463          	blt	a5,a4,19ae4 <_svfprintf_r+0x78c>
   19ae0:	2480206f          	j	1bd28 <_svfprintf_r+0x29d0>
   19ae4:	02812783          	lw	a5,40(sp)
   19ae8:	00fb8bb3          	add	s7,s7,a5
   19aec:	05412783          	lw	a5,84(sp)
   19af0:	fffbca13          	not	s4,s7
   19af4:	41fa5a13          	srai	s4,s4,0x1f
   19af8:	bff7f993          	andi	s3,a5,-1025
   19afc:	1009e993          	ori	s3,s3,256
   19b00:	014bfa33          	and	s4,s7,s4
   19b04:	02012023          	sw	zero,32(sp)
   19b08:	00012e23          	sw	zero,28(sp)
   19b0c:	00012a23          	sw	zero,20(sp)
   19b10:	05c12783          	lw	a5,92(sp)
   19b14:	00079463          	bnez	a5,19b1c <_svfprintf_r+0x7c4>
   19b18:	01d0106f          	j	1b334 <_svfprintf_r+0x1fdc>
   19b1c:	02d00793          	li	a5,45
   19b20:	0cf103a3          	sb	a5,199(sp)
   19b24:	00000b13          	li	s6,0
   19b28:	001a0a13          	addi	s4,s4,1
   19b2c:	1680006f          	j	19c94 <_svfprintf_r+0x93c>
   19b30:	0209f793          	andi	a5,s3,32
   19b34:	0109ea13          	ori	s4,s3,16
   19b38:	66079c63          	bnez	a5,1a1b0 <_svfprintf_r+0xe58>
   19b3c:	01012783          	lw	a5,16(sp)
   19b40:	00478713          	addi	a4,a5,4
   19b44:	01012783          	lw	a5,16(sp)
   19b48:	00000b93          	li	s7,0
   19b4c:	00e12823          	sw	a4,16(sp)
   19b50:	0007ac83          	lw	s9,0(a5)
   19b54:	00100713          	li	a4,1
   19b58:	ac9ff06f          	j	19620 <_svfprintf_r+0x2c8>
   19b5c:	01012783          	lw	a5,16(sp)
   19b60:	0c0103a3          	sb	zero,199(sp)
   19b64:	0007ad03          	lw	s10,0(a5)
   19b68:	00478c93          	addi	s9,a5,4
   19b6c:	740d04e3          	beqz	s10,1aab4 <_svfprintf_r+0x175c>
   19b70:	fff00793          	li	a5,-1
   19b74:	00fb1463          	bne	s6,a5,19b7c <_svfprintf_r+0x824>
   19b78:	44c0106f          	j	1afc4 <_svfprintf_r+0x1c6c>
   19b7c:	000b0613          	mv	a2,s6
   19b80:	00000593          	li	a1,0
   19b84:	000d0513          	mv	a0,s10
   19b88:	f71fd0ef          	jal	ra,17af8 <memchr>
   19b8c:	00a12623          	sw	a0,12(sp)
   19b90:	00051463          	bnez	a0,19b98 <_svfprintf_r+0x840>
   19b94:	1390106f          	j	1b4cc <_svfprintf_r+0x2174>
   19b98:	00c12783          	lw	a5,12(sp)
   19b9c:	41a78bb3          	sub	s7,a5,s10
   19ba0:	0c714783          	lbu	a5,199(sp)
   19ba4:	fffbca13          	not	s4,s7
   19ba8:	41fa5a13          	srai	s4,s4,0x1f
   19bac:	01912823          	sw	s9,16(sp)
   19bb0:	00012623          	sw	zero,12(sp)
   19bb4:	02012023          	sw	zero,32(sp)
   19bb8:	00012e23          	sw	zero,28(sp)
   19bbc:	00012a23          	sw	zero,20(sp)
   19bc0:	014bfa33          	and	s4,s7,s4
   19bc4:	00000b13          	li	s6,0
   19bc8:	aa0796e3          	bnez	a5,19674 <_svfprintf_r+0x31c>
   19bcc:	0c80006f          	j	19c94 <_svfprintf_r+0x93c>
   19bd0:	0209f793          	andi	a5,s3,32
   19bd4:	0109e993          	ori	s3,s3,16
   19bd8:	5a079663          	bnez	a5,1a184 <_svfprintf_r+0xe2c>
   19bdc:	01012783          	lw	a5,16(sp)
   19be0:	00478713          	addi	a4,a5,4
   19be4:	01012783          	lw	a5,16(sp)
   19be8:	00000b93          	li	s7,0
   19bec:	00e12823          	sw	a4,16(sp)
   19bf0:	0007ac83          	lw	s9,0(a5)
   19bf4:	5ac0006f          	j	1a1a0 <_svfprintf_r+0xe48>
   19bf8:	0089e993          	ori	s3,s3,8
   19bfc:	00094403          	lbu	s0,0(s2)
   19c00:	8b9ff06f          	j	194b8 <_svfprintf_r+0x160>
   19c04:	0209f793          	andi	a5,s3,32
   19c08:	0109ea13          	ori	s4,s3,16
   19c0c:	5c079663          	bnez	a5,1a1d8 <_svfprintf_r+0xe80>
   19c10:	01012783          	lw	a5,16(sp)
   19c14:	00478713          	addi	a4,a5,4
   19c18:	01012783          	lw	a5,16(sp)
   19c1c:	00e12823          	sw	a4,16(sp)
   19c20:	0007ac83          	lw	s9,0(a5)
   19c24:	41fcdb93          	srai	s7,s9,0x1f
   19c28:	000b8713          	mv	a4,s7
   19c2c:	3c074c63          	bltz	a4,1a004 <_svfprintf_r+0xcac>
   19c30:	fff00713          	li	a4,-1
   19c34:	5ceb0663          	beq	s6,a4,1a200 <_svfprintf_r+0xea8>
   19c38:	017ce733          	or	a4,s9,s7
   19c3c:	f7fa7993          	andi	s3,s4,-129
   19c40:	5a071e63          	bnez	a4,1a1fc <_svfprintf_r+0xea4>
   19c44:	000b0463          	beqz	s6,19c4c <_svfprintf_r+0x8f4>
   19c48:	6400106f          	j	1b288 <_svfprintf_r+0x1f30>
   19c4c:	00000b13          	li	s6,0
   19c50:	00000b93          	li	s7,0
   19c54:	1b010d13          	addi	s10,sp,432
   19c58:	9f9ff06f          	j	19650 <_svfprintf_r+0x2f8>
   19c5c:	01012703          	lw	a4,16(sp)
   19c60:	0c0103a3          	sb	zero,199(sp)
   19c64:	00100a13          	li	s4,1
   19c68:	00072783          	lw	a5,0(a4)
   19c6c:	00470713          	addi	a4,a4,4
   19c70:	00e12823          	sw	a4,16(sp)
   19c74:	14f10623          	sb	a5,332(sp)
   19c78:	00100b93          	li	s7,1
   19c7c:	14c10d13          	addi	s10,sp,332
   19c80:	00012623          	sw	zero,12(sp)
   19c84:	00000b13          	li	s6,0
   19c88:	02012023          	sw	zero,32(sp)
   19c8c:	00012e23          	sw	zero,28(sp)
   19c90:	00012a23          	sw	zero,20(sp)
   19c94:	0029ff13          	andi	t5,s3,2
   19c98:	000f0463          	beqz	t5,19ca0 <_svfprintf_r+0x948>
   19c9c:	002a0a13          	addi	s4,s4,2
   19ca0:	0849fe93          	andi	t4,s3,132
   19ca4:	0ec12783          	lw	a5,236(sp)
   19ca8:	000e9663          	bnez	t4,19cb4 <_svfprintf_r+0x95c>
   19cac:	414486b3          	sub	a3,s1,s4
   19cb0:	10d040e3          	bgtz	a3,1a5b0 <_svfprintf_r+0x1258>
   19cb4:	0c714703          	lbu	a4,199(sp)
   19cb8:	02070a63          	beqz	a4,19cec <_svfprintf_r+0x994>
   19cbc:	0e812703          	lw	a4,232(sp)
   19cc0:	0c710693          	addi	a3,sp,199
   19cc4:	00dda023          	sw	a3,0(s11)
   19cc8:	00178793          	addi	a5,a5,1
   19ccc:	00100693          	li	a3,1
   19cd0:	00170713          	addi	a4,a4,1
   19cd4:	00dda223          	sw	a3,4(s11)
   19cd8:	0ef12623          	sw	a5,236(sp)
   19cdc:	0ee12423          	sw	a4,232(sp)
   19ce0:	00700693          	li	a3,7
   19ce4:	008d8d93          	addi	s11,s11,8
   19ce8:	0ce6c263          	blt	a3,a4,19dac <_svfprintf_r+0xa54>
   19cec:	020f0a63          	beqz	t5,19d20 <_svfprintf_r+0x9c8>
   19cf0:	0e812703          	lw	a4,232(sp)
   19cf4:	0c810693          	addi	a3,sp,200
   19cf8:	00dda023          	sw	a3,0(s11)
   19cfc:	00278793          	addi	a5,a5,2
   19d00:	00200693          	li	a3,2
   19d04:	00170713          	addi	a4,a4,1
   19d08:	00dda223          	sw	a3,4(s11)
   19d0c:	0ef12623          	sw	a5,236(sp)
   19d10:	0ee12423          	sw	a4,232(sp)
   19d14:	00700693          	li	a3,7
   19d18:	008d8d93          	addi	s11,s11,8
   19d1c:	1ce6c4e3          	blt	a3,a4,1a6e4 <_svfprintf_r+0x138c>
   19d20:	08000713          	li	a4,128
   19d24:	6aee8263          	beq	t4,a4,1a3c8 <_svfprintf_r+0x1070>
   19d28:	417b0b33          	sub	s6,s6,s7
   19d2c:	79604a63          	bgtz	s6,1a4c0 <_svfprintf_r+0x1168>
   19d30:	1009f713          	andi	a4,s3,256
   19d34:	54071663          	bnez	a4,1a280 <_svfprintf_r+0xf28>
   19d38:	0e812703          	lw	a4,232(sp)
   19d3c:	017787b3          	add	a5,a5,s7
   19d40:	01ada023          	sw	s10,0(s11)
   19d44:	00170713          	addi	a4,a4,1
   19d48:	017da223          	sw	s7,4(s11)
   19d4c:	0ef12623          	sw	a5,236(sp)
   19d50:	0ee12423          	sw	a4,232(sp)
   19d54:	00700693          	li	a3,7
   19d58:	1ae6c063          	blt	a3,a4,19ef8 <_svfprintf_r+0xba0>
   19d5c:	008d8d93          	addi	s11,s11,8
   19d60:	0049f993          	andi	s3,s3,4
   19d64:	00098663          	beqz	s3,19d70 <_svfprintf_r+0xa18>
   19d68:	41448433          	sub	s0,s1,s4
   19d6c:	1a804663          	bgtz	s0,19f18 <_svfprintf_r+0xbc0>
   19d70:	0144d463          	bge	s1,s4,19d78 <_svfprintf_r+0xa20>
   19d74:	000a0493          	mv	s1,s4
   19d78:	00412703          	lw	a4,4(sp)
   19d7c:	00970733          	add	a4,a4,s1
   19d80:	00e12223          	sw	a4,4(sp)
   19d84:	fc079a63          	bnez	a5,19558 <_svfprintf_r+0x200>
   19d88:	00c12783          	lw	a5,12(sp)
   19d8c:	0e012423          	sw	zero,232(sp)
   19d90:	00078863          	beqz	a5,19da0 <_svfprintf_r+0xa48>
   19d94:	00c12583          	lw	a1,12(sp)
   19d98:	000a8513          	mv	a0,s5
   19d9c:	aa0fa0ef          	jal	ra,1403c <_free_r>
   19da0:	10c10d93          	addi	s11,sp,268
   19da4:	00090d13          	mv	s10,s2
   19da8:	a05ff06f          	j	197ac <_svfprintf_r+0x454>
   19dac:	00812583          	lw	a1,8(sp)
   19db0:	0e410613          	addi	a2,sp,228
   19db4:	000a8513          	mv	a0,s5
   19db8:	05d12423          	sw	t4,72(sp)
   19dbc:	03e12a23          	sw	t5,52(sp)
   19dc0:	11d040ef          	jal	ra,1e6dc <__ssprint_r>
   19dc4:	fa051463          	bnez	a0,1956c <_svfprintf_r+0x214>
   19dc8:	0ec12783          	lw	a5,236(sp)
   19dcc:	10c10d93          	addi	s11,sp,268
   19dd0:	04812e83          	lw	t4,72(sp)
   19dd4:	03412f03          	lw	t5,52(sp)
   19dd8:	f15ff06f          	j	19cec <_svfprintf_r+0x994>
   19ddc:	0e812683          	lw	a3,232(sp)
   19de0:	00178c93          	addi	s9,a5,1
   19de4:	01812783          	lw	a5,24(sp)
   19de8:	00100713          	li	a4,1
   19dec:	01ada023          	sw	s10,0(s11)
   19df0:	00168413          	addi	s0,a3,1
   19df4:	008d8b93          	addi	s7,s11,8
   19df8:	28f758e3          	bge	a4,a5,1a888 <_svfprintf_r+0x1530>
   19dfc:	00100713          	li	a4,1
   19e00:	00eda223          	sw	a4,4(s11)
   19e04:	0f912623          	sw	s9,236(sp)
   19e08:	0e812423          	sw	s0,232(sp)
   19e0c:	00700713          	li	a4,7
   19e10:	328740e3          	blt	a4,s0,1a930 <_svfprintf_r+0x15d8>
   19e14:	02812783          	lw	a5,40(sp)
   19e18:	03012703          	lw	a4,48(sp)
   19e1c:	00140413          	addi	s0,s0,1
   19e20:	00fc8cb3          	add	s9,s9,a5
   19e24:	00eba023          	sw	a4,0(s7)
   19e28:	00fba223          	sw	a5,4(s7)
   19e2c:	0f912623          	sw	s9,236(sp)
   19e30:	0e812423          	sw	s0,232(sp)
   19e34:	00700713          	li	a4,7
   19e38:	008b8b93          	addi	s7,s7,8
   19e3c:	30874ee3          	blt	a4,s0,1a958 <_svfprintf_r+0x1600>
   19e40:	0f012703          	lw	a4,240(sp)
   19e44:	01812783          	lw	a5,24(sp)
   19e48:	00140613          	addi	a2,s0,1
   19e4c:	0ae12823          	sw	a4,176(sp)
   19e50:	0f412703          	lw	a4,244(sp)
   19e54:	0a010593          	addi	a1,sp,160
   19e58:	0b010513          	addi	a0,sp,176
   19e5c:	0ae12a23          	sw	a4,180(sp)
   19e60:	0f812703          	lw	a4,248(sp)
   19e64:	00060b13          	mv	s6,a2
   19e68:	00c12e23          	sw	a2,28(sp)
   19e6c:	0ae12c23          	sw	a4,184(sp)
   19e70:	0fc12703          	lw	a4,252(sp)
   19e74:	0a012023          	sw	zero,160(sp)
   19e78:	0a012223          	sw	zero,164(sp)
   19e7c:	0ae12e23          	sw	a4,188(sp)
   19e80:	fff78713          	addi	a4,a5,-1
   19e84:	00e12a23          	sw	a4,20(sp)
   19e88:	0a012423          	sw	zero,168(sp)
   19e8c:	0a012623          	sw	zero,172(sp)
   19e90:	081070ef          	jal	ra,21710 <__eqtf2>
   19e94:	008b8d93          	addi	s11,s7,8
   19e98:	01412703          	lw	a4,20(sp)
   19e9c:	01c12603          	lw	a2,28(sp)
   19ea0:	200508e3          	beqz	a0,1a8b0 <_svfprintf_r+0x1558>
   19ea4:	00ec8cb3          	add	s9,s9,a4
   19ea8:	001d0813          	addi	a6,s10,1
   19eac:	00eba223          	sw	a4,4(s7)
   19eb0:	010ba023          	sw	a6,0(s7)
   19eb4:	0f912623          	sw	s9,236(sp)
   19eb8:	0f612423          	sw	s6,232(sp)
   19ebc:	00700713          	li	a4,7
   19ec0:	5f674ce3          	blt	a4,s6,1acb8 <_svfprintf_r+0x1960>
   19ec4:	010b8713          	addi	a4,s7,16
   19ec8:	00240b13          	addi	s6,s0,2
   19ecc:	000d8b93          	mv	s7,s11
   19ed0:	00070d93          	mv	s11,a4
   19ed4:	03812683          	lw	a3,56(sp)
   19ed8:	0d410713          	addi	a4,sp,212
   19edc:	00eba023          	sw	a4,0(s7)
   19ee0:	019687b3          	add	a5,a3,s9
   19ee4:	00dba223          	sw	a3,4(s7)
   19ee8:	0ef12623          	sw	a5,236(sp)
   19eec:	0f612423          	sw	s6,232(sp)
   19ef0:	00700713          	li	a4,7
   19ef4:	e76756e3          	bge	a4,s6,19d60 <_svfprintf_r+0xa08>
   19ef8:	00812583          	lw	a1,8(sp)
   19efc:	0e410613          	addi	a2,sp,228
   19f00:	000a8513          	mv	a0,s5
   19f04:	7d8040ef          	jal	ra,1e6dc <__ssprint_r>
   19f08:	e6051263          	bnez	a0,1956c <_svfprintf_r+0x214>
   19f0c:	0ec12783          	lw	a5,236(sp)
   19f10:	10c10d93          	addi	s11,sp,268
   19f14:	e4dff06f          	j	19d60 <_svfprintf_r+0xa08>
   19f18:	0e812703          	lw	a4,232(sp)
   19f1c:	0000bc97          	auipc	s9,0xb
   19f20:	400c8c93          	addi	s9,s9,1024 # 2531c <blanks.4489>
   19f24:	068c5063          	bge	s8,s0,19f84 <_svfprintf_r+0xc2c>
   19f28:	00700993          	li	s3,7
   19f2c:	00812b03          	lw	s6,8(sp)
   19f30:	00c0006f          	j	19f3c <_svfprintf_r+0xbe4>
   19f34:	ff040413          	addi	s0,s0,-16
   19f38:	048c5663          	bge	s8,s0,19f84 <_svfprintf_r+0xc2c>
   19f3c:	01078793          	addi	a5,a5,16
   19f40:	00170713          	addi	a4,a4,1
   19f44:	019da023          	sw	s9,0(s11)
   19f48:	018da223          	sw	s8,4(s11)
   19f4c:	0ef12623          	sw	a5,236(sp)
   19f50:	0ee12423          	sw	a4,232(sp)
   19f54:	008d8d93          	addi	s11,s11,8
   19f58:	fce9dee3          	bge	s3,a4,19f34 <_svfprintf_r+0xbdc>
   19f5c:	0e410613          	addi	a2,sp,228
   19f60:	000b0593          	mv	a1,s6
   19f64:	000a8513          	mv	a0,s5
   19f68:	774040ef          	jal	ra,1e6dc <__ssprint_r>
   19f6c:	e0051063          	bnez	a0,1956c <_svfprintf_r+0x214>
   19f70:	ff040413          	addi	s0,s0,-16
   19f74:	0ec12783          	lw	a5,236(sp)
   19f78:	0e812703          	lw	a4,232(sp)
   19f7c:	10c10d93          	addi	s11,sp,268
   19f80:	fa8c4ee3          	blt	s8,s0,19f3c <_svfprintf_r+0xbe4>
   19f84:	008787b3          	add	a5,a5,s0
   19f88:	00170713          	addi	a4,a4,1
   19f8c:	019da023          	sw	s9,0(s11)
   19f90:	008da223          	sw	s0,4(s11)
   19f94:	0ef12623          	sw	a5,236(sp)
   19f98:	0ee12423          	sw	a4,232(sp)
   19f9c:	00700693          	li	a3,7
   19fa0:	dce6d8e3          	bge	a3,a4,19d70 <_svfprintf_r+0xa18>
   19fa4:	00812583          	lw	a1,8(sp)
   19fa8:	0e410613          	addi	a2,sp,228
   19fac:	000a8513          	mv	a0,s5
   19fb0:	72c040ef          	jal	ra,1e6dc <__ssprint_r>
   19fb4:	da051c63          	bnez	a0,1956c <_svfprintf_r+0x214>
   19fb8:	0ec12783          	lw	a5,236(sp)
   19fbc:	db5ff06f          	j	19d70 <_svfprintf_r+0xa18>
   19fc0:	0209f793          	andi	a5,s3,32
   19fc4:	20079863          	bnez	a5,1a1d4 <_svfprintf_r+0xe7c>
   19fc8:	01012703          	lw	a4,16(sp)
   19fcc:	0109f793          	andi	a5,s3,16
   19fd0:	00470713          	addi	a4,a4,4
   19fd4:	00078463          	beqz	a5,19fdc <_svfprintf_r+0xc84>
   19fd8:	5c50106f          	j	1bd9c <_svfprintf_r+0x2a44>
   19fdc:	0409f793          	andi	a5,s3,64
   19fe0:	00079463          	bnez	a5,19fe8 <_svfprintf_r+0xc90>
   19fe4:	10c0106f          	j	1b0f0 <_svfprintf_r+0x1d98>
   19fe8:	01012783          	lw	a5,16(sp)
   19fec:	00e12823          	sw	a4,16(sp)
   19ff0:	00098a13          	mv	s4,s3
   19ff4:	00079c83          	lh	s9,0(a5)
   19ff8:	41fcdb93          	srai	s7,s9,0x1f
   19ffc:	000b8713          	mv	a4,s7
   1a000:	c20758e3          	bgez	a4,19c30 <_svfprintf_r+0x8d8>
   1a004:	41900cb3          	neg	s9,s9
   1a008:	01903733          	snez	a4,s9
   1a00c:	417007b3          	neg	a5,s7
   1a010:	40e78bb3          	sub	s7,a5,a4
   1a014:	02d00713          	li	a4,45
   1a018:	0ce103a3          	sb	a4,199(sp)
   1a01c:	fff00693          	li	a3,-1
   1a020:	00100713          	li	a4,1
   1a024:	e0db1463          	bne	s6,a3,1962c <_svfprintf_r+0x2d4>
   1a028:	00100693          	li	a3,1
   1a02c:	1cd70a63          	beq	a4,a3,1a200 <_svfprintf_r+0xea8>
   1a030:	00200693          	li	a3,2
   1a034:	20d70463          	beq	a4,a3,1a23c <_svfprintf_r+0xee4>
   1a038:	1b010693          	addi	a3,sp,432
   1a03c:	0080006f          	j	1a044 <_svfprintf_r+0xcec>
   1a040:	000d0693          	mv	a3,s10
   1a044:	01db9793          	slli	a5,s7,0x1d
   1a048:	007cf713          	andi	a4,s9,7
   1a04c:	003cdc93          	srli	s9,s9,0x3
   1a050:	03070713          	addi	a4,a4,48
   1a054:	0197ecb3          	or	s9,a5,s9
   1a058:	003bdb93          	srli	s7,s7,0x3
   1a05c:	fee68fa3          	sb	a4,-1(a3)
   1a060:	017ce7b3          	or	a5,s9,s7
   1a064:	fff68d13          	addi	s10,a3,-1
   1a068:	fc079ce3          	bnez	a5,1a040 <_svfprintf_r+0xce8>
   1a06c:	001a7793          	andi	a5,s4,1
   1a070:	20078063          	beqz	a5,1a270 <_svfprintf_r+0xf18>
   1a074:	03000793          	li	a5,48
   1a078:	1ef70c63          	beq	a4,a5,1a270 <_svfprintf_r+0xf18>
   1a07c:	ffe68693          	addi	a3,a3,-2
   1a080:	fefd0fa3          	sb	a5,-1(s10)
   1a084:	1b010793          	addi	a5,sp,432
   1a088:	40d78bb3          	sub	s7,a5,a3
   1a08c:	000a0993          	mv	s3,s4
   1a090:	00068d13          	mv	s10,a3
   1a094:	dbcff06f          	j	19650 <_svfprintf_r+0x2f8>
   1a098:	02b00793          	li	a5,43
   1a09c:	0cf103a3          	sb	a5,199(sp)
   1a0a0:	00094403          	lbu	s0,0(s2)
   1a0a4:	c14ff06f          	j	194b8 <_svfprintf_r+0x160>
   1a0a8:	01012783          	lw	a5,16(sp)
   1a0ac:	00094403          	lbu	s0,0(s2)
   1a0b0:	0007a483          	lw	s1,0(a5)
   1a0b4:	00478793          	addi	a5,a5,4
   1a0b8:	00f12823          	sw	a5,16(sp)
   1a0bc:	be04de63          	bgez	s1,194b8 <_svfprintf_r+0x160>
   1a0c0:	409004b3          	neg	s1,s1
   1a0c4:	0049e993          	ori	s3,s3,4
   1a0c8:	bf0ff06f          	j	194b8 <_svfprintf_r+0x160>
   1a0cc:	0809e993          	ori	s3,s3,128
   1a0d0:	00094403          	lbu	s0,0(s2)
   1a0d4:	be4ff06f          	j	194b8 <_svfprintf_r+0x160>
   1a0d8:	00094403          	lbu	s0,0(s2)
   1a0dc:	00190793          	addi	a5,s2,1
   1a0e0:	01741463          	bne	s0,s7,1a0e8 <_svfprintf_r+0xd90>
   1a0e4:	4950106f          	j	1bd78 <_svfprintf_r+0x2a20>
   1a0e8:	fd040693          	addi	a3,s0,-48
   1a0ec:	00078913          	mv	s2,a5
   1a0f0:	00000b13          	li	s6,0
   1a0f4:	bcda6663          	bltu	s4,a3,194c0 <_svfprintf_r+0x168>
   1a0f8:	00190913          	addi	s2,s2,1
   1a0fc:	002b1793          	slli	a5,s6,0x2
   1a100:	fff94403          	lbu	s0,-1(s2)
   1a104:	016787b3          	add	a5,a5,s6
   1a108:	00179793          	slli	a5,a5,0x1
   1a10c:	00d78b33          	add	s6,a5,a3
   1a110:	fd040693          	addi	a3,s0,-48
   1a114:	feda72e3          	bgeu	s4,a3,1a0f8 <_svfprintf_r+0xda0>
   1a118:	ba8ff06f          	j	194c0 <_svfprintf_r+0x168>
   1a11c:	0019e993          	ori	s3,s3,1
   1a120:	00094403          	lbu	s0,0(s2)
   1a124:	b94ff06f          	j	194b8 <_svfprintf_r+0x160>
   1a128:	0c714783          	lbu	a5,199(sp)
   1a12c:	00094403          	lbu	s0,0(s2)
   1a130:	b8079463          	bnez	a5,194b8 <_svfprintf_r+0x160>
   1a134:	02000793          	li	a5,32
   1a138:	0cf103a3          	sb	a5,199(sp)
   1a13c:	b7cff06f          	j	194b8 <_svfprintf_r+0x160>
   1a140:	0209f793          	andi	a5,s3,32
   1a144:	06079463          	bnez	a5,1a1ac <_svfprintf_r+0xe54>
   1a148:	01012683          	lw	a3,16(sp)
   1a14c:	0109f793          	andi	a5,s3,16
   1a150:	00468713          	addi	a4,a3,4
   1a154:	0006ac83          	lw	s9,0(a3)
   1a158:	00078463          	beqz	a5,1a160 <_svfprintf_r+0xe08>
   1a15c:	4750106f          	j	1bdd0 <_svfprintf_r+0x2a78>
   1a160:	0409f793          	andi	a5,s3,64
   1a164:	74078ae3          	beqz	a5,1b0b8 <_svfprintf_r+0x1d60>
   1a168:	010c9c93          	slli	s9,s9,0x10
   1a16c:	00e12823          	sw	a4,16(sp)
   1a170:	010cdc93          	srli	s9,s9,0x10
   1a174:	00000b93          	li	s7,0
   1a178:	00098a13          	mv	s4,s3
   1a17c:	00100713          	li	a4,1
   1a180:	ca0ff06f          	j	19620 <_svfprintf_r+0x2c8>
   1a184:	01012783          	lw	a5,16(sp)
   1a188:	00778793          	addi	a5,a5,7
   1a18c:	ff87f793          	andi	a5,a5,-8
   1a190:	0007ac83          	lw	s9,0(a5)
   1a194:	0047ab83          	lw	s7,4(a5)
   1a198:	00878713          	addi	a4,a5,8
   1a19c:	00e12823          	sw	a4,16(sp)
   1a1a0:	bff9fa13          	andi	s4,s3,-1025
   1a1a4:	00000713          	li	a4,0
   1a1a8:	c78ff06f          	j	19620 <_svfprintf_r+0x2c8>
   1a1ac:	00098a13          	mv	s4,s3
   1a1b0:	01012783          	lw	a5,16(sp)
   1a1b4:	00778793          	addi	a5,a5,7
   1a1b8:	ff87f793          	andi	a5,a5,-8
   1a1bc:	00878713          	addi	a4,a5,8
   1a1c0:	00e12823          	sw	a4,16(sp)
   1a1c4:	0007ac83          	lw	s9,0(a5)
   1a1c8:	0047ab83          	lw	s7,4(a5)
   1a1cc:	00100713          	li	a4,1
   1a1d0:	c50ff06f          	j	19620 <_svfprintf_r+0x2c8>
   1a1d4:	00098a13          	mv	s4,s3
   1a1d8:	01012783          	lw	a5,16(sp)
   1a1dc:	00778793          	addi	a5,a5,7
   1a1e0:	ff87f793          	andi	a5,a5,-8
   1a1e4:	0047a703          	lw	a4,4(a5)
   1a1e8:	00878693          	addi	a3,a5,8
   1a1ec:	00d12823          	sw	a3,16(sp)
   1a1f0:	0007ac83          	lw	s9,0(a5)
   1a1f4:	00070b93          	mv	s7,a4
   1a1f8:	a35ff06f          	j	19c2c <_svfprintf_r+0x8d4>
   1a1fc:	00098a13          	mv	s4,s3
   1a200:	400b90e3          	bnez	s7,1ae00 <_svfprintf_r+0x1aa8>
   1a204:	00900713          	li	a4,9
   1a208:	3f976ce3          	bltu	a4,s9,1ae00 <_svfprintf_r+0x1aa8>
   1a20c:	030c8c93          	addi	s9,s9,48
   1a210:	1b9107a3          	sb	s9,431(sp)
   1a214:	000a0993          	mv	s3,s4
   1a218:	00100b93          	li	s7,1
   1a21c:	1af10d13          	addi	s10,sp,431
   1a220:	c30ff06f          	j	19650 <_svfprintf_r+0x2f8>
   1a224:	00100693          	li	a3,1
   1a228:	00d71463          	bne	a4,a3,1a230 <_svfprintf_r+0xed8>
   1a22c:	05c0106f          	j	1b288 <_svfprintf_r+0x1f30>
   1a230:	00200693          	li	a3,2
   1a234:	00098a13          	mv	s4,s3
   1a238:	e0d710e3          	bne	a4,a3,1a038 <_svfprintf_r+0xce0>
   1a23c:	02c12683          	lw	a3,44(sp)
   1a240:	1b010d13          	addi	s10,sp,432
   1a244:	00fcf793          	andi	a5,s9,15
   1a248:	00f687b3          	add	a5,a3,a5
   1a24c:	0007c783          	lbu	a5,0(a5)
   1a250:	01cb9713          	slli	a4,s7,0x1c
   1a254:	004cdc93          	srli	s9,s9,0x4
   1a258:	fffd0d13          	addi	s10,s10,-1
   1a25c:	01976cb3          	or	s9,a4,s9
   1a260:	004bdb93          	srli	s7,s7,0x4
   1a264:	00fd0023          	sb	a5,0(s10)
   1a268:	017ce7b3          	or	a5,s9,s7
   1a26c:	fc079ce3          	bnez	a5,1a244 <_svfprintf_r+0xeec>
   1a270:	1b010793          	addi	a5,sp,432
   1a274:	41a78bb3          	sub	s7,a5,s10
   1a278:	000a0993          	mv	s3,s4
   1a27c:	bd4ff06f          	j	19650 <_svfprintf_r+0x2f8>
   1a280:	06500713          	li	a4,101
   1a284:	b4875ce3          	bge	a4,s0,19ddc <_svfprintf_r+0xa84>
   1a288:	0f012703          	lw	a4,240(sp)
   1a28c:	0a010593          	addi	a1,sp,160
   1a290:	0b010513          	addi	a0,sp,176
   1a294:	0ae12823          	sw	a4,176(sp)
   1a298:	0f412703          	lw	a4,244(sp)
   1a29c:	02f12a23          	sw	a5,52(sp)
   1a2a0:	0a012023          	sw	zero,160(sp)
   1a2a4:	0ae12a23          	sw	a4,180(sp)
   1a2a8:	0f812703          	lw	a4,248(sp)
   1a2ac:	0a012223          	sw	zero,164(sp)
   1a2b0:	0a012423          	sw	zero,168(sp)
   1a2b4:	0ae12c23          	sw	a4,184(sp)
   1a2b8:	0fc12703          	lw	a4,252(sp)
   1a2bc:	0a012623          	sw	zero,172(sp)
   1a2c0:	0ae12e23          	sw	a4,188(sp)
   1a2c4:	44c070ef          	jal	ra,21710 <__eqtf2>
   1a2c8:	03412783          	lw	a5,52(sp)
   1a2cc:	44051263          	bnez	a0,1a710 <_svfprintf_r+0x13b8>
   1a2d0:	0e812703          	lw	a4,232(sp)
   1a2d4:	0000b697          	auipc	a3,0xb
   1a2d8:	b2068693          	addi	a3,a3,-1248 # 24df4 <zeroes.4505+0x50>
   1a2dc:	00178793          	addi	a5,a5,1
   1a2e0:	00dda023          	sw	a3,0(s11)
   1a2e4:	00170713          	addi	a4,a4,1
   1a2e8:	00100693          	li	a3,1
   1a2ec:	00dda223          	sw	a3,4(s11)
   1a2f0:	0ef12623          	sw	a5,236(sp)
   1a2f4:	0ee12423          	sw	a4,232(sp)
   1a2f8:	00700793          	li	a5,7
   1a2fc:	008d8d93          	addi	s11,s11,8
   1a300:	2ee7c0e3          	blt	a5,a4,1ade0 <_svfprintf_r+0x1a88>
   1a304:	0cc12783          	lw	a5,204(sp)
   1a308:	01812703          	lw	a4,24(sp)
   1a30c:	00e7ca63          	blt	a5,a4,1a320 <_svfprintf_r+0xfc8>
   1a310:	0019f793          	andi	a5,s3,1
   1a314:	00079663          	bnez	a5,1a320 <_svfprintf_r+0xfc8>
   1a318:	0ec12783          	lw	a5,236(sp)
   1a31c:	a45ff06f          	j	19d60 <_svfprintf_r+0xa08>
   1a320:	03012783          	lw	a5,48(sp)
   1a324:	02812683          	lw	a3,40(sp)
   1a328:	0e812703          	lw	a4,232(sp)
   1a32c:	00fda023          	sw	a5,0(s11)
   1a330:	0ec12783          	lw	a5,236(sp)
   1a334:	00170713          	addi	a4,a4,1
   1a338:	00dda223          	sw	a3,4(s11)
   1a33c:	00f687b3          	add	a5,a3,a5
   1a340:	0ef12623          	sw	a5,236(sp)
   1a344:	0ee12423          	sw	a4,232(sp)
   1a348:	00700693          	li	a3,7
   1a34c:	008d8d93          	addi	s11,s11,8
   1a350:	6ee6c863          	blt	a3,a4,1aa40 <_svfprintf_r+0x16e8>
   1a354:	01812703          	lw	a4,24(sp)
   1a358:	fff70413          	addi	s0,a4,-1
   1a35c:	a08052e3          	blez	s0,19d60 <_svfprintf_r+0xa08>
   1a360:	0e812703          	lw	a4,232(sp)
   1a364:	368c56e3          	bge	s8,s0,1aed0 <_svfprintf_r+0x1b78>
   1a368:	00700b93          	li	s7,7
   1a36c:	00812b03          	lw	s6,8(sp)
   1a370:	00c0006f          	j	1a37c <_svfprintf_r+0x1024>
   1a374:	ff040413          	addi	s0,s0,-16
   1a378:	348c5ce3          	bge	s8,s0,1aed0 <_svfprintf_r+0x1b78>
   1a37c:	01078793          	addi	a5,a5,16
   1a380:	00170713          	addi	a4,a4,1
   1a384:	0000b697          	auipc	a3,0xb
   1a388:	fa868693          	addi	a3,a3,-88 # 2532c <zeroes.4490>
   1a38c:	00dda023          	sw	a3,0(s11)
   1a390:	018da223          	sw	s8,4(s11)
   1a394:	0ef12623          	sw	a5,236(sp)
   1a398:	0ee12423          	sw	a4,232(sp)
   1a39c:	008d8d93          	addi	s11,s11,8
   1a3a0:	fcebdae3          	bge	s7,a4,1a374 <_svfprintf_r+0x101c>
   1a3a4:	0e410613          	addi	a2,sp,228
   1a3a8:	000b0593          	mv	a1,s6
   1a3ac:	000a8513          	mv	a0,s5
   1a3b0:	32c040ef          	jal	ra,1e6dc <__ssprint_r>
   1a3b4:	9a051c63          	bnez	a0,1956c <_svfprintf_r+0x214>
   1a3b8:	0ec12783          	lw	a5,236(sp)
   1a3bc:	0e812703          	lw	a4,232(sp)
   1a3c0:	10c10d93          	addi	s11,sp,268
   1a3c4:	fb1ff06f          	j	1a374 <_svfprintf_r+0x101c>
   1a3c8:	41448cb3          	sub	s9,s1,s4
   1a3cc:	95905ee3          	blez	s9,19d28 <_svfprintf_r+0x9d0>
   1a3d0:	0e812703          	lw	a4,232(sp)
   1a3d4:	099c5e63          	bge	s8,s9,1a470 <_svfprintf_r+0x1118>
   1a3d8:	000c8693          	mv	a3,s9
   1a3dc:	02812a23          	sw	s0,52(sp)
   1a3e0:	000b8c93          	mv	s9,s7
   1a3e4:	00700e13          	li	t3,7
   1a3e8:	000a0b93          	mv	s7,s4
   1a3ec:	00812403          	lw	s0,8(sp)
   1a3f0:	00048a13          	mv	s4,s1
   1a3f4:	00068493          	mv	s1,a3
   1a3f8:	00c0006f          	j	1a404 <_svfprintf_r+0x10ac>
   1a3fc:	ff048493          	addi	s1,s1,-16
   1a400:	049c5c63          	bge	s8,s1,1a458 <_svfprintf_r+0x1100>
   1a404:	01078793          	addi	a5,a5,16
   1a408:	00170713          	addi	a4,a4,1
   1a40c:	0000b697          	auipc	a3,0xb
   1a410:	f2068693          	addi	a3,a3,-224 # 2532c <zeroes.4490>
   1a414:	00dda023          	sw	a3,0(s11)
   1a418:	018da223          	sw	s8,4(s11)
   1a41c:	0ef12623          	sw	a5,236(sp)
   1a420:	0ee12423          	sw	a4,232(sp)
   1a424:	008d8d93          	addi	s11,s11,8
   1a428:	fcee5ae3          	bge	t3,a4,1a3fc <_svfprintf_r+0x10a4>
   1a42c:	0e410613          	addi	a2,sp,228
   1a430:	00040593          	mv	a1,s0
   1a434:	000a8513          	mv	a0,s5
   1a438:	2a4040ef          	jal	ra,1e6dc <__ssprint_r>
   1a43c:	92051863          	bnez	a0,1956c <_svfprintf_r+0x214>
   1a440:	ff048493          	addi	s1,s1,-16
   1a444:	0ec12783          	lw	a5,236(sp)
   1a448:	0e812703          	lw	a4,232(sp)
   1a44c:	10c10d93          	addi	s11,sp,268
   1a450:	00700e13          	li	t3,7
   1a454:	fa9c48e3          	blt	s8,s1,1a404 <_svfprintf_r+0x10ac>
   1a458:	03412403          	lw	s0,52(sp)
   1a45c:	00048693          	mv	a3,s1
   1a460:	000a0493          	mv	s1,s4
   1a464:	000b8a13          	mv	s4,s7
   1a468:	000c8b93          	mv	s7,s9
   1a46c:	00068c93          	mv	s9,a3
   1a470:	0000b697          	auipc	a3,0xb
   1a474:	ebc68693          	addi	a3,a3,-324 # 2532c <zeroes.4490>
   1a478:	019787b3          	add	a5,a5,s9
   1a47c:	00170713          	addi	a4,a4,1
   1a480:	00dda023          	sw	a3,0(s11)
   1a484:	019da223          	sw	s9,4(s11)
   1a488:	0ef12623          	sw	a5,236(sp)
   1a48c:	0ee12423          	sw	a4,232(sp)
   1a490:	00700693          	li	a3,7
   1a494:	008d8d93          	addi	s11,s11,8
   1a498:	88e6d8e3          	bge	a3,a4,19d28 <_svfprintf_r+0x9d0>
   1a49c:	00812583          	lw	a1,8(sp)
   1a4a0:	0e410613          	addi	a2,sp,228
   1a4a4:	000a8513          	mv	a0,s5
   1a4a8:	234040ef          	jal	ra,1e6dc <__ssprint_r>
   1a4ac:	8c051063          	bnez	a0,1956c <_svfprintf_r+0x214>
   1a4b0:	417b0b33          	sub	s6,s6,s7
   1a4b4:	0ec12783          	lw	a5,236(sp)
   1a4b8:	10c10d93          	addi	s11,sp,268
   1a4bc:	87605ae3          	blez	s6,19d30 <_svfprintf_r+0x9d8>
   1a4c0:	0e812703          	lw	a4,232(sp)
   1a4c4:	096c5a63          	bge	s8,s6,1a558 <_svfprintf_r+0x1200>
   1a4c8:	000a0693          	mv	a3,s4
   1a4cc:	02812a23          	sw	s0,52(sp)
   1a4d0:	00048a13          	mv	s4,s1
   1a4d4:	00700c93          	li	s9,7
   1a4d8:	000b0493          	mv	s1,s6
   1a4dc:	00812403          	lw	s0,8(sp)
   1a4e0:	00068b13          	mv	s6,a3
   1a4e4:	00c0006f          	j	1a4f0 <_svfprintf_r+0x1198>
   1a4e8:	ff048493          	addi	s1,s1,-16
   1a4ec:	049c5c63          	bge	s8,s1,1a544 <_svfprintf_r+0x11ec>
   1a4f0:	01078793          	addi	a5,a5,16
   1a4f4:	00170713          	addi	a4,a4,1
   1a4f8:	0000b697          	auipc	a3,0xb
   1a4fc:	e3468693          	addi	a3,a3,-460 # 2532c <zeroes.4490>
   1a500:	00dda023          	sw	a3,0(s11)
   1a504:	018da223          	sw	s8,4(s11)
   1a508:	0ef12623          	sw	a5,236(sp)
   1a50c:	0ee12423          	sw	a4,232(sp)
   1a510:	008d8d93          	addi	s11,s11,8
   1a514:	fcecdae3          	bge	s9,a4,1a4e8 <_svfprintf_r+0x1190>
   1a518:	0e410613          	addi	a2,sp,228
   1a51c:	00040593          	mv	a1,s0
   1a520:	000a8513          	mv	a0,s5
   1a524:	1b8040ef          	jal	ra,1e6dc <__ssprint_r>
   1a528:	00050463          	beqz	a0,1a530 <_svfprintf_r+0x11d8>
   1a52c:	840ff06f          	j	1956c <_svfprintf_r+0x214>
   1a530:	ff048493          	addi	s1,s1,-16
   1a534:	0ec12783          	lw	a5,236(sp)
   1a538:	0e812703          	lw	a4,232(sp)
   1a53c:	10c10d93          	addi	s11,sp,268
   1a540:	fa9c48e3          	blt	s8,s1,1a4f0 <_svfprintf_r+0x1198>
   1a544:	03412403          	lw	s0,52(sp)
   1a548:	000b0693          	mv	a3,s6
   1a54c:	00048b13          	mv	s6,s1
   1a550:	000a0493          	mv	s1,s4
   1a554:	00068a13          	mv	s4,a3
   1a558:	0000b697          	auipc	a3,0xb
   1a55c:	dd468693          	addi	a3,a3,-556 # 2532c <zeroes.4490>
   1a560:	016787b3          	add	a5,a5,s6
   1a564:	00170713          	addi	a4,a4,1
   1a568:	00dda023          	sw	a3,0(s11)
   1a56c:	016da223          	sw	s6,4(s11)
   1a570:	0ef12623          	sw	a5,236(sp)
   1a574:	0ee12423          	sw	a4,232(sp)
   1a578:	00700693          	li	a3,7
   1a57c:	008d8d93          	addi	s11,s11,8
   1a580:	fae6d863          	bge	a3,a4,19d30 <_svfprintf_r+0x9d8>
   1a584:	00812583          	lw	a1,8(sp)
   1a588:	0e410613          	addi	a2,sp,228
   1a58c:	000a8513          	mv	a0,s5
   1a590:	14c040ef          	jal	ra,1e6dc <__ssprint_r>
   1a594:	00050463          	beqz	a0,1a59c <_svfprintf_r+0x1244>
   1a598:	fd5fe06f          	j	1956c <_svfprintf_r+0x214>
   1a59c:	0ec12783          	lw	a5,236(sp)
   1a5a0:	10c10d93          	addi	s11,sp,268
   1a5a4:	f8cff06f          	j	19d30 <_svfprintf_r+0x9d8>
   1a5a8:	00098a13          	mv	s4,s3
   1a5ac:	a7dff06f          	j	1a028 <_svfprintf_r+0xcd0>
   1a5b0:	0e812703          	lw	a4,232(sp)
   1a5b4:	0000bc97          	auipc	s9,0xb
   1a5b8:	d68c8c93          	addi	s9,s9,-664 # 2531c <blanks.4489>
   1a5bc:	0cdc5863          	bge	s8,a3,1a68c <_svfprintf_r+0x1334>
   1a5c0:	05212623          	sw	s2,76(sp)
   1a5c4:	000d8613          	mv	a2,s11
   1a5c8:	000c8913          	mv	s2,s9
   1a5cc:	000d0d93          	mv	s11,s10
   1a5d0:	000a0c93          	mv	s9,s4
   1a5d4:	000b8d13          	mv	s10,s7
   1a5d8:	00098a13          	mv	s4,s3
   1a5dc:	000b0b93          	mv	s7,s6
   1a5e0:	00040993          	mv	s3,s0
   1a5e4:	00048b13          	mv	s6,s1
   1a5e8:	00700f93          	li	t6,7
   1a5ec:	03e12a23          	sw	t5,52(sp)
   1a5f0:	05d12423          	sw	t4,72(sp)
   1a5f4:	00812483          	lw	s1,8(sp)
   1a5f8:	00068413          	mv	s0,a3
   1a5fc:	00c0006f          	j	1a608 <_svfprintf_r+0x12b0>
   1a600:	ff040413          	addi	s0,s0,-16
   1a604:	048c5a63          	bge	s8,s0,1a658 <_svfprintf_r+0x1300>
   1a608:	01078793          	addi	a5,a5,16
   1a60c:	00170713          	addi	a4,a4,1
   1a610:	01262023          	sw	s2,0(a2)
   1a614:	01862223          	sw	s8,4(a2)
   1a618:	0ef12623          	sw	a5,236(sp)
   1a61c:	0ee12423          	sw	a4,232(sp)
   1a620:	00860613          	addi	a2,a2,8
   1a624:	fcefdee3          	bge	t6,a4,1a600 <_svfprintf_r+0x12a8>
   1a628:	0e410613          	addi	a2,sp,228
   1a62c:	00048593          	mv	a1,s1
   1a630:	000a8513          	mv	a0,s5
   1a634:	0a8040ef          	jal	ra,1e6dc <__ssprint_r>
   1a638:	00050463          	beqz	a0,1a640 <_svfprintf_r+0x12e8>
   1a63c:	f31fe06f          	j	1956c <_svfprintf_r+0x214>
   1a640:	ff040413          	addi	s0,s0,-16
   1a644:	0ec12783          	lw	a5,236(sp)
   1a648:	0e812703          	lw	a4,232(sp)
   1a64c:	10c10613          	addi	a2,sp,268
   1a650:	00700f93          	li	t6,7
   1a654:	fa8c4ae3          	blt	s8,s0,1a608 <_svfprintf_r+0x12b0>
   1a658:	00040693          	mv	a3,s0
   1a65c:	03412f03          	lw	t5,52(sp)
   1a660:	00098413          	mv	s0,s3
   1a664:	04812e83          	lw	t4,72(sp)
   1a668:	000a0993          	mv	s3,s4
   1a66c:	000c8a13          	mv	s4,s9
   1a670:	00090c93          	mv	s9,s2
   1a674:	04c12903          	lw	s2,76(sp)
   1a678:	000b0493          	mv	s1,s6
   1a67c:	000b8b13          	mv	s6,s7
   1a680:	000d0b93          	mv	s7,s10
   1a684:	000d8d13          	mv	s10,s11
   1a688:	00060d93          	mv	s11,a2
   1a68c:	00d787b3          	add	a5,a5,a3
   1a690:	00170713          	addi	a4,a4,1
   1a694:	00dda223          	sw	a3,4(s11)
   1a698:	019da023          	sw	s9,0(s11)
   1a69c:	0ef12623          	sw	a5,236(sp)
   1a6a0:	0ee12423          	sw	a4,232(sp)
   1a6a4:	00700693          	li	a3,7
   1a6a8:	008d8d93          	addi	s11,s11,8
   1a6ac:	e0e6d463          	bge	a3,a4,19cb4 <_svfprintf_r+0x95c>
   1a6b0:	00812583          	lw	a1,8(sp)
   1a6b4:	0e410613          	addi	a2,sp,228
   1a6b8:	000a8513          	mv	a0,s5
   1a6bc:	05d12423          	sw	t4,72(sp)
   1a6c0:	03e12a23          	sw	t5,52(sp)
   1a6c4:	018040ef          	jal	ra,1e6dc <__ssprint_r>
   1a6c8:	00050463          	beqz	a0,1a6d0 <_svfprintf_r+0x1378>
   1a6cc:	ea1fe06f          	j	1956c <_svfprintf_r+0x214>
   1a6d0:	0ec12783          	lw	a5,236(sp)
   1a6d4:	10c10d93          	addi	s11,sp,268
   1a6d8:	04812e83          	lw	t4,72(sp)
   1a6dc:	03412f03          	lw	t5,52(sp)
   1a6e0:	dd4ff06f          	j	19cb4 <_svfprintf_r+0x95c>
   1a6e4:	00812583          	lw	a1,8(sp)
   1a6e8:	0e410613          	addi	a2,sp,228
   1a6ec:	000a8513          	mv	a0,s5
   1a6f0:	03d12a23          	sw	t4,52(sp)
   1a6f4:	7e9030ef          	jal	ra,1e6dc <__ssprint_r>
   1a6f8:	00050463          	beqz	a0,1a700 <_svfprintf_r+0x13a8>
   1a6fc:	e71fe06f          	j	1956c <_svfprintf_r+0x214>
   1a700:	0ec12783          	lw	a5,236(sp)
   1a704:	10c10d93          	addi	s11,sp,268
   1a708:	03412e83          	lw	t4,52(sp)
   1a70c:	e14ff06f          	j	19d20 <_svfprintf_r+0x9c8>
   1a710:	0cc12683          	lw	a3,204(sp)
   1a714:	5ed05c63          	blez	a3,1ad0c <_svfprintf_r+0x19b4>
   1a718:	01812703          	lw	a4,24(sp)
   1a71c:	01412683          	lw	a3,20(sp)
   1a720:	00070413          	mv	s0,a4
   1a724:	30e6c863          	blt	a3,a4,1aa34 <_svfprintf_r+0x16dc>
   1a728:	02805663          	blez	s0,1a754 <_svfprintf_r+0x13fc>
   1a72c:	0e812703          	lw	a4,232(sp)
   1a730:	008787b3          	add	a5,a5,s0
   1a734:	01ada023          	sw	s10,0(s11)
   1a738:	00170713          	addi	a4,a4,1
   1a73c:	008da223          	sw	s0,4(s11)
   1a740:	0ef12623          	sw	a5,236(sp)
   1a744:	0ee12423          	sw	a4,232(sp)
   1a748:	00700693          	li	a3,7
   1a74c:	008d8d93          	addi	s11,s11,8
   1a750:	24e6c4e3          	blt	a3,a4,1b198 <_svfprintf_r+0x1e40>
   1a754:	fff44713          	not	a4,s0
   1a758:	41f75713          	srai	a4,a4,0x1f
   1a75c:	00e47433          	and	s0,s0,a4
   1a760:	01412703          	lw	a4,20(sp)
   1a764:	40870433          	sub	s0,a4,s0
   1a768:	36804663          	bgtz	s0,1aad4 <_svfprintf_r+0x177c>
   1a76c:	01412683          	lw	a3,20(sp)
   1a770:	4009f713          	andi	a4,s3,1024
   1a774:	00dd0b33          	add	s6,s10,a3
   1a778:	3c071463          	bnez	a4,1ab40 <_svfprintf_r+0x17e8>
   1a77c:	0cc12403          	lw	s0,204(sp)
   1a780:	01812703          	lw	a4,24(sp)
   1a784:	00e44663          	blt	s0,a4,1a790 <_svfprintf_r+0x1438>
   1a788:	0019f713          	andi	a4,s3,1
   1a78c:	22070ce3          	beqz	a4,1b1c4 <_svfprintf_r+0x1e6c>
   1a790:	03012703          	lw	a4,48(sp)
   1a794:	02812683          	lw	a3,40(sp)
   1a798:	008d8d93          	addi	s11,s11,8
   1a79c:	feedac23          	sw	a4,-8(s11)
   1a7a0:	0e812703          	lw	a4,232(sp)
   1a7a4:	00d787b3          	add	a5,a5,a3
   1a7a8:	feddae23          	sw	a3,-4(s11)
   1a7ac:	00170713          	addi	a4,a4,1
   1a7b0:	0ef12623          	sw	a5,236(sp)
   1a7b4:	0ee12423          	sw	a4,232(sp)
   1a7b8:	00700693          	li	a3,7
   1a7bc:	4ee6c4e3          	blt	a3,a4,1b4a4 <_svfprintf_r+0x214c>
   1a7c0:	01812683          	lw	a3,24(sp)
   1a7c4:	00dd0733          	add	a4,s10,a3
   1a7c8:	40868433          	sub	s0,a3,s0
   1a7cc:	41670733          	sub	a4,a4,s6
   1a7d0:	00040b93          	mv	s7,s0
   1a7d4:	00875463          	bge	a4,s0,1a7dc <_svfprintf_r+0x1484>
   1a7d8:	00070b93          	mv	s7,a4
   1a7dc:	03705663          	blez	s7,1a808 <_svfprintf_r+0x14b0>
   1a7e0:	0e812703          	lw	a4,232(sp)
   1a7e4:	017787b3          	add	a5,a5,s7
   1a7e8:	016da023          	sw	s6,0(s11)
   1a7ec:	00170713          	addi	a4,a4,1
   1a7f0:	017da223          	sw	s7,4(s11)
   1a7f4:	0ef12623          	sw	a5,236(sp)
   1a7f8:	0ee12423          	sw	a4,232(sp)
   1a7fc:	00700693          	li	a3,7
   1a800:	008d8d93          	addi	s11,s11,8
   1a804:	4ee6cae3          	blt	a3,a4,1b4f8 <_svfprintf_r+0x21a0>
   1a808:	fffbc713          	not	a4,s7
   1a80c:	41f75713          	srai	a4,a4,0x1f
   1a810:	00ebfbb3          	and	s7,s7,a4
   1a814:	41740433          	sub	s0,s0,s7
   1a818:	d4805463          	blez	s0,19d60 <_svfprintf_r+0xa08>
   1a81c:	0e812703          	lw	a4,232(sp)
   1a820:	6a8c5863          	bge	s8,s0,1aed0 <_svfprintf_r+0x1b78>
   1a824:	00700b93          	li	s7,7
   1a828:	00812b03          	lw	s6,8(sp)
   1a82c:	00c0006f          	j	1a838 <_svfprintf_r+0x14e0>
   1a830:	ff040413          	addi	s0,s0,-16
   1a834:	688c5e63          	bge	s8,s0,1aed0 <_svfprintf_r+0x1b78>
   1a838:	01078793          	addi	a5,a5,16
   1a83c:	00170713          	addi	a4,a4,1
   1a840:	0000b697          	auipc	a3,0xb
   1a844:	aec68693          	addi	a3,a3,-1300 # 2532c <zeroes.4490>
   1a848:	00dda023          	sw	a3,0(s11)
   1a84c:	018da223          	sw	s8,4(s11)
   1a850:	0ef12623          	sw	a5,236(sp)
   1a854:	0ee12423          	sw	a4,232(sp)
   1a858:	008d8d93          	addi	s11,s11,8
   1a85c:	fcebdae3          	bge	s7,a4,1a830 <_svfprintf_r+0x14d8>
   1a860:	0e410613          	addi	a2,sp,228
   1a864:	000b0593          	mv	a1,s6
   1a868:	000a8513          	mv	a0,s5
   1a86c:	671030ef          	jal	ra,1e6dc <__ssprint_r>
   1a870:	00050463          	beqz	a0,1a878 <_svfprintf_r+0x1520>
   1a874:	cf9fe06f          	j	1956c <_svfprintf_r+0x214>
   1a878:	0ec12783          	lw	a5,236(sp)
   1a87c:	0e812703          	lw	a4,232(sp)
   1a880:	10c10d93          	addi	s11,sp,268
   1a884:	fadff06f          	j	1a830 <_svfprintf_r+0x14d8>
   1a888:	0019f613          	andi	a2,s3,1
   1a88c:	d6061863          	bnez	a2,19dfc <_svfprintf_r+0xaa4>
   1a890:	00eda223          	sw	a4,4(s11)
   1a894:	0f912623          	sw	s9,236(sp)
   1a898:	0e812423          	sw	s0,232(sp)
   1a89c:	00700713          	li	a4,7
   1a8a0:	40874c63          	blt	a4,s0,1acb8 <_svfprintf_r+0x1960>
   1a8a4:	00268b13          	addi	s6,a3,2
   1a8a8:	010d8d93          	addi	s11,s11,16
   1a8ac:	e28ff06f          	j	19ed4 <_svfprintf_r+0xb7c>
   1a8b0:	e2e05263          	blez	a4,19ed4 <_svfprintf_r+0xb7c>
   1a8b4:	00ec4463          	blt	s8,a4,1a8bc <_svfprintf_r+0x1564>
   1a8b8:	4840106f          	j	1bd3c <_svfprintf_r+0x29e4>
   1a8bc:	00700b13          	li	s6,7
   1a8c0:	00070d93          	mv	s11,a4
   1a8c4:	00812d03          	lw	s10,8(sp)
   1a8c8:	00060413          	mv	s0,a2
   1a8cc:	0100006f          	j	1a8dc <_svfprintf_r+0x1584>
   1a8d0:	ff0d8d93          	addi	s11,s11,-16
   1a8d4:	7bbc5263          	bge	s8,s11,1b078 <_svfprintf_r+0x1d20>
   1a8d8:	00140413          	addi	s0,s0,1
   1a8dc:	010c8c93          	addi	s9,s9,16
   1a8e0:	0000b797          	auipc	a5,0xb
   1a8e4:	a4c78793          	addi	a5,a5,-1460 # 2532c <zeroes.4490>
   1a8e8:	00fba023          	sw	a5,0(s7)
   1a8ec:	018ba223          	sw	s8,4(s7)
   1a8f0:	0f912623          	sw	s9,236(sp)
   1a8f4:	0e812423          	sw	s0,232(sp)
   1a8f8:	008b8b93          	addi	s7,s7,8
   1a8fc:	fc8b5ae3          	bge	s6,s0,1a8d0 <_svfprintf_r+0x1578>
   1a900:	0e410613          	addi	a2,sp,228
   1a904:	000d0593          	mv	a1,s10
   1a908:	000a8513          	mv	a0,s5
   1a90c:	5d1030ef          	jal	ra,1e6dc <__ssprint_r>
   1a910:	00050463          	beqz	a0,1a918 <_svfprintf_r+0x15c0>
   1a914:	c59fe06f          	j	1956c <_svfprintf_r+0x214>
   1a918:	0ec12c83          	lw	s9,236(sp)
   1a91c:	0e812403          	lw	s0,232(sp)
   1a920:	10c10b93          	addi	s7,sp,268
   1a924:	fadff06f          	j	1a8d0 <_svfprintf_r+0x1578>
   1a928:	000d0493          	mv	s1,s10
   1a92c:	b6dfe06f          	j	19498 <_svfprintf_r+0x140>
   1a930:	00812583          	lw	a1,8(sp)
   1a934:	0e410613          	addi	a2,sp,228
   1a938:	000a8513          	mv	a0,s5
   1a93c:	5a1030ef          	jal	ra,1e6dc <__ssprint_r>
   1a940:	00050463          	beqz	a0,1a948 <_svfprintf_r+0x15f0>
   1a944:	c29fe06f          	j	1956c <_svfprintf_r+0x214>
   1a948:	0ec12c83          	lw	s9,236(sp)
   1a94c:	0e812403          	lw	s0,232(sp)
   1a950:	10c10b93          	addi	s7,sp,268
   1a954:	cc0ff06f          	j	19e14 <_svfprintf_r+0xabc>
   1a958:	00812583          	lw	a1,8(sp)
   1a95c:	0e410613          	addi	a2,sp,228
   1a960:	000a8513          	mv	a0,s5
   1a964:	579030ef          	jal	ra,1e6dc <__ssprint_r>
   1a968:	00050463          	beqz	a0,1a970 <_svfprintf_r+0x1618>
   1a96c:	c01fe06f          	j	1956c <_svfprintf_r+0x214>
   1a970:	0ec12c83          	lw	s9,236(sp)
   1a974:	0e812403          	lw	s0,232(sp)
   1a978:	10c10b93          	addi	s7,sp,268
   1a97c:	cc4ff06f          	j	19e40 <_svfprintf_r+0xae8>
   1a980:	03000793          	li	a5,48
   1a984:	1af107a3          	sb	a5,431(sp)
   1a988:	1af10d13          	addi	s10,sp,431
   1a98c:	cc5fe06f          	j	19650 <_svfprintf_r+0x2f8>
   1a990:	2009f793          	andi	a5,s3,512
   1a994:	0a0792e3          	bnez	a5,1b238 <_svfprintf_r+0x1ee0>
   1a998:	00000b93          	li	s7,0
   1a99c:	c69fe06f          	j	19604 <_svfprintf_r+0x2ac>
   1a9a0:	00412603          	lw	a2,4(sp)
   1a9a4:	0006a783          	lw	a5,0(a3)
   1a9a8:	00e12823          	sw	a4,16(sp)
   1a9ac:	41f65693          	srai	a3,a2,0x1f
   1a9b0:	00c7a023          	sw	a2,0(a5)
   1a9b4:	00d7a223          	sw	a3,4(a5)
   1a9b8:	00090d13          	mv	s10,s2
   1a9bc:	df1fe06f          	j	197ac <_svfprintf_r+0x454>
   1a9c0:	03000713          	li	a4,48
   1a9c4:	0029e993          	ori	s3,s3,2
   1a9c8:	0ce10423          	sb	a4,200(sp)
   1a9cc:	0c8104a3          	sb	s0,201(sp)
   1a9d0:	bff9fa13          	andi	s4,s3,-1025
   1a9d4:	00200713          	li	a4,2
   1a9d8:	c49fe06f          	j	19620 <_svfprintf_r+0x2c8>
   1a9dc:	03c12783          	lw	a5,60(sp)
   1a9e0:	00094403          	lbu	s0,0(s2)
   1a9e4:	00079463          	bnez	a5,1a9ec <_svfprintf_r+0x1694>
   1a9e8:	ad1fe06f          	j	194b8 <_svfprintf_r+0x160>
   1a9ec:	0007c783          	lbu	a5,0(a5)
   1a9f0:	00079463          	bnez	a5,1a9f8 <_svfprintf_r+0x16a0>
   1a9f4:	ac5fe06f          	j	194b8 <_svfprintf_r+0x160>
   1a9f8:	4009e993          	ori	s3,s3,1024
   1a9fc:	abdfe06f          	j	194b8 <_svfprintf_r+0x160>
   1aa00:	01012703          	lw	a4,16(sp)
   1aa04:	00072783          	lw	a5,0(a4)
   1aa08:	00470713          	addi	a4,a4,4
   1aa0c:	00e12823          	sw	a4,16(sp)
   1aa10:	0007a603          	lw	a2,0(a5)
   1aa14:	0047a683          	lw	a3,4(a5)
   1aa18:	0087a703          	lw	a4,8(a5)
   1aa1c:	00c7a783          	lw	a5,12(a5)
   1aa20:	0ec12823          	sw	a2,240(sp)
   1aa24:	0ed12a23          	sw	a3,244(sp)
   1aa28:	0ee12c23          	sw	a4,248(sp)
   1aa2c:	0ef12e23          	sw	a5,252(sp)
   1aa30:	e65fe06f          	j	19894 <_svfprintf_r+0x53c>
   1aa34:	00068413          	mv	s0,a3
   1aa38:	ce804ae3          	bgtz	s0,1a72c <_svfprintf_r+0x13d4>
   1aa3c:	d19ff06f          	j	1a754 <_svfprintf_r+0x13fc>
   1aa40:	00812583          	lw	a1,8(sp)
   1aa44:	0e410613          	addi	a2,sp,228
   1aa48:	000a8513          	mv	a0,s5
   1aa4c:	491030ef          	jal	ra,1e6dc <__ssprint_r>
   1aa50:	00050463          	beqz	a0,1aa58 <_svfprintf_r+0x1700>
   1aa54:	b19fe06f          	j	1956c <_svfprintf_r+0x214>
   1aa58:	0ec12783          	lw	a5,236(sp)
   1aa5c:	10c10d93          	addi	s11,sp,268
   1aa60:	8f5ff06f          	j	1a354 <_svfprintf_r+0xffc>
   1aa64:	00194403          	lbu	s0,1(s2)
   1aa68:	2009e993          	ori	s3,s3,512
   1aa6c:	00190913          	addi	s2,s2,1
   1aa70:	a49fe06f          	j	194b8 <_svfprintf_r+0x160>
   1aa74:	00194403          	lbu	s0,1(s2)
   1aa78:	0209e993          	ori	s3,s3,32
   1aa7c:	00190913          	addi	s2,s2,1
   1aa80:	a39fe06f          	j	194b8 <_svfprintf_r+0x160>
   1aa84:	02412503          	lw	a0,36(sp)
   1aa88:	04000593          	li	a1,64
   1aa8c:	82dfc0ef          	jal	ra,172b8 <_malloc_r>
   1aa90:	00812783          	lw	a5,8(sp)
   1aa94:	00a7a023          	sw	a0,0(a5)
   1aa98:	00a7a823          	sw	a0,16(a5)
   1aa9c:	00051463          	bnez	a0,1aaa4 <_svfprintf_r+0x174c>
   1aaa0:	3180106f          	j	1bdb8 <_svfprintf_r+0x2a60>
   1aaa4:	00812703          	lw	a4,8(sp)
   1aaa8:	04000793          	li	a5,64
   1aaac:	00f72a23          	sw	a5,20(a4)
   1aab0:	935fe06f          	j	193e4 <_svfprintf_r+0x8c>
   1aab4:	00600793          	li	a5,6
   1aab8:	000b0b93          	mv	s7,s6
   1aabc:	7167e063          	bltu	a5,s6,1b1bc <_svfprintf_r+0x1e64>
   1aac0:	000b8a13          	mv	s4,s7
   1aac4:	01912823          	sw	s9,16(sp)
   1aac8:	0000ad17          	auipc	s10,0xa
   1aacc:	324d0d13          	addi	s10,s10,804 # 24dec <zeroes.4505+0x48>
   1aad0:	9b0ff06f          	j	19c80 <_svfprintf_r+0x928>
   1aad4:	0e812703          	lw	a4,232(sp)
   1aad8:	668c5263          	bge	s8,s0,1b13c <_svfprintf_r+0x1de4>
   1aadc:	00700b93          	li	s7,7
   1aae0:	00812b03          	lw	s6,8(sp)
   1aae4:	00c0006f          	j	1aaf0 <_svfprintf_r+0x1798>
   1aae8:	ff040413          	addi	s0,s0,-16
   1aaec:	648c5863          	bge	s8,s0,1b13c <_svfprintf_r+0x1de4>
   1aaf0:	01078793          	addi	a5,a5,16
   1aaf4:	00170713          	addi	a4,a4,1
   1aaf8:	0000b697          	auipc	a3,0xb
   1aafc:	83468693          	addi	a3,a3,-1996 # 2532c <zeroes.4490>
   1ab00:	00dda023          	sw	a3,0(s11)
   1ab04:	018da223          	sw	s8,4(s11)
   1ab08:	0ef12623          	sw	a5,236(sp)
   1ab0c:	0ee12423          	sw	a4,232(sp)
   1ab10:	008d8d93          	addi	s11,s11,8
   1ab14:	fcebdae3          	bge	s7,a4,1aae8 <_svfprintf_r+0x1790>
   1ab18:	0e410613          	addi	a2,sp,228
   1ab1c:	000b0593          	mv	a1,s6
   1ab20:	000a8513          	mv	a0,s5
   1ab24:	3b9030ef          	jal	ra,1e6dc <__ssprint_r>
   1ab28:	00050463          	beqz	a0,1ab30 <_svfprintf_r+0x17d8>
   1ab2c:	a41fe06f          	j	1956c <_svfprintf_r+0x214>
   1ab30:	0ec12783          	lw	a5,236(sp)
   1ab34:	0e812703          	lw	a4,232(sp)
   1ab38:	10c10d93          	addi	s11,sp,268
   1ab3c:	fadff06f          	j	1aae8 <_svfprintf_r+0x1790>
   1ab40:	01812703          	lw	a4,24(sp)
   1ab44:	01c12b83          	lw	s7,28(sp)
   1ab48:	01212a23          	sw	s2,20(sp)
   1ab4c:	00ed0433          	add	s0,s10,a4
   1ab50:	03312a23          	sw	s3,52(sp)
   1ab54:	04912423          	sw	s1,72(sp)
   1ab58:	02012903          	lw	s2,32(sp)
   1ab5c:	01412e23          	sw	s4,28(sp)
   1ab60:	03a12023          	sw	s10,32(sp)
   1ab64:	00700c93          	li	s9,7
   1ab68:	00040d13          	mv	s10,s0
   1ab6c:	04012983          	lw	s3,64(sp)
   1ab70:	03c12483          	lw	s1,60(sp)
   1ab74:	000d8693          	mv	a3,s11
   1ab78:	00812a03          	lw	s4,8(sp)
   1ab7c:	04412403          	lw	s0,68(sp)
   1ab80:	080b8863          	beqz	s7,1ac10 <_svfprintf_r+0x18b8>
   1ab84:	08091863          	bnez	s2,1ac14 <_svfprintf_r+0x18bc>
   1ab88:	fff48493          	addi	s1,s1,-1
   1ab8c:	fffb8b93          	addi	s7,s7,-1
   1ab90:	0e812703          	lw	a4,232(sp)
   1ab94:	013787b3          	add	a5,a5,s3
   1ab98:	0086a023          	sw	s0,0(a3)
   1ab9c:	00170713          	addi	a4,a4,1
   1aba0:	0136a223          	sw	s3,4(a3)
   1aba4:	0ef12623          	sw	a5,236(sp)
   1aba8:	0ee12423          	sw	a4,232(sp)
   1abac:	00868693          	addi	a3,a3,8
   1abb0:	12eccc63          	blt	s9,a4,1ace8 <_svfprintf_r+0x1990>
   1abb4:	0004c603          	lbu	a2,0(s1)
   1abb8:	416d05b3          	sub	a1,s10,s6
   1abbc:	00060d93          	mv	s11,a2
   1abc0:	00c5d463          	bge	a1,a2,1abc8 <_svfprintf_r+0x1870>
   1abc4:	00058d93          	mv	s11,a1
   1abc8:	03b05663          	blez	s11,1abf4 <_svfprintf_r+0x189c>
   1abcc:	0e812603          	lw	a2,232(sp)
   1abd0:	01b787b3          	add	a5,a5,s11
   1abd4:	0166a023          	sw	s6,0(a3)
   1abd8:	00160613          	addi	a2,a2,1
   1abdc:	01b6a223          	sw	s11,4(a3)
   1abe0:	0ef12623          	sw	a5,236(sp)
   1abe4:	0ec12423          	sw	a2,232(sp)
   1abe8:	30cccc63          	blt	s9,a2,1af00 <_svfprintf_r+0x1ba8>
   1abec:	0004c603          	lbu	a2,0(s1)
   1abf0:	00868693          	addi	a3,a3,8
   1abf4:	fffdc593          	not	a1,s11
   1abf8:	41f5d593          	srai	a1,a1,0x1f
   1abfc:	00bdf733          	and	a4,s11,a1
   1ac00:	40e60db3          	sub	s11,a2,a4
   1ac04:	01b04c63          	bgtz	s11,1ac1c <_svfprintf_r+0x18c4>
   1ac08:	00cb0b33          	add	s6,s6,a2
   1ac0c:	f60b9ce3          	bnez	s7,1ab84 <_svfprintf_r+0x182c>
   1ac10:	68090063          	beqz	s2,1b290 <_svfprintf_r+0x1f38>
   1ac14:	fff90913          	addi	s2,s2,-1
   1ac18:	f79ff06f          	j	1ab90 <_svfprintf_r+0x1838>
   1ac1c:	0e812603          	lw	a2,232(sp)
   1ac20:	01bc4863          	blt	s8,s11,1ac30 <_svfprintf_r+0x18d8>
   1ac24:	0600006f          	j	1ac84 <_svfprintf_r+0x192c>
   1ac28:	ff0d8d93          	addi	s11,s11,-16
   1ac2c:	05bc5c63          	bge	s8,s11,1ac84 <_svfprintf_r+0x192c>
   1ac30:	01078793          	addi	a5,a5,16
   1ac34:	00160613          	addi	a2,a2,1
   1ac38:	0000a717          	auipc	a4,0xa
   1ac3c:	6f470713          	addi	a4,a4,1780 # 2532c <zeroes.4490>
   1ac40:	00e6a023          	sw	a4,0(a3)
   1ac44:	0186a223          	sw	s8,4(a3)
   1ac48:	0ef12623          	sw	a5,236(sp)
   1ac4c:	0ec12423          	sw	a2,232(sp)
   1ac50:	00868693          	addi	a3,a3,8
   1ac54:	fcccdae3          	bge	s9,a2,1ac28 <_svfprintf_r+0x18d0>
   1ac58:	0e410613          	addi	a2,sp,228
   1ac5c:	000a0593          	mv	a1,s4
   1ac60:	000a8513          	mv	a0,s5
   1ac64:	279030ef          	jal	ra,1e6dc <__ssprint_r>
   1ac68:	00050463          	beqz	a0,1ac70 <_svfprintf_r+0x1918>
   1ac6c:	901fe06f          	j	1956c <_svfprintf_r+0x214>
   1ac70:	ff0d8d93          	addi	s11,s11,-16
   1ac74:	0ec12783          	lw	a5,236(sp)
   1ac78:	0e812603          	lw	a2,232(sp)
   1ac7c:	10c10693          	addi	a3,sp,268
   1ac80:	fbbc48e3          	blt	s8,s11,1ac30 <_svfprintf_r+0x18d8>
   1ac84:	01b787b3          	add	a5,a5,s11
   1ac88:	00160613          	addi	a2,a2,1
   1ac8c:	0000a717          	auipc	a4,0xa
   1ac90:	6a070713          	addi	a4,a4,1696 # 2532c <zeroes.4490>
   1ac94:	00e6a023          	sw	a4,0(a3)
   1ac98:	01b6a223          	sw	s11,4(a3)
   1ac9c:	0ef12623          	sw	a5,236(sp)
   1aca0:	0ec12423          	sw	a2,232(sp)
   1aca4:	6accc263          	blt	s9,a2,1b348 <_svfprintf_r+0x1ff0>
   1aca8:	0004c603          	lbu	a2,0(s1)
   1acac:	00868693          	addi	a3,a3,8
   1acb0:	00cb0b33          	add	s6,s6,a2
   1acb4:	f59ff06f          	j	1ac0c <_svfprintf_r+0x18b4>
   1acb8:	00812583          	lw	a1,8(sp)
   1acbc:	0e410613          	addi	a2,sp,228
   1acc0:	000a8513          	mv	a0,s5
   1acc4:	219030ef          	jal	ra,1e6dc <__ssprint_r>
   1acc8:	00050463          	beqz	a0,1acd0 <_svfprintf_r+0x1978>
   1accc:	8a1fe06f          	j	1956c <_svfprintf_r+0x214>
   1acd0:	0e812683          	lw	a3,232(sp)
   1acd4:	0ec12c83          	lw	s9,236(sp)
   1acd8:	11410d93          	addi	s11,sp,276
   1acdc:	00168b13          	addi	s6,a3,1
   1ace0:	10c10b93          	addi	s7,sp,268
   1ace4:	9f0ff06f          	j	19ed4 <_svfprintf_r+0xb7c>
   1ace8:	0e410613          	addi	a2,sp,228
   1acec:	000a0593          	mv	a1,s4
   1acf0:	000a8513          	mv	a0,s5
   1acf4:	1e9030ef          	jal	ra,1e6dc <__ssprint_r>
   1acf8:	00050463          	beqz	a0,1ad00 <_svfprintf_r+0x19a8>
   1acfc:	871fe06f          	j	1956c <_svfprintf_r+0x214>
   1ad00:	0ec12783          	lw	a5,236(sp)
   1ad04:	10c10693          	addi	a3,sp,268
   1ad08:	eadff06f          	j	1abb4 <_svfprintf_r+0x185c>
   1ad0c:	0e812703          	lw	a4,232(sp)
   1ad10:	0000a617          	auipc	a2,0xa
   1ad14:	0e460613          	addi	a2,a2,228 # 24df4 <zeroes.4505+0x50>
   1ad18:	00cda023          	sw	a2,0(s11)
   1ad1c:	00178793          	addi	a5,a5,1
   1ad20:	00100613          	li	a2,1
   1ad24:	00170713          	addi	a4,a4,1
   1ad28:	00cda223          	sw	a2,4(s11)
   1ad2c:	0ef12623          	sw	a5,236(sp)
   1ad30:	0ee12423          	sw	a4,232(sp)
   1ad34:	00700613          	li	a2,7
   1ad38:	008d8d93          	addi	s11,s11,8
   1ad3c:	06e64e63          	blt	a2,a4,1adb8 <_svfprintf_r+0x1a60>
   1ad40:	28069a63          	bnez	a3,1afd4 <_svfprintf_r+0x1c7c>
   1ad44:	01812683          	lw	a3,24(sp)
   1ad48:	0019f713          	andi	a4,s3,1
   1ad4c:	00d76733          	or	a4,a4,a3
   1ad50:	00071463          	bnez	a4,1ad58 <_svfprintf_r+0x1a00>
   1ad54:	80cff06f          	j	19d60 <_svfprintf_r+0xa08>
   1ad58:	03012703          	lw	a4,48(sp)
   1ad5c:	02812683          	lw	a3,40(sp)
   1ad60:	008d8893          	addi	a7,s11,8
   1ad64:	00eda023          	sw	a4,0(s11)
   1ad68:	0e812703          	lw	a4,232(sp)
   1ad6c:	00f687b3          	add	a5,a3,a5
   1ad70:	00dda223          	sw	a3,4(s11)
   1ad74:	00170713          	addi	a4,a4,1
   1ad78:	0ef12623          	sw	a5,236(sp)
   1ad7c:	0ee12423          	sw	a4,232(sp)
   1ad80:	00700693          	li	a3,7
   1ad84:	4ce6c663          	blt	a3,a4,1b250 <_svfprintf_r+0x1ef8>
   1ad88:	01812683          	lw	a3,24(sp)
   1ad8c:	00170713          	addi	a4,a4,1
   1ad90:	01a8a023          	sw	s10,0(a7)
   1ad94:	00f687b3          	add	a5,a3,a5
   1ad98:	00d8a223          	sw	a3,4(a7)
   1ad9c:	0ef12623          	sw	a5,236(sp)
   1ada0:	0ee12423          	sw	a4,232(sp)
   1ada4:	00700693          	li	a3,7
   1ada8:	00888d93          	addi	s11,a7,8
   1adac:	00e6c463          	blt	a3,a4,1adb4 <_svfprintf_r+0x1a5c>
   1adb0:	fb1fe06f          	j	19d60 <_svfprintf_r+0xa08>
   1adb4:	944ff06f          	j	19ef8 <_svfprintf_r+0xba0>
   1adb8:	00812583          	lw	a1,8(sp)
   1adbc:	0e410613          	addi	a2,sp,228
   1adc0:	000a8513          	mv	a0,s5
   1adc4:	119030ef          	jal	ra,1e6dc <__ssprint_r>
   1adc8:	00050463          	beqz	a0,1add0 <_svfprintf_r+0x1a78>
   1adcc:	fa0fe06f          	j	1956c <_svfprintf_r+0x214>
   1add0:	0cc12683          	lw	a3,204(sp)
   1add4:	0ec12783          	lw	a5,236(sp)
   1add8:	10c10d93          	addi	s11,sp,268
   1addc:	f65ff06f          	j	1ad40 <_svfprintf_r+0x19e8>
   1ade0:	00812583          	lw	a1,8(sp)
   1ade4:	0e410613          	addi	a2,sp,228
   1ade8:	000a8513          	mv	a0,s5
   1adec:	0f1030ef          	jal	ra,1e6dc <__ssprint_r>
   1adf0:	00050463          	beqz	a0,1adf8 <_svfprintf_r+0x1aa0>
   1adf4:	f78fe06f          	j	1956c <_svfprintf_r+0x214>
   1adf8:	10c10d93          	addi	s11,sp,268
   1adfc:	d08ff06f          	j	1a304 <_svfprintf_r+0xfac>
   1ae00:	1b010d13          	addi	s10,sp,432
   1ae04:	00000793          	li	a5,0
   1ae08:	400a7993          	andi	s3,s4,1024
   1ae0c:	01212623          	sw	s2,12(sp)
   1ae10:	00812a23          	sw	s0,20(sp)
   1ae14:	000d0913          	mv	s2,s10
   1ae18:	00078413          	mv	s0,a5
   1ae1c:	000a8d13          	mv	s10,s5
   1ae20:	000a0a93          	mv	s5,s4
   1ae24:	000b8a13          	mv	s4,s7
   1ae28:	000b0b93          	mv	s7,s6
   1ae2c:	00048b13          	mv	s6,s1
   1ae30:	03c12483          	lw	s1,60(sp)
   1ae34:	0240006f          	j	1ae58 <_svfprintf_r+0x1b00>
   1ae38:	00a00613          	li	a2,10
   1ae3c:	00000693          	li	a3,0
   1ae40:	000c8513          	mv	a0,s9
   1ae44:	000a0593          	mv	a1,s4
   1ae48:	7c5040ef          	jal	ra,1fe0c <__udivdi3>
   1ae4c:	520a0463          	beqz	s4,1b374 <_svfprintf_r+0x201c>
   1ae50:	00050c93          	mv	s9,a0
   1ae54:	00058a13          	mv	s4,a1
   1ae58:	00a00613          	li	a2,10
   1ae5c:	00000693          	li	a3,0
   1ae60:	000c8513          	mv	a0,s9
   1ae64:	000a0593          	mv	a1,s4
   1ae68:	578050ef          	jal	ra,203e0 <__umoddi3>
   1ae6c:	03050513          	addi	a0,a0,48
   1ae70:	fea90fa3          	sb	a0,-1(s2)
   1ae74:	00140413          	addi	s0,s0,1
   1ae78:	fff90913          	addi	s2,s2,-1
   1ae7c:	fa098ee3          	beqz	s3,1ae38 <_svfprintf_r+0x1ae0>
   1ae80:	0004c683          	lbu	a3,0(s1)
   1ae84:	fad41ae3          	bne	s0,a3,1ae38 <_svfprintf_r+0x1ae0>
   1ae88:	0ff00793          	li	a5,255
   1ae8c:	faf406e3          	beq	s0,a5,1ae38 <_svfprintf_r+0x1ae0>
   1ae90:	4e0a1863          	bnez	s4,1b380 <_svfprintf_r+0x2028>
   1ae94:	00900793          	li	a5,9
   1ae98:	4f97e463          	bltu	a5,s9,1b380 <_svfprintf_r+0x2028>
   1ae9c:	000a8a13          	mv	s4,s5
   1aea0:	1b010793          	addi	a5,sp,432
   1aea4:	000d0a93          	mv	s5,s10
   1aea8:	00090d13          	mv	s10,s2
   1aeac:	00812c23          	sw	s0,24(sp)
   1aeb0:	02912e23          	sw	s1,60(sp)
   1aeb4:	01412403          	lw	s0,20(sp)
   1aeb8:	000b0493          	mv	s1,s6
   1aebc:	00c12903          	lw	s2,12(sp)
   1aec0:	000b8b13          	mv	s6,s7
   1aec4:	000a0993          	mv	s3,s4
   1aec8:	41a78bb3          	sub	s7,a5,s10
   1aecc:	f84fe06f          	j	19650 <_svfprintf_r+0x2f8>
   1aed0:	0000a697          	auipc	a3,0xa
   1aed4:	45c68693          	addi	a3,a3,1116 # 2532c <zeroes.4490>
   1aed8:	00dda023          	sw	a3,0(s11)
   1aedc:	008da223          	sw	s0,4(s11)
   1aee0:	008787b3          	add	a5,a5,s0
   1aee4:	00170713          	addi	a4,a4,1
   1aee8:	0ef12623          	sw	a5,236(sp)
   1aeec:	0ee12423          	sw	a4,232(sp)
   1aef0:	00700693          	li	a3,7
   1aef4:	00e6c463          	blt	a3,a4,1aefc <_svfprintf_r+0x1ba4>
   1aef8:	e65fe06f          	j	19d5c <_svfprintf_r+0xa04>
   1aefc:	ffdfe06f          	j	19ef8 <_svfprintf_r+0xba0>
   1af00:	0e410613          	addi	a2,sp,228
   1af04:	000a0593          	mv	a1,s4
   1af08:	000a8513          	mv	a0,s5
   1af0c:	7d0030ef          	jal	ra,1e6dc <__ssprint_r>
   1af10:	00050463          	beqz	a0,1af18 <_svfprintf_r+0x1bc0>
   1af14:	e58fe06f          	j	1956c <_svfprintf_r+0x214>
   1af18:	0004c603          	lbu	a2,0(s1)
   1af1c:	0ec12783          	lw	a5,236(sp)
   1af20:	10c10693          	addi	a3,sp,268
   1af24:	cd1ff06f          	j	1abf4 <_svfprintf_r+0x189c>
   1af28:	0f012783          	lw	a5,240(sp)
   1af2c:	0a010593          	addi	a1,sp,160
   1af30:	0b010513          	addi	a0,sp,176
   1af34:	0af12823          	sw	a5,176(sp)
   1af38:	0f412783          	lw	a5,244(sp)
   1af3c:	0a012023          	sw	zero,160(sp)
   1af40:	0a012223          	sw	zero,164(sp)
   1af44:	0af12a23          	sw	a5,180(sp)
   1af48:	0f812783          	lw	a5,248(sp)
   1af4c:	0a012423          	sw	zero,168(sp)
   1af50:	0a012623          	sw	zero,172(sp)
   1af54:	0af12c23          	sw	a5,184(sp)
   1af58:	0fc12783          	lw	a5,252(sp)
   1af5c:	0af12e23          	sw	a5,188(sp)
   1af60:	1c1060ef          	jal	ra,21920 <__letf2>
   1af64:	44054e63          	bltz	a0,1b3c0 <_svfprintf_r+0x2068>
   1af68:	0c714783          	lbu	a5,199(sp)
   1af6c:	04700713          	li	a4,71
   1af70:	0000ad17          	auipc	s10,0xa
   1af74:	e44d0d13          	addi	s10,s10,-444 # 24db4 <zeroes.4505+0x10>
   1af78:	20874a63          	blt	a4,s0,1b18c <_svfprintf_r+0x1e34>
   1af7c:	00012623          	sw	zero,12(sp)
   1af80:	02012023          	sw	zero,32(sp)
   1af84:	00012e23          	sw	zero,28(sp)
   1af88:	00012a23          	sw	zero,20(sp)
   1af8c:	f7f9f993          	andi	s3,s3,-129
   1af90:	00300a13          	li	s4,3
   1af94:	00300b93          	li	s7,3
   1af98:	00000b13          	li	s6,0
   1af9c:	00078463          	beqz	a5,1afa4 <_svfprintf_r+0x1c4c>
   1afa0:	ed4fe06f          	j	19674 <_svfprintf_r+0x31c>
   1afa4:	cf1fe06f          	j	19c94 <_svfprintf_r+0x93c>
   1afa8:	01012783          	lw	a5,16(sp)
   1afac:	00090d13          	mv	s10,s2
   1afb0:	0007a783          	lw	a5,0(a5)
   1afb4:	00e12823          	sw	a4,16(sp)
   1afb8:	00412703          	lw	a4,4(sp)
   1afbc:	00e7a023          	sw	a4,0(a5)
   1afc0:	fecfe06f          	j	197ac <_svfprintf_r+0x454>
   1afc4:	000d0513          	mv	a0,s10
   1afc8:	a38fe0ef          	jal	ra,19200 <strlen>
   1afcc:	00050b93          	mv	s7,a0
   1afd0:	bd1fe06f          	j	19ba0 <_svfprintf_r+0x848>
   1afd4:	03012703          	lw	a4,48(sp)
   1afd8:	02812603          	lw	a2,40(sp)
   1afdc:	008d8893          	addi	a7,s11,8
   1afe0:	00eda023          	sw	a4,0(s11)
   1afe4:	0e812703          	lw	a4,232(sp)
   1afe8:	00f607b3          	add	a5,a2,a5
   1afec:	00cda223          	sw	a2,4(s11)
   1aff0:	00170713          	addi	a4,a4,1
   1aff4:	0ef12623          	sw	a5,236(sp)
   1aff8:	0ee12423          	sw	a4,232(sp)
   1affc:	00700613          	li	a2,7
   1b000:	24e64863          	blt	a2,a4,1b250 <_svfprintf_r+0x1ef8>
   1b004:	d806d2e3          	bgez	a3,1ad88 <_svfprintf_r+0x1a30>
   1b008:	ff000613          	li	a2,-16
   1b00c:	40d00433          	neg	s0,a3
   1b010:	24c6d6e3          	bge	a3,a2,1ba5c <_svfprintf_r+0x2704>
   1b014:	00700b93          	li	s7,7
   1b018:	00812b03          	lw	s6,8(sp)
   1b01c:	00c0006f          	j	1b028 <_svfprintf_r+0x1cd0>
   1b020:	ff040413          	addi	s0,s0,-16
   1b024:	228c5ce3          	bge	s8,s0,1ba5c <_svfprintf_r+0x2704>
   1b028:	01078793          	addi	a5,a5,16
   1b02c:	00170713          	addi	a4,a4,1
   1b030:	0000a697          	auipc	a3,0xa
   1b034:	2fc68693          	addi	a3,a3,764 # 2532c <zeroes.4490>
   1b038:	00d8a023          	sw	a3,0(a7)
   1b03c:	0188a223          	sw	s8,4(a7)
   1b040:	0ef12623          	sw	a5,236(sp)
   1b044:	0ee12423          	sw	a4,232(sp)
   1b048:	00888893          	addi	a7,a7,8
   1b04c:	fcebdae3          	bge	s7,a4,1b020 <_svfprintf_r+0x1cc8>
   1b050:	0e410613          	addi	a2,sp,228
   1b054:	000b0593          	mv	a1,s6
   1b058:	000a8513          	mv	a0,s5
   1b05c:	680030ef          	jal	ra,1e6dc <__ssprint_r>
   1b060:	00050463          	beqz	a0,1b068 <_svfprintf_r+0x1d10>
   1b064:	d08fe06f          	j	1956c <_svfprintf_r+0x214>
   1b068:	0ec12783          	lw	a5,236(sp)
   1b06c:	0e812703          	lw	a4,232(sp)
   1b070:	10c10893          	addi	a7,sp,268
   1b074:	fadff06f          	j	1b020 <_svfprintf_r+0x1cc8>
   1b078:	000d8713          	mv	a4,s11
   1b07c:	00140b13          	addi	s6,s0,1
   1b080:	008b8613          	addi	a2,s7,8
   1b084:	00ec8cb3          	add	s9,s9,a4
   1b088:	0000a797          	auipc	a5,0xa
   1b08c:	2a478793          	addi	a5,a5,676 # 2532c <zeroes.4490>
   1b090:	00eba223          	sw	a4,4(s7)
   1b094:	00fba023          	sw	a5,0(s7)
   1b098:	0f912623          	sw	s9,236(sp)
   1b09c:	0f612423          	sw	s6,232(sp)
   1b0a0:	00700713          	li	a4,7
   1b0a4:	c1674ae3          	blt	a4,s6,1acb8 <_svfprintf_r+0x1960>
   1b0a8:	001b0b13          	addi	s6,s6,1
   1b0ac:	00860d93          	addi	s11,a2,8
   1b0b0:	00060b93          	mv	s7,a2
   1b0b4:	e21fe06f          	j	19ed4 <_svfprintf_r+0xb7c>
   1b0b8:	2009f793          	andi	a5,s3,512
   1b0bc:	16078463          	beqz	a5,1b224 <_svfprintf_r+0x1ecc>
   1b0c0:	00e12823          	sw	a4,16(sp)
   1b0c4:	0ffcfc93          	andi	s9,s9,255
   1b0c8:	00000b93          	li	s7,0
   1b0cc:	00098a13          	mv	s4,s3
   1b0d0:	00100713          	li	a4,1
   1b0d4:	d4cfe06f          	j	19620 <_svfprintf_r+0x2c8>
   1b0d8:	2009f793          	andi	a5,s3,512
   1b0dc:	12078e63          	beqz	a5,1b218 <_svfprintf_r+0x1ec0>
   1b0e0:	0ffcfc93          	andi	s9,s9,255
   1b0e4:	00000b93          	li	s7,0
   1b0e8:	00e12823          	sw	a4,16(sp)
   1b0ec:	8b4ff06f          	j	1a1a0 <_svfprintf_r+0xe48>
   1b0f0:	2009f793          	andi	a5,s3,512
   1b0f4:	10078463          	beqz	a5,1b1fc <_svfprintf_r+0x1ea4>
   1b0f8:	01012783          	lw	a5,16(sp)
   1b0fc:	00098a13          	mv	s4,s3
   1b100:	00e12823          	sw	a4,16(sp)
   1b104:	00078c83          	lb	s9,0(a5)
   1b108:	41fcdb93          	srai	s7,s9,0x1f
   1b10c:	000b8713          	mv	a4,s7
   1b110:	b1dfe06f          	j	19c2c <_svfprintf_r+0x8d4>
   1b114:	0fc12783          	lw	a5,252(sp)
   1b118:	1207c663          	bltz	a5,1b244 <_svfprintf_r+0x1eec>
   1b11c:	0c714783          	lbu	a5,199(sp)
   1b120:	04700713          	li	a4,71
   1b124:	0000ad17          	auipc	s10,0xa
   1b128:	c98d0d13          	addi	s10,s10,-872 # 24dbc <zeroes.4505+0x18>
   1b12c:	e48758e3          	bge	a4,s0,1af7c <_svfprintf_r+0x1c24>
   1b130:	0000ad17          	auipc	s10,0xa
   1b134:	c90d0d13          	addi	s10,s10,-880 # 24dc0 <zeroes.4505+0x1c>
   1b138:	e45ff06f          	j	1af7c <_svfprintf_r+0x1c24>
   1b13c:	0000a697          	auipc	a3,0xa
   1b140:	1f068693          	addi	a3,a3,496 # 2532c <zeroes.4490>
   1b144:	008787b3          	add	a5,a5,s0
   1b148:	00170713          	addi	a4,a4,1
   1b14c:	00dda023          	sw	a3,0(s11)
   1b150:	008da223          	sw	s0,4(s11)
   1b154:	0ef12623          	sw	a5,236(sp)
   1b158:	0ee12423          	sw	a4,232(sp)
   1b15c:	00700693          	li	a3,7
   1b160:	008d8d93          	addi	s11,s11,8
   1b164:	e0e6d463          	bge	a3,a4,1a76c <_svfprintf_r+0x1414>
   1b168:	00812583          	lw	a1,8(sp)
   1b16c:	0e410613          	addi	a2,sp,228
   1b170:	000a8513          	mv	a0,s5
   1b174:	568030ef          	jal	ra,1e6dc <__ssprint_r>
   1b178:	00050463          	beqz	a0,1b180 <_svfprintf_r+0x1e28>
   1b17c:	bf0fe06f          	j	1956c <_svfprintf_r+0x214>
   1b180:	0ec12783          	lw	a5,236(sp)
   1b184:	10c10d93          	addi	s11,sp,268
   1b188:	de4ff06f          	j	1a76c <_svfprintf_r+0x1414>
   1b18c:	0000ad17          	auipc	s10,0xa
   1b190:	c2cd0d13          	addi	s10,s10,-980 # 24db8 <zeroes.4505+0x14>
   1b194:	de9ff06f          	j	1af7c <_svfprintf_r+0x1c24>
   1b198:	00812583          	lw	a1,8(sp)
   1b19c:	0e410613          	addi	a2,sp,228
   1b1a0:	000a8513          	mv	a0,s5
   1b1a4:	538030ef          	jal	ra,1e6dc <__ssprint_r>
   1b1a8:	00050463          	beqz	a0,1b1b0 <_svfprintf_r+0x1e58>
   1b1ac:	bc0fe06f          	j	1956c <_svfprintf_r+0x214>
   1b1b0:	0ec12783          	lw	a5,236(sp)
   1b1b4:	10c10d93          	addi	s11,sp,268
   1b1b8:	d9cff06f          	j	1a754 <_svfprintf_r+0x13fc>
   1b1bc:	00600b93          	li	s7,6
   1b1c0:	901ff06f          	j	1aac0 <_svfprintf_r+0x1768>
   1b1c4:	01812703          	lw	a4,24(sp)
   1b1c8:	00ed0833          	add	a6,s10,a4
   1b1cc:	40870433          	sub	s0,a4,s0
   1b1d0:	41680bb3          	sub	s7,a6,s6
   1b1d4:	e3745a63          	bge	s0,s7,1a808 <_svfprintf_r+0x14b0>
   1b1d8:	00040b93          	mv	s7,s0
   1b1dc:	e2cff06f          	j	1a808 <_svfprintf_r+0x14b0>
   1b1e0:	01012783          	lw	a5,16(sp)
   1b1e4:	00e12823          	sw	a4,16(sp)
   1b1e8:	00412703          	lw	a4,4(sp)
   1b1ec:	0007a783          	lw	a5,0(a5)
   1b1f0:	00090d13          	mv	s10,s2
   1b1f4:	00e79023          	sh	a4,0(a5)
   1b1f8:	db4fe06f          	j	197ac <_svfprintf_r+0x454>
   1b1fc:	01012783          	lw	a5,16(sp)
   1b200:	00098a13          	mv	s4,s3
   1b204:	00e12823          	sw	a4,16(sp)
   1b208:	0007ac83          	lw	s9,0(a5)
   1b20c:	41fcdb93          	srai	s7,s9,0x1f
   1b210:	000b8713          	mv	a4,s7
   1b214:	a19fe06f          	j	19c2c <_svfprintf_r+0x8d4>
   1b218:	00000b93          	li	s7,0
   1b21c:	00e12823          	sw	a4,16(sp)
   1b220:	f81fe06f          	j	1a1a0 <_svfprintf_r+0xe48>
   1b224:	00e12823          	sw	a4,16(sp)
   1b228:	00000b93          	li	s7,0
   1b22c:	00098a13          	mv	s4,s3
   1b230:	00100713          	li	a4,1
   1b234:	becfe06f          	j	19620 <_svfprintf_r+0x2c8>
   1b238:	0ffcfc93          	andi	s9,s9,255
   1b23c:	00000b93          	li	s7,0
   1b240:	bc4fe06f          	j	19604 <_svfprintf_r+0x2ac>
   1b244:	02d00793          	li	a5,45
   1b248:	0cf103a3          	sb	a5,199(sp)
   1b24c:	ed5ff06f          	j	1b120 <_svfprintf_r+0x1dc8>
   1b250:	00812583          	lw	a1,8(sp)
   1b254:	0e410613          	addi	a2,sp,228
   1b258:	000a8513          	mv	a0,s5
   1b25c:	480030ef          	jal	ra,1e6dc <__ssprint_r>
   1b260:	00050463          	beqz	a0,1b268 <_svfprintf_r+0x1f10>
   1b264:	b08fe06f          	j	1956c <_svfprintf_r+0x214>
   1b268:	0cc12683          	lw	a3,204(sp)
   1b26c:	0ec12783          	lw	a5,236(sp)
   1b270:	0e812703          	lw	a4,232(sp)
   1b274:	10c10893          	addi	a7,sp,268
   1b278:	b006d8e3          	bgez	a3,1ad88 <_svfprintf_r+0x1a30>
   1b27c:	d8dff06f          	j	1b008 <_svfprintf_r+0x1cb0>
   1b280:	00600b13          	li	s6,6
   1b284:	e6cfe06f          	j	198f0 <_svfprintf_r+0x598>
   1b288:	00098a13          	mv	s4,s3
   1b28c:	f81fe06f          	j	1a20c <_svfprintf_r+0xeb4>
   1b290:	02012d03          	lw	s10,32(sp)
   1b294:	01812703          	lw	a4,24(sp)
   1b298:	02912e23          	sw	s1,60(sp)
   1b29c:	01412903          	lw	s2,20(sp)
   1b2a0:	00ed0733          	add	a4,s10,a4
   1b2a4:	03412983          	lw	s3,52(sp)
   1b2a8:	04812483          	lw	s1,72(sp)
   1b2ac:	01c12a03          	lw	s4,28(sp)
   1b2b0:	00068d93          	mv	s11,a3
   1b2b4:	cd677463          	bgeu	a4,s6,1a77c <_svfprintf_r+0x1424>
   1b2b8:	00070b13          	mv	s6,a4
   1b2bc:	cc0ff06f          	j	1a77c <_svfprintf_r+0x1424>
   1b2c0:	01412703          	lw	a4,20(sp)
   1b2c4:	ffd00793          	li	a5,-3
   1b2c8:	00f74463          	blt	a4,a5,1b2d0 <_svfprintf_r+0x1f78>
   1b2cc:	00eb5a63          	bge	s6,a4,1b2e0 <_svfprintf_r+0x1f88>
   1b2d0:	ffe40413          	addi	s0,s0,-2
   1b2d4:	fdf47793          	andi	a5,s0,-33
   1b2d8:	04f12423          	sw	a5,72(sp)
   1b2dc:	f08fe06f          	j	199e4 <_svfprintf_r+0x68c>
   1b2e0:	01812783          	lw	a5,24(sp)
   1b2e4:	01412703          	lw	a4,20(sp)
   1b2e8:	24f74063          	blt	a4,a5,1b528 <_svfprintf_r+0x21d0>
   1b2ec:	05412783          	lw	a5,84(sp)
   1b2f0:	00070b93          	mv	s7,a4
   1b2f4:	0017f793          	andi	a5,a5,1
   1b2f8:	00078663          	beqz	a5,1b304 <_svfprintf_r+0x1fac>
   1b2fc:	02812783          	lw	a5,40(sp)
   1b300:	00f70bb3          	add	s7,a4,a5
   1b304:	05412783          	lw	a5,84(sp)
   1b308:	4007f793          	andi	a5,a5,1024
   1b30c:	00078663          	beqz	a5,1b318 <_svfprintf_r+0x1fc0>
   1b310:	01412783          	lw	a5,20(sp)
   1b314:	7cf04463          	bgtz	a5,1badc <_svfprintf_r+0x2784>
   1b318:	fffbca13          	not	s4,s7
   1b31c:	41fa5a13          	srai	s4,s4,0x1f
   1b320:	014bfa33          	and	s4,s7,s4
   1b324:	06700413          	li	s0,103
   1b328:	02012023          	sw	zero,32(sp)
   1b32c:	00012e23          	sw	zero,28(sp)
   1b330:	fe0fe06f          	j	19b10 <_svfprintf_r+0x7b8>
   1b334:	0c714783          	lbu	a5,199(sp)
   1b338:	00000b13          	li	s6,0
   1b33c:	00078463          	beqz	a5,1b344 <_svfprintf_r+0x1fec>
   1b340:	b34fe06f          	j	19674 <_svfprintf_r+0x31c>
   1b344:	951fe06f          	j	19c94 <_svfprintf_r+0x93c>
   1b348:	0e410613          	addi	a2,sp,228
   1b34c:	000a0593          	mv	a1,s4
   1b350:	000a8513          	mv	a0,s5
   1b354:	388030ef          	jal	ra,1e6dc <__ssprint_r>
   1b358:	00050463          	beqz	a0,1b360 <_svfprintf_r+0x2008>
   1b35c:	a10fe06f          	j	1956c <_svfprintf_r+0x214>
   1b360:	0004c603          	lbu	a2,0(s1)
   1b364:	0ec12783          	lw	a5,236(sp)
   1b368:	10c10693          	addi	a3,sp,268
   1b36c:	00cb0b33          	add	s6,s6,a2
   1b370:	89dff06f          	j	1ac0c <_svfprintf_r+0x18b4>
   1b374:	00900793          	li	a5,9
   1b378:	ad97ece3          	bltu	a5,s9,1ae50 <_svfprintf_r+0x1af8>
   1b37c:	b21ff06f          	j	1ae9c <_svfprintf_r+0x1b44>
   1b380:	04012783          	lw	a5,64(sp)
   1b384:	04412583          	lw	a1,68(sp)
   1b388:	00000413          	li	s0,0
   1b38c:	40f90933          	sub	s2,s2,a5
   1b390:	00078613          	mv	a2,a5
   1b394:	00090513          	mv	a0,s2
   1b398:	ef5fd0ef          	jal	ra,1928c <strncpy>
   1b39c:	0014c803          	lbu	a6,1(s1)
   1b3a0:	00a00613          	li	a2,10
   1b3a4:	00000693          	li	a3,0
   1b3a8:	01003833          	snez	a6,a6
   1b3ac:	000c8513          	mv	a0,s9
   1b3b0:	000a0593          	mv	a1,s4
   1b3b4:	010484b3          	add	s1,s1,a6
   1b3b8:	255040ef          	jal	ra,1fe0c <__udivdi3>
   1b3bc:	a95ff06f          	j	1ae50 <_svfprintf_r+0x1af8>
   1b3c0:	02d00793          	li	a5,45
   1b3c4:	0cf103a3          	sb	a5,199(sp)
   1b3c8:	ba5ff06f          	j	1af6c <_svfprintf_r+0x1c14>
   1b3cc:	0b010b93          	addi	s7,sp,176
   1b3d0:	0d010793          	addi	a5,sp,208
   1b3d4:	0cc10713          	addi	a4,sp,204
   1b3d8:	0dc10813          	addi	a6,sp,220
   1b3dc:	000b0693          	mv	a3,s6
   1b3e0:	00300613          	li	a2,3
   1b3e4:	000b8593          	mv	a1,s7
   1b3e8:	000a8513          	mv	a0,s5
   1b3ec:	0bd12823          	sw	t4,176(sp)
   1b3f0:	03d12023          	sw	t4,32(sp)
   1b3f4:	0be12a23          	sw	t5,180(sp)
   1b3f8:	01e12e23          	sw	t5,28(sp)
   1b3fc:	0bf12c23          	sw	t6,184(sp)
   1b400:	01f12c23          	sw	t6,24(sp)
   1b404:	0bc12e23          	sw	t3,188(sp)
   1b408:	01c12a23          	sw	t3,20(sp)
   1b40c:	8b5fa0ef          	jal	ra,15cc0 <_ldtoa_r>
   1b410:	00054703          	lbu	a4,0(a0)
   1b414:	03000793          	li	a5,48
   1b418:	00050d13          	mv	s10,a0
   1b41c:	01412e03          	lw	t3,20(sp)
   1b420:	01812f83          	lw	t6,24(sp)
   1b424:	01c12f03          	lw	t5,28(sp)
   1b428:	02012e83          	lw	t4,32(sp)
   1b42c:	08f70ce3          	beq	a4,a5,1bcc4 <_svfprintf_r+0x296c>
   1b430:	0a010793          	addi	a5,sp,160
   1b434:	04f12c23          	sw	a5,88(sp)
   1b438:	0cc12783          	lw	a5,204(sp)
   1b43c:	016787b3          	add	a5,a5,s6
   1b440:	00fd0a33          	add	s4,s10,a5
   1b444:	05812583          	lw	a1,88(sp)
   1b448:	000b8513          	mv	a0,s7
   1b44c:	0bd12823          	sw	t4,176(sp)
   1b450:	0be12a23          	sw	t5,180(sp)
   1b454:	0bf12c23          	sw	t6,184(sp)
   1b458:	0bc12e23          	sw	t3,188(sp)
   1b45c:	0a012023          	sw	zero,160(sp)
   1b460:	0a012223          	sw	zero,164(sp)
   1b464:	0a012423          	sw	zero,168(sp)
   1b468:	0a012623          	sw	zero,172(sp)
   1b46c:	2a4060ef          	jal	ra,21710 <__eqtf2>
   1b470:	000a0793          	mv	a5,s4
   1b474:	00051463          	bnez	a0,1b47c <_svfprintf_r+0x2124>
   1b478:	d3cfe06f          	j	199b4 <_svfprintf_r+0x65c>
   1b47c:	0dc12783          	lw	a5,220(sp)
   1b480:	03000693          	li	a3,48
   1b484:	0147e463          	bltu	a5,s4,1b48c <_svfprintf_r+0x2134>
   1b488:	d2cfe06f          	j	199b4 <_svfprintf_r+0x65c>
   1b48c:	00178713          	addi	a4,a5,1
   1b490:	0ce12e23          	sw	a4,220(sp)
   1b494:	00d78023          	sb	a3,0(a5)
   1b498:	0dc12783          	lw	a5,220(sp)
   1b49c:	ff47e8e3          	bltu	a5,s4,1b48c <_svfprintf_r+0x2134>
   1b4a0:	d14fe06f          	j	199b4 <_svfprintf_r+0x65c>
   1b4a4:	00812583          	lw	a1,8(sp)
   1b4a8:	0e410613          	addi	a2,sp,228
   1b4ac:	000a8513          	mv	a0,s5
   1b4b0:	22c030ef          	jal	ra,1e6dc <__ssprint_r>
   1b4b4:	00050463          	beqz	a0,1b4bc <_svfprintf_r+0x2164>
   1b4b8:	8b4fe06f          	j	1956c <_svfprintf_r+0x214>
   1b4bc:	0cc12403          	lw	s0,204(sp)
   1b4c0:	0ec12783          	lw	a5,236(sp)
   1b4c4:	10c10d93          	addi	s11,sp,268
   1b4c8:	af8ff06f          	j	1a7c0 <_svfprintf_r+0x1468>
   1b4cc:	0c714783          	lbu	a5,199(sp)
   1b4d0:	01912823          	sw	s9,16(sp)
   1b4d4:	02012023          	sw	zero,32(sp)
   1b4d8:	00012e23          	sw	zero,28(sp)
   1b4dc:	00012a23          	sw	zero,20(sp)
   1b4e0:	000b0a13          	mv	s4,s6
   1b4e4:	000b0b93          	mv	s7,s6
   1b4e8:	00000b13          	li	s6,0
   1b4ec:	00078463          	beqz	a5,1b4f4 <_svfprintf_r+0x219c>
   1b4f0:	984fe06f          	j	19674 <_svfprintf_r+0x31c>
   1b4f4:	fa0fe06f          	j	19c94 <_svfprintf_r+0x93c>
   1b4f8:	00812583          	lw	a1,8(sp)
   1b4fc:	0e410613          	addi	a2,sp,228
   1b500:	000a8513          	mv	a0,s5
   1b504:	1d8030ef          	jal	ra,1e6dc <__ssprint_r>
   1b508:	00050463          	beqz	a0,1b510 <_svfprintf_r+0x21b8>
   1b50c:	860fe06f          	j	1956c <_svfprintf_r+0x214>
   1b510:	0cc12403          	lw	s0,204(sp)
   1b514:	01812703          	lw	a4,24(sp)
   1b518:	0ec12783          	lw	a5,236(sp)
   1b51c:	10c10d93          	addi	s11,sp,268
   1b520:	40870433          	sub	s0,a4,s0
   1b524:	ae4ff06f          	j	1a808 <_svfprintf_r+0x14b0>
   1b528:	01812783          	lw	a5,24(sp)
   1b52c:	02812703          	lw	a4,40(sp)
   1b530:	06700413          	li	s0,103
   1b534:	00e78bb3          	add	s7,a5,a4
   1b538:	01412783          	lw	a5,20(sp)
   1b53c:	76f05863          	blez	a5,1bcac <_svfprintf_r+0x2954>
   1b540:	05412783          	lw	a5,84(sp)
   1b544:	4007f793          	andi	a5,a5,1024
   1b548:	58079c63          	bnez	a5,1bae0 <_svfprintf_r+0x2788>
   1b54c:	fffbca13          	not	s4,s7
   1b550:	41fa5a13          	srai	s4,s4,0x1f
   1b554:	014bfa33          	and	s4,s7,s4
   1b558:	dd1ff06f          	j	1b328 <_svfprintf_r+0x1fd0>
   1b55c:	05412783          	lw	a5,84(sp)
   1b560:	01412703          	lw	a4,20(sp)
   1b564:	0017f793          	andi	a5,a5,1
   1b568:	0167e7b3          	or	a5,a5,s6
   1b56c:	7ce05c63          	blez	a4,1bd44 <_svfprintf_r+0x29ec>
   1b570:	72079463          	bnez	a5,1bc98 <_svfprintf_r+0x2940>
   1b574:	01412b83          	lw	s7,20(sp)
   1b578:	06600413          	li	s0,102
   1b57c:	fc5ff06f          	j	1b540 <_svfprintf_r+0x21e8>
   1b580:	03000793          	li	a5,48
   1b584:	0cf10423          	sb	a5,200(sp)
   1b588:	05800793          	li	a5,88
   1b58c:	0029e713          	ori	a4,s3,2
   1b590:	0cf104a3          	sb	a5,201(sp)
   1b594:	04e12a23          	sw	a4,84(sp)
   1b598:	06300793          	li	a5,99
   1b59c:	00012623          	sw	zero,12(sp)
   1b5a0:	14c10d13          	addi	s10,sp,332
   1b5a4:	3d67c063          	blt	a5,s6,1b964 <_svfprintf_r+0x260c>
   1b5a8:	0fc12e03          	lw	t3,252(sp)
   1b5ac:	fdf47793          	andi	a5,s0,-33
   1b5b0:	04f12423          	sw	a5,72(sp)
   1b5b4:	04012e23          	sw	zero,92(sp)
   1b5b8:	1029e993          	ori	s3,s3,258
   1b5bc:	0f012e83          	lw	t4,240(sp)
   1b5c0:	0f412f03          	lw	t5,244(sp)
   1b5c4:	0f812f83          	lw	t6,248(sp)
   1b5c8:	380e4463          	bltz	t3,1b950 <_svfprintf_r+0x25f8>
   1b5cc:	06100793          	li	a5,97
   1b5d0:	58f40a63          	beq	s0,a5,1bb64 <_svfprintf_r+0x280c>
   1b5d4:	04100793          	li	a5,65
   1b5d8:	00f40463          	beq	s0,a5,1b5e0 <_svfprintf_r+0x2288>
   1b5dc:	b40fe06f          	j	1991c <_svfprintf_r+0x5c4>
   1b5e0:	0b010b93          	addi	s7,sp,176
   1b5e4:	000b8513          	mv	a0,s7
   1b5e8:	0bd12823          	sw	t4,176(sp)
   1b5ec:	0be12a23          	sw	t5,180(sp)
   1b5f0:	0bf12c23          	sw	t6,184(sp)
   1b5f4:	0bc12e23          	sw	t3,188(sp)
   1b5f8:	258090ef          	jal	ra,24850 <__trunctfdf2>
   1b5fc:	0cc10613          	addi	a2,sp,204
   1b600:	ee0fd0ef          	jal	ra,18ce0 <frexp>
   1b604:	00058613          	mv	a2,a1
   1b608:	00050593          	mv	a1,a0
   1b60c:	000b8513          	mv	a0,s7
   1b610:	038090ef          	jal	ra,24648 <__extenddftf2>
   1b614:	09010793          	addi	a5,sp,144
   1b618:	00078593          	mv	a1,a5
   1b61c:	00f12c23          	sw	a5,24(sp)
   1b620:	0b012783          	lw	a5,176(sp)
   1b624:	0a010a13          	addi	s4,sp,160
   1b628:	08010613          	addi	a2,sp,128
   1b62c:	08f12823          	sw	a5,144(sp)
   1b630:	0b412783          	lw	a5,180(sp)
   1b634:	000a0513          	mv	a0,s4
   1b638:	04c12623          	sw	a2,76(sp)
   1b63c:	08f12a23          	sw	a5,148(sp)
   1b640:	0b812783          	lw	a5,184(sp)
   1b644:	05412c23          	sw	s4,88(sp)
   1b648:	08012023          	sw	zero,128(sp)
   1b64c:	08f12c23          	sw	a5,152(sp)
   1b650:	0bc12783          	lw	a5,188(sp)
   1b654:	08012223          	sw	zero,132(sp)
   1b658:	08012423          	sw	zero,136(sp)
   1b65c:	08f12e23          	sw	a5,156(sp)
   1b660:	3ffc07b7          	lui	a5,0x3ffc0
   1b664:	08f12623          	sw	a5,140(sp)
   1b668:	3fc060ef          	jal	ra,21a64 <__multf3>
   1b66c:	0a012683          	lw	a3,160(sp)
   1b670:	0a412e03          	lw	t3,164(sp)
   1b674:	0a812e83          	lw	t4,168(sp)
   1b678:	0ac12f03          	lw	t5,172(sp)
   1b67c:	000a0593          	mv	a1,s4
   1b680:	000b8513          	mv	a0,s7
   1b684:	0ad12823          	sw	a3,176(sp)
   1b688:	02d12a23          	sw	a3,52(sp)
   1b68c:	0bc12a23          	sw	t3,180(sp)
   1b690:	03c12023          	sw	t3,32(sp)
   1b694:	0bd12c23          	sw	t4,184(sp)
   1b698:	01d12e23          	sw	t4,28(sp)
   1b69c:	0be12e23          	sw	t5,188(sp)
   1b6a0:	01e12a23          	sw	t5,20(sp)
   1b6a4:	0a012023          	sw	zero,160(sp)
   1b6a8:	0a012223          	sw	zero,164(sp)
   1b6ac:	0a012423          	sw	zero,168(sp)
   1b6b0:	0a012623          	sw	zero,172(sp)
   1b6b4:	05c060ef          	jal	ra,21710 <__eqtf2>
   1b6b8:	01412f03          	lw	t5,20(sp)
   1b6bc:	01c12e83          	lw	t4,28(sp)
   1b6c0:	02012e03          	lw	t3,32(sp)
   1b6c4:	03412683          	lw	a3,52(sp)
   1b6c8:	00051663          	bnez	a0,1b6d4 <_svfprintf_r+0x237c>
   1b6cc:	00100793          	li	a5,1
   1b6d0:	0cf12623          	sw	a5,204(sp)
   1b6d4:	00009797          	auipc	a5,0x9
   1b6d8:	70478793          	addi	a5,a5,1796 # 24dd8 <zeroes.4505+0x34>
   1b6dc:	02f12a23          	sw	a5,52(sp)
   1b6e0:	fffb0a13          	addi	s4,s6,-1
   1b6e4:	01a12a23          	sw	s10,20(sp)
   1b6e8:	07212023          	sw	s2,96(sp)
   1b6ec:	06912623          	sw	s1,108(sp)
   1b6f0:	07b12a23          	sw	s11,116(sp)
   1b6f4:	000a0c93          	mv	s9,s4
   1b6f8:	07512c23          	sw	s5,120(sp)
   1b6fc:	07a12e23          	sw	s10,124(sp)
   1b700:	06812223          	sw	s0,100(sp)
   1b704:	07312423          	sw	s3,104(sp)
   1b708:	07612823          	sw	s6,112(sp)
   1b70c:	00068d13          	mv	s10,a3
   1b710:	000e0d93          	mv	s11,t3
   1b714:	000e8a13          	mv	s4,t4
   1b718:	000f0a93          	mv	s5,t5
   1b71c:	01812903          	lw	s2,24(sp)
   1b720:	05812483          	lw	s1,88(sp)
   1b724:	0540006f          	j	1b778 <_svfprintf_r+0x2420>
   1b728:	00048593          	mv	a1,s1
   1b72c:	000b8513          	mv	a0,s7
   1b730:	02c12023          	sw	a2,32(sp)
   1b734:	01f12e23          	sw	t6,28(sp)
   1b738:	00512c23          	sw	t0,24(sp)
   1b73c:	0a512a23          	sw	t0,180(sp)
   1b740:	0bf12c23          	sw	t6,184(sp)
   1b744:	0ac12e23          	sw	a2,188(sp)
   1b748:	0b312823          	sw	s3,176(sp)
   1b74c:	0a012023          	sw	zero,160(sp)
   1b750:	0a012223          	sw	zero,164(sp)
   1b754:	0a012423          	sw	zero,168(sp)
   1b758:	0a012623          	sw	zero,172(sp)
   1b75c:	7b5050ef          	jal	ra,21710 <__eqtf2>
   1b760:	fffc8c93          	addi	s9,s9,-1
   1b764:	01812283          	lw	t0,24(sp)
   1b768:	01c12f83          	lw	t6,28(sp)
   1b76c:	02012603          	lw	a2,32(sp)
   1b770:	0e050463          	beqz	a0,1b858 <_svfprintf_r+0x2500>
   1b774:	01612a23          	sw	s6,20(sp)
   1b778:	400307b7          	lui	a5,0x40030
   1b77c:	00090613          	mv	a2,s2
   1b780:	00048593          	mv	a1,s1
   1b784:	000b8513          	mv	a0,s7
   1b788:	08f12e23          	sw	a5,156(sp)
   1b78c:	0ba12023          	sw	s10,160(sp)
   1b790:	0bb12223          	sw	s11,164(sp)
   1b794:	0b412423          	sw	s4,168(sp)
   1b798:	0b512623          	sw	s5,172(sp)
   1b79c:	08012823          	sw	zero,144(sp)
   1b7a0:	08012a23          	sw	zero,148(sp)
   1b7a4:	08012c23          	sw	zero,152(sp)
   1b7a8:	2bc060ef          	jal	ra,21a64 <__multf3>
   1b7ac:	000b8513          	mv	a0,s7
   1b7b0:	3c1080ef          	jal	ra,24370 <__fixtfsi>
   1b7b4:	00050593          	mv	a1,a0
   1b7b8:	00050413          	mv	s0,a0
   1b7bc:	000b8513          	mv	a0,s7
   1b7c0:	0b012b03          	lw	s6,176(sp)
   1b7c4:	0b412a03          	lw	s4,180(sp)
   1b7c8:	0b812983          	lw	s3,184(sp)
   1b7cc:	0bc12a83          	lw	s5,188(sp)
   1b7d0:	4f1080ef          	jal	ra,244c0 <__floatsitf>
   1b7d4:	0b012703          	lw	a4,176(sp)
   1b7d8:	04c12603          	lw	a2,76(sp)
   1b7dc:	00090593          	mv	a1,s2
   1b7e0:	08e12023          	sw	a4,128(sp)
   1b7e4:	0b412703          	lw	a4,180(sp)
   1b7e8:	00048513          	mv	a0,s1
   1b7ec:	09612823          	sw	s6,144(sp)
   1b7f0:	08e12223          	sw	a4,132(sp)
   1b7f4:	0b812703          	lw	a4,184(sp)
   1b7f8:	09412a23          	sw	s4,148(sp)
   1b7fc:	09312c23          	sw	s3,152(sp)
   1b800:	08e12423          	sw	a4,136(sp)
   1b804:	0bc12703          	lw	a4,188(sp)
   1b808:	09512e23          	sw	s5,156(sp)
   1b80c:	08e12623          	sw	a4,140(sp)
   1b810:	5c0070ef          	jal	ra,22dd0 <__subtf3>
   1b814:	03412783          	lw	a5,52(sp)
   1b818:	0a012983          	lw	s3,160(sp)
   1b81c:	0a412283          	lw	t0,164(sp)
   1b820:	00878733          	add	a4,a5,s0
   1b824:	01412783          	lw	a5,20(sp)
   1b828:	00074683          	lbu	a3,0(a4)
   1b82c:	0a812f83          	lw	t6,168(sp)
   1b830:	0ac12603          	lw	a2,172(sp)
   1b834:	00178b13          	addi	s6,a5,1 # 40030001 <__BSS_END__+0x40009519>
   1b838:	fedb0fa3          	sb	a3,-1(s6)
   1b83c:	05912823          	sw	s9,80(sp)
   1b840:	fff00793          	li	a5,-1
   1b844:	00098d13          	mv	s10,s3
   1b848:	00028d93          	mv	s11,t0
   1b84c:	000f8a13          	mv	s4,t6
   1b850:	00060a93          	mv	s5,a2
   1b854:	ecfc9ae3          	bne	s9,a5,1b728 <_svfprintf_r+0x23d0>
   1b858:	05812a03          	lw	s4,88(sp)
   1b85c:	00098393          	mv	t2,s3
   1b860:	3ffe0737          	lui	a4,0x3ffe0
   1b864:	000a0593          	mv	a1,s4
   1b868:	000b8513          	mv	a0,s7
   1b86c:	06012903          	lw	s2,96(sp)
   1b870:	00812c23          	sw	s0,24(sp)
   1b874:	000b0c93          	mv	s9,s6
   1b878:	06c12483          	lw	s1,108(sp)
   1b87c:	07412d83          	lw	s11,116(sp)
   1b880:	06412403          	lw	s0,100(sp)
   1b884:	07012b03          	lw	s6,112(sp)
   1b888:	07812a83          	lw	s5,120(sp)
   1b88c:	07c12d03          	lw	s10,124(sp)
   1b890:	06812983          	lw	s3,104(sp)
   1b894:	0a712823          	sw	t2,176(sp)
   1b898:	06712023          	sw	t2,96(sp)
   1b89c:	0a512a23          	sw	t0,180(sp)
   1b8a0:	04512623          	sw	t0,76(sp)
   1b8a4:	0bf12c23          	sw	t6,184(sp)
   1b8a8:	03f12023          	sw	t6,32(sp)
   1b8ac:	0ac12e23          	sw	a2,188(sp)
   1b8b0:	00c12e23          	sw	a2,28(sp)
   1b8b4:	0a012023          	sw	zero,160(sp)
   1b8b8:	0a012223          	sw	zero,164(sp)
   1b8bc:	0a012423          	sw	zero,168(sp)
   1b8c0:	0ae12623          	sw	a4,172(sp)
   1b8c4:	719050ef          	jal	ra,217dc <__getf2>
   1b8c8:	0aa04c63          	bgtz	a0,1b980 <_svfprintf_r+0x2628>
   1b8cc:	06012383          	lw	t2,96(sp)
   1b8d0:	04c12283          	lw	t0,76(sp)
   1b8d4:	02012f83          	lw	t6,32(sp)
   1b8d8:	01c12603          	lw	a2,28(sp)
   1b8dc:	3ffe0737          	lui	a4,0x3ffe0
   1b8e0:	000a0593          	mv	a1,s4
   1b8e4:	000b8513          	mv	a0,s7
   1b8e8:	0a712823          	sw	t2,176(sp)
   1b8ec:	0a512a23          	sw	t0,180(sp)
   1b8f0:	0bf12c23          	sw	t6,184(sp)
   1b8f4:	0ac12e23          	sw	a2,188(sp)
   1b8f8:	0a012023          	sw	zero,160(sp)
   1b8fc:	0a012223          	sw	zero,164(sp)
   1b900:	0a012423          	sw	zero,168(sp)
   1b904:	0ae12623          	sw	a4,172(sp)
   1b908:	609050ef          	jal	ra,21710 <__eqtf2>
   1b90c:	00051863          	bnez	a0,1b91c <_svfprintf_r+0x25c4>
   1b910:	01812783          	lw	a5,24(sp)
   1b914:	0017fa13          	andi	s4,a5,1
   1b918:	060a1463          	bnez	s4,1b980 <_svfprintf_r+0x2628>
   1b91c:	05012783          	lw	a5,80(sp)
   1b920:	03000693          	li	a3,48
   1b924:	00178713          	addi	a4,a5,1
   1b928:	00ec8733          	add	a4,s9,a4
   1b92c:	0007c863          	bltz	a5,1b93c <_svfprintf_r+0x25e4>
   1b930:	001c8c93          	addi	s9,s9,1
   1b934:	fedc8fa3          	sb	a3,-1(s9)
   1b938:	ff971ce3          	bne	a4,s9,1b930 <_svfprintf_r+0x25d8>
   1b93c:	41ac87b3          	sub	a5,s9,s10
   1b940:	00f12c23          	sw	a5,24(sp)
   1b944:	878fe06f          	j	199bc <_svfprintf_r+0x664>
   1b948:	00012623          	sw	zero,12(sp)
   1b94c:	00078993          	mv	s3,a5
   1b950:	800007b7          	lui	a5,0x80000
   1b954:	01c7ce33          	xor	t3,a5,t3
   1b958:	02d00793          	li	a5,45
   1b95c:	04f12e23          	sw	a5,92(sp)
   1b960:	c6dff06f          	j	1b5cc <_svfprintf_r+0x2274>
   1b964:	001b0593          	addi	a1,s6,1
   1b968:	000a8513          	mv	a0,s5
   1b96c:	94dfb0ef          	jal	ra,172b8 <_malloc_r>
   1b970:	00050d13          	mv	s10,a0
   1b974:	46050263          	beqz	a0,1bdd8 <_svfprintf_r+0x2a80>
   1b978:	00a12623          	sw	a0,12(sp)
   1b97c:	c2dff06f          	j	1b5a8 <_svfprintf_r+0x2250>
   1b980:	01412783          	lw	a5,20(sp)
   1b984:	000c8713          	mv	a4,s9
   1b988:	0cf12e23          	sw	a5,220(sp)
   1b98c:	03412783          	lw	a5,52(sp)
   1b990:	fffcc683          	lbu	a3,-1(s9)
   1b994:	00f7c603          	lbu	a2,15(a5) # 8000000f <__BSS_END__+0x7ffd9527>
   1b998:	02d61063          	bne	a2,a3,1b9b8 <_svfprintf_r+0x2660>
   1b99c:	03000593          	li	a1,48
   1b9a0:	feb70fa3          	sb	a1,-1(a4) # 3ffdffff <__BSS_END__+0x3ffb9517>
   1b9a4:	0dc12703          	lw	a4,220(sp)
   1b9a8:	fff70793          	addi	a5,a4,-1
   1b9ac:	0cf12e23          	sw	a5,220(sp)
   1b9b0:	fff74683          	lbu	a3,-1(a4)
   1b9b4:	fed606e3          	beq	a2,a3,1b9a0 <_svfprintf_r+0x2648>
   1b9b8:	00168613          	addi	a2,a3,1
   1b9bc:	03900593          	li	a1,57
   1b9c0:	0ff67613          	andi	a2,a2,255
   1b9c4:	00b68663          	beq	a3,a1,1b9d0 <_svfprintf_r+0x2678>
   1b9c8:	fec70fa3          	sb	a2,-1(a4)
   1b9cc:	f71ff06f          	j	1b93c <_svfprintf_r+0x25e4>
   1b9d0:	03412783          	lw	a5,52(sp)
   1b9d4:	00a7c603          	lbu	a2,10(a5)
   1b9d8:	fec70fa3          	sb	a2,-1(a4)
   1b9dc:	f61ff06f          	j	1b93c <_svfprintf_r+0x25e4>
   1b9e0:	03000793          	li	a5,48
   1b9e4:	0cf10423          	sb	a5,200(sp)
   1b9e8:	07800793          	li	a5,120
   1b9ec:	ba1ff06f          	j	1b58c <_svfprintf_r+0x2234>
   1b9f0:	001b0a13          	addi	s4,s6,1
   1b9f4:	0b010b93          	addi	s7,sp,176
   1b9f8:	0dc10813          	addi	a6,sp,220
   1b9fc:	0d010793          	addi	a5,sp,208
   1ba00:	0cc10713          	addi	a4,sp,204
   1ba04:	000a0693          	mv	a3,s4
   1ba08:	00200613          	li	a2,2
   1ba0c:	000b8593          	mv	a1,s7
   1ba10:	000a8513          	mv	a0,s5
   1ba14:	0bd12823          	sw	t4,176(sp)
   1ba18:	03d12023          	sw	t4,32(sp)
   1ba1c:	0be12a23          	sw	t5,180(sp)
   1ba20:	01e12e23          	sw	t5,28(sp)
   1ba24:	0bf12c23          	sw	t6,184(sp)
   1ba28:	01f12c23          	sw	t6,24(sp)
   1ba2c:	0bc12e23          	sw	t3,188(sp)
   1ba30:	01c12a23          	sw	t3,20(sp)
   1ba34:	a8cfa0ef          	jal	ra,15cc0 <_ldtoa_r>
   1ba38:	01412e03          	lw	t3,20(sp)
   1ba3c:	01812f83          	lw	t6,24(sp)
   1ba40:	01c12f03          	lw	t5,28(sp)
   1ba44:	02012e83          	lw	t4,32(sp)
   1ba48:	00050d13          	mv	s10,a0
   1ba4c:	0a010793          	addi	a5,sp,160
   1ba50:	014d0a33          	add	s4,s10,s4
   1ba54:	04f12c23          	sw	a5,88(sp)
   1ba58:	9edff06f          	j	1b444 <_svfprintf_r+0x20ec>
   1ba5c:	0000a697          	auipc	a3,0xa
   1ba60:	8d068693          	addi	a3,a3,-1840 # 2532c <zeroes.4490>
   1ba64:	008787b3          	add	a5,a5,s0
   1ba68:	00170713          	addi	a4,a4,1
   1ba6c:	00d8a023          	sw	a3,0(a7)
   1ba70:	0088a223          	sw	s0,4(a7)
   1ba74:	0ef12623          	sw	a5,236(sp)
   1ba78:	0ee12423          	sw	a4,232(sp)
   1ba7c:	00700693          	li	a3,7
   1ba80:	00888893          	addi	a7,a7,8
   1ba84:	b0e6d263          	bge	a3,a4,1ad88 <_svfprintf_r+0x1a30>
   1ba88:	00812583          	lw	a1,8(sp)
   1ba8c:	0e410613          	addi	a2,sp,228
   1ba90:	000a8513          	mv	a0,s5
   1ba94:	449020ef          	jal	ra,1e6dc <__ssprint_r>
   1ba98:	00050463          	beqz	a0,1baa0 <_svfprintf_r+0x2748>
   1ba9c:	ad1fd06f          	j	1956c <_svfprintf_r+0x214>
   1baa0:	0ec12783          	lw	a5,236(sp)
   1baa4:	0e812703          	lw	a4,232(sp)
   1baa8:	10c10893          	addi	a7,sp,268
   1baac:	adcff06f          	j	1ad88 <_svfprintf_r+0x1a30>
   1bab0:	0a010793          	addi	a5,sp,160
   1bab4:	016d0a33          	add	s4,s10,s6
   1bab8:	04f12c23          	sw	a5,88(sp)
   1babc:	989ff06f          	j	1b444 <_svfprintf_r+0x20ec>
   1bac0:	000b0463          	beqz	s6,1bac8 <_svfprintf_r+0x2770>
   1bac4:	e2dfd06f          	j	198f0 <_svfprintf_r+0x598>
   1bac8:	00100b13          	li	s6,1
   1bacc:	e25fd06f          	j	198f0 <_svfprintf_r+0x598>
   1bad0:	fff00793          	li	a5,-1
   1bad4:	00f12223          	sw	a5,4(sp)
   1bad8:	abdfd06f          	j	19594 <_svfprintf_r+0x23c>
   1badc:	06700413          	li	s0,103
   1bae0:	03c12583          	lw	a1,60(sp)
   1bae4:	01412703          	lw	a4,20(sp)
   1bae8:	02012023          	sw	zero,32(sp)
   1baec:	0005c783          	lbu	a5,0(a1)
   1baf0:	00012e23          	sw	zero,28(sp)
   1baf4:	0ff00693          	li	a3,255
   1baf8:	02d78e63          	beq	a5,a3,1bb34 <_svfprintf_r+0x27dc>
   1bafc:	02e7dc63          	bge	a5,a4,1bb34 <_svfprintf_r+0x27dc>
   1bb00:	0015c603          	lbu	a2,1(a1)
   1bb04:	40f70733          	sub	a4,a4,a5
   1bb08:	00060e63          	beqz	a2,1bb24 <_svfprintf_r+0x27cc>
   1bb0c:	01c12783          	lw	a5,28(sp)
   1bb10:	00158593          	addi	a1,a1,1
   1bb14:	00178793          	addi	a5,a5,1
   1bb18:	00f12e23          	sw	a5,28(sp)
   1bb1c:	00060793          	mv	a5,a2
   1bb20:	fd9ff06f          	j	1baf8 <_svfprintf_r+0x27a0>
   1bb24:	02012603          	lw	a2,32(sp)
   1bb28:	00160613          	addi	a2,a2,1
   1bb2c:	02c12023          	sw	a2,32(sp)
   1bb30:	fc9ff06f          	j	1baf8 <_svfprintf_r+0x27a0>
   1bb34:	00e12a23          	sw	a4,20(sp)
   1bb38:	01c12783          	lw	a5,28(sp)
   1bb3c:	02012703          	lw	a4,32(sp)
   1bb40:	02b12e23          	sw	a1,60(sp)
   1bb44:	04012583          	lw	a1,64(sp)
   1bb48:	00e78533          	add	a0,a5,a4
   1bb4c:	811f40ef          	jal	ra,1035c <__mulsi3>
   1bb50:	01750bb3          	add	s7,a0,s7
   1bb54:	fffbca13          	not	s4,s7
   1bb58:	41fa5a13          	srai	s4,s4,0x1f
   1bb5c:	014bfa33          	and	s4,s7,s4
   1bb60:	fb1fd06f          	j	19b10 <_svfprintf_r+0x7b8>
   1bb64:	0b010b93          	addi	s7,sp,176
   1bb68:	000b8513          	mv	a0,s7
   1bb6c:	0bd12823          	sw	t4,176(sp)
   1bb70:	0be12a23          	sw	t5,180(sp)
   1bb74:	0bf12c23          	sw	t6,184(sp)
   1bb78:	0bc12e23          	sw	t3,188(sp)
   1bb7c:	4d5080ef          	jal	ra,24850 <__trunctfdf2>
   1bb80:	0cc10613          	addi	a2,sp,204
   1bb84:	95cfd0ef          	jal	ra,18ce0 <frexp>
   1bb88:	00058613          	mv	a2,a1
   1bb8c:	00050593          	mv	a1,a0
   1bb90:	000b8513          	mv	a0,s7
   1bb94:	2b5080ef          	jal	ra,24648 <__extenddftf2>
   1bb98:	09010793          	addi	a5,sp,144
   1bb9c:	00078593          	mv	a1,a5
   1bba0:	00f12c23          	sw	a5,24(sp)
   1bba4:	0b012783          	lw	a5,176(sp)
   1bba8:	0a010a13          	addi	s4,sp,160
   1bbac:	08010613          	addi	a2,sp,128
   1bbb0:	08f12823          	sw	a5,144(sp)
   1bbb4:	0b412783          	lw	a5,180(sp)
   1bbb8:	000a0513          	mv	a0,s4
   1bbbc:	04c12623          	sw	a2,76(sp)
   1bbc0:	08f12a23          	sw	a5,148(sp)
   1bbc4:	0b812783          	lw	a5,184(sp)
   1bbc8:	05412c23          	sw	s4,88(sp)
   1bbcc:	08012023          	sw	zero,128(sp)
   1bbd0:	08f12c23          	sw	a5,152(sp)
   1bbd4:	0bc12783          	lw	a5,188(sp)
   1bbd8:	08012223          	sw	zero,132(sp)
   1bbdc:	08012423          	sw	zero,136(sp)
   1bbe0:	08f12e23          	sw	a5,156(sp)
   1bbe4:	3ffc07b7          	lui	a5,0x3ffc0
   1bbe8:	08f12623          	sw	a5,140(sp)
   1bbec:	679050ef          	jal	ra,21a64 <__multf3>
   1bbf0:	0a012683          	lw	a3,160(sp)
   1bbf4:	0a412e03          	lw	t3,164(sp)
   1bbf8:	0a812e83          	lw	t4,168(sp)
   1bbfc:	0ac12f03          	lw	t5,172(sp)
   1bc00:	000a0593          	mv	a1,s4
   1bc04:	000b8513          	mv	a0,s7
   1bc08:	0ad12823          	sw	a3,176(sp)
   1bc0c:	02d12a23          	sw	a3,52(sp)
   1bc10:	0bc12a23          	sw	t3,180(sp)
   1bc14:	03c12023          	sw	t3,32(sp)
   1bc18:	0bd12c23          	sw	t4,184(sp)
   1bc1c:	01d12e23          	sw	t4,28(sp)
   1bc20:	0be12e23          	sw	t5,188(sp)
   1bc24:	01e12a23          	sw	t5,20(sp)
   1bc28:	0a012023          	sw	zero,160(sp)
   1bc2c:	0a012223          	sw	zero,164(sp)
   1bc30:	0a012423          	sw	zero,168(sp)
   1bc34:	0a012623          	sw	zero,172(sp)
   1bc38:	2d9050ef          	jal	ra,21710 <__eqtf2>
   1bc3c:	01412f03          	lw	t5,20(sp)
   1bc40:	01c12e83          	lw	t4,28(sp)
   1bc44:	02012e03          	lw	t3,32(sp)
   1bc48:	03412683          	lw	a3,52(sp)
   1bc4c:	00051663          	bnez	a0,1bc58 <_svfprintf_r+0x2900>
   1bc50:	00100793          	li	a5,1
   1bc54:	0cf12623          	sw	a5,204(sp)
   1bc58:	00009797          	auipc	a5,0x9
   1bc5c:	16c78793          	addi	a5,a5,364 # 24dc4 <zeroes.4505+0x20>
   1bc60:	02f12a23          	sw	a5,52(sp)
   1bc64:	a7dff06f          	j	1b6e0 <_svfprintf_r+0x2388>
   1bc68:	0d610793          	addi	a5,sp,214
   1bc6c:	00071863          	bnez	a4,1bc7c <_svfprintf_r+0x2924>
   1bc70:	03000793          	li	a5,48
   1bc74:	0cf10b23          	sb	a5,214(sp)
   1bc78:	0d710793          	addi	a5,sp,215
   1bc7c:	1b010713          	addi	a4,sp,432
   1bc80:	030a0a13          	addi	s4,s4,48
   1bc84:	40e78733          	sub	a4,a5,a4
   1bc88:	01478023          	sb	s4,0(a5)
   1bc8c:	0dd70793          	addi	a5,a4,221
   1bc90:	02f12c23          	sw	a5,56(sp)
   1bc94:	e39fd06f          	j	19acc <_svfprintf_r+0x774>
   1bc98:	02812783          	lw	a5,40(sp)
   1bc9c:	06600413          	li	s0,102
   1bca0:	00f70bb3          	add	s7,a4,a5
   1bca4:	016b8bb3          	add	s7,s7,s6
   1bca8:	899ff06f          	j	1b540 <_svfprintf_r+0x21e8>
   1bcac:	40fb8bb3          	sub	s7,s7,a5
   1bcb0:	001b8b93          	addi	s7,s7,1
   1bcb4:	fffbca13          	not	s4,s7
   1bcb8:	41fa5a13          	srai	s4,s4,0x1f
   1bcbc:	014bfa33          	and	s4,s7,s4
   1bcc0:	e68ff06f          	j	1b328 <_svfprintf_r+0x1fd0>
   1bcc4:	0a010593          	addi	a1,sp,160
   1bcc8:	000b8513          	mv	a0,s7
   1bccc:	0bd12823          	sw	t4,176(sp)
   1bcd0:	03d12023          	sw	t4,32(sp)
   1bcd4:	0be12a23          	sw	t5,180(sp)
   1bcd8:	01e12e23          	sw	t5,28(sp)
   1bcdc:	0bf12c23          	sw	t6,184(sp)
   1bce0:	01f12c23          	sw	t6,24(sp)
   1bce4:	0bc12e23          	sw	t3,188(sp)
   1bce8:	01c12a23          	sw	t3,20(sp)
   1bcec:	04b12c23          	sw	a1,88(sp)
   1bcf0:	0a012023          	sw	zero,160(sp)
   1bcf4:	0a012223          	sw	zero,164(sp)
   1bcf8:	0a012423          	sw	zero,168(sp)
   1bcfc:	0a012623          	sw	zero,172(sp)
   1bd00:	211050ef          	jal	ra,21710 <__eqtf2>
   1bd04:	01412e03          	lw	t3,20(sp)
   1bd08:	01812f83          	lw	t6,24(sp)
   1bd0c:	01c12f03          	lw	t5,28(sp)
   1bd10:	02012e83          	lw	t4,32(sp)
   1bd14:	f2050263          	beqz	a0,1b438 <_svfprintf_r+0x20e0>
   1bd18:	00100793          	li	a5,1
   1bd1c:	416787b3          	sub	a5,a5,s6
   1bd20:	0cf12623          	sw	a5,204(sp)
   1bd24:	f18ff06f          	j	1b43c <_svfprintf_r+0x20e4>
   1bd28:	05412783          	lw	a5,84(sp)
   1bd2c:	0017f793          	andi	a5,a5,1
   1bd30:	00079463          	bnez	a5,1bd38 <_svfprintf_r+0x29e0>
   1bd34:	db9fd06f          	j	19aec <_svfprintf_r+0x794>
   1bd38:	dadfd06f          	j	19ae4 <_svfprintf_r+0x78c>
   1bd3c:	000d8613          	mv	a2,s11
   1bd40:	b44ff06f          	j	1b084 <_svfprintf_r+0x1d2c>
   1bd44:	00079a63          	bnez	a5,1bd58 <_svfprintf_r+0x2a00>
   1bd48:	00100a13          	li	s4,1
   1bd4c:	06600413          	li	s0,102
   1bd50:	00100b93          	li	s7,1
   1bd54:	dd4ff06f          	j	1b328 <_svfprintf_r+0x1fd0>
   1bd58:	02812783          	lw	a5,40(sp)
   1bd5c:	06600413          	li	s0,102
   1bd60:	00178b93          	addi	s7,a5,1
   1bd64:	016b8bb3          	add	s7,s7,s6
   1bd68:	fffbca13          	not	s4,s7
   1bd6c:	41fa5a13          	srai	s4,s4,0x1f
   1bd70:	014bfa33          	and	s4,s7,s4
   1bd74:	db4ff06f          	j	1b328 <_svfprintf_r+0x1fd0>
   1bd78:	01012703          	lw	a4,16(sp)
   1bd7c:	00072b03          	lw	s6,0(a4)
   1bd80:	00470713          	addi	a4,a4,4
   1bd84:	000b5463          	bgez	s6,1bd8c <_svfprintf_r+0x2a34>
   1bd88:	fff00b13          	li	s6,-1
   1bd8c:	00194403          	lbu	s0,1(s2)
   1bd90:	00e12823          	sw	a4,16(sp)
   1bd94:	00078913          	mv	s2,a5
   1bd98:	f20fd06f          	j	194b8 <_svfprintf_r+0x160>
   1bd9c:	00098a13          	mv	s4,s3
   1bda0:	e79fd06f          	j	19c18 <_svfprintf_r+0x8c0>
   1bda4:	000b0a13          	mv	s4,s6
   1bda8:	ca5ff06f          	j	1ba4c <_svfprintf_r+0x26f4>
   1bdac:	00200793          	li	a5,2
   1bdb0:	02f12c23          	sw	a5,56(sp)
   1bdb4:	d19fd06f          	j	19acc <_svfprintf_r+0x774>
   1bdb8:	02412703          	lw	a4,36(sp)
   1bdbc:	00c00793          	li	a5,12
   1bdc0:	00f72023          	sw	a5,0(a4)
   1bdc4:	fff00793          	li	a5,-1
   1bdc8:	00f12223          	sw	a5,4(sp)
   1bdcc:	fc8fd06f          	j	19594 <_svfprintf_r+0x23c>
   1bdd0:	00098a13          	mv	s4,s3
   1bdd4:	d71fd06f          	j	19b44 <_svfprintf_r+0x7ec>
   1bdd8:	00812683          	lw	a3,8(sp)
   1bddc:	00c6d783          	lhu	a5,12(a3)
   1bde0:	0407e713          	ori	a4,a5,64
   1bde4:	00070793          	mv	a5,a4
   1bde8:	00e69623          	sh	a4,12(a3)
   1bdec:	f9cfd06f          	j	19588 <_svfprintf_r+0x230>

0001bdf0 <__sprint_r.part.0>:
   1bdf0:	0645a783          	lw	a5,100(a1)
   1bdf4:	fd010113          	addi	sp,sp,-48
   1bdf8:	01612823          	sw	s6,16(sp)
   1bdfc:	02112623          	sw	ra,44(sp)
   1be00:	02812423          	sw	s0,40(sp)
   1be04:	02912223          	sw	s1,36(sp)
   1be08:	03212023          	sw	s2,32(sp)
   1be0c:	01312e23          	sw	s3,28(sp)
   1be10:	01412c23          	sw	s4,24(sp)
   1be14:	01512a23          	sw	s5,20(sp)
   1be18:	01712623          	sw	s7,12(sp)
   1be1c:	01812423          	sw	s8,8(sp)
   1be20:	01279713          	slli	a4,a5,0x12
   1be24:	00060b13          	mv	s6,a2
   1be28:	0a075863          	bgez	a4,1bed8 <__sprint_r.part.0+0xe8>
   1be2c:	00862783          	lw	a5,8(a2)
   1be30:	00058913          	mv	s2,a1
   1be34:	00050a13          	mv	s4,a0
   1be38:	00062b83          	lw	s7,0(a2)
   1be3c:	fff00a93          	li	s5,-1
   1be40:	08078863          	beqz	a5,1bed0 <__sprint_r.part.0+0xe0>
   1be44:	004bac03          	lw	s8,4(s7)
   1be48:	000ba403          	lw	s0,0(s7)
   1be4c:	002c5993          	srli	s3,s8,0x2
   1be50:	06098663          	beqz	s3,1bebc <__sprint_r.part.0+0xcc>
   1be54:	00000493          	li	s1,0
   1be58:	00c0006f          	j	1be64 <__sprint_r.part.0+0x74>
   1be5c:	00440413          	addi	s0,s0,4
   1be60:	04998c63          	beq	s3,s1,1beb8 <__sprint_r.part.0+0xc8>
   1be64:	00042583          	lw	a1,0(s0)
   1be68:	00090613          	mv	a2,s2
   1be6c:	000a0513          	mv	a0,s4
   1be70:	035010ef          	jal	ra,1d6a4 <_fputwc_r>
   1be74:	00148493          	addi	s1,s1,1
   1be78:	ff5512e3          	bne	a0,s5,1be5c <__sprint_r.part.0+0x6c>
   1be7c:	fff00513          	li	a0,-1
   1be80:	02c12083          	lw	ra,44(sp)
   1be84:	02812403          	lw	s0,40(sp)
   1be88:	000b2423          	sw	zero,8(s6)
   1be8c:	000b2223          	sw	zero,4(s6)
   1be90:	02412483          	lw	s1,36(sp)
   1be94:	02012903          	lw	s2,32(sp)
   1be98:	01c12983          	lw	s3,28(sp)
   1be9c:	01812a03          	lw	s4,24(sp)
   1bea0:	01412a83          	lw	s5,20(sp)
   1bea4:	01012b03          	lw	s6,16(sp)
   1bea8:	00c12b83          	lw	s7,12(sp)
   1beac:	00812c03          	lw	s8,8(sp)
   1beb0:	03010113          	addi	sp,sp,48
   1beb4:	00008067          	ret
   1beb8:	008b2783          	lw	a5,8(s6)
   1bebc:	ffcc7c13          	andi	s8,s8,-4
   1bec0:	418787b3          	sub	a5,a5,s8
   1bec4:	00fb2423          	sw	a5,8(s6)
   1bec8:	008b8b93          	addi	s7,s7,8
   1becc:	f6079ce3          	bnez	a5,1be44 <__sprint_r.part.0+0x54>
   1bed0:	00000513          	li	a0,0
   1bed4:	fadff06f          	j	1be80 <__sprint_r.part.0+0x90>
   1bed8:	0d9010ef          	jal	ra,1d7b0 <__sfvwrite_r>
   1bedc:	fa5ff06f          	j	1be80 <__sprint_r.part.0+0x90>

0001bee0 <__sprint_r>:
   1bee0:	00862703          	lw	a4,8(a2)
   1bee4:	00070463          	beqz	a4,1beec <__sprint_r+0xc>
   1bee8:	f09ff06f          	j	1bdf0 <__sprint_r.part.0>
   1beec:	00062223          	sw	zero,4(a2)
   1bef0:	00000513          	li	a0,0
   1bef4:	00008067          	ret

0001bef8 <_vfiprintf_r>:
   1bef8:	ed010113          	addi	sp,sp,-304
   1befc:	13212023          	sw	s2,288(sp)
   1bf00:	11312e23          	sw	s3,284(sp)
   1bf04:	11812423          	sw	s8,264(sp)
   1bf08:	12112623          	sw	ra,300(sp)
   1bf0c:	12812423          	sw	s0,296(sp)
   1bf10:	12912223          	sw	s1,292(sp)
   1bf14:	11412c23          	sw	s4,280(sp)
   1bf18:	11512a23          	sw	s5,276(sp)
   1bf1c:	11612823          	sw	s6,272(sp)
   1bf20:	11712623          	sw	s7,268(sp)
   1bf24:	11912223          	sw	s9,260(sp)
   1bf28:	11a12023          	sw	s10,256(sp)
   1bf2c:	0fb12e23          	sw	s11,252(sp)
   1bf30:	00d12623          	sw	a3,12(sp)
   1bf34:	00050993          	mv	s3,a0
   1bf38:	00058913          	mv	s2,a1
   1bf3c:	00060c13          	mv	s8,a2
   1bf40:	00050663          	beqz	a0,1bf4c <_vfiprintf_r+0x54>
   1bf44:	03852783          	lw	a5,56(a0)
   1bf48:	180782e3          	beqz	a5,1c8cc <_vfiprintf_r+0x9d4>
   1bf4c:	00c91703          	lh	a4,12(s2)
   1bf50:	01071793          	slli	a5,a4,0x10
   1bf54:	0107d793          	srli	a5,a5,0x10
   1bf58:	01279693          	slli	a3,a5,0x12
   1bf5c:	0206c663          	bltz	a3,1bf88 <_vfiprintf_r+0x90>
   1bf60:	06492683          	lw	a3,100(s2)
   1bf64:	000027b7          	lui	a5,0x2
   1bf68:	00f767b3          	or	a5,a4,a5
   1bf6c:	ffffe737          	lui	a4,0xffffe
   1bf70:	fff70713          	addi	a4,a4,-1 # ffffdfff <__BSS_END__+0xfffd7517>
   1bf74:	00e6f733          	and	a4,a3,a4
   1bf78:	00f91623          	sh	a5,12(s2)
   1bf7c:	01079793          	slli	a5,a5,0x10
   1bf80:	06e92223          	sw	a4,100(s2)
   1bf84:	0107d793          	srli	a5,a5,0x10
   1bf88:	0087f713          	andi	a4,a5,8
   1bf8c:	16070863          	beqz	a4,1c0fc <_vfiprintf_r+0x204>
   1bf90:	01092703          	lw	a4,16(s2)
   1bf94:	16070463          	beqz	a4,1c0fc <_vfiprintf_r+0x204>
   1bf98:	01a7f793          	andi	a5,a5,26
   1bf9c:	00a00713          	li	a4,10
   1bfa0:	18e78063          	beq	a5,a4,1c120 <_vfiprintf_r+0x228>
   1bfa4:	ffff87b7          	lui	a5,0xffff8
   1bfa8:	04c10493          	addi	s1,sp,76
   1bfac:	8307c793          	xori	a5,a5,-2000
   1bfb0:	04912023          	sw	s1,64(sp)
   1bfb4:	04012423          	sw	zero,72(sp)
   1bfb8:	04012223          	sw	zero,68(sp)
   1bfbc:	00012823          	sw	zero,16(sp)
   1bfc0:	00012c23          	sw	zero,24(sp)
   1bfc4:	02012023          	sw	zero,32(sp)
   1bfc8:	00012e23          	sw	zero,28(sp)
   1bfcc:	00012423          	sw	zero,8(sp)
   1bfd0:	00009a97          	auipc	s5,0x9
   1bfd4:	36ca8a93          	addi	s5,s5,876 # 2533c <zeroes.4490+0x10>
   1bfd8:	02f12223          	sw	a5,36(sp)
   1bfdc:	00048413          	mv	s0,s1
   1bfe0:	000c0c93          	mv	s9,s8
   1bfe4:	000cc783          	lbu	a5,0(s9)
   1bfe8:	16078463          	beqz	a5,1c150 <_vfiprintf_r+0x258>
   1bfec:	02500713          	li	a4,37
   1bff0:	5ce784e3          	beq	a5,a4,1cdb8 <_vfiprintf_r+0xec0>
   1bff4:	000c8a13          	mv	s4,s9
   1bff8:	00c0006f          	j	1c004 <_vfiprintf_r+0x10c>
   1bffc:	14e78463          	beq	a5,a4,1c144 <_vfiprintf_r+0x24c>
   1c000:	000d0a13          	mv	s4,s10
   1c004:	001a4783          	lbu	a5,1(s4)
   1c008:	001a0d13          	addi	s10,s4,1
   1c00c:	fe0798e3          	bnez	a5,1bffc <_vfiprintf_r+0x104>
   1c010:	419d0c33          	sub	s8,s10,s9
   1c014:	120c0e63          	beqz	s8,1c150 <_vfiprintf_r+0x258>
   1c018:	04812703          	lw	a4,72(sp)
   1c01c:	04412783          	lw	a5,68(sp)
   1c020:	01942023          	sw	s9,0(s0)
   1c024:	00ec0733          	add	a4,s8,a4
   1c028:	00178793          	addi	a5,a5,1 # ffff8001 <__BSS_END__+0xfffd1519>
   1c02c:	01842223          	sw	s8,4(s0)
   1c030:	04e12423          	sw	a4,72(sp)
   1c034:	04f12223          	sw	a5,68(sp)
   1c038:	00700693          	li	a3,7
   1c03c:	00840413          	addi	s0,s0,8
   1c040:	02f6d063          	bge	a3,a5,1c060 <_vfiprintf_r+0x168>
   1c044:	520706e3          	beqz	a4,1cd70 <_vfiprintf_r+0xe78>
   1c048:	04010613          	addi	a2,sp,64
   1c04c:	00090593          	mv	a1,s2
   1c050:	00098513          	mv	a0,s3
   1c054:	d9dff0ef          	jal	ra,1bdf0 <__sprint_r.part.0>
   1c058:	10051863          	bnez	a0,1c168 <_vfiprintf_r+0x270>
   1c05c:	00048413          	mv	s0,s1
   1c060:	00812703          	lw	a4,8(sp)
   1c064:	001a4783          	lbu	a5,1(s4)
   1c068:	01870733          	add	a4,a4,s8
   1c06c:	00e12423          	sw	a4,8(sp)
   1c070:	0e078063          	beqz	a5,1c150 <_vfiprintf_r+0x258>
   1c074:	001d0c93          	addi	s9,s10,1
   1c078:	001d4703          	lbu	a4,1(s10)
   1c07c:	02010da3          	sb	zero,59(sp)
   1c080:	fff00c13          	li	s8,-1
   1c084:	00000a13          	li	s4,0
   1c088:	00000b93          	li	s7,0
   1c08c:	02a00d13          	li	s10,42
   1c090:	001c8c93          	addi	s9,s9,1
   1c094:	05a00693          	li	a3,90
   1c098:	fe070793          	addi	a5,a4,-32
   1c09c:	1ef6e063          	bltu	a3,a5,1c27c <_vfiprintf_r+0x384>
   1c0a0:	00279793          	slli	a5,a5,0x2
   1c0a4:	015787b3          	add	a5,a5,s5
   1c0a8:	0007a783          	lw	a5,0(a5)
   1c0ac:	015787b3          	add	a5,a5,s5
   1c0b0:	00078067          	jr	a5
   1c0b4:	00098513          	mv	a0,s3
   1c0b8:	f69fa0ef          	jal	ra,17020 <_localeconv_r>
   1c0bc:	00452783          	lw	a5,4(a0)
   1c0c0:	00078513          	mv	a0,a5
   1c0c4:	00f12e23          	sw	a5,28(sp)
   1c0c8:	938fd0ef          	jal	ra,19200 <strlen>
   1c0cc:	02a12023          	sw	a0,32(sp)
   1c0d0:	00050b13          	mv	s6,a0
   1c0d4:	00098513          	mv	a0,s3
   1c0d8:	f49fa0ef          	jal	ra,17020 <_localeconv_r>
   1c0dc:	00852783          	lw	a5,8(a0)
   1c0e0:	00f12c23          	sw	a5,24(sp)
   1c0e4:	560b14e3          	bnez	s6,1ce4c <_vfiprintf_r+0xf54>
   1c0e8:	000cc703          	lbu	a4,0(s9)
   1c0ec:	fa5ff06f          	j	1c090 <_vfiprintf_r+0x198>
   1c0f0:	020beb93          	ori	s7,s7,32
   1c0f4:	000cc703          	lbu	a4,0(s9)
   1c0f8:	f99ff06f          	j	1c090 <_vfiprintf_r+0x198>
   1c0fc:	00090593          	mv	a1,s2
   1c100:	00098513          	mv	a0,s3
   1c104:	c94f70ef          	jal	ra,13598 <__swsetup_r>
   1c108:	00050463          	beqz	a0,1c110 <_vfiprintf_r+0x218>
   1c10c:	0600106f          	j	1d16c <_vfiprintf_r+0x1274>
   1c110:	00c95783          	lhu	a5,12(s2)
   1c114:	00a00713          	li	a4,10
   1c118:	01a7f793          	andi	a5,a5,26
   1c11c:	e8e794e3          	bne	a5,a4,1bfa4 <_vfiprintf_r+0xac>
   1c120:	00e91783          	lh	a5,14(s2)
   1c124:	e807c0e3          	bltz	a5,1bfa4 <_vfiprintf_r+0xac>
   1c128:	00c12683          	lw	a3,12(sp)
   1c12c:	000c0613          	mv	a2,s8
   1c130:	00090593          	mv	a1,s2
   1c134:	00098513          	mv	a0,s3
   1c138:	0a8010ef          	jal	ra,1d1e0 <__sbprintf>
   1c13c:	00a12423          	sw	a0,8(sp)
   1c140:	0380006f          	j	1c178 <_vfiprintf_r+0x280>
   1c144:	419d0c33          	sub	s8,s10,s9
   1c148:	f20c06e3          	beqz	s8,1c074 <_vfiprintf_r+0x17c>
   1c14c:	ecdff06f          	j	1c018 <_vfiprintf_r+0x120>
   1c150:	04812783          	lw	a5,72(sp)
   1c154:	00078a63          	beqz	a5,1c168 <_vfiprintf_r+0x270>
   1c158:	04010613          	addi	a2,sp,64
   1c15c:	00090593          	mv	a1,s2
   1c160:	00098513          	mv	a0,s3
   1c164:	c8dff0ef          	jal	ra,1bdf0 <__sprint_r.part.0>
   1c168:	00c95783          	lhu	a5,12(s2)
   1c16c:	0407f793          	andi	a5,a5,64
   1c170:	00078463          	beqz	a5,1c178 <_vfiprintf_r+0x280>
   1c174:	7f90006f          	j	1d16c <_vfiprintf_r+0x1274>
   1c178:	12c12083          	lw	ra,300(sp)
   1c17c:	12812403          	lw	s0,296(sp)
   1c180:	00812503          	lw	a0,8(sp)
   1c184:	12412483          	lw	s1,292(sp)
   1c188:	12012903          	lw	s2,288(sp)
   1c18c:	11c12983          	lw	s3,284(sp)
   1c190:	11812a03          	lw	s4,280(sp)
   1c194:	11412a83          	lw	s5,276(sp)
   1c198:	11012b03          	lw	s6,272(sp)
   1c19c:	10c12b83          	lw	s7,268(sp)
   1c1a0:	10812c03          	lw	s8,264(sp)
   1c1a4:	10412c83          	lw	s9,260(sp)
   1c1a8:	10012d03          	lw	s10,256(sp)
   1c1ac:	0fc12d83          	lw	s11,252(sp)
   1c1b0:	13010113          	addi	sp,sp,304
   1c1b4:	00008067          	ret
   1c1b8:	00009797          	auipc	a5,0x9
   1c1bc:	c2078793          	addi	a5,a5,-992 # 24dd8 <zeroes.4505+0x34>
   1c1c0:	00f12823          	sw	a5,16(sp)
   1c1c4:	020bf793          	andi	a5,s7,32
   1c1c8:	52078463          	beqz	a5,1c6f0 <_vfiprintf_r+0x7f8>
   1c1cc:	00c12783          	lw	a5,12(sp)
   1c1d0:	00778693          	addi	a3,a5,7
   1c1d4:	ff86f693          	andi	a3,a3,-8
   1c1d8:	0006ad83          	lw	s11,0(a3)
   1c1dc:	0046ae03          	lw	t3,4(a3)
   1c1e0:	00868793          	addi	a5,a3,8
   1c1e4:	00f12623          	sw	a5,12(sp)
   1c1e8:	001bf693          	andi	a3,s7,1
   1c1ec:	00068663          	beqz	a3,1c1f8 <_vfiprintf_r+0x300>
   1c1f0:	01cde6b3          	or	a3,s11,t3
   1c1f4:	42069ee3          	bnez	a3,1ce30 <_vfiprintf_r+0xf38>
   1c1f8:	bffbfd13          	andi	s10,s7,-1025
   1c1fc:	00200713          	li	a4,2
   1c200:	02010da3          	sb	zero,59(sp)
   1c204:	fff00693          	li	a3,-1
   1c208:	64dc0a63          	beq	s8,a3,1c85c <_vfiprintf_r+0x964>
   1c20c:	01cde6b3          	or	a3,s11,t3
   1c210:	f7fd7b93          	andi	s7,s10,-129
   1c214:	20069ee3          	bnez	a3,1cc30 <_vfiprintf_r+0xd38>
   1c218:	720c1c63          	bnez	s8,1c950 <_vfiprintf_r+0xa58>
   1c21c:	360712e3          	bnez	a4,1cd80 <_vfiprintf_r+0xe88>
   1c220:	001d7d93          	andi	s11,s10,1
   1c224:	0f010b13          	addi	s6,sp,240
   1c228:	3a0d96e3          	bnez	s11,1cdd4 <_vfiprintf_r+0xedc>
   1c22c:	000c0d13          	mv	s10,s8
   1c230:	01bc5463          	bge	s8,s11,1c238 <_vfiprintf_r+0x340>
   1c234:	000d8d13          	mv	s10,s11
   1c238:	03b14783          	lbu	a5,59(sp)
   1c23c:	00f037b3          	snez	a5,a5
   1c240:	00fd0d33          	add	s10,s10,a5
   1c244:	0540006f          	j	1c298 <_vfiprintf_r+0x3a0>
   1c248:	00000a13          	li	s4,0
   1c24c:	fd070613          	addi	a2,a4,-48
   1c250:	001c8c93          	addi	s9,s9,1
   1c254:	002a1793          	slli	a5,s4,0x2
   1c258:	fffcc703          	lbu	a4,-1(s9)
   1c25c:	01478a33          	add	s4,a5,s4
   1c260:	001a1a13          	slli	s4,s4,0x1
   1c264:	01460a33          	add	s4,a2,s4
   1c268:	00900793          	li	a5,9
   1c26c:	fd070613          	addi	a2,a4,-48
   1c270:	fec7f0e3          	bgeu	a5,a2,1c250 <_vfiprintf_r+0x358>
   1c274:	fe070793          	addi	a5,a4,-32
   1c278:	e2f6f4e3          	bgeu	a3,a5,1c0a0 <_vfiprintf_r+0x1a8>
   1c27c:	ec070ae3          	beqz	a4,1c150 <_vfiprintf_r+0x258>
   1c280:	08e10623          	sb	a4,140(sp)
   1c284:	02010da3          	sb	zero,59(sp)
   1c288:	00100d13          	li	s10,1
   1c28c:	00100d93          	li	s11,1
   1c290:	08c10b13          	addi	s6,sp,140
   1c294:	00000c13          	li	s8,0
   1c298:	002bff93          	andi	t6,s7,2
   1c29c:	000f8463          	beqz	t6,1c2a4 <_vfiprintf_r+0x3ac>
   1c2a0:	002d0d13          	addi	s10,s10,2
   1c2a4:	04412703          	lw	a4,68(sp)
   1c2a8:	084bf813          	andi	a6,s7,132
   1c2ac:	04812783          	lw	a5,72(sp)
   1c2b0:	00170693          	addi	a3,a4,1
   1c2b4:	00068613          	mv	a2,a3
   1c2b8:	00081663          	bnez	a6,1c2c4 <_vfiprintf_r+0x3cc>
   1c2bc:	41aa0e33          	sub	t3,s4,s10
   1c2c0:	17c04ce3          	bgtz	t3,1cc38 <_vfiprintf_r+0xd40>
   1c2c4:	03b14583          	lbu	a1,59(sp)
   1c2c8:	00840693          	addi	a3,s0,8
   1c2cc:	02058c63          	beqz	a1,1c304 <_vfiprintf_r+0x40c>
   1c2d0:	03b10713          	addi	a4,sp,59
   1c2d4:	00178793          	addi	a5,a5,1
   1c2d8:	00e42023          	sw	a4,0(s0)
   1c2dc:	00100713          	li	a4,1
   1c2e0:	00e42223          	sw	a4,4(s0)
   1c2e4:	04f12423          	sw	a5,72(sp)
   1c2e8:	04c12223          	sw	a2,68(sp)
   1c2ec:	00700713          	li	a4,7
   1c2f0:	10c740e3          	blt	a4,a2,1cbf0 <_vfiprintf_r+0xcf8>
   1c2f4:	00060713          	mv	a4,a2
   1c2f8:	00068413          	mv	s0,a3
   1c2fc:	00160613          	addi	a2,a2,1
   1c300:	00868693          	addi	a3,a3,8
   1c304:	040f8e63          	beqz	t6,1c360 <_vfiprintf_r+0x468>
   1c308:	03c10713          	addi	a4,sp,60
   1c30c:	00278793          	addi	a5,a5,2
   1c310:	00e42023          	sw	a4,0(s0)
   1c314:	00200713          	li	a4,2
   1c318:	00e42223          	sw	a4,4(s0)
   1c31c:	04f12423          	sw	a5,72(sp)
   1c320:	04c12223          	sw	a2,68(sp)
   1c324:	00700713          	li	a4,7
   1c328:	0ac75ae3          	bge	a4,a2,1cbdc <_vfiprintf_r+0xce4>
   1c32c:	26078ce3          	beqz	a5,1cda4 <_vfiprintf_r+0xeac>
   1c330:	04010613          	addi	a2,sp,64
   1c334:	00090593          	mv	a1,s2
   1c338:	00098513          	mv	a0,s3
   1c33c:	01012a23          	sw	a6,20(sp)
   1c340:	ab1ff0ef          	jal	ra,1bdf0 <__sprint_r.part.0>
   1c344:	e20512e3          	bnez	a0,1c168 <_vfiprintf_r+0x270>
   1c348:	04412703          	lw	a4,68(sp)
   1c34c:	04812783          	lw	a5,72(sp)
   1c350:	01412803          	lw	a6,20(sp)
   1c354:	05410693          	addi	a3,sp,84
   1c358:	00170613          	addi	a2,a4,1
   1c35c:	00048413          	mv	s0,s1
   1c360:	08000593          	li	a1,128
   1c364:	64b80a63          	beq	a6,a1,1c9b8 <_vfiprintf_r+0xac0>
   1c368:	41bc0c33          	sub	s8,s8,s11
   1c36c:	75804663          	bgtz	s8,1cab8 <_vfiprintf_r+0xbc0>
   1c370:	00fd87b3          	add	a5,s11,a5
   1c374:	01642023          	sw	s6,0(s0)
   1c378:	01b42223          	sw	s11,4(s0)
   1c37c:	04f12423          	sw	a5,72(sp)
   1c380:	04c12223          	sw	a2,68(sp)
   1c384:	00700713          	li	a4,7
   1c388:	02c75263          	bge	a4,a2,1c3ac <_vfiprintf_r+0x4b4>
   1c38c:	18078463          	beqz	a5,1c514 <_vfiprintf_r+0x61c>
   1c390:	04010613          	addi	a2,sp,64
   1c394:	00090593          	mv	a1,s2
   1c398:	00098513          	mv	a0,s3
   1c39c:	a55ff0ef          	jal	ra,1bdf0 <__sprint_r.part.0>
   1c3a0:	dc0514e3          	bnez	a0,1c168 <_vfiprintf_r+0x270>
   1c3a4:	04812783          	lw	a5,72(sp)
   1c3a8:	00048693          	mv	a3,s1
   1c3ac:	004bf893          	andi	a7,s7,4
   1c3b0:	00088663          	beqz	a7,1c3bc <_vfiprintf_r+0x4c4>
   1c3b4:	41aa0433          	sub	s0,s4,s10
   1c3b8:	16804a63          	bgtz	s0,1c52c <_vfiprintf_r+0x634>
   1c3bc:	01aa5463          	bge	s4,s10,1c3c4 <_vfiprintf_r+0x4cc>
   1c3c0:	000d0a13          	mv	s4,s10
   1c3c4:	00812703          	lw	a4,8(sp)
   1c3c8:	01470733          	add	a4,a4,s4
   1c3cc:	00e12423          	sw	a4,8(sp)
   1c3d0:	7a079e63          	bnez	a5,1cb8c <_vfiprintf_r+0xc94>
   1c3d4:	04012223          	sw	zero,68(sp)
   1c3d8:	00048413          	mv	s0,s1
   1c3dc:	c09ff06f          	j	1bfe4 <_vfiprintf_r+0xec>
   1c3e0:	020bf793          	andi	a5,s7,32
   1c3e4:	010bed13          	ori	s10,s7,16
   1c3e8:	54079263          	bnez	a5,1c92c <_vfiprintf_r+0xa34>
   1c3ec:	00c12783          	lw	a5,12(sp)
   1c3f0:	00478713          	addi	a4,a5,4
   1c3f4:	00c12783          	lw	a5,12(sp)
   1c3f8:	00000e13          	li	t3,0
   1c3fc:	00e12623          	sw	a4,12(sp)
   1c400:	0007ad83          	lw	s11,0(a5)
   1c404:	00100713          	li	a4,1
   1c408:	df9ff06f          	j	1c200 <_vfiprintf_r+0x308>
   1c40c:	080beb93          	ori	s7,s7,128
   1c410:	000cc703          	lbu	a4,0(s9)
   1c414:	c7dff06f          	j	1c090 <_vfiprintf_r+0x198>
   1c418:	00c12783          	lw	a5,12(sp)
   1c41c:	02010da3          	sb	zero,59(sp)
   1c420:	0007ab03          	lw	s6,0(a5)
   1c424:	00478713          	addi	a4,a5,4
   1c428:	380b06e3          	beqz	s6,1cfb4 <_vfiprintf_r+0x10bc>
   1c42c:	fff00793          	li	a5,-1
   1c430:	00e12623          	sw	a4,12(sp)
   1c434:	24fc08e3          	beq	s8,a5,1ce84 <_vfiprintf_r+0xf8c>
   1c438:	000c0613          	mv	a2,s8
   1c43c:	00000593          	li	a1,0
   1c440:	000b0513          	mv	a0,s6
   1c444:	eb4fb0ef          	jal	ra,17af8 <memchr>
   1c448:	00c12703          	lw	a4,12(sp)
   1c44c:	4e0508e3          	beqz	a0,1d13c <_vfiprintf_r+0x1244>
   1c450:	41650db3          	sub	s11,a0,s6
   1c454:	00000c13          	li	s8,0
   1c458:	dd5ff06f          	j	1c22c <_vfiprintf_r+0x334>
   1c45c:	020bf793          	andi	a5,s7,32
   1c460:	010be893          	ori	a7,s7,16
   1c464:	46079a63          	bnez	a5,1c8d8 <_vfiprintf_r+0x9e0>
   1c468:	00c12783          	lw	a5,12(sp)
   1c46c:	00478713          	addi	a4,a5,4
   1c470:	00c12783          	lw	a5,12(sp)
   1c474:	00000e13          	li	t3,0
   1c478:	00e12623          	sw	a4,12(sp)
   1c47c:	0007ad83          	lw	s11,0(a5)
   1c480:	4740006f          	j	1c8f4 <_vfiprintf_r+0x9fc>
   1c484:	020bf793          	andi	a5,s7,32
   1c488:	010bed13          	ori	s10,s7,16
   1c48c:	46079c63          	bnez	a5,1c904 <_vfiprintf_r+0xa0c>
   1c490:	00c12783          	lw	a5,12(sp)
   1c494:	00478713          	addi	a4,a5,4
   1c498:	00c12783          	lw	a5,12(sp)
   1c49c:	00e12623          	sw	a4,12(sp)
   1c4a0:	0007ad83          	lw	s11,0(a5)
   1c4a4:	41fdde13          	srai	t3,s11,0x1f
   1c4a8:	000e0713          	mv	a4,t3
   1c4ac:	38074463          	bltz	a4,1c834 <_vfiprintf_r+0x93c>
   1c4b0:	fff00713          	li	a4,-1
   1c4b4:	00ec0a63          	beq	s8,a4,1c4c8 <_vfiprintf_r+0x5d0>
   1c4b8:	01cde733          	or	a4,s11,t3
   1c4bc:	f7fd7b93          	andi	s7,s10,-129
   1c4c0:	0a070ee3          	beqz	a4,1cd7c <_vfiprintf_r+0xe84>
   1c4c4:	000b8d13          	mv	s10,s7
   1c4c8:	1e0e18e3          	bnez	t3,1ceb8 <_vfiprintf_r+0xfc0>
   1c4cc:	00900793          	li	a5,9
   1c4d0:	1fb7e4e3          	bltu	a5,s11,1ceb8 <_vfiprintf_r+0xfc0>
   1c4d4:	030d8793          	addi	a5,s11,48
   1c4d8:	0ef107a3          	sb	a5,239(sp)
   1c4dc:	000d0b93          	mv	s7,s10
   1c4e0:	00100d93          	li	s11,1
   1c4e4:	0ef10b13          	addi	s6,sp,239
   1c4e8:	d45ff06f          	j	1c22c <_vfiprintf_r+0x334>
   1c4ec:	00c12703          	lw	a4,12(sp)
   1c4f0:	02010da3          	sb	zero,59(sp)
   1c4f4:	00100d13          	li	s10,1
   1c4f8:	00072783          	lw	a5,0(a4)
   1c4fc:	00470713          	addi	a4,a4,4
   1c500:	00e12623          	sw	a4,12(sp)
   1c504:	08f10623          	sb	a5,140(sp)
   1c508:	00100d93          	li	s11,1
   1c50c:	08c10b13          	addi	s6,sp,140
   1c510:	d85ff06f          	j	1c294 <_vfiprintf_r+0x39c>
   1c514:	04012223          	sw	zero,68(sp)
   1c518:	004bf893          	andi	a7,s7,4
   1c51c:	000886e3          	beqz	a7,1cd28 <_vfiprintf_r+0xe30>
   1c520:	41aa0433          	sub	s0,s4,s10
   1c524:	008052e3          	blez	s0,1cd28 <_vfiprintf_r+0xe30>
   1c528:	00048693          	mv	a3,s1
   1c52c:	01000713          	li	a4,16
   1c530:	04412603          	lw	a2,68(sp)
   1c534:	428754e3          	bge	a4,s0,1d15c <_vfiprintf_r+0x1264>
   1c538:	00009e97          	auipc	t4,0x9
   1c53c:	f70e8e93          	addi	t4,t4,-144 # 254a8 <blanks.4480>
   1c540:	01000c13          	li	s8,16
   1c544:	00700d93          	li	s11,7
   1c548:	000e8b13          	mv	s6,t4
   1c54c:	0180006f          	j	1c564 <_vfiprintf_r+0x66c>
   1c550:	00260593          	addi	a1,a2,2
   1c554:	00868693          	addi	a3,a3,8
   1c558:	00070613          	mv	a2,a4
   1c55c:	ff040413          	addi	s0,s0,-16
   1c560:	048c5863          	bge	s8,s0,1c5b0 <_vfiprintf_r+0x6b8>
   1c564:	01078793          	addi	a5,a5,16
   1c568:	00160713          	addi	a4,a2,1
   1c56c:	0166a023          	sw	s6,0(a3)
   1c570:	0186a223          	sw	s8,4(a3)
   1c574:	04f12423          	sw	a5,72(sp)
   1c578:	04e12223          	sw	a4,68(sp)
   1c57c:	fceddae3          	bge	s11,a4,1c550 <_vfiprintf_r+0x658>
   1c580:	42078463          	beqz	a5,1c9a8 <_vfiprintf_r+0xab0>
   1c584:	04010613          	addi	a2,sp,64
   1c588:	00090593          	mv	a1,s2
   1c58c:	00098513          	mv	a0,s3
   1c590:	861ff0ef          	jal	ra,1bdf0 <__sprint_r.part.0>
   1c594:	bc051ae3          	bnez	a0,1c168 <_vfiprintf_r+0x270>
   1c598:	04412603          	lw	a2,68(sp)
   1c59c:	ff040413          	addi	s0,s0,-16
   1c5a0:	04812783          	lw	a5,72(sp)
   1c5a4:	00048693          	mv	a3,s1
   1c5a8:	00160593          	addi	a1,a2,1
   1c5ac:	fa8c4ce3          	blt	s8,s0,1c564 <_vfiprintf_r+0x66c>
   1c5b0:	000b0e93          	mv	t4,s6
   1c5b4:	008787b3          	add	a5,a5,s0
   1c5b8:	01d6a023          	sw	t4,0(a3)
   1c5bc:	0086a223          	sw	s0,4(a3)
   1c5c0:	04f12423          	sw	a5,72(sp)
   1c5c4:	04b12223          	sw	a1,68(sp)
   1c5c8:	00700713          	li	a4,7
   1c5cc:	deb758e3          	bge	a4,a1,1c3bc <_vfiprintf_r+0x4c4>
   1c5d0:	74078c63          	beqz	a5,1cd28 <_vfiprintf_r+0xe30>
   1c5d4:	04010613          	addi	a2,sp,64
   1c5d8:	00090593          	mv	a1,s2
   1c5dc:	00098513          	mv	a0,s3
   1c5e0:	811ff0ef          	jal	ra,1bdf0 <__sprint_r.part.0>
   1c5e4:	b80512e3          	bnez	a0,1c168 <_vfiprintf_r+0x270>
   1c5e8:	04812783          	lw	a5,72(sp)
   1c5ec:	dd1ff06f          	j	1c3bc <_vfiprintf_r+0x4c4>
   1c5f0:	03b14783          	lbu	a5,59(sp)
   1c5f4:	000cc703          	lbu	a4,0(s9)
   1c5f8:	a8079ce3          	bnez	a5,1c090 <_vfiprintf_r+0x198>
   1c5fc:	02000793          	li	a5,32
   1c600:	02f10da3          	sb	a5,59(sp)
   1c604:	a8dff06f          	j	1c090 <_vfiprintf_r+0x198>
   1c608:	02b00793          	li	a5,43
   1c60c:	02f10da3          	sb	a5,59(sp)
   1c610:	000cc703          	lbu	a4,0(s9)
   1c614:	a7dff06f          	j	1c090 <_vfiprintf_r+0x198>
   1c618:	00c12783          	lw	a5,12(sp)
   1c61c:	000cc703          	lbu	a4,0(s9)
   1c620:	0007aa03          	lw	s4,0(a5)
   1c624:	00478793          	addi	a5,a5,4
   1c628:	00f12623          	sw	a5,12(sp)
   1c62c:	a60a52e3          	bgez	s4,1c090 <_vfiprintf_r+0x198>
   1c630:	41400a33          	neg	s4,s4
   1c634:	004beb93          	ori	s7,s7,4
   1c638:	a59ff06f          	j	1c090 <_vfiprintf_r+0x198>
   1c63c:	001beb93          	ori	s7,s7,1
   1c640:	000cc703          	lbu	a4,0(s9)
   1c644:	a4dff06f          	j	1c090 <_vfiprintf_r+0x198>
   1c648:	000cc703          	lbu	a4,0(s9)
   1c64c:	001c8793          	addi	a5,s9,1
   1c650:	33a70ee3          	beq	a4,s10,1d18c <_vfiprintf_r+0x1294>
   1c654:	00078c93          	mv	s9,a5
   1c658:	fd070613          	addi	a2,a4,-48
   1c65c:	00900793          	li	a5,9
   1c660:	00000c13          	li	s8,0
   1c664:	a2c7eae3          	bltu	a5,a2,1c098 <_vfiprintf_r+0x1a0>
   1c668:	001c8c93          	addi	s9,s9,1
   1c66c:	002c1793          	slli	a5,s8,0x2
   1c670:	fffcc703          	lbu	a4,-1(s9)
   1c674:	01878c33          	add	s8,a5,s8
   1c678:	001c1c13          	slli	s8,s8,0x1
   1c67c:	00cc0c33          	add	s8,s8,a2
   1c680:	00900793          	li	a5,9
   1c684:	fd070613          	addi	a2,a4,-48
   1c688:	fec7f0e3          	bgeu	a5,a2,1c668 <_vfiprintf_r+0x770>
   1c68c:	a0dff06f          	j	1c098 <_vfiprintf_r+0x1a0>
   1c690:	000cc703          	lbu	a4,0(s9)
   1c694:	004beb93          	ori	s7,s7,4
   1c698:	9f9ff06f          	j	1c090 <_vfiprintf_r+0x198>
   1c69c:	020bf793          	andi	a5,s7,32
   1c6a0:	28079463          	bnez	a5,1c928 <_vfiprintf_r+0xa30>
   1c6a4:	00c12783          	lw	a5,12(sp)
   1c6a8:	010bf693          	andi	a3,s7,16
   1c6ac:	00478713          	addi	a4,a5,4
   1c6b0:	0007a783          	lw	a5,0(a5)
   1c6b4:	2e069ee3          	bnez	a3,1d1b0 <_vfiprintf_r+0x12b8>
   1c6b8:	040bf693          	andi	a3,s7,64
   1c6bc:	10068ce3          	beqz	a3,1cfd4 <_vfiprintf_r+0x10dc>
   1c6c0:	01079d93          	slli	s11,a5,0x10
   1c6c4:	00e12623          	sw	a4,12(sp)
   1c6c8:	010ddd93          	srli	s11,s11,0x10
   1c6cc:	00000e13          	li	t3,0
   1c6d0:	000b8d13          	mv	s10,s7
   1c6d4:	00100713          	li	a4,1
   1c6d8:	b29ff06f          	j	1c200 <_vfiprintf_r+0x308>
   1c6dc:	00008797          	auipc	a5,0x8
   1c6e0:	6e878793          	addi	a5,a5,1768 # 24dc4 <zeroes.4505+0x20>
   1c6e4:	00f12823          	sw	a5,16(sp)
   1c6e8:	020bf793          	andi	a5,s7,32
   1c6ec:	ae0790e3          	bnez	a5,1c1cc <_vfiprintf_r+0x2d4>
   1c6f0:	00c12603          	lw	a2,12(sp)
   1c6f4:	010bf693          	andi	a3,s7,16
   1c6f8:	00062783          	lw	a5,0(a2)
   1c6fc:	00460613          	addi	a2,a2,4
   1c700:	00c12623          	sw	a2,12(sp)
   1c704:	68069a63          	bnez	a3,1cd98 <_vfiprintf_r+0xea0>
   1c708:	040bf693          	andi	a3,s7,64
   1c70c:	68068263          	beqz	a3,1cd90 <_vfiprintf_r+0xe98>
   1c710:	01079d93          	slli	s11,a5,0x10
   1c714:	010ddd93          	srli	s11,s11,0x10
   1c718:	00000e13          	li	t3,0
   1c71c:	acdff06f          	j	1c1e8 <_vfiprintf_r+0x2f0>
   1c720:	00c12783          	lw	a5,12(sp)
   1c724:	02412703          	lw	a4,36(sp)
   1c728:	00000e13          	li	t3,0
   1c72c:	0007ad83          	lw	s11,0(a5)
   1c730:	00478793          	addi	a5,a5,4
   1c734:	00f12623          	sw	a5,12(sp)
   1c738:	00008797          	auipc	a5,0x8
   1c73c:	68c78793          	addi	a5,a5,1676 # 24dc4 <zeroes.4505+0x20>
   1c740:	02e11e23          	sh	a4,60(sp)
   1c744:	002bed13          	ori	s10,s7,2
   1c748:	00f12823          	sw	a5,16(sp)
   1c74c:	00200713          	li	a4,2
   1c750:	ab1ff06f          	j	1c200 <_vfiprintf_r+0x308>
   1c754:	020bf793          	andi	a5,s7,32
   1c758:	16079e63          	bnez	a5,1c8d4 <_vfiprintf_r+0x9dc>
   1c75c:	00c12783          	lw	a5,12(sp)
   1c760:	010bf693          	andi	a3,s7,16
   1c764:	00478713          	addi	a4,a5,4
   1c768:	0007a783          	lw	a5,0(a5)
   1c76c:	240696e3          	bnez	a3,1d1b8 <_vfiprintf_r+0x12c0>
   1c770:	040bf693          	andi	a3,s7,64
   1c774:	080680e3          	beqz	a3,1cff4 <_vfiprintf_r+0x10fc>
   1c778:	01079d93          	slli	s11,a5,0x10
   1c77c:	010ddd93          	srli	s11,s11,0x10
   1c780:	00000e13          	li	t3,0
   1c784:	000b8893          	mv	a7,s7
   1c788:	00e12623          	sw	a4,12(sp)
   1c78c:	1680006f          	j	1c8f4 <_vfiprintf_r+0x9fc>
   1c790:	00c12683          	lw	a3,12(sp)
   1c794:	020bf793          	andi	a5,s7,32
   1c798:	00468713          	addi	a4,a3,4
   1c79c:	6c079663          	bnez	a5,1ce68 <_vfiprintf_r+0xf70>
   1c7a0:	010bf793          	andi	a5,s7,16
   1c7a4:	7e079c63          	bnez	a5,1cf9c <_vfiprintf_r+0x10a4>
   1c7a8:	040bf793          	andi	a5,s7,64
   1c7ac:	100798e3          	bnez	a5,1d0bc <_vfiprintf_r+0x11c4>
   1c7b0:	200bf893          	andi	a7,s7,512
   1c7b4:	7e088463          	beqz	a7,1cf9c <_vfiprintf_r+0x10a4>
   1c7b8:	00c12783          	lw	a5,12(sp)
   1c7bc:	00e12623          	sw	a4,12(sp)
   1c7c0:	00812703          	lw	a4,8(sp)
   1c7c4:	0007a783          	lw	a5,0(a5)
   1c7c8:	00e78023          	sb	a4,0(a5)
   1c7cc:	819ff06f          	j	1bfe4 <_vfiprintf_r+0xec>
   1c7d0:	000cc703          	lbu	a4,0(s9)
   1c7d4:	06c00793          	li	a5,108
   1c7d8:	7af70a63          	beq	a4,a5,1cf8c <_vfiprintf_r+0x1094>
   1c7dc:	010beb93          	ori	s7,s7,16
   1c7e0:	8b1ff06f          	j	1c090 <_vfiprintf_r+0x198>
   1c7e4:	000cc703          	lbu	a4,0(s9)
   1c7e8:	06800793          	li	a5,104
   1c7ec:	78f70863          	beq	a4,a5,1cf7c <_vfiprintf_r+0x1084>
   1c7f0:	040beb93          	ori	s7,s7,64
   1c7f4:	89dff06f          	j	1c090 <_vfiprintf_r+0x198>
   1c7f8:	020bf793          	andi	a5,s7,32
   1c7fc:	10079263          	bnez	a5,1c900 <_vfiprintf_r+0xa08>
   1c800:	00c12703          	lw	a4,12(sp)
   1c804:	010bf793          	andi	a5,s7,16
   1c808:	00470713          	addi	a4,a4,4
   1c80c:	1a079ae3          	bnez	a5,1d1c0 <_vfiprintf_r+0x12c8>
   1c810:	040bf793          	andi	a5,s7,64
   1c814:	7e078e63          	beqz	a5,1d010 <_vfiprintf_r+0x1118>
   1c818:	00c12783          	lw	a5,12(sp)
   1c81c:	00e12623          	sw	a4,12(sp)
   1c820:	000b8d13          	mv	s10,s7
   1c824:	00079d83          	lh	s11,0(a5)
   1c828:	41fdde13          	srai	t3,s11,0x1f
   1c82c:	000e0713          	mv	a4,t3
   1c830:	c80750e3          	bgez	a4,1c4b0 <_vfiprintf_r+0x5b8>
   1c834:	41b007b3          	neg	a5,s11
   1c838:	00f03733          	snez	a4,a5
   1c83c:	41c00e33          	neg	t3,t3
   1c840:	40ee0e33          	sub	t3,t3,a4
   1c844:	02d00713          	li	a4,45
   1c848:	02e10da3          	sb	a4,59(sp)
   1c84c:	fff00693          	li	a3,-1
   1c850:	00078d93          	mv	s11,a5
   1c854:	00100713          	li	a4,1
   1c858:	9adc1ae3          	bne	s8,a3,1c20c <_vfiprintf_r+0x314>
   1c85c:	00100693          	li	a3,1
   1c860:	c6d704e3          	beq	a4,a3,1c4c8 <_vfiprintf_r+0x5d0>
   1c864:	00200693          	li	a3,2
   1c868:	0ed70e63          	beq	a4,a3,1c964 <_vfiprintf_r+0xa6c>
   1c86c:	0f010693          	addi	a3,sp,240
   1c870:	0080006f          	j	1c878 <_vfiprintf_r+0x980>
   1c874:	000b0693          	mv	a3,s6
   1c878:	01de1793          	slli	a5,t3,0x1d
   1c87c:	007df713          	andi	a4,s11,7
   1c880:	003ddd93          	srli	s11,s11,0x3
   1c884:	03070713          	addi	a4,a4,48
   1c888:	01b7edb3          	or	s11,a5,s11
   1c88c:	003e5e13          	srli	t3,t3,0x3
   1c890:	fee68fa3          	sb	a4,-1(a3)
   1c894:	01cde7b3          	or	a5,s11,t3
   1c898:	fff68b13          	addi	s6,a3,-1
   1c89c:	fc079ce3          	bnez	a5,1c874 <_vfiprintf_r+0x97c>
   1c8a0:	001d7793          	andi	a5,s10,1
   1c8a4:	0e078a63          	beqz	a5,1c998 <_vfiprintf_r+0xaa0>
   1c8a8:	03000793          	li	a5,48
   1c8ac:	0ef70663          	beq	a4,a5,1c998 <_vfiprintf_r+0xaa0>
   1c8b0:	ffe68693          	addi	a3,a3,-2
   1c8b4:	fefb0fa3          	sb	a5,-1(s6)
   1c8b8:	0f010793          	addi	a5,sp,240
   1c8bc:	40d78db3          	sub	s11,a5,a3
   1c8c0:	000d0b93          	mv	s7,s10
   1c8c4:	00068b13          	mv	s6,a3
   1c8c8:	965ff06f          	j	1c22c <_vfiprintf_r+0x334>
   1c8cc:	e00f70ef          	jal	ra,13ecc <__sinit>
   1c8d0:	e7cff06f          	j	1bf4c <_vfiprintf_r+0x54>
   1c8d4:	000b8893          	mv	a7,s7
   1c8d8:	00c12783          	lw	a5,12(sp)
   1c8dc:	00778713          	addi	a4,a5,7
   1c8e0:	ff877713          	andi	a4,a4,-8
   1c8e4:	00072d83          	lw	s11,0(a4)
   1c8e8:	00472e03          	lw	t3,4(a4)
   1c8ec:	00870793          	addi	a5,a4,8
   1c8f0:	00f12623          	sw	a5,12(sp)
   1c8f4:	bff8fd13          	andi	s10,a7,-1025
   1c8f8:	00000713          	li	a4,0
   1c8fc:	905ff06f          	j	1c200 <_vfiprintf_r+0x308>
   1c900:	000b8d13          	mv	s10,s7
   1c904:	00c12783          	lw	a5,12(sp)
   1c908:	00778793          	addi	a5,a5,7
   1c90c:	ff87f793          	andi	a5,a5,-8
   1c910:	0047a703          	lw	a4,4(a5)
   1c914:	00878693          	addi	a3,a5,8
   1c918:	00d12623          	sw	a3,12(sp)
   1c91c:	0007ad83          	lw	s11,0(a5)
   1c920:	00070e13          	mv	t3,a4
   1c924:	b89ff06f          	j	1c4ac <_vfiprintf_r+0x5b4>
   1c928:	000b8d13          	mv	s10,s7
   1c92c:	00c12783          	lw	a5,12(sp)
   1c930:	00778713          	addi	a4,a5,7
   1c934:	ff877713          	andi	a4,a4,-8
   1c938:	00870793          	addi	a5,a4,8
   1c93c:	00072d83          	lw	s11,0(a4)
   1c940:	00472e03          	lw	t3,4(a4)
   1c944:	00f12623          	sw	a5,12(sp)
   1c948:	00100713          	li	a4,1
   1c94c:	8b5ff06f          	j	1c200 <_vfiprintf_r+0x308>
   1c950:	00100693          	li	a3,1
   1c954:	7cd70a63          	beq	a4,a3,1d128 <_vfiprintf_r+0x1230>
   1c958:	00200693          	li	a3,2
   1c95c:	000b8d13          	mv	s10,s7
   1c960:	f0d716e3          	bne	a4,a3,1c86c <_vfiprintf_r+0x974>
   1c964:	01012683          	lw	a3,16(sp)
   1c968:	0f010b13          	addi	s6,sp,240
   1c96c:	00fdf793          	andi	a5,s11,15
   1c970:	00f687b3          	add	a5,a3,a5
   1c974:	0007c783          	lbu	a5,0(a5)
   1c978:	01ce1713          	slli	a4,t3,0x1c
   1c97c:	004ddd93          	srli	s11,s11,0x4
   1c980:	fffb0b13          	addi	s6,s6,-1
   1c984:	01b76db3          	or	s11,a4,s11
   1c988:	004e5e13          	srli	t3,t3,0x4
   1c98c:	00fb0023          	sb	a5,0(s6)
   1c990:	01cde7b3          	or	a5,s11,t3
   1c994:	fc079ce3          	bnez	a5,1c96c <_vfiprintf_r+0xa74>
   1c998:	0f010793          	addi	a5,sp,240
   1c99c:	41678db3          	sub	s11,a5,s6
   1c9a0:	000d0b93          	mv	s7,s10
   1c9a4:	889ff06f          	j	1c22c <_vfiprintf_r+0x334>
   1c9a8:	00100593          	li	a1,1
   1c9ac:	00000613          	li	a2,0
   1c9b0:	00048693          	mv	a3,s1
   1c9b4:	ba9ff06f          	j	1c55c <_vfiprintf_r+0x664>
   1c9b8:	41aa0e33          	sub	t3,s4,s10
   1c9bc:	9bc056e3          	blez	t3,1c368 <_vfiprintf_r+0x470>
   1c9c0:	01000593          	li	a1,16
   1c9c4:	7bc5da63          	bge	a1,t3,1d178 <_vfiprintf_r+0x1280>
   1c9c8:	00009e97          	auipc	t4,0x9
   1c9cc:	af0e8e93          	addi	t4,t4,-1296 # 254b8 <zeroes.4481>
   1c9d0:	01612a23          	sw	s6,20(sp)
   1c9d4:	03412423          	sw	s4,40(sp)
   1c9d8:	01000f13          	li	t5,16
   1c9dc:	00700f93          	li	t6,7
   1c9e0:	000e0a13          	mv	s4,t3
   1c9e4:	000e8b13          	mv	s6,t4
   1c9e8:	0180006f          	j	1ca00 <_vfiprintf_r+0xb08>
   1c9ec:	00270593          	addi	a1,a4,2
   1c9f0:	00840413          	addi	s0,s0,8
   1c9f4:	00068713          	mv	a4,a3
   1c9f8:	ff0a0a13          	addi	s4,s4,-16
   1c9fc:	054f5c63          	bge	t5,s4,1ca54 <_vfiprintf_r+0xb5c>
   1ca00:	01078793          	addi	a5,a5,16
   1ca04:	00170693          	addi	a3,a4,1
   1ca08:	01642023          	sw	s6,0(s0)
   1ca0c:	01e42223          	sw	t5,4(s0)
   1ca10:	04f12423          	sw	a5,72(sp)
   1ca14:	04d12223          	sw	a3,68(sp)
   1ca18:	fcdfdae3          	bge	t6,a3,1c9ec <_vfiprintf_r+0xaf4>
   1ca1c:	18078463          	beqz	a5,1cba4 <_vfiprintf_r+0xcac>
   1ca20:	04010613          	addi	a2,sp,64
   1ca24:	00090593          	mv	a1,s2
   1ca28:	00098513          	mv	a0,s3
   1ca2c:	bc4ff0ef          	jal	ra,1bdf0 <__sprint_r.part.0>
   1ca30:	f2051c63          	bnez	a0,1c168 <_vfiprintf_r+0x270>
   1ca34:	04412703          	lw	a4,68(sp)
   1ca38:	01000f13          	li	t5,16
   1ca3c:	ff0a0a13          	addi	s4,s4,-16
   1ca40:	04812783          	lw	a5,72(sp)
   1ca44:	00048413          	mv	s0,s1
   1ca48:	00170593          	addi	a1,a4,1
   1ca4c:	00700f93          	li	t6,7
   1ca50:	fb4f48e3          	blt	t5,s4,1ca00 <_vfiprintf_r+0xb08>
   1ca54:	000a0e13          	mv	t3,s4
   1ca58:	000b0e93          	mv	t4,s6
   1ca5c:	02812a03          	lw	s4,40(sp)
   1ca60:	01412b03          	lw	s6,20(sp)
   1ca64:	00840513          	addi	a0,s0,8
   1ca68:	01c787b3          	add	a5,a5,t3
   1ca6c:	01d42023          	sw	t4,0(s0)
   1ca70:	01c42223          	sw	t3,4(s0)
   1ca74:	04f12423          	sw	a5,72(sp)
   1ca78:	04b12223          	sw	a1,68(sp)
   1ca7c:	00700713          	li	a4,7
   1ca80:	38b75e63          	bge	a4,a1,1ce1c <_vfiprintf_r+0xf24>
   1ca84:	5c078063          	beqz	a5,1d044 <_vfiprintf_r+0x114c>
   1ca88:	04010613          	addi	a2,sp,64
   1ca8c:	00090593          	mv	a1,s2
   1ca90:	00098513          	mv	a0,s3
   1ca94:	b5cff0ef          	jal	ra,1bdf0 <__sprint_r.part.0>
   1ca98:	ec051863          	bnez	a0,1c168 <_vfiprintf_r+0x270>
   1ca9c:	04412703          	lw	a4,68(sp)
   1caa0:	41bc0c33          	sub	s8,s8,s11
   1caa4:	04812783          	lw	a5,72(sp)
   1caa8:	05410693          	addi	a3,sp,84
   1caac:	00170613          	addi	a2,a4,1
   1cab0:	00048413          	mv	s0,s1
   1cab4:	8b805ee3          	blez	s8,1c370 <_vfiprintf_r+0x478>
   1cab8:	01000593          	li	a1,16
   1cabc:	5785dc63          	bge	a1,s8,1d034 <_vfiprintf_r+0x113c>
   1cac0:	00009e97          	auipc	t4,0x9
   1cac4:	9f8e8e93          	addi	t4,t4,-1544 # 254b8 <zeroes.4481>
   1cac8:	01412a23          	sw	s4,20(sp)
   1cacc:	01000e13          	li	t3,16
   1cad0:	00700f13          	li	t5,7
   1cad4:	000e8a13          	mv	s4,t4
   1cad8:	0180006f          	j	1caf0 <_vfiprintf_r+0xbf8>
   1cadc:	00270613          	addi	a2,a4,2
   1cae0:	00840413          	addi	s0,s0,8
   1cae4:	00068713          	mv	a4,a3
   1cae8:	ff0c0c13          	addi	s8,s8,-16
   1caec:	058e5c63          	bge	t3,s8,1cb44 <_vfiprintf_r+0xc4c>
   1caf0:	01078793          	addi	a5,a5,16
   1caf4:	00170693          	addi	a3,a4,1
   1caf8:	01442023          	sw	s4,0(s0)
   1cafc:	01c42223          	sw	t3,4(s0)
   1cb00:	04f12423          	sw	a5,72(sp)
   1cb04:	04d12223          	sw	a3,68(sp)
   1cb08:	fcdf5ae3          	bge	t5,a3,1cadc <_vfiprintf_r+0xbe4>
   1cb0c:	06078863          	beqz	a5,1cb7c <_vfiprintf_r+0xc84>
   1cb10:	04010613          	addi	a2,sp,64
   1cb14:	00090593          	mv	a1,s2
   1cb18:	00098513          	mv	a0,s3
   1cb1c:	ad4ff0ef          	jal	ra,1bdf0 <__sprint_r.part.0>
   1cb20:	e4051463          	bnez	a0,1c168 <_vfiprintf_r+0x270>
   1cb24:	04412703          	lw	a4,68(sp)
   1cb28:	01000e13          	li	t3,16
   1cb2c:	ff0c0c13          	addi	s8,s8,-16
   1cb30:	04812783          	lw	a5,72(sp)
   1cb34:	00048413          	mv	s0,s1
   1cb38:	00170613          	addi	a2,a4,1
   1cb3c:	00700f13          	li	t5,7
   1cb40:	fb8e48e3          	blt	t3,s8,1caf0 <_vfiprintf_r+0xbf8>
   1cb44:	000a0e93          	mv	t4,s4
   1cb48:	01412a03          	lw	s4,20(sp)
   1cb4c:	00840593          	addi	a1,s0,8
   1cb50:	018787b3          	add	a5,a5,s8
   1cb54:	01d42023          	sw	t4,0(s0)
   1cb58:	01842223          	sw	s8,4(s0)
   1cb5c:	04f12423          	sw	a5,72(sp)
   1cb60:	04c12223          	sw	a2,68(sp)
   1cb64:	00700713          	li	a4,7
   1cb68:	1cc74c63          	blt	a4,a2,1cd40 <_vfiprintf_r+0xe48>
   1cb6c:	00160613          	addi	a2,a2,1
   1cb70:	00858693          	addi	a3,a1,8
   1cb74:	00058413          	mv	s0,a1
   1cb78:	ff8ff06f          	j	1c370 <_vfiprintf_r+0x478>
   1cb7c:	00100613          	li	a2,1
   1cb80:	00000713          	li	a4,0
   1cb84:	00048413          	mv	s0,s1
   1cb88:	f61ff06f          	j	1cae8 <_vfiprintf_r+0xbf0>
   1cb8c:	04010613          	addi	a2,sp,64
   1cb90:	00090593          	mv	a1,s2
   1cb94:	00098513          	mv	a0,s3
   1cb98:	a58ff0ef          	jal	ra,1bdf0 <__sprint_r.part.0>
   1cb9c:	82050ce3          	beqz	a0,1c3d4 <_vfiprintf_r+0x4dc>
   1cba0:	dc8ff06f          	j	1c168 <_vfiprintf_r+0x270>
   1cba4:	00100593          	li	a1,1
   1cba8:	00000713          	li	a4,0
   1cbac:	00048413          	mv	s0,s1
   1cbb0:	e49ff06f          	j	1c9f8 <_vfiprintf_r+0xb00>
   1cbb4:	22079863          	bnez	a5,1cde4 <_vfiprintf_r+0xeec>
   1cbb8:	03b14703          	lbu	a4,59(sp)
   1cbbc:	4e071263          	bnez	a4,1d0a0 <_vfiprintf_r+0x11a8>
   1cbc0:	200f8063          	beqz	t6,1cdc0 <_vfiprintf_r+0xec8>
   1cbc4:	03c10793          	addi	a5,sp,60
   1cbc8:	04f12623          	sw	a5,76(sp)
   1cbcc:	00200793          	li	a5,2
   1cbd0:	04f12823          	sw	a5,80(sp)
   1cbd4:	00100613          	li	a2,1
   1cbd8:	05410693          	addi	a3,sp,84
   1cbdc:	00060713          	mv	a4,a2
   1cbe0:	00068413          	mv	s0,a3
   1cbe4:	00160613          	addi	a2,a2,1
   1cbe8:	00868693          	addi	a3,a3,8
   1cbec:	f74ff06f          	j	1c360 <_vfiprintf_r+0x468>
   1cbf0:	fc0788e3          	beqz	a5,1cbc0 <_vfiprintf_r+0xcc8>
   1cbf4:	04010613          	addi	a2,sp,64
   1cbf8:	00090593          	mv	a1,s2
   1cbfc:	00098513          	mv	a0,s3
   1cc00:	03012423          	sw	a6,40(sp)
   1cc04:	01f12a23          	sw	t6,20(sp)
   1cc08:	9e8ff0ef          	jal	ra,1bdf0 <__sprint_r.part.0>
   1cc0c:	d4051e63          	bnez	a0,1c168 <_vfiprintf_r+0x270>
   1cc10:	04412703          	lw	a4,68(sp)
   1cc14:	04812783          	lw	a5,72(sp)
   1cc18:	05410693          	addi	a3,sp,84
   1cc1c:	00170613          	addi	a2,a4,1
   1cc20:	00048413          	mv	s0,s1
   1cc24:	02812803          	lw	a6,40(sp)
   1cc28:	01412f83          	lw	t6,20(sp)
   1cc2c:	ed8ff06f          	j	1c304 <_vfiprintf_r+0x40c>
   1cc30:	000b8d13          	mv	s10,s7
   1cc34:	c29ff06f          	j	1c85c <_vfiprintf_r+0x964>
   1cc38:	01000613          	li	a2,16
   1cc3c:	51c65863          	bge	a2,t3,1d14c <_vfiprintf_r+0x1254>
   1cc40:	00009e97          	auipc	t4,0x9
   1cc44:	868e8e93          	addi	t4,t4,-1944 # 254a8 <blanks.4480>
   1cc48:	00040613          	mv	a2,s0
   1cc4c:	03412623          	sw	s4,44(sp)
   1cc50:	01000293          	li	t0,16
   1cc54:	00700393          	li	t2,7
   1cc58:	01f12a23          	sw	t6,20(sp)
   1cc5c:	03012423          	sw	a6,40(sp)
   1cc60:	000e0413          	mv	s0,t3
   1cc64:	000e8a13          	mv	s4,t4
   1cc68:	01c0006f          	j	1cc84 <_vfiprintf_r+0xd8c>
   1cc6c:	00270593          	addi	a1,a4,2
   1cc70:	00860613          	addi	a2,a2,8
   1cc74:	00068713          	mv	a4,a3
   1cc78:	ff040413          	addi	s0,s0,-16
   1cc7c:	0482dc63          	bge	t0,s0,1ccd4 <_vfiprintf_r+0xddc>
   1cc80:	00170693          	addi	a3,a4,1
   1cc84:	01078793          	addi	a5,a5,16
   1cc88:	01462023          	sw	s4,0(a2)
   1cc8c:	00562223          	sw	t0,4(a2)
   1cc90:	04f12423          	sw	a5,72(sp)
   1cc94:	04d12223          	sw	a3,68(sp)
   1cc98:	fcd3dae3          	bge	t2,a3,1cc6c <_vfiprintf_r+0xd74>
   1cc9c:	06078e63          	beqz	a5,1cd18 <_vfiprintf_r+0xe20>
   1cca0:	04010613          	addi	a2,sp,64
   1cca4:	00090593          	mv	a1,s2
   1cca8:	00098513          	mv	a0,s3
   1ccac:	944ff0ef          	jal	ra,1bdf0 <__sprint_r.part.0>
   1ccb0:	ca051c63          	bnez	a0,1c168 <_vfiprintf_r+0x270>
   1ccb4:	04412703          	lw	a4,68(sp)
   1ccb8:	01000293          	li	t0,16
   1ccbc:	ff040413          	addi	s0,s0,-16
   1ccc0:	04812783          	lw	a5,72(sp)
   1ccc4:	00048613          	mv	a2,s1
   1ccc8:	00170593          	addi	a1,a4,1
   1cccc:	00700393          	li	t2,7
   1ccd0:	fa82c8e3          	blt	t0,s0,1cc80 <_vfiprintf_r+0xd88>
   1ccd4:	000a0e93          	mv	t4,s4
   1ccd8:	01412f83          	lw	t6,20(sp)
   1ccdc:	02812803          	lw	a6,40(sp)
   1cce0:	02c12a03          	lw	s4,44(sp)
   1cce4:	00040e13          	mv	t3,s0
   1cce8:	00060413          	mv	s0,a2
   1ccec:	01c787b3          	add	a5,a5,t3
   1ccf0:	01d42023          	sw	t4,0(s0)
   1ccf4:	01c42223          	sw	t3,4(s0)
   1ccf8:	04f12423          	sw	a5,72(sp)
   1ccfc:	04b12223          	sw	a1,68(sp)
   1cd00:	00700713          	li	a4,7
   1cd04:	eab748e3          	blt	a4,a1,1cbb4 <_vfiprintf_r+0xcbc>
   1cd08:	00840413          	addi	s0,s0,8
   1cd0c:	00158613          	addi	a2,a1,1
   1cd10:	00058713          	mv	a4,a1
   1cd14:	db0ff06f          	j	1c2c4 <_vfiprintf_r+0x3cc>
   1cd18:	00000713          	li	a4,0
   1cd1c:	00100593          	li	a1,1
   1cd20:	00048613          	mv	a2,s1
   1cd24:	f55ff06f          	j	1cc78 <_vfiprintf_r+0xd80>
   1cd28:	01aa5463          	bge	s4,s10,1cd30 <_vfiprintf_r+0xe38>
   1cd2c:	000d0a13          	mv	s4,s10
   1cd30:	00812783          	lw	a5,8(sp)
   1cd34:	014787b3          	add	a5,a5,s4
   1cd38:	00f12423          	sw	a5,8(sp)
   1cd3c:	e98ff06f          	j	1c3d4 <_vfiprintf_r+0x4dc>
   1cd40:	14078c63          	beqz	a5,1ce98 <_vfiprintf_r+0xfa0>
   1cd44:	04010613          	addi	a2,sp,64
   1cd48:	00090593          	mv	a1,s2
   1cd4c:	00098513          	mv	a0,s3
   1cd50:	8a0ff0ef          	jal	ra,1bdf0 <__sprint_r.part.0>
   1cd54:	c0051a63          	bnez	a0,1c168 <_vfiprintf_r+0x270>
   1cd58:	04412603          	lw	a2,68(sp)
   1cd5c:	04812783          	lw	a5,72(sp)
   1cd60:	05410693          	addi	a3,sp,84
   1cd64:	00160613          	addi	a2,a2,1
   1cd68:	00048413          	mv	s0,s1
   1cd6c:	e04ff06f          	j	1c370 <_vfiprintf_r+0x478>
   1cd70:	04012223          	sw	zero,68(sp)
   1cd74:	00048413          	mv	s0,s1
   1cd78:	ae8ff06f          	j	1c060 <_vfiprintf_r+0x168>
   1cd7c:	3a0c1663          	bnez	s8,1d128 <_vfiprintf_r+0x1230>
   1cd80:	00000c13          	li	s8,0
   1cd84:	00000d93          	li	s11,0
   1cd88:	0f010b13          	addi	s6,sp,240
   1cd8c:	ca0ff06f          	j	1c22c <_vfiprintf_r+0x334>
   1cd90:	200bf693          	andi	a3,s7,512
   1cd94:	38069463          	bnez	a3,1d11c <_vfiprintf_r+0x1224>
   1cd98:	00078d93          	mv	s11,a5
   1cd9c:	00000e13          	li	t3,0
   1cda0:	c48ff06f          	j	1c1e8 <_vfiprintf_r+0x2f0>
   1cda4:	05410693          	addi	a3,sp,84
   1cda8:	00100613          	li	a2,1
   1cdac:	00000713          	li	a4,0
   1cdb0:	00048413          	mv	s0,s1
   1cdb4:	dacff06f          	j	1c360 <_vfiprintf_r+0x468>
   1cdb8:	000c8d13          	mv	s10,s9
   1cdbc:	ab8ff06f          	j	1c074 <_vfiprintf_r+0x17c>
   1cdc0:	00000713          	li	a4,0
   1cdc4:	05410693          	addi	a3,sp,84
   1cdc8:	00100613          	li	a2,1
   1cdcc:	00048413          	mv	s0,s1
   1cdd0:	d90ff06f          	j	1c360 <_vfiprintf_r+0x468>
   1cdd4:	03000793          	li	a5,48
   1cdd8:	0ef107a3          	sb	a5,239(sp)
   1cddc:	0ef10b13          	addi	s6,sp,239
   1cde0:	c4cff06f          	j	1c22c <_vfiprintf_r+0x334>
   1cde4:	04010613          	addi	a2,sp,64
   1cde8:	00090593          	mv	a1,s2
   1cdec:	00098513          	mv	a0,s3
   1cdf0:	03012423          	sw	a6,40(sp)
   1cdf4:	01f12a23          	sw	t6,20(sp)
   1cdf8:	ff9fe0ef          	jal	ra,1bdf0 <__sprint_r.part.0>
   1cdfc:	b6051663          	bnez	a0,1c168 <_vfiprintf_r+0x270>
   1ce00:	04412703          	lw	a4,68(sp)
   1ce04:	04812783          	lw	a5,72(sp)
   1ce08:	00048413          	mv	s0,s1
   1ce0c:	00170613          	addi	a2,a4,1
   1ce10:	02812803          	lw	a6,40(sp)
   1ce14:	01412f83          	lw	t6,20(sp)
   1ce18:	cacff06f          	j	1c2c4 <_vfiprintf_r+0x3cc>
   1ce1c:	00158613          	addi	a2,a1,1
   1ce20:	00850693          	addi	a3,a0,8
   1ce24:	00058713          	mv	a4,a1
   1ce28:	00050413          	mv	s0,a0
   1ce2c:	d3cff06f          	j	1c368 <_vfiprintf_r+0x470>
   1ce30:	03000693          	li	a3,48
   1ce34:	002beb93          	ori	s7,s7,2
   1ce38:	02e10ea3          	sb	a4,61(sp)
   1ce3c:	02d10e23          	sb	a3,60(sp)
   1ce40:	bffbfd13          	andi	s10,s7,-1025
   1ce44:	00200713          	li	a4,2
   1ce48:	bb8ff06f          	j	1c200 <_vfiprintf_r+0x308>
   1ce4c:	01812783          	lw	a5,24(sp)
   1ce50:	000cc703          	lbu	a4,0(s9)
   1ce54:	a2078e63          	beqz	a5,1c090 <_vfiprintf_r+0x198>
   1ce58:	0007c783          	lbu	a5,0(a5)
   1ce5c:	a2078a63          	beqz	a5,1c090 <_vfiprintf_r+0x198>
   1ce60:	400beb93          	ori	s7,s7,1024
   1ce64:	a2cff06f          	j	1c090 <_vfiprintf_r+0x198>
   1ce68:	00812603          	lw	a2,8(sp)
   1ce6c:	0006a783          	lw	a5,0(a3)
   1ce70:	00e12623          	sw	a4,12(sp)
   1ce74:	41f65693          	srai	a3,a2,0x1f
   1ce78:	00c7a023          	sw	a2,0(a5)
   1ce7c:	00d7a223          	sw	a3,4(a5)
   1ce80:	964ff06f          	j	1bfe4 <_vfiprintf_r+0xec>
   1ce84:	000b0513          	mv	a0,s6
   1ce88:	b78fc0ef          	jal	ra,19200 <strlen>
   1ce8c:	00050d93          	mv	s11,a0
   1ce90:	00000c13          	li	s8,0
   1ce94:	b98ff06f          	j	1c22c <_vfiprintf_r+0x334>
   1ce98:	00100713          	li	a4,1
   1ce9c:	000d8793          	mv	a5,s11
   1cea0:	05612623          	sw	s6,76(sp)
   1cea4:	05b12823          	sw	s11,80(sp)
   1cea8:	05b12423          	sw	s11,72(sp)
   1ceac:	04e12223          	sw	a4,68(sp)
   1ceb0:	05410693          	addi	a3,sp,84
   1ceb4:	cf8ff06f          	j	1c3ac <_vfiprintf_r+0x4b4>
   1ceb8:	0f010b13          	addi	s6,sp,240
   1cebc:	400d7793          	andi	a5,s10,1024
   1cec0:	00812a23          	sw	s0,20(sp)
   1cec4:	03412423          	sw	s4,40(sp)
   1cec8:	03312623          	sw	s3,44(sp)
   1cecc:	00000b93          	li	s7,0
   1ced0:	000b0993          	mv	s3,s6
   1ced4:	00078413          	mv	s0,a5
   1ced8:	000c8b13          	mv	s6,s9
   1cedc:	000e0a13          	mv	s4,t3
   1cee0:	00090c93          	mv	s9,s2
   1cee4:	01812903          	lw	s2,24(sp)
   1cee8:	0240006f          	j	1cf0c <_vfiprintf_r+0x1014>
   1ceec:	00a00613          	li	a2,10
   1cef0:	00000693          	li	a3,0
   1cef4:	000d8513          	mv	a0,s11
   1cef8:	000a0593          	mv	a1,s4
   1cefc:	711020ef          	jal	ra,1fe0c <__udivdi3>
   1cf00:	220a0863          	beqz	s4,1d130 <_vfiprintf_r+0x1238>
   1cf04:	00050d93          	mv	s11,a0
   1cf08:	00058a13          	mv	s4,a1
   1cf0c:	00a00613          	li	a2,10
   1cf10:	00000693          	li	a3,0
   1cf14:	000d8513          	mv	a0,s11
   1cf18:	000a0593          	mv	a1,s4
   1cf1c:	4c4030ef          	jal	ra,203e0 <__umoddi3>
   1cf20:	03050513          	addi	a0,a0,48
   1cf24:	fea98fa3          	sb	a0,-1(s3)
   1cf28:	001b8b93          	addi	s7,s7,1
   1cf2c:	fff98993          	addi	s3,s3,-1
   1cf30:	fa040ee3          	beqz	s0,1ceec <_vfiprintf_r+0xff4>
   1cf34:	00094703          	lbu	a4,0(s2)
   1cf38:	fb771ae3          	bne	a4,s7,1ceec <_vfiprintf_r+0xff4>
   1cf3c:	0ff00793          	li	a5,255
   1cf40:	fafb86e3          	beq	s7,a5,1ceec <_vfiprintf_r+0xff4>
   1cf44:	100a1a63          	bnez	s4,1d058 <_vfiprintf_r+0x1160>
   1cf48:	00900793          	li	a5,9
   1cf4c:	11b7e663          	bltu	a5,s11,1d058 <_vfiprintf_r+0x1160>
   1cf50:	01212c23          	sw	s2,24(sp)
   1cf54:	0f010793          	addi	a5,sp,240
   1cf58:	000c8913          	mv	s2,s9
   1cf5c:	000b0c93          	mv	s9,s6
   1cf60:	00098b13          	mv	s6,s3
   1cf64:	01412403          	lw	s0,20(sp)
   1cf68:	02812a03          	lw	s4,40(sp)
   1cf6c:	02c12983          	lw	s3,44(sp)
   1cf70:	41678db3          	sub	s11,a5,s6
   1cf74:	000d0b93          	mv	s7,s10
   1cf78:	ab4ff06f          	j	1c22c <_vfiprintf_r+0x334>
   1cf7c:	001cc703          	lbu	a4,1(s9)
   1cf80:	200beb93          	ori	s7,s7,512
   1cf84:	001c8c93          	addi	s9,s9,1
   1cf88:	908ff06f          	j	1c090 <_vfiprintf_r+0x198>
   1cf8c:	001cc703          	lbu	a4,1(s9)
   1cf90:	020beb93          	ori	s7,s7,32
   1cf94:	001c8c93          	addi	s9,s9,1
   1cf98:	8f8ff06f          	j	1c090 <_vfiprintf_r+0x198>
   1cf9c:	00c12783          	lw	a5,12(sp)
   1cfa0:	0007a783          	lw	a5,0(a5)
   1cfa4:	00e12623          	sw	a4,12(sp)
   1cfa8:	00812703          	lw	a4,8(sp)
   1cfac:	00e7a023          	sw	a4,0(a5)
   1cfb0:	834ff06f          	j	1bfe4 <_vfiprintf_r+0xec>
   1cfb4:	00600793          	li	a5,6
   1cfb8:	000c0d93          	mv	s11,s8
   1cfbc:	0d87ee63          	bltu	a5,s8,1d098 <_vfiprintf_r+0x11a0>
   1cfc0:	000d8d13          	mv	s10,s11
   1cfc4:	00e12623          	sw	a4,12(sp)
   1cfc8:	00008b17          	auipc	s6,0x8
   1cfcc:	e24b0b13          	addi	s6,s6,-476 # 24dec <zeroes.4505+0x48>
   1cfd0:	ac4ff06f          	j	1c294 <_vfiprintf_r+0x39c>
   1cfd4:	200bf693          	andi	a3,s7,512
   1cfd8:	12068663          	beqz	a3,1d104 <_vfiprintf_r+0x120c>
   1cfdc:	00e12623          	sw	a4,12(sp)
   1cfe0:	0ff7fd93          	andi	s11,a5,255
   1cfe4:	00000e13          	li	t3,0
   1cfe8:	000b8d13          	mv	s10,s7
   1cfec:	00100713          	li	a4,1
   1cff0:	a10ff06f          	j	1c200 <_vfiprintf_r+0x308>
   1cff4:	200bf693          	andi	a3,s7,512
   1cff8:	0e068c63          	beqz	a3,1d0f0 <_vfiprintf_r+0x11f8>
   1cffc:	0ff7fd93          	andi	s11,a5,255
   1d000:	00000e13          	li	t3,0
   1d004:	000b8893          	mv	a7,s7
   1d008:	00e12623          	sw	a4,12(sp)
   1d00c:	8e9ff06f          	j	1c8f4 <_vfiprintf_r+0x9fc>
   1d010:	200bf793          	andi	a5,s7,512
   1d014:	0c078063          	beqz	a5,1d0d4 <_vfiprintf_r+0x11dc>
   1d018:	00c12783          	lw	a5,12(sp)
   1d01c:	000b8d13          	mv	s10,s7
   1d020:	00e12623          	sw	a4,12(sp)
   1d024:	00078d83          	lb	s11,0(a5)
   1d028:	41fdde13          	srai	t3,s11,0x1f
   1d02c:	000e0713          	mv	a4,t3
   1d030:	c7cff06f          	j	1c4ac <_vfiprintf_r+0x5b4>
   1d034:	00068593          	mv	a1,a3
   1d038:	00008e97          	auipc	t4,0x8
   1d03c:	480e8e93          	addi	t4,t4,1152 # 254b8 <zeroes.4481>
   1d040:	b11ff06f          	j	1cb50 <_vfiprintf_r+0xc58>
   1d044:	05410693          	addi	a3,sp,84
   1d048:	00100613          	li	a2,1
   1d04c:	00000713          	li	a4,0
   1d050:	00048413          	mv	s0,s1
   1d054:	b14ff06f          	j	1c368 <_vfiprintf_r+0x470>
   1d058:	02012783          	lw	a5,32(sp)
   1d05c:	01c12583          	lw	a1,28(sp)
   1d060:	00000b93          	li	s7,0
   1d064:	40f989b3          	sub	s3,s3,a5
   1d068:	00078613          	mv	a2,a5
   1d06c:	00098513          	mv	a0,s3
   1d070:	a1cfc0ef          	jal	ra,1928c <strncpy>
   1d074:	00194703          	lbu	a4,1(s2)
   1d078:	00a00613          	li	a2,10
   1d07c:	00000693          	li	a3,0
   1d080:	00e03733          	snez	a4,a4
   1d084:	000d8513          	mv	a0,s11
   1d088:	000a0593          	mv	a1,s4
   1d08c:	00e90933          	add	s2,s2,a4
   1d090:	57d020ef          	jal	ra,1fe0c <__udivdi3>
   1d094:	e71ff06f          	j	1cf04 <_vfiprintf_r+0x100c>
   1d098:	00600d93          	li	s11,6
   1d09c:	f25ff06f          	j	1cfc0 <_vfiprintf_r+0x10c8>
   1d0a0:	03b10793          	addi	a5,sp,59
   1d0a4:	04f12623          	sw	a5,76(sp)
   1d0a8:	00100793          	li	a5,1
   1d0ac:	04f12823          	sw	a5,80(sp)
   1d0b0:	00100613          	li	a2,1
   1d0b4:	05410693          	addi	a3,sp,84
   1d0b8:	a3cff06f          	j	1c2f4 <_vfiprintf_r+0x3fc>
   1d0bc:	00c12783          	lw	a5,12(sp)
   1d0c0:	00e12623          	sw	a4,12(sp)
   1d0c4:	00812703          	lw	a4,8(sp)
   1d0c8:	0007a783          	lw	a5,0(a5)
   1d0cc:	00e79023          	sh	a4,0(a5)
   1d0d0:	f15fe06f          	j	1bfe4 <_vfiprintf_r+0xec>
   1d0d4:	00c12783          	lw	a5,12(sp)
   1d0d8:	000b8d13          	mv	s10,s7
   1d0dc:	00e12623          	sw	a4,12(sp)
   1d0e0:	0007ad83          	lw	s11,0(a5)
   1d0e4:	41fdde13          	srai	t3,s11,0x1f
   1d0e8:	000e0713          	mv	a4,t3
   1d0ec:	bc0ff06f          	j	1c4ac <_vfiprintf_r+0x5b4>
   1d0f0:	00078d93          	mv	s11,a5
   1d0f4:	00000e13          	li	t3,0
   1d0f8:	000b8893          	mv	a7,s7
   1d0fc:	00e12623          	sw	a4,12(sp)
   1d100:	ff4ff06f          	j	1c8f4 <_vfiprintf_r+0x9fc>
   1d104:	00e12623          	sw	a4,12(sp)
   1d108:	00078d93          	mv	s11,a5
   1d10c:	00000e13          	li	t3,0
   1d110:	000b8d13          	mv	s10,s7
   1d114:	00100713          	li	a4,1
   1d118:	8e8ff06f          	j	1c200 <_vfiprintf_r+0x308>
   1d11c:	0ff7fd93          	andi	s11,a5,255
   1d120:	00000e13          	li	t3,0
   1d124:	8c4ff06f          	j	1c1e8 <_vfiprintf_r+0x2f0>
   1d128:	000b8d13          	mv	s10,s7
   1d12c:	ba8ff06f          	j	1c4d4 <_vfiprintf_r+0x5dc>
   1d130:	00900793          	li	a5,9
   1d134:	ddb7e8e3          	bltu	a5,s11,1cf04 <_vfiprintf_r+0x100c>
   1d138:	e19ff06f          	j	1cf50 <_vfiprintf_r+0x1058>
   1d13c:	000c0d93          	mv	s11,s8
   1d140:	00e12623          	sw	a4,12(sp)
   1d144:	00000c13          	li	s8,0
   1d148:	8e4ff06f          	j	1c22c <_vfiprintf_r+0x334>
   1d14c:	00068593          	mv	a1,a3
   1d150:	00008e97          	auipc	t4,0x8
   1d154:	358e8e93          	addi	t4,t4,856 # 254a8 <blanks.4480>
   1d158:	b95ff06f          	j	1ccec <_vfiprintf_r+0xdf4>
   1d15c:	00160593          	addi	a1,a2,1
   1d160:	00008e97          	auipc	t4,0x8
   1d164:	348e8e93          	addi	t4,t4,840 # 254a8 <blanks.4480>
   1d168:	c4cff06f          	j	1c5b4 <_vfiprintf_r+0x6bc>
   1d16c:	fff00793          	li	a5,-1
   1d170:	00f12423          	sw	a5,8(sp)
   1d174:	804ff06f          	j	1c178 <_vfiprintf_r+0x280>
   1d178:	00068513          	mv	a0,a3
   1d17c:	00060593          	mv	a1,a2
   1d180:	00008e97          	auipc	t4,0x8
   1d184:	338e8e93          	addi	t4,t4,824 # 254b8 <zeroes.4481>
   1d188:	8e1ff06f          	j	1ca68 <_vfiprintf_r+0xb70>
   1d18c:	00c12703          	lw	a4,12(sp)
   1d190:	00072c03          	lw	s8,0(a4)
   1d194:	00470693          	addi	a3,a4,4
   1d198:	000c5463          	bgez	s8,1d1a0 <_vfiprintf_r+0x12a8>
   1d19c:	fff00c13          	li	s8,-1
   1d1a0:	001cc703          	lbu	a4,1(s9)
   1d1a4:	00d12623          	sw	a3,12(sp)
   1d1a8:	00078c93          	mv	s9,a5
   1d1ac:	ee5fe06f          	j	1c090 <_vfiprintf_r+0x198>
   1d1b0:	000b8d13          	mv	s10,s7
   1d1b4:	a40ff06f          	j	1c3f4 <_vfiprintf_r+0x4fc>
   1d1b8:	000b8893          	mv	a7,s7
   1d1bc:	ab4ff06f          	j	1c470 <_vfiprintf_r+0x578>
   1d1c0:	000b8d13          	mv	s10,s7
   1d1c4:	ad4ff06f          	j	1c498 <_vfiprintf_r+0x5a0>

0001d1c8 <vfiprintf>:
   1d1c8:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   1d1cc:	00060693          	mv	a3,a2
   1d1d0:	00058613          	mv	a2,a1
   1d1d4:	00050593          	mv	a1,a0
   1d1d8:	0007a503          	lw	a0,0(a5)
   1d1dc:	d1dfe06f          	j	1bef8 <_vfiprintf_r>

0001d1e0 <__sbprintf>:
   1d1e0:	00c5d783          	lhu	a5,12(a1)
   1d1e4:	0645ae03          	lw	t3,100(a1)
   1d1e8:	00e5d303          	lhu	t1,14(a1)
   1d1ec:	01c5a883          	lw	a7,28(a1)
   1d1f0:	0245a803          	lw	a6,36(a1)
   1d1f4:	b8010113          	addi	sp,sp,-1152
   1d1f8:	ffd7f793          	andi	a5,a5,-3
   1d1fc:	40000713          	li	a4,1024
   1d200:	46812c23          	sw	s0,1144(sp)
   1d204:	00f11a23          	sh	a5,20(sp)
   1d208:	00058413          	mv	s0,a1
   1d20c:	07010793          	addi	a5,sp,112
   1d210:	00810593          	addi	a1,sp,8
   1d214:	46912a23          	sw	s1,1140(sp)
   1d218:	47212823          	sw	s2,1136(sp)
   1d21c:	46112e23          	sw	ra,1148(sp)
   1d220:	00050913          	mv	s2,a0
   1d224:	07c12623          	sw	t3,108(sp)
   1d228:	00611b23          	sh	t1,22(sp)
   1d22c:	03112223          	sw	a7,36(sp)
   1d230:	03012623          	sw	a6,44(sp)
   1d234:	00f12423          	sw	a5,8(sp)
   1d238:	00f12c23          	sw	a5,24(sp)
   1d23c:	00e12823          	sw	a4,16(sp)
   1d240:	00e12e23          	sw	a4,28(sp)
   1d244:	02012023          	sw	zero,32(sp)
   1d248:	cb1fe0ef          	jal	ra,1bef8 <_vfiprintf_r>
   1d24c:	00050493          	mv	s1,a0
   1d250:	02055c63          	bgez	a0,1d288 <__sbprintf+0xa8>
   1d254:	01415783          	lhu	a5,20(sp)
   1d258:	0407f793          	andi	a5,a5,64
   1d25c:	00078863          	beqz	a5,1d26c <__sbprintf+0x8c>
   1d260:	00c45783          	lhu	a5,12(s0)
   1d264:	0407e793          	ori	a5,a5,64
   1d268:	00f41623          	sh	a5,12(s0)
   1d26c:	47c12083          	lw	ra,1148(sp)
   1d270:	47812403          	lw	s0,1144(sp)
   1d274:	00048513          	mv	a0,s1
   1d278:	47012903          	lw	s2,1136(sp)
   1d27c:	47412483          	lw	s1,1140(sp)
   1d280:	48010113          	addi	sp,sp,1152
   1d284:	00008067          	ret
   1d288:	00810593          	addi	a1,sp,8
   1d28c:	00090513          	mv	a0,s2
   1d290:	885f60ef          	jal	ra,13b14 <_fflush_r>
   1d294:	fc0500e3          	beqz	a0,1d254 <__sbprintf+0x74>
   1d298:	fff00493          	li	s1,-1
   1d29c:	fb9ff06f          	j	1d254 <__sbprintf+0x74>

0001d2a0 <_wctomb_r>:
   1d2a0:	c2818793          	addi	a5,gp,-984 # 264e8 <__global_locale>
   1d2a4:	0e07a303          	lw	t1,224(a5)
   1d2a8:	00030067          	jr	t1

0001d2ac <__ascii_wctomb>:
   1d2ac:	02058463          	beqz	a1,1d2d4 <__ascii_wctomb+0x28>
   1d2b0:	0ff00793          	li	a5,255
   1d2b4:	00c7e863          	bltu	a5,a2,1d2c4 <__ascii_wctomb+0x18>
   1d2b8:	00c58023          	sb	a2,0(a1)
   1d2bc:	00100513          	li	a0,1
   1d2c0:	00008067          	ret
   1d2c4:	08a00793          	li	a5,138
   1d2c8:	00f52023          	sw	a5,0(a0)
   1d2cc:	fff00513          	li	a0,-1
   1d2d0:	00008067          	ret
   1d2d4:	00000513          	li	a0,0
   1d2d8:	00008067          	ret

0001d2dc <_write_r>:
   1d2dc:	00058793          	mv	a5,a1
   1d2e0:	ff010113          	addi	sp,sp,-16
   1d2e4:	00812423          	sw	s0,8(sp)
   1d2e8:	00060593          	mv	a1,a2
   1d2ec:	00050413          	mv	s0,a0
   1d2f0:	00068613          	mv	a2,a3
   1d2f4:	00078513          	mv	a0,a5
   1d2f8:	00112623          	sw	ra,12(sp)
   1d2fc:	2201a223          	sw	zero,548(gp) # 26ae4 <errno>
   1d300:	20d020ef          	jal	ra,1fd0c <_write>
   1d304:	fff00793          	li	a5,-1
   1d308:	00f50a63          	beq	a0,a5,1d31c <_write_r+0x40>
   1d30c:	00c12083          	lw	ra,12(sp)
   1d310:	00812403          	lw	s0,8(sp)
   1d314:	01010113          	addi	sp,sp,16
   1d318:	00008067          	ret
   1d31c:	22418793          	addi	a5,gp,548 # 26ae4 <errno>
   1d320:	0007a783          	lw	a5,0(a5)
   1d324:	fe0784e3          	beqz	a5,1d30c <_write_r+0x30>
   1d328:	00f42023          	sw	a5,0(s0)
   1d32c:	00c12083          	lw	ra,12(sp)
   1d330:	00812403          	lw	s0,8(sp)
   1d334:	01010113          	addi	sp,sp,16
   1d338:	00008067          	ret

0001d33c <_calloc_r>:
   1d33c:	ff010113          	addi	sp,sp,-16
   1d340:	00058793          	mv	a5,a1
   1d344:	00812423          	sw	s0,8(sp)
   1d348:	00060593          	mv	a1,a2
   1d34c:	00050413          	mv	s0,a0
   1d350:	00078513          	mv	a0,a5
   1d354:	00112623          	sw	ra,12(sp)
   1d358:	804f30ef          	jal	ra,1035c <__mulsi3>
   1d35c:	00050593          	mv	a1,a0
   1d360:	00040513          	mv	a0,s0
   1d364:	f55f90ef          	jal	ra,172b8 <_malloc_r>
   1d368:	00050413          	mv	s0,a0
   1d36c:	02050863          	beqz	a0,1d39c <_calloc_r+0x60>
   1d370:	ffc52603          	lw	a2,-4(a0)
   1d374:	02400713          	li	a4,36
   1d378:	ffc67613          	andi	a2,a2,-4
   1d37c:	ffc60613          	addi	a2,a2,-4
   1d380:	06c76063          	bltu	a4,a2,1d3e0 <_calloc_r+0xa4>
   1d384:	01300693          	li	a3,19
   1d388:	00050793          	mv	a5,a0
   1d38c:	02c6e263          	bltu	a3,a2,1d3b0 <_calloc_r+0x74>
   1d390:	0007a023          	sw	zero,0(a5)
   1d394:	0007a223          	sw	zero,4(a5)
   1d398:	0007a423          	sw	zero,8(a5)
   1d39c:	00040513          	mv	a0,s0
   1d3a0:	00c12083          	lw	ra,12(sp)
   1d3a4:	00812403          	lw	s0,8(sp)
   1d3a8:	01010113          	addi	sp,sp,16
   1d3ac:	00008067          	ret
   1d3b0:	00052023          	sw	zero,0(a0)
   1d3b4:	00052223          	sw	zero,4(a0)
   1d3b8:	01b00793          	li	a5,27
   1d3bc:	04c7f063          	bgeu	a5,a2,1d3fc <_calloc_r+0xc0>
   1d3c0:	00052423          	sw	zero,8(a0)
   1d3c4:	00052623          	sw	zero,12(a0)
   1d3c8:	01050793          	addi	a5,a0,16
   1d3cc:	fce612e3          	bne	a2,a4,1d390 <_calloc_r+0x54>
   1d3d0:	00052823          	sw	zero,16(a0)
   1d3d4:	01850793          	addi	a5,a0,24
   1d3d8:	00052a23          	sw	zero,20(a0)
   1d3dc:	fb5ff06f          	j	1d390 <_calloc_r+0x54>
   1d3e0:	00000593          	li	a1,0
   1d3e4:	98cf30ef          	jal	ra,10570 <memset>
   1d3e8:	00040513          	mv	a0,s0
   1d3ec:	00c12083          	lw	ra,12(sp)
   1d3f0:	00812403          	lw	s0,8(sp)
   1d3f4:	01010113          	addi	sp,sp,16
   1d3f8:	00008067          	ret
   1d3fc:	00850793          	addi	a5,a0,8
   1d400:	f91ff06f          	j	1d390 <_calloc_r+0x54>

0001d404 <_close_r>:
   1d404:	ff010113          	addi	sp,sp,-16
   1d408:	00812423          	sw	s0,8(sp)
   1d40c:	00050413          	mv	s0,a0
   1d410:	00058513          	mv	a0,a1
   1d414:	2201a223          	sw	zero,548(gp) # 26ae4 <errno>
   1d418:	00112623          	sw	ra,12(sp)
   1d41c:	664020ef          	jal	ra,1fa80 <_close>
   1d420:	fff00793          	li	a5,-1
   1d424:	00f50a63          	beq	a0,a5,1d438 <_close_r+0x34>
   1d428:	00c12083          	lw	ra,12(sp)
   1d42c:	00812403          	lw	s0,8(sp)
   1d430:	01010113          	addi	sp,sp,16
   1d434:	00008067          	ret
   1d438:	22418793          	addi	a5,gp,548 # 26ae4 <errno>
   1d43c:	0007a783          	lw	a5,0(a5)
   1d440:	fe0784e3          	beqz	a5,1d428 <_close_r+0x24>
   1d444:	00f42023          	sw	a5,0(s0)
   1d448:	00c12083          	lw	ra,12(sp)
   1d44c:	00812403          	lw	s0,8(sp)
   1d450:	01010113          	addi	sp,sp,16
   1d454:	00008067          	ret

0001d458 <_fclose_r>:
   1d458:	ff010113          	addi	sp,sp,-16
   1d45c:	00112623          	sw	ra,12(sp)
   1d460:	00812423          	sw	s0,8(sp)
   1d464:	00912223          	sw	s1,4(sp)
   1d468:	01212023          	sw	s2,0(sp)
   1d46c:	02058063          	beqz	a1,1d48c <_fclose_r+0x34>
   1d470:	00050493          	mv	s1,a0
   1d474:	00058413          	mv	s0,a1
   1d478:	00050663          	beqz	a0,1d484 <_fclose_r+0x2c>
   1d47c:	03852783          	lw	a5,56(a0)
   1d480:	0a078c63          	beqz	a5,1d538 <_fclose_r+0xe0>
   1d484:	00c41783          	lh	a5,12(s0)
   1d488:	02079263          	bnez	a5,1d4ac <_fclose_r+0x54>
   1d48c:	00c12083          	lw	ra,12(sp)
   1d490:	00812403          	lw	s0,8(sp)
   1d494:	00000913          	li	s2,0
   1d498:	00090513          	mv	a0,s2
   1d49c:	00412483          	lw	s1,4(sp)
   1d4a0:	00012903          	lw	s2,0(sp)
   1d4a4:	01010113          	addi	sp,sp,16
   1d4a8:	00008067          	ret
   1d4ac:	00040593          	mv	a1,s0
   1d4b0:	00048513          	mv	a0,s1
   1d4b4:	c04f60ef          	jal	ra,138b8 <__sflush_r>
   1d4b8:	02c42783          	lw	a5,44(s0)
   1d4bc:	00050913          	mv	s2,a0
   1d4c0:	00078a63          	beqz	a5,1d4d4 <_fclose_r+0x7c>
   1d4c4:	01c42583          	lw	a1,28(s0)
   1d4c8:	00048513          	mv	a0,s1
   1d4cc:	000780e7          	jalr	a5
   1d4d0:	06054c63          	bltz	a0,1d548 <_fclose_r+0xf0>
   1d4d4:	00c45783          	lhu	a5,12(s0)
   1d4d8:	0807f793          	andi	a5,a5,128
   1d4dc:	06079e63          	bnez	a5,1d558 <_fclose_r+0x100>
   1d4e0:	03042583          	lw	a1,48(s0)
   1d4e4:	00058c63          	beqz	a1,1d4fc <_fclose_r+0xa4>
   1d4e8:	04040793          	addi	a5,s0,64
   1d4ec:	00f58663          	beq	a1,a5,1d4f8 <_fclose_r+0xa0>
   1d4f0:	00048513          	mv	a0,s1
   1d4f4:	b49f60ef          	jal	ra,1403c <_free_r>
   1d4f8:	02042823          	sw	zero,48(s0)
   1d4fc:	04442583          	lw	a1,68(s0)
   1d500:	00058863          	beqz	a1,1d510 <_fclose_r+0xb8>
   1d504:	00048513          	mv	a0,s1
   1d508:	b35f60ef          	jal	ra,1403c <_free_r>
   1d50c:	04042223          	sw	zero,68(s0)
   1d510:	9cdf60ef          	jal	ra,13edc <__sfp_lock_acquire>
   1d514:	00041623          	sh	zero,12(s0)
   1d518:	9c9f60ef          	jal	ra,13ee0 <__sfp_lock_release>
   1d51c:	00c12083          	lw	ra,12(sp)
   1d520:	00812403          	lw	s0,8(sp)
   1d524:	00090513          	mv	a0,s2
   1d528:	00412483          	lw	s1,4(sp)
   1d52c:	00012903          	lw	s2,0(sp)
   1d530:	01010113          	addi	sp,sp,16
   1d534:	00008067          	ret
   1d538:	995f60ef          	jal	ra,13ecc <__sinit>
   1d53c:	00c41783          	lh	a5,12(s0)
   1d540:	f40786e3          	beqz	a5,1d48c <_fclose_r+0x34>
   1d544:	f69ff06f          	j	1d4ac <_fclose_r+0x54>
   1d548:	00c45783          	lhu	a5,12(s0)
   1d54c:	fff00913          	li	s2,-1
   1d550:	0807f793          	andi	a5,a5,128
   1d554:	f80786e3          	beqz	a5,1d4e0 <_fclose_r+0x88>
   1d558:	01042583          	lw	a1,16(s0)
   1d55c:	00048513          	mv	a0,s1
   1d560:	addf60ef          	jal	ra,1403c <_free_r>
   1d564:	f7dff06f          	j	1d4e0 <_fclose_r+0x88>

0001d568 <fclose>:
   1d568:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   1d56c:	00050593          	mv	a1,a0
   1d570:	0007a503          	lw	a0,0(a5)
   1d574:	ee5ff06f          	j	1d458 <_fclose_r>

0001d578 <__fputwc>:
   1d578:	fd010113          	addi	sp,sp,-48
   1d57c:	02812423          	sw	s0,40(sp)
   1d580:	01312e23          	sw	s3,28(sp)
   1d584:	01512a23          	sw	s5,20(sp)
   1d588:	02112623          	sw	ra,44(sp)
   1d58c:	02912223          	sw	s1,36(sp)
   1d590:	03212023          	sw	s2,32(sp)
   1d594:	01412c23          	sw	s4,24(sp)
   1d598:	01612823          	sw	s6,16(sp)
   1d59c:	00050993          	mv	s3,a0
   1d5a0:	00058a93          	mv	s5,a1
   1d5a4:	00060413          	mv	s0,a2
   1d5a8:	b05f90ef          	jal	ra,170ac <__locale_mb_cur_max>
   1d5ac:	00100793          	li	a5,1
   1d5b0:	02f51063          	bne	a0,a5,1d5d0 <__fputwc+0x58>
   1d5b4:	fffa8793          	addi	a5,s5,-1
   1d5b8:	0fe00713          	li	a4,254
   1d5bc:	00f76a63          	bltu	a4,a5,1d5d0 <__fputwc+0x58>
   1d5c0:	0ffaf713          	andi	a4,s5,255
   1d5c4:	00e10623          	sb	a4,12(sp)
   1d5c8:	00100913          	li	s2,1
   1d5cc:	02c0006f          	j	1d5f8 <__fputwc+0x80>
   1d5d0:	05c40693          	addi	a3,s0,92
   1d5d4:	000a8613          	mv	a2,s5
   1d5d8:	00c10593          	addi	a1,sp,12
   1d5dc:	00098513          	mv	a0,s3
   1d5e0:	398020ef          	jal	ra,1f978 <_wcrtomb_r>
   1d5e4:	fff00793          	li	a5,-1
   1d5e8:	00050913          	mv	s2,a0
   1d5ec:	0af50463          	beq	a0,a5,1d694 <__fputwc+0x11c>
   1d5f0:	08050e63          	beqz	a0,1d68c <__fputwc+0x114>
   1d5f4:	00c14703          	lbu	a4,12(sp)
   1d5f8:	00000493          	li	s1,0
   1d5fc:	fff00a13          	li	s4,-1
   1d600:	00a00b13          	li	s6,10
   1d604:	0280006f          	j	1d62c <__fputwc+0xb4>
   1d608:	00042783          	lw	a5,0(s0)
   1d60c:	00178693          	addi	a3,a5,1
   1d610:	00d42023          	sw	a3,0(s0)
   1d614:	00e78023          	sb	a4,0(a5)
   1d618:	00148493          	addi	s1,s1,1
   1d61c:	00c10793          	addi	a5,sp,12
   1d620:	009787b3          	add	a5,a5,s1
   1d624:	0724f463          	bgeu	s1,s2,1d68c <__fputwc+0x114>
   1d628:	0007c703          	lbu	a4,0(a5)
   1d62c:	00842783          	lw	a5,8(s0)
   1d630:	fff78793          	addi	a5,a5,-1
   1d634:	00f42423          	sw	a5,8(s0)
   1d638:	fc07d8e3          	bgez	a5,1d608 <__fputwc+0x90>
   1d63c:	01842683          	lw	a3,24(s0)
   1d640:	00070593          	mv	a1,a4
   1d644:	00040613          	mv	a2,s0
   1d648:	00098513          	mv	a0,s3
   1d64c:	00d7c463          	blt	a5,a3,1d654 <__fputwc+0xdc>
   1d650:	fb671ce3          	bne	a4,s6,1d608 <__fputwc+0x90>
   1d654:	dadf50ef          	jal	ra,13400 <__swbuf_r>
   1d658:	fd4510e3          	bne	a0,s4,1d618 <__fputwc+0xa0>
   1d65c:	fff00913          	li	s2,-1
   1d660:	02c12083          	lw	ra,44(sp)
   1d664:	02812403          	lw	s0,40(sp)
   1d668:	00090513          	mv	a0,s2
   1d66c:	02412483          	lw	s1,36(sp)
   1d670:	02012903          	lw	s2,32(sp)
   1d674:	01c12983          	lw	s3,28(sp)
   1d678:	01812a03          	lw	s4,24(sp)
   1d67c:	01412a83          	lw	s5,20(sp)
   1d680:	01012b03          	lw	s6,16(sp)
   1d684:	03010113          	addi	sp,sp,48
   1d688:	00008067          	ret
   1d68c:	000a8913          	mv	s2,s5
   1d690:	fd1ff06f          	j	1d660 <__fputwc+0xe8>
   1d694:	00c45783          	lhu	a5,12(s0)
   1d698:	0407e793          	ori	a5,a5,64
   1d69c:	00f41623          	sh	a5,12(s0)
   1d6a0:	fc1ff06f          	j	1d660 <__fputwc+0xe8>

0001d6a4 <_fputwc_r>:
   1d6a4:	00c61783          	lh	a5,12(a2)
   1d6a8:	01279713          	slli	a4,a5,0x12
   1d6ac:	02074063          	bltz	a4,1d6cc <_fputwc_r+0x28>
   1d6b0:	06462703          	lw	a4,100(a2)
   1d6b4:	000026b7          	lui	a3,0x2
   1d6b8:	00d7e7b3          	or	a5,a5,a3
   1d6bc:	000026b7          	lui	a3,0x2
   1d6c0:	00d76733          	or	a4,a4,a3
   1d6c4:	00f61623          	sh	a5,12(a2)
   1d6c8:	06e62223          	sw	a4,100(a2)
   1d6cc:	eadff06f          	j	1d578 <__fputwc>

0001d6d0 <fputwc>:
   1d6d0:	fe010113          	addi	sp,sp,-32
   1d6d4:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   1d6d8:	00812c23          	sw	s0,24(sp)
   1d6dc:	0007a403          	lw	s0,0(a5)
   1d6e0:	00912a23          	sw	s1,20(sp)
   1d6e4:	00112e23          	sw	ra,28(sp)
   1d6e8:	00050493          	mv	s1,a0
   1d6ec:	00058613          	mv	a2,a1
   1d6f0:	00040663          	beqz	s0,1d6fc <fputwc+0x2c>
   1d6f4:	03842783          	lw	a5,56(s0)
   1d6f8:	04078463          	beqz	a5,1d740 <fputwc+0x70>
   1d6fc:	00c61783          	lh	a5,12(a2)
   1d700:	01279713          	slli	a4,a5,0x12
   1d704:	02074063          	bltz	a4,1d724 <fputwc+0x54>
   1d708:	06462703          	lw	a4,100(a2)
   1d70c:	000026b7          	lui	a3,0x2
   1d710:	00d7e7b3          	or	a5,a5,a3
   1d714:	000026b7          	lui	a3,0x2
   1d718:	00d76733          	or	a4,a4,a3
   1d71c:	00f61623          	sh	a5,12(a2)
   1d720:	06e62223          	sw	a4,100(a2)
   1d724:	00040513          	mv	a0,s0
   1d728:	01812403          	lw	s0,24(sp)
   1d72c:	01c12083          	lw	ra,28(sp)
   1d730:	00048593          	mv	a1,s1
   1d734:	01412483          	lw	s1,20(sp)
   1d738:	02010113          	addi	sp,sp,32
   1d73c:	e3dff06f          	j	1d578 <__fputwc>
   1d740:	00040513          	mv	a0,s0
   1d744:	00b12623          	sw	a1,12(sp)
   1d748:	f84f60ef          	jal	ra,13ecc <__sinit>
   1d74c:	00c12603          	lw	a2,12(sp)
   1d750:	fadff06f          	j	1d6fc <fputwc+0x2c>

0001d754 <_fstat_r>:
   1d754:	00058793          	mv	a5,a1
   1d758:	ff010113          	addi	sp,sp,-16
   1d75c:	00812423          	sw	s0,8(sp)
   1d760:	00060593          	mv	a1,a2
   1d764:	00050413          	mv	s0,a0
   1d768:	00078513          	mv	a0,a5
   1d76c:	00112623          	sw	ra,12(sp)
   1d770:	2201a223          	sw	zero,548(gp) # 26ae4 <errno>
   1d774:	3a8020ef          	jal	ra,1fb1c <_fstat>
   1d778:	fff00793          	li	a5,-1
   1d77c:	00f50a63          	beq	a0,a5,1d790 <_fstat_r+0x3c>
   1d780:	00c12083          	lw	ra,12(sp)
   1d784:	00812403          	lw	s0,8(sp)
   1d788:	01010113          	addi	sp,sp,16
   1d78c:	00008067          	ret
   1d790:	22418793          	addi	a5,gp,548 # 26ae4 <errno>
   1d794:	0007a783          	lw	a5,0(a5)
   1d798:	fe0784e3          	beqz	a5,1d780 <_fstat_r+0x2c>
   1d79c:	00f42023          	sw	a5,0(s0)
   1d7a0:	00c12083          	lw	ra,12(sp)
   1d7a4:	00812403          	lw	s0,8(sp)
   1d7a8:	01010113          	addi	sp,sp,16
   1d7ac:	00008067          	ret

0001d7b0 <__sfvwrite_r>:
   1d7b0:	00862783          	lw	a5,8(a2)
   1d7b4:	34078263          	beqz	a5,1daf8 <__sfvwrite_r+0x348>
   1d7b8:	00c5d783          	lhu	a5,12(a1)
   1d7bc:	fd010113          	addi	sp,sp,-48
   1d7c0:	02812423          	sw	s0,40(sp)
   1d7c4:	01412c23          	sw	s4,24(sp)
   1d7c8:	01512a23          	sw	s5,20(sp)
   1d7cc:	02112623          	sw	ra,44(sp)
   1d7d0:	02912223          	sw	s1,36(sp)
   1d7d4:	03212023          	sw	s2,32(sp)
   1d7d8:	01312e23          	sw	s3,28(sp)
   1d7dc:	01612823          	sw	s6,16(sp)
   1d7e0:	01712623          	sw	s7,12(sp)
   1d7e4:	01812423          	sw	s8,8(sp)
   1d7e8:	01912223          	sw	s9,4(sp)
   1d7ec:	01a12023          	sw	s10,0(sp)
   1d7f0:	0087f713          	andi	a4,a5,8
   1d7f4:	00058413          	mv	s0,a1
   1d7f8:	00050a93          	mv	s5,a0
   1d7fc:	00060a13          	mv	s4,a2
   1d800:	08070a63          	beqz	a4,1d894 <__sfvwrite_r+0xe4>
   1d804:	0105a703          	lw	a4,16(a1)
   1d808:	08070663          	beqz	a4,1d894 <__sfvwrite_r+0xe4>
   1d80c:	0027f713          	andi	a4,a5,2
   1d810:	000a2483          	lw	s1,0(s4)
   1d814:	0a070063          	beqz	a4,1d8b4 <__sfvwrite_r+0x104>
   1d818:	02442703          	lw	a4,36(s0)
   1d81c:	01c42783          	lw	a5,28(s0)
   1d820:	80000b37          	lui	s6,0x80000
   1d824:	00000993          	li	s3,0
   1d828:	00000913          	li	s2,0
   1d82c:	c00b4b13          	xori	s6,s6,-1024
   1d830:	00098613          	mv	a2,s3
   1d834:	00078593          	mv	a1,a5
   1d838:	000a8513          	mv	a0,s5
   1d83c:	04090463          	beqz	s2,1d884 <__sfvwrite_r+0xd4>
   1d840:	00090693          	mv	a3,s2
   1d844:	012b7463          	bgeu	s6,s2,1d84c <__sfvwrite_r+0x9c>
   1d848:	000b0693          	mv	a3,s6
   1d84c:	000700e7          	jalr	a4
   1d850:	28a05a63          	blez	a0,1dae4 <__sfvwrite_r+0x334>
   1d854:	008a2783          	lw	a5,8(s4)
   1d858:	00a989b3          	add	s3,s3,a0
   1d85c:	40a90933          	sub	s2,s2,a0
   1d860:	40a78533          	sub	a0,a5,a0
   1d864:	00aa2423          	sw	a0,8(s4)
   1d868:	20050c63          	beqz	a0,1da80 <__sfvwrite_r+0x2d0>
   1d86c:	01c42783          	lw	a5,28(s0)
   1d870:	02442703          	lw	a4,36(s0)
   1d874:	00098613          	mv	a2,s3
   1d878:	00078593          	mv	a1,a5
   1d87c:	000a8513          	mv	a0,s5
   1d880:	fc0910e3          	bnez	s2,1d840 <__sfvwrite_r+0x90>
   1d884:	0004a983          	lw	s3,0(s1)
   1d888:	0044a903          	lw	s2,4(s1)
   1d88c:	00848493          	addi	s1,s1,8
   1d890:	fa1ff06f          	j	1d830 <__sfvwrite_r+0x80>
   1d894:	00040593          	mv	a1,s0
   1d898:	000a8513          	mv	a0,s5
   1d89c:	cfdf50ef          	jal	ra,13598 <__swsetup_r>
   1d8a0:	3c051263          	bnez	a0,1dc64 <__sfvwrite_r+0x4b4>
   1d8a4:	00c45783          	lhu	a5,12(s0)
   1d8a8:	000a2483          	lw	s1,0(s4)
   1d8ac:	0027f713          	andi	a4,a5,2
   1d8b0:	f60714e3          	bnez	a4,1d818 <__sfvwrite_r+0x68>
   1d8b4:	0017f713          	andi	a4,a5,1
   1d8b8:	24071463          	bnez	a4,1db00 <__sfvwrite_r+0x350>
   1d8bc:	00842c83          	lw	s9,8(s0)
   1d8c0:	00042503          	lw	a0,0(s0)
   1d8c4:	80000bb7          	lui	s7,0x80000
   1d8c8:	ffebcc13          	xori	s8,s7,-2
   1d8cc:	00000b13          	li	s6,0
   1d8d0:	00000913          	li	s2,0
   1d8d4:	fffbcb93          	not	s7,s7
   1d8d8:	0e090e63          	beqz	s2,1d9d4 <__sfvwrite_r+0x224>
   1d8dc:	2007f713          	andi	a4,a5,512
   1d8e0:	24070c63          	beqz	a4,1db38 <__sfvwrite_r+0x388>
   1d8e4:	000c8d13          	mv	s10,s9
   1d8e8:	2f996863          	bltu	s2,s9,1dbd8 <__sfvwrite_r+0x428>
   1d8ec:	4807f713          	andi	a4,a5,1152
   1d8f0:	08070a63          	beqz	a4,1d984 <__sfvwrite_r+0x1d4>
   1d8f4:	01442683          	lw	a3,20(s0)
   1d8f8:	01042583          	lw	a1,16(s0)
   1d8fc:	00190713          	addi	a4,s2,1
   1d900:	00169993          	slli	s3,a3,0x1
   1d904:	00d986b3          	add	a3,s3,a3
   1d908:	01f6d993          	srli	s3,a3,0x1f
   1d90c:	40b50cb3          	sub	s9,a0,a1
   1d910:	00d989b3          	add	s3,s3,a3
   1d914:	4019d993          	srai	s3,s3,0x1
   1d918:	01970733          	add	a4,a4,s9
   1d91c:	00098613          	mv	a2,s3
   1d920:	00e9f663          	bgeu	s3,a4,1d92c <__sfvwrite_r+0x17c>
   1d924:	00070993          	mv	s3,a4
   1d928:	00070613          	mv	a2,a4
   1d92c:	4007f793          	andi	a5,a5,1024
   1d930:	2e078a63          	beqz	a5,1dc24 <__sfvwrite_r+0x474>
   1d934:	00060593          	mv	a1,a2
   1d938:	000a8513          	mv	a0,s5
   1d93c:	97df90ef          	jal	ra,172b8 <_malloc_r>
   1d940:	00050d13          	mv	s10,a0
   1d944:	30050863          	beqz	a0,1dc54 <__sfvwrite_r+0x4a4>
   1d948:	01042583          	lw	a1,16(s0)
   1d94c:	000c8613          	mv	a2,s9
   1d950:	3d0000ef          	jal	ra,1dd20 <memcpy>
   1d954:	00c45783          	lhu	a5,12(s0)
   1d958:	b7f7f793          	andi	a5,a5,-1153
   1d95c:	0807e793          	ori	a5,a5,128
   1d960:	00f41623          	sh	a5,12(s0)
   1d964:	019d0533          	add	a0,s10,s9
   1d968:	419987b3          	sub	a5,s3,s9
   1d96c:	01a42823          	sw	s10,16(s0)
   1d970:	00a42023          	sw	a0,0(s0)
   1d974:	01342a23          	sw	s3,20(s0)
   1d978:	00090c93          	mv	s9,s2
   1d97c:	00f42423          	sw	a5,8(s0)
   1d980:	00090d13          	mv	s10,s2
   1d984:	000d0613          	mv	a2,s10
   1d988:	000b0593          	mv	a1,s6
   1d98c:	4b0000ef          	jal	ra,1de3c <memmove>
   1d990:	00842783          	lw	a5,8(s0)
   1d994:	00042603          	lw	a2,0(s0)
   1d998:	00090993          	mv	s3,s2
   1d99c:	41978cb3          	sub	s9,a5,s9
   1d9a0:	01a60633          	add	a2,a2,s10
   1d9a4:	01942423          	sw	s9,8(s0)
   1d9a8:	00c42023          	sw	a2,0(s0)
   1d9ac:	00000913          	li	s2,0
   1d9b0:	008a2783          	lw	a5,8(s4)
   1d9b4:	013b0b33          	add	s6,s6,s3
   1d9b8:	413789b3          	sub	s3,a5,s3
   1d9bc:	013a2423          	sw	s3,8(s4)
   1d9c0:	0c098063          	beqz	s3,1da80 <__sfvwrite_r+0x2d0>
   1d9c4:	00842c83          	lw	s9,8(s0)
   1d9c8:	00042503          	lw	a0,0(s0)
   1d9cc:	00c45783          	lhu	a5,12(s0)
   1d9d0:	f00916e3          	bnez	s2,1d8dc <__sfvwrite_r+0x12c>
   1d9d4:	0004ab03          	lw	s6,0(s1)
   1d9d8:	0044a903          	lw	s2,4(s1)
   1d9dc:	00848493          	addi	s1,s1,8
   1d9e0:	ef9ff06f          	j	1d8d8 <__sfvwrite_r+0x128>
   1d9e4:	0044a983          	lw	s3,4(s1)
   1d9e8:	0004ab83          	lw	s7,0(s1)
   1d9ec:	00848493          	addi	s1,s1,8
   1d9f0:	fe098ae3          	beqz	s3,1d9e4 <__sfvwrite_r+0x234>
   1d9f4:	00098613          	mv	a2,s3
   1d9f8:	00a00593          	li	a1,10
   1d9fc:	000b8513          	mv	a0,s7
   1da00:	8f8fa0ef          	jal	ra,17af8 <memchr>
   1da04:	12050463          	beqz	a0,1db2c <__sfvwrite_r+0x37c>
   1da08:	00150513          	addi	a0,a0,1
   1da0c:	41750b33          	sub	s6,a0,s7
   1da10:	000b0793          	mv	a5,s6
   1da14:	00098c13          	mv	s8,s3
   1da18:	0137f463          	bgeu	a5,s3,1da20 <__sfvwrite_r+0x270>
   1da1c:	00078c13          	mv	s8,a5
   1da20:	00042503          	lw	a0,0(s0)
   1da24:	01042783          	lw	a5,16(s0)
   1da28:	01442683          	lw	a3,20(s0)
   1da2c:	00a7f863          	bgeu	a5,a0,1da3c <__sfvwrite_r+0x28c>
   1da30:	00842903          	lw	s2,8(s0)
   1da34:	01268933          	add	s2,a3,s2
   1da38:	09894263          	blt	s2,s8,1dabc <__sfvwrite_r+0x30c>
   1da3c:	1adc4e63          	blt	s8,a3,1dbf8 <__sfvwrite_r+0x448>
   1da40:	02442783          	lw	a5,36(s0)
   1da44:	01c42583          	lw	a1,28(s0)
   1da48:	000b8613          	mv	a2,s7
   1da4c:	000a8513          	mv	a0,s5
   1da50:	000780e7          	jalr	a5
   1da54:	00050913          	mv	s2,a0
   1da58:	08a05663          	blez	a0,1dae4 <__sfvwrite_r+0x334>
   1da5c:	412b0b33          	sub	s6,s6,s2
   1da60:	00100513          	li	a0,1
   1da64:	180b0063          	beqz	s6,1dbe4 <__sfvwrite_r+0x434>
   1da68:	008a2783          	lw	a5,8(s4)
   1da6c:	012b8bb3          	add	s7,s7,s2
   1da70:	412989b3          	sub	s3,s3,s2
   1da74:	41278933          	sub	s2,a5,s2
   1da78:	012a2423          	sw	s2,8(s4)
   1da7c:	08091a63          	bnez	s2,1db10 <__sfvwrite_r+0x360>
   1da80:	00000513          	li	a0,0
   1da84:	02c12083          	lw	ra,44(sp)
   1da88:	02812403          	lw	s0,40(sp)
   1da8c:	02412483          	lw	s1,36(sp)
   1da90:	02012903          	lw	s2,32(sp)
   1da94:	01c12983          	lw	s3,28(sp)
   1da98:	01812a03          	lw	s4,24(sp)
   1da9c:	01412a83          	lw	s5,20(sp)
   1daa0:	01012b03          	lw	s6,16(sp)
   1daa4:	00c12b83          	lw	s7,12(sp)
   1daa8:	00812c03          	lw	s8,8(sp)
   1daac:	00412c83          	lw	s9,4(sp)
   1dab0:	00012d03          	lw	s10,0(sp)
   1dab4:	03010113          	addi	sp,sp,48
   1dab8:	00008067          	ret
   1dabc:	000b8593          	mv	a1,s7
   1dac0:	00090613          	mv	a2,s2
   1dac4:	378000ef          	jal	ra,1de3c <memmove>
   1dac8:	00042783          	lw	a5,0(s0)
   1dacc:	00040593          	mv	a1,s0
   1dad0:	000a8513          	mv	a0,s5
   1dad4:	012787b3          	add	a5,a5,s2
   1dad8:	00f42023          	sw	a5,0(s0)
   1dadc:	838f60ef          	jal	ra,13b14 <_fflush_r>
   1dae0:	f6050ee3          	beqz	a0,1da5c <__sfvwrite_r+0x2ac>
   1dae4:	00c41783          	lh	a5,12(s0)
   1dae8:	0407e793          	ori	a5,a5,64
   1daec:	00f41623          	sh	a5,12(s0)
   1daf0:	fff00513          	li	a0,-1
   1daf4:	f91ff06f          	j	1da84 <__sfvwrite_r+0x2d4>
   1daf8:	00000513          	li	a0,0
   1dafc:	00008067          	ret
   1db00:	00000b13          	li	s6,0
   1db04:	00000513          	li	a0,0
   1db08:	00000b93          	li	s7,0
   1db0c:	00000993          	li	s3,0
   1db10:	ec098ae3          	beqz	s3,1d9e4 <__sfvwrite_r+0x234>
   1db14:	ee051ee3          	bnez	a0,1da10 <__sfvwrite_r+0x260>
   1db18:	00098613          	mv	a2,s3
   1db1c:	00a00593          	li	a1,10
   1db20:	000b8513          	mv	a0,s7
   1db24:	fd5f90ef          	jal	ra,17af8 <memchr>
   1db28:	ee0510e3          	bnez	a0,1da08 <__sfvwrite_r+0x258>
   1db2c:	00198793          	addi	a5,s3,1
   1db30:	00078b13          	mv	s6,a5
   1db34:	ee1ff06f          	j	1da14 <__sfvwrite_r+0x264>
   1db38:	01042783          	lw	a5,16(s0)
   1db3c:	04a7e863          	bltu	a5,a0,1db8c <__sfvwrite_r+0x3dc>
   1db40:	01442983          	lw	s3,20(s0)
   1db44:	05396463          	bltu	s2,s3,1db8c <__sfvwrite_r+0x3dc>
   1db48:	00090513          	mv	a0,s2
   1db4c:	012c7463          	bgeu	s8,s2,1db54 <__sfvwrite_r+0x3a4>
   1db50:	000b8513          	mv	a0,s7
   1db54:	00098593          	mv	a1,s3
   1db58:	829f20ef          	jal	ra,10380 <__divsi3>
   1db5c:	00098593          	mv	a1,s3
   1db60:	ffcf20ef          	jal	ra,1035c <__mulsi3>
   1db64:	01c42583          	lw	a1,28(s0)
   1db68:	02442783          	lw	a5,36(s0)
   1db6c:	00050693          	mv	a3,a0
   1db70:	000b0613          	mv	a2,s6
   1db74:	000a8513          	mv	a0,s5
   1db78:	000780e7          	jalr	a5
   1db7c:	f6a054e3          	blez	a0,1dae4 <__sfvwrite_r+0x334>
   1db80:	00050993          	mv	s3,a0
   1db84:	41390933          	sub	s2,s2,s3
   1db88:	e29ff06f          	j	1d9b0 <__sfvwrite_r+0x200>
   1db8c:	000c8993          	mv	s3,s9
   1db90:	01997463          	bgeu	s2,s9,1db98 <__sfvwrite_r+0x3e8>
   1db94:	00090993          	mv	s3,s2
   1db98:	00098613          	mv	a2,s3
   1db9c:	000b0593          	mv	a1,s6
   1dba0:	29c000ef          	jal	ra,1de3c <memmove>
   1dba4:	00842783          	lw	a5,8(s0)
   1dba8:	00042703          	lw	a4,0(s0)
   1dbac:	413787b3          	sub	a5,a5,s3
   1dbb0:	01370733          	add	a4,a4,s3
   1dbb4:	00f42423          	sw	a5,8(s0)
   1dbb8:	00e42023          	sw	a4,0(s0)
   1dbbc:	fc0794e3          	bnez	a5,1db84 <__sfvwrite_r+0x3d4>
   1dbc0:	00040593          	mv	a1,s0
   1dbc4:	000a8513          	mv	a0,s5
   1dbc8:	f4df50ef          	jal	ra,13b14 <_fflush_r>
   1dbcc:	f0051ce3          	bnez	a0,1dae4 <__sfvwrite_r+0x334>
   1dbd0:	41390933          	sub	s2,s2,s3
   1dbd4:	dddff06f          	j	1d9b0 <__sfvwrite_r+0x200>
   1dbd8:	00090c93          	mv	s9,s2
   1dbdc:	00090d13          	mv	s10,s2
   1dbe0:	da5ff06f          	j	1d984 <__sfvwrite_r+0x1d4>
   1dbe4:	00040593          	mv	a1,s0
   1dbe8:	000a8513          	mv	a0,s5
   1dbec:	f29f50ef          	jal	ra,13b14 <_fflush_r>
   1dbf0:	e6050ce3          	beqz	a0,1da68 <__sfvwrite_r+0x2b8>
   1dbf4:	ef1ff06f          	j	1dae4 <__sfvwrite_r+0x334>
   1dbf8:	000c0613          	mv	a2,s8
   1dbfc:	000b8593          	mv	a1,s7
   1dc00:	23c000ef          	jal	ra,1de3c <memmove>
   1dc04:	00842703          	lw	a4,8(s0)
   1dc08:	00042783          	lw	a5,0(s0)
   1dc0c:	000c0913          	mv	s2,s8
   1dc10:	41870733          	sub	a4,a4,s8
   1dc14:	01878c33          	add	s8,a5,s8
   1dc18:	00e42423          	sw	a4,8(s0)
   1dc1c:	01842023          	sw	s8,0(s0)
   1dc20:	e3dff06f          	j	1da5c <__sfvwrite_r+0x2ac>
   1dc24:	000a8513          	mv	a0,s5
   1dc28:	394000ef          	jal	ra,1dfbc <_realloc_r>
   1dc2c:	00050d13          	mv	s10,a0
   1dc30:	d2051ae3          	bnez	a0,1d964 <__sfvwrite_r+0x1b4>
   1dc34:	01042583          	lw	a1,16(s0)
   1dc38:	000a8513          	mv	a0,s5
   1dc3c:	c00f60ef          	jal	ra,1403c <_free_r>
   1dc40:	00c41783          	lh	a5,12(s0)
   1dc44:	00c00713          	li	a4,12
   1dc48:	00eaa023          	sw	a4,0(s5)
   1dc4c:	f7f7f793          	andi	a5,a5,-129
   1dc50:	e99ff06f          	j	1dae8 <__sfvwrite_r+0x338>
   1dc54:	00c00793          	li	a5,12
   1dc58:	00faa023          	sw	a5,0(s5)
   1dc5c:	00c41783          	lh	a5,12(s0)
   1dc60:	e89ff06f          	j	1dae8 <__sfvwrite_r+0x338>
   1dc64:	fff00513          	li	a0,-1
   1dc68:	e1dff06f          	j	1da84 <__sfvwrite_r+0x2d4>

0001dc6c <_isatty_r>:
   1dc6c:	ff010113          	addi	sp,sp,-16
   1dc70:	00812423          	sw	s0,8(sp)
   1dc74:	00050413          	mv	s0,a0
   1dc78:	00058513          	mv	a0,a1
   1dc7c:	2201a223          	sw	zero,548(gp) # 26ae4 <errno>
   1dc80:	00112623          	sw	ra,12(sp)
   1dc84:	709010ef          	jal	ra,1fb8c <_isatty>
   1dc88:	fff00793          	li	a5,-1
   1dc8c:	00f50a63          	beq	a0,a5,1dca0 <_isatty_r+0x34>
   1dc90:	00c12083          	lw	ra,12(sp)
   1dc94:	00812403          	lw	s0,8(sp)
   1dc98:	01010113          	addi	sp,sp,16
   1dc9c:	00008067          	ret
   1dca0:	22418793          	addi	a5,gp,548 # 26ae4 <errno>
   1dca4:	0007a783          	lw	a5,0(a5)
   1dca8:	fe0784e3          	beqz	a5,1dc90 <_isatty_r+0x24>
   1dcac:	00f42023          	sw	a5,0(s0)
   1dcb0:	00c12083          	lw	ra,12(sp)
   1dcb4:	00812403          	lw	s0,8(sp)
   1dcb8:	01010113          	addi	sp,sp,16
   1dcbc:	00008067          	ret

0001dcc0 <_lseek_r>:
   1dcc0:	00058793          	mv	a5,a1
   1dcc4:	ff010113          	addi	sp,sp,-16
   1dcc8:	00812423          	sw	s0,8(sp)
   1dccc:	00060593          	mv	a1,a2
   1dcd0:	00050413          	mv	s0,a0
   1dcd4:	00068613          	mv	a2,a3
   1dcd8:	00078513          	mv	a0,a5
   1dcdc:	00112623          	sw	ra,12(sp)
   1dce0:	2201a223          	sw	zero,548(gp) # 26ae4 <errno>
   1dce4:	6e9010ef          	jal	ra,1fbcc <_lseek>
   1dce8:	fff00793          	li	a5,-1
   1dcec:	00f50a63          	beq	a0,a5,1dd00 <_lseek_r+0x40>
   1dcf0:	00c12083          	lw	ra,12(sp)
   1dcf4:	00812403          	lw	s0,8(sp)
   1dcf8:	01010113          	addi	sp,sp,16
   1dcfc:	00008067          	ret
   1dd00:	22418793          	addi	a5,gp,548 # 26ae4 <errno>
   1dd04:	0007a783          	lw	a5,0(a5)
   1dd08:	fe0784e3          	beqz	a5,1dcf0 <_lseek_r+0x30>
   1dd0c:	00f42023          	sw	a5,0(s0)
   1dd10:	00c12083          	lw	ra,12(sp)
   1dd14:	00812403          	lw	s0,8(sp)
   1dd18:	01010113          	addi	sp,sp,16
   1dd1c:	00008067          	ret

0001dd20 <memcpy>:
   1dd20:	00a5c7b3          	xor	a5,a1,a0
   1dd24:	0037f793          	andi	a5,a5,3
   1dd28:	00c508b3          	add	a7,a0,a2
   1dd2c:	06079263          	bnez	a5,1dd90 <memcpy+0x70>
   1dd30:	00300793          	li	a5,3
   1dd34:	04c7fe63          	bgeu	a5,a2,1dd90 <memcpy+0x70>
   1dd38:	00357793          	andi	a5,a0,3
   1dd3c:	00050713          	mv	a4,a0
   1dd40:	06079863          	bnez	a5,1ddb0 <memcpy+0x90>
   1dd44:	ffc8f613          	andi	a2,a7,-4
   1dd48:	fe060793          	addi	a5,a2,-32
   1dd4c:	08f76c63          	bltu	a4,a5,1dde4 <memcpy+0xc4>
   1dd50:	02c77c63          	bgeu	a4,a2,1dd88 <memcpy+0x68>
   1dd54:	00058693          	mv	a3,a1
   1dd58:	00070793          	mv	a5,a4
   1dd5c:	0006a803          	lw	a6,0(a3) # 2000 <register_fini-0xe074>
   1dd60:	00478793          	addi	a5,a5,4
   1dd64:	00468693          	addi	a3,a3,4
   1dd68:	ff07ae23          	sw	a6,-4(a5)
   1dd6c:	fec7e8e3          	bltu	a5,a2,1dd5c <memcpy+0x3c>
   1dd70:	fff60793          	addi	a5,a2,-1
   1dd74:	40e787b3          	sub	a5,a5,a4
   1dd78:	ffc7f793          	andi	a5,a5,-4
   1dd7c:	00478793          	addi	a5,a5,4
   1dd80:	00f70733          	add	a4,a4,a5
   1dd84:	00f585b3          	add	a1,a1,a5
   1dd88:	01176863          	bltu	a4,a7,1dd98 <memcpy+0x78>
   1dd8c:	00008067          	ret
   1dd90:	00050713          	mv	a4,a0
   1dd94:	ff157ce3          	bgeu	a0,a7,1dd8c <memcpy+0x6c>
   1dd98:	0005c783          	lbu	a5,0(a1)
   1dd9c:	00170713          	addi	a4,a4,1
   1dda0:	00158593          	addi	a1,a1,1
   1dda4:	fef70fa3          	sb	a5,-1(a4)
   1dda8:	ff1768e3          	bltu	a4,a7,1dd98 <memcpy+0x78>
   1ddac:	00008067          	ret
   1ddb0:	0005c683          	lbu	a3,0(a1)
   1ddb4:	00170713          	addi	a4,a4,1
   1ddb8:	00377793          	andi	a5,a4,3
   1ddbc:	fed70fa3          	sb	a3,-1(a4)
   1ddc0:	00158593          	addi	a1,a1,1
   1ddc4:	f80780e3          	beqz	a5,1dd44 <memcpy+0x24>
   1ddc8:	0005c683          	lbu	a3,0(a1)
   1ddcc:	00170713          	addi	a4,a4,1
   1ddd0:	00377793          	andi	a5,a4,3
   1ddd4:	fed70fa3          	sb	a3,-1(a4)
   1ddd8:	00158593          	addi	a1,a1,1
   1dddc:	fc079ae3          	bnez	a5,1ddb0 <memcpy+0x90>
   1dde0:	f65ff06f          	j	1dd44 <memcpy+0x24>
   1dde4:	0005a683          	lw	a3,0(a1)
   1dde8:	0045a283          	lw	t0,4(a1)
   1ddec:	0085af83          	lw	t6,8(a1)
   1ddf0:	00c5af03          	lw	t5,12(a1)
   1ddf4:	0105ae83          	lw	t4,16(a1)
   1ddf8:	0145ae03          	lw	t3,20(a1)
   1ddfc:	0185a303          	lw	t1,24(a1)
   1de00:	01c5a803          	lw	a6,28(a1)
   1de04:	02458593          	addi	a1,a1,36
   1de08:	00d72023          	sw	a3,0(a4)
   1de0c:	ffc5a683          	lw	a3,-4(a1)
   1de10:	00572223          	sw	t0,4(a4)
   1de14:	01f72423          	sw	t6,8(a4)
   1de18:	01e72623          	sw	t5,12(a4)
   1de1c:	01d72823          	sw	t4,16(a4)
   1de20:	01c72a23          	sw	t3,20(a4)
   1de24:	00672c23          	sw	t1,24(a4)
   1de28:	01072e23          	sw	a6,28(a4)
   1de2c:	02470713          	addi	a4,a4,36
   1de30:	fed72e23          	sw	a3,-4(a4)
   1de34:	faf768e3          	bltu	a4,a5,1dde4 <memcpy+0xc4>
   1de38:	f19ff06f          	j	1dd50 <memcpy+0x30>

0001de3c <memmove>:
   1de3c:	02a5f663          	bgeu	a1,a0,1de68 <memmove+0x2c>
   1de40:	00c587b3          	add	a5,a1,a2
   1de44:	02f57263          	bgeu	a0,a5,1de68 <memmove+0x2c>
   1de48:	00c50733          	add	a4,a0,a2
   1de4c:	0e060a63          	beqz	a2,1df40 <memmove+0x104>
   1de50:	fff78793          	addi	a5,a5,-1
   1de54:	0007c683          	lbu	a3,0(a5)
   1de58:	fff70713          	addi	a4,a4,-1
   1de5c:	00d70023          	sb	a3,0(a4)
   1de60:	fef598e3          	bne	a1,a5,1de50 <memmove+0x14>
   1de64:	00008067          	ret
   1de68:	00f00793          	li	a5,15
   1de6c:	02c7e863          	bltu	a5,a2,1de9c <memmove+0x60>
   1de70:	00050793          	mv	a5,a0
   1de74:	fff60693          	addi	a3,a2,-1
   1de78:	0c060c63          	beqz	a2,1df50 <memmove+0x114>
   1de7c:	00168693          	addi	a3,a3,1
   1de80:	00d786b3          	add	a3,a5,a3
   1de84:	00158593          	addi	a1,a1,1
   1de88:	fff5c703          	lbu	a4,-1(a1)
   1de8c:	00178793          	addi	a5,a5,1
   1de90:	fee78fa3          	sb	a4,-1(a5)
   1de94:	fed798e3          	bne	a5,a3,1de84 <memmove+0x48>
   1de98:	00008067          	ret
   1de9c:	00a5e7b3          	or	a5,a1,a0
   1dea0:	0037f793          	andi	a5,a5,3
   1dea4:	0a079063          	bnez	a5,1df44 <memmove+0x108>
   1dea8:	ff060893          	addi	a7,a2,-16
   1deac:	ff08f893          	andi	a7,a7,-16
   1deb0:	01088893          	addi	a7,a7,16
   1deb4:	01150833          	add	a6,a0,a7
   1deb8:	00058713          	mv	a4,a1
   1debc:	00050793          	mv	a5,a0
   1dec0:	00072683          	lw	a3,0(a4)
   1dec4:	01078793          	addi	a5,a5,16
   1dec8:	01070713          	addi	a4,a4,16
   1decc:	fed7a823          	sw	a3,-16(a5)
   1ded0:	ff472683          	lw	a3,-12(a4)
   1ded4:	fed7aa23          	sw	a3,-12(a5)
   1ded8:	ff872683          	lw	a3,-8(a4)
   1dedc:	fed7ac23          	sw	a3,-8(a5)
   1dee0:	ffc72683          	lw	a3,-4(a4)
   1dee4:	fed7ae23          	sw	a3,-4(a5)
   1dee8:	fcf81ce3          	bne	a6,a5,1dec0 <memmove+0x84>
   1deec:	00c67713          	andi	a4,a2,12
   1def0:	011585b3          	add	a1,a1,a7
   1def4:	00f67813          	andi	a6,a2,15
   1def8:	04070e63          	beqz	a4,1df54 <memmove+0x118>
   1defc:	00058713          	mv	a4,a1
   1df00:	00078893          	mv	a7,a5
   1df04:	00300e13          	li	t3,3
   1df08:	00470713          	addi	a4,a4,4
   1df0c:	ffc72303          	lw	t1,-4(a4)
   1df10:	00488893          	addi	a7,a7,4
   1df14:	40e806b3          	sub	a3,a6,a4
   1df18:	fe68ae23          	sw	t1,-4(a7)
   1df1c:	00d586b3          	add	a3,a1,a3
   1df20:	fede64e3          	bltu	t3,a3,1df08 <memmove+0xcc>
   1df24:	ffc80713          	addi	a4,a6,-4
   1df28:	ffc77713          	andi	a4,a4,-4
   1df2c:	00470713          	addi	a4,a4,4
   1df30:	00367613          	andi	a2,a2,3
   1df34:	00e787b3          	add	a5,a5,a4
   1df38:	00e585b3          	add	a1,a1,a4
   1df3c:	f39ff06f          	j	1de74 <memmove+0x38>
   1df40:	00008067          	ret
   1df44:	fff60693          	addi	a3,a2,-1
   1df48:	00050793          	mv	a5,a0
   1df4c:	f31ff06f          	j	1de7c <memmove+0x40>
   1df50:	00008067          	ret
   1df54:	00080613          	mv	a2,a6
   1df58:	f1dff06f          	j	1de74 <memmove+0x38>

0001df5c <_read_r>:
   1df5c:	00058793          	mv	a5,a1
   1df60:	ff010113          	addi	sp,sp,-16
   1df64:	00812423          	sw	s0,8(sp)
   1df68:	00060593          	mv	a1,a2
   1df6c:	00050413          	mv	s0,a0
   1df70:	00068613          	mv	a2,a3
   1df74:	00078513          	mv	a0,a5
   1df78:	00112623          	sw	ra,12(sp)
   1df7c:	2201a223          	sw	zero,548(gp) # 26ae4 <errno>
   1df80:	49d010ef          	jal	ra,1fc1c <_read>
   1df84:	fff00793          	li	a5,-1
   1df88:	00f50a63          	beq	a0,a5,1df9c <_read_r+0x40>
   1df8c:	00c12083          	lw	ra,12(sp)
   1df90:	00812403          	lw	s0,8(sp)
   1df94:	01010113          	addi	sp,sp,16
   1df98:	00008067          	ret
   1df9c:	22418793          	addi	a5,gp,548 # 26ae4 <errno>
   1dfa0:	0007a783          	lw	a5,0(a5)
   1dfa4:	fe0784e3          	beqz	a5,1df8c <_read_r+0x30>
   1dfa8:	00f42023          	sw	a5,0(s0)
   1dfac:	00c12083          	lw	ra,12(sp)
   1dfb0:	00812403          	lw	s0,8(sp)
   1dfb4:	01010113          	addi	sp,sp,16
   1dfb8:	00008067          	ret

0001dfbc <_realloc_r>:
   1dfbc:	fd010113          	addi	sp,sp,-48
   1dfc0:	01312e23          	sw	s3,28(sp)
   1dfc4:	02112623          	sw	ra,44(sp)
   1dfc8:	02812423          	sw	s0,40(sp)
   1dfcc:	02912223          	sw	s1,36(sp)
   1dfd0:	03212023          	sw	s2,32(sp)
   1dfd4:	01412c23          	sw	s4,24(sp)
   1dfd8:	01512a23          	sw	s5,20(sp)
   1dfdc:	01612823          	sw	s6,16(sp)
   1dfe0:	01712623          	sw	s7,12(sp)
   1dfe4:	01812423          	sw	s8,8(sp)
   1dfe8:	00060993          	mv	s3,a2
   1dfec:	22058a63          	beqz	a1,1e220 <_realloc_r+0x264>
   1dff0:	00058b13          	mv	s6,a1
   1dff4:	00050a93          	mv	s5,a0
   1dff8:	bddf90ef          	jal	ra,17bd4 <__malloc_lock>
   1dffc:	00b98413          	addi	s0,s3,11
   1e000:	01600793          	li	a5,22
   1e004:	0e87fc63          	bgeu	a5,s0,1e0fc <_realloc_r+0x140>
   1e008:	ff847413          	andi	s0,s0,-8
   1e00c:	00040713          	mv	a4,s0
   1e010:	0e044c63          	bltz	s0,1e108 <_realloc_r+0x14c>
   1e014:	0f346a63          	bltu	s0,s3,1e108 <_realloc_r+0x14c>
   1e018:	ffcb2783          	lw	a5,-4(s6) # 7ffffffc <__BSS_END__+0x7ffd9514>
   1e01c:	ff8b0913          	addi	s2,s6,-8
   1e020:	ffc7f493          	andi	s1,a5,-4
   1e024:	00990a33          	add	s4,s2,s1
   1e028:	1ae4d263          	bge	s1,a4,1e1cc <_realloc_r+0x210>
   1e02c:	d9418693          	addi	a3,gp,-620 # 26654 <__malloc_av_>
   1e030:	0086a603          	lw	a2,8(a3)
   1e034:	004a2683          	lw	a3,4(s4)
   1e038:	25460663          	beq	a2,s4,1e284 <_realloc_r+0x2c8>
   1e03c:	ffe6f613          	andi	a2,a3,-2
   1e040:	00ca0633          	add	a2,s4,a2
   1e044:	00462603          	lw	a2,4(a2)
   1e048:	00167613          	andi	a2,a2,1
   1e04c:	1a061c63          	bnez	a2,1e204 <_realloc_r+0x248>
   1e050:	ffc6f693          	andi	a3,a3,-4
   1e054:	00d48633          	add	a2,s1,a3
   1e058:	34e65663          	bge	a2,a4,1e3a4 <_realloc_r+0x3e8>
   1e05c:	0017f793          	andi	a5,a5,1
   1e060:	02079463          	bnez	a5,1e088 <_realloc_r+0xcc>
   1e064:	ff8b2c03          	lw	s8,-8(s6)
   1e068:	41890c33          	sub	s8,s2,s8
   1e06c:	004c2783          	lw	a5,4(s8)
   1e070:	ffc7f793          	andi	a5,a5,-4
   1e074:	00d786b3          	add	a3,a5,a3
   1e078:	00968bb3          	add	s7,a3,s1
   1e07c:	0cebd663          	bge	s7,a4,1e148 <_realloc_r+0x18c>
   1e080:	00f48bb3          	add	s7,s1,a5
   1e084:	34ebd863          	bge	s7,a4,1e3d4 <_realloc_r+0x418>
   1e088:	00098593          	mv	a1,s3
   1e08c:	000a8513          	mv	a0,s5
   1e090:	a28f90ef          	jal	ra,172b8 <_malloc_r>
   1e094:	00050993          	mv	s3,a0
   1e098:	04050c63          	beqz	a0,1e0f0 <_realloc_r+0x134>
   1e09c:	ffcb2783          	lw	a5,-4(s6)
   1e0a0:	ff850713          	addi	a4,a0,-8
   1e0a4:	ffe7f793          	andi	a5,a5,-2
   1e0a8:	00f907b3          	add	a5,s2,a5
   1e0ac:	30e78a63          	beq	a5,a4,1e3c0 <_realloc_r+0x404>
   1e0b0:	ffc48613          	addi	a2,s1,-4
   1e0b4:	02400793          	li	a5,36
   1e0b8:	38c7ea63          	bltu	a5,a2,1e44c <_realloc_r+0x490>
   1e0bc:	01300713          	li	a4,19
   1e0c0:	000b2683          	lw	a3,0(s6)
   1e0c4:	28c76463          	bltu	a4,a2,1e34c <_realloc_r+0x390>
   1e0c8:	00050793          	mv	a5,a0
   1e0cc:	000b0713          	mv	a4,s6
   1e0d0:	00d7a023          	sw	a3,0(a5)
   1e0d4:	00472683          	lw	a3,4(a4)
   1e0d8:	00d7a223          	sw	a3,4(a5)
   1e0dc:	00872703          	lw	a4,8(a4)
   1e0e0:	00e7a423          	sw	a4,8(a5)
   1e0e4:	000b0593          	mv	a1,s6
   1e0e8:	000a8513          	mv	a0,s5
   1e0ec:	f51f50ef          	jal	ra,1403c <_free_r>
   1e0f0:	000a8513          	mv	a0,s5
   1e0f4:	ae5f90ef          	jal	ra,17bd8 <__malloc_unlock>
   1e0f8:	01c0006f          	j	1e114 <_realloc_r+0x158>
   1e0fc:	01000413          	li	s0,16
   1e100:	01000713          	li	a4,16
   1e104:	f1347ae3          	bgeu	s0,s3,1e018 <_realloc_r+0x5c>
   1e108:	00c00793          	li	a5,12
   1e10c:	00faa023          	sw	a5,0(s5)
   1e110:	00000993          	li	s3,0
   1e114:	02c12083          	lw	ra,44(sp)
   1e118:	02812403          	lw	s0,40(sp)
   1e11c:	00098513          	mv	a0,s3
   1e120:	02412483          	lw	s1,36(sp)
   1e124:	02012903          	lw	s2,32(sp)
   1e128:	01c12983          	lw	s3,28(sp)
   1e12c:	01812a03          	lw	s4,24(sp)
   1e130:	01412a83          	lw	s5,20(sp)
   1e134:	01012b03          	lw	s6,16(sp)
   1e138:	00c12b83          	lw	s7,12(sp)
   1e13c:	00812c03          	lw	s8,8(sp)
   1e140:	03010113          	addi	sp,sp,48
   1e144:	00008067          	ret
   1e148:	00ca2783          	lw	a5,12(s4)
   1e14c:	008a2703          	lw	a4,8(s4)
   1e150:	ffc48613          	addi	a2,s1,-4
   1e154:	02400693          	li	a3,36
   1e158:	00f72623          	sw	a5,12(a4)
   1e15c:	00e7a423          	sw	a4,8(a5)
   1e160:	008c2703          	lw	a4,8(s8)
   1e164:	00cc2783          	lw	a5,12(s8)
   1e168:	008c0993          	addi	s3,s8,8
   1e16c:	017c0a33          	add	s4,s8,s7
   1e170:	00f72623          	sw	a5,12(a4)
   1e174:	00e7a423          	sw	a4,8(a5)
   1e178:	2ec6e063          	bltu	a3,a2,1e458 <_realloc_r+0x49c>
   1e17c:	01300693          	li	a3,19
   1e180:	000b2703          	lw	a4,0(s6)
   1e184:	00098793          	mv	a5,s3
   1e188:	02c6f263          	bgeu	a3,a2,1e1ac <_realloc_r+0x1f0>
   1e18c:	00ec2423          	sw	a4,8(s8)
   1e190:	004b2703          	lw	a4,4(s6)
   1e194:	01b00793          	li	a5,27
   1e198:	00ec2623          	sw	a4,12(s8)
   1e19c:	008b2703          	lw	a4,8(s6)
   1e1a0:	32c7ee63          	bltu	a5,a2,1e4dc <_realloc_r+0x520>
   1e1a4:	010c0793          	addi	a5,s8,16
   1e1a8:	008b0b13          	addi	s6,s6,8
   1e1ac:	00e7a023          	sw	a4,0(a5)
   1e1b0:	004b2703          	lw	a4,4(s6)
   1e1b4:	000b8493          	mv	s1,s7
   1e1b8:	000c0913          	mv	s2,s8
   1e1bc:	00e7a223          	sw	a4,4(a5)
   1e1c0:	008b2703          	lw	a4,8(s6)
   1e1c4:	00098b13          	mv	s6,s3
   1e1c8:	00e7a423          	sw	a4,8(a5)
   1e1cc:	00492603          	lw	a2,4(s2)
   1e1d0:	408487b3          	sub	a5,s1,s0
   1e1d4:	00f00713          	li	a4,15
   1e1d8:	00167613          	andi	a2,a2,1
   1e1dc:	06f76c63          	bltu	a4,a5,1e254 <_realloc_r+0x298>
   1e1e0:	00c4e633          	or	a2,s1,a2
   1e1e4:	00c92223          	sw	a2,4(s2)
   1e1e8:	004a2783          	lw	a5,4(s4)
   1e1ec:	0017e793          	ori	a5,a5,1
   1e1f0:	00fa2223          	sw	a5,4(s4)
   1e1f4:	000a8513          	mv	a0,s5
   1e1f8:	9e1f90ef          	jal	ra,17bd8 <__malloc_unlock>
   1e1fc:	000b0993          	mv	s3,s6
   1e200:	f15ff06f          	j	1e114 <_realloc_r+0x158>
   1e204:	0017f793          	andi	a5,a5,1
   1e208:	e80790e3          	bnez	a5,1e088 <_realloc_r+0xcc>
   1e20c:	ff8b2c03          	lw	s8,-8(s6)
   1e210:	41890c33          	sub	s8,s2,s8
   1e214:	004c2783          	lw	a5,4(s8)
   1e218:	ffc7f793          	andi	a5,a5,-4
   1e21c:	e65ff06f          	j	1e080 <_realloc_r+0xc4>
   1e220:	02812403          	lw	s0,40(sp)
   1e224:	02c12083          	lw	ra,44(sp)
   1e228:	02412483          	lw	s1,36(sp)
   1e22c:	02012903          	lw	s2,32(sp)
   1e230:	01c12983          	lw	s3,28(sp)
   1e234:	01812a03          	lw	s4,24(sp)
   1e238:	01412a83          	lw	s5,20(sp)
   1e23c:	01012b03          	lw	s6,16(sp)
   1e240:	00c12b83          	lw	s7,12(sp)
   1e244:	00812c03          	lw	s8,8(sp)
   1e248:	00060593          	mv	a1,a2
   1e24c:	03010113          	addi	sp,sp,48
   1e250:	868f906f          	j	172b8 <_malloc_r>
   1e254:	00866633          	or	a2,a2,s0
   1e258:	00c92223          	sw	a2,4(s2)
   1e25c:	008905b3          	add	a1,s2,s0
   1e260:	0017e793          	ori	a5,a5,1
   1e264:	00f5a223          	sw	a5,4(a1)
   1e268:	004a2783          	lw	a5,4(s4)
   1e26c:	00858593          	addi	a1,a1,8
   1e270:	000a8513          	mv	a0,s5
   1e274:	0017e793          	ori	a5,a5,1
   1e278:	00fa2223          	sw	a5,4(s4)
   1e27c:	dc1f50ef          	jal	ra,1403c <_free_r>
   1e280:	f75ff06f          	j	1e1f4 <_realloc_r+0x238>
   1e284:	ffc6f693          	andi	a3,a3,-4
   1e288:	00d48633          	add	a2,s1,a3
   1e28c:	01040593          	addi	a1,s0,16
   1e290:	0eb65063          	bge	a2,a1,1e370 <_realloc_r+0x3b4>
   1e294:	0017f793          	andi	a5,a5,1
   1e298:	de0798e3          	bnez	a5,1e088 <_realloc_r+0xcc>
   1e29c:	ff8b2c03          	lw	s8,-8(s6)
   1e2a0:	41890c33          	sub	s8,s2,s8
   1e2a4:	004c2783          	lw	a5,4(s8)
   1e2a8:	ffc7f793          	andi	a5,a5,-4
   1e2ac:	00d786b3          	add	a3,a5,a3
   1e2b0:	00968a33          	add	s4,a3,s1
   1e2b4:	dcba46e3          	blt	s4,a1,1e080 <_realloc_r+0xc4>
   1e2b8:	00cc2783          	lw	a5,12(s8)
   1e2bc:	008c2703          	lw	a4,8(s8)
   1e2c0:	ffc48613          	addi	a2,s1,-4
   1e2c4:	02400693          	li	a3,36
   1e2c8:	00f72623          	sw	a5,12(a4)
   1e2cc:	00e7a423          	sw	a4,8(a5)
   1e2d0:	008c0993          	addi	s3,s8,8
   1e2d4:	22c6e663          	bltu	a3,a2,1e500 <_realloc_r+0x544>
   1e2d8:	01300593          	li	a1,19
   1e2dc:	000b2703          	lw	a4,0(s6)
   1e2e0:	00098793          	mv	a5,s3
   1e2e4:	02c5f263          	bgeu	a1,a2,1e308 <_realloc_r+0x34c>
   1e2e8:	00ec2423          	sw	a4,8(s8)
   1e2ec:	004b2703          	lw	a4,4(s6)
   1e2f0:	01b00793          	li	a5,27
   1e2f4:	00ec2623          	sw	a4,12(s8)
   1e2f8:	24c7ea63          	bltu	a5,a2,1e54c <_realloc_r+0x590>
   1e2fc:	008b2703          	lw	a4,8(s6)
   1e300:	010c0793          	addi	a5,s8,16
   1e304:	008b0b13          	addi	s6,s6,8
   1e308:	00e7a023          	sw	a4,0(a5)
   1e30c:	004b2703          	lw	a4,4(s6)
   1e310:	00e7a223          	sw	a4,4(a5)
   1e314:	008b2703          	lw	a4,8(s6)
   1e318:	00e7a423          	sw	a4,8(a5)
   1e31c:	008c0733          	add	a4,s8,s0
   1e320:	408a07b3          	sub	a5,s4,s0
   1e324:	d8e1ae23          	sw	a4,-612(gp) # 2665c <__malloc_av_+0x8>
   1e328:	0017e793          	ori	a5,a5,1
   1e32c:	00f72223          	sw	a5,4(a4)
   1e330:	004c2783          	lw	a5,4(s8)
   1e334:	000a8513          	mv	a0,s5
   1e338:	0017f793          	andi	a5,a5,1
   1e33c:	0087e433          	or	s0,a5,s0
   1e340:	008c2223          	sw	s0,4(s8)
   1e344:	895f90ef          	jal	ra,17bd8 <__malloc_unlock>
   1e348:	dcdff06f          	j	1e114 <_realloc_r+0x158>
   1e34c:	00d52023          	sw	a3,0(a0)
   1e350:	004b2683          	lw	a3,4(s6)
   1e354:	01b00713          	li	a4,27
   1e358:	00d52223          	sw	a3,4(a0)
   1e35c:	10c76c63          	bltu	a4,a2,1e474 <_realloc_r+0x4b8>
   1e360:	008b0713          	addi	a4,s6,8
   1e364:	00850793          	addi	a5,a0,8
   1e368:	008b2683          	lw	a3,8(s6)
   1e36c:	d65ff06f          	j	1e0d0 <_realloc_r+0x114>
   1e370:	00890933          	add	s2,s2,s0
   1e374:	408607b3          	sub	a5,a2,s0
   1e378:	d921ae23          	sw	s2,-612(gp) # 2665c <__malloc_av_+0x8>
   1e37c:	0017e793          	ori	a5,a5,1
   1e380:	00f92223          	sw	a5,4(s2)
   1e384:	ffcb2783          	lw	a5,-4(s6)
   1e388:	000a8513          	mv	a0,s5
   1e38c:	000b0993          	mv	s3,s6
   1e390:	0017f793          	andi	a5,a5,1
   1e394:	0087e433          	or	s0,a5,s0
   1e398:	fe8b2e23          	sw	s0,-4(s6)
   1e39c:	83df90ef          	jal	ra,17bd8 <__malloc_unlock>
   1e3a0:	d75ff06f          	j	1e114 <_realloc_r+0x158>
   1e3a4:	00ca2783          	lw	a5,12(s4)
   1e3a8:	008a2703          	lw	a4,8(s4)
   1e3ac:	00060493          	mv	s1,a2
   1e3b0:	00c90a33          	add	s4,s2,a2
   1e3b4:	00f72623          	sw	a5,12(a4)
   1e3b8:	00e7a423          	sw	a4,8(a5)
   1e3bc:	e11ff06f          	j	1e1cc <_realloc_r+0x210>
   1e3c0:	ffc52783          	lw	a5,-4(a0)
   1e3c4:	ffc7f793          	andi	a5,a5,-4
   1e3c8:	00f484b3          	add	s1,s1,a5
   1e3cc:	00990a33          	add	s4,s2,s1
   1e3d0:	dfdff06f          	j	1e1cc <_realloc_r+0x210>
   1e3d4:	00cc2703          	lw	a4,12(s8)
   1e3d8:	008c2683          	lw	a3,8(s8)
   1e3dc:	ffc48613          	addi	a2,s1,-4
   1e3e0:	02400593          	li	a1,36
   1e3e4:	00e6a623          	sw	a4,12(a3)
   1e3e8:	00d72423          	sw	a3,8(a4)
   1e3ec:	008c0993          	addi	s3,s8,8
   1e3f0:	017c0a33          	add	s4,s8,s7
   1e3f4:	06c5e263          	bltu	a1,a2,1e458 <_realloc_r+0x49c>
   1e3f8:	01300513          	li	a0,19
   1e3fc:	000b2683          	lw	a3,0(s6)
   1e400:	00098713          	mv	a4,s3
   1e404:	02c57263          	bgeu	a0,a2,1e428 <_realloc_r+0x46c>
   1e408:	00dc2423          	sw	a3,8(s8)
   1e40c:	004b2703          	lw	a4,4(s6)
   1e410:	01b00793          	li	a5,27
   1e414:	00ec2623          	sw	a4,12(s8)
   1e418:	0ac7e063          	bltu	a5,a2,1e4b8 <_realloc_r+0x4fc>
   1e41c:	008b2683          	lw	a3,8(s6)
   1e420:	010c0713          	addi	a4,s8,16
   1e424:	008b0b13          	addi	s6,s6,8
   1e428:	00d72023          	sw	a3,0(a4)
   1e42c:	004b2683          	lw	a3,4(s6)
   1e430:	000b8493          	mv	s1,s7
   1e434:	000c0913          	mv	s2,s8
   1e438:	00d72223          	sw	a3,4(a4)
   1e43c:	008b2783          	lw	a5,8(s6)
   1e440:	00098b13          	mv	s6,s3
   1e444:	00f72423          	sw	a5,8(a4)
   1e448:	d85ff06f          	j	1e1cc <_realloc_r+0x210>
   1e44c:	000b0593          	mv	a1,s6
   1e450:	9edff0ef          	jal	ra,1de3c <memmove>
   1e454:	c91ff06f          	j	1e0e4 <_realloc_r+0x128>
   1e458:	000b0593          	mv	a1,s6
   1e45c:	00098513          	mv	a0,s3
   1e460:	9ddff0ef          	jal	ra,1de3c <memmove>
   1e464:	00098b13          	mv	s6,s3
   1e468:	000b8493          	mv	s1,s7
   1e46c:	000c0913          	mv	s2,s8
   1e470:	d5dff06f          	j	1e1cc <_realloc_r+0x210>
   1e474:	008b2703          	lw	a4,8(s6)
   1e478:	00e52423          	sw	a4,8(a0)
   1e47c:	00cb2703          	lw	a4,12(s6)
   1e480:	00e52623          	sw	a4,12(a0)
   1e484:	00f60a63          	beq	a2,a5,1e498 <_realloc_r+0x4dc>
   1e488:	010b0713          	addi	a4,s6,16
   1e48c:	01050793          	addi	a5,a0,16
   1e490:	010b2683          	lw	a3,16(s6)
   1e494:	c3dff06f          	j	1e0d0 <_realloc_r+0x114>
   1e498:	010b2683          	lw	a3,16(s6)
   1e49c:	018b0713          	addi	a4,s6,24
   1e4a0:	01850793          	addi	a5,a0,24
   1e4a4:	00d52823          	sw	a3,16(a0)
   1e4a8:	014b2683          	lw	a3,20(s6)
   1e4ac:	00d52a23          	sw	a3,20(a0)
   1e4b0:	018b2683          	lw	a3,24(s6)
   1e4b4:	c1dff06f          	j	1e0d0 <_realloc_r+0x114>
   1e4b8:	008b2783          	lw	a5,8(s6)
   1e4bc:	00fc2823          	sw	a5,16(s8)
   1e4c0:	00cb2783          	lw	a5,12(s6)
   1e4c4:	00fc2a23          	sw	a5,20(s8)
   1e4c8:	04b60463          	beq	a2,a1,1e510 <_realloc_r+0x554>
   1e4cc:	010b2683          	lw	a3,16(s6)
   1e4d0:	018c0713          	addi	a4,s8,24
   1e4d4:	010b0b13          	addi	s6,s6,16
   1e4d8:	f51ff06f          	j	1e428 <_realloc_r+0x46c>
   1e4dc:	00ec2823          	sw	a4,16(s8)
   1e4e0:	00cb2703          	lw	a4,12(s6)
   1e4e4:	02400793          	li	a5,36
   1e4e8:	00ec2a23          	sw	a4,20(s8)
   1e4ec:	010b2703          	lw	a4,16(s6)
   1e4f0:	04f60063          	beq	a2,a5,1e530 <_realloc_r+0x574>
   1e4f4:	018c0793          	addi	a5,s8,24
   1e4f8:	010b0b13          	addi	s6,s6,16
   1e4fc:	cb1ff06f          	j	1e1ac <_realloc_r+0x1f0>
   1e500:	000b0593          	mv	a1,s6
   1e504:	00098513          	mv	a0,s3
   1e508:	935ff0ef          	jal	ra,1de3c <memmove>
   1e50c:	e11ff06f          	j	1e31c <_realloc_r+0x360>
   1e510:	010b2783          	lw	a5,16(s6)
   1e514:	020c0713          	addi	a4,s8,32
   1e518:	018b0b13          	addi	s6,s6,24
   1e51c:	00fc2c23          	sw	a5,24(s8)
   1e520:	ffcb2783          	lw	a5,-4(s6)
   1e524:	00fc2e23          	sw	a5,28(s8)
   1e528:	000b2683          	lw	a3,0(s6)
   1e52c:	efdff06f          	j	1e428 <_realloc_r+0x46c>
   1e530:	00ec2c23          	sw	a4,24(s8)
   1e534:	014b2703          	lw	a4,20(s6)
   1e538:	020c0793          	addi	a5,s8,32
   1e53c:	018b0b13          	addi	s6,s6,24
   1e540:	00ec2e23          	sw	a4,28(s8)
   1e544:	000b2703          	lw	a4,0(s6)
   1e548:	c65ff06f          	j	1e1ac <_realloc_r+0x1f0>
   1e54c:	008b2783          	lw	a5,8(s6)
   1e550:	00fc2823          	sw	a5,16(s8)
   1e554:	00cb2783          	lw	a5,12(s6)
   1e558:	00fc2a23          	sw	a5,20(s8)
   1e55c:	010b2703          	lw	a4,16(s6)
   1e560:	00d60863          	beq	a2,a3,1e570 <_realloc_r+0x5b4>
   1e564:	018c0793          	addi	a5,s8,24
   1e568:	010b0b13          	addi	s6,s6,16
   1e56c:	d9dff06f          	j	1e308 <_realloc_r+0x34c>
   1e570:	00ec2c23          	sw	a4,24(s8)
   1e574:	014b2703          	lw	a4,20(s6)
   1e578:	020c0793          	addi	a5,s8,32
   1e57c:	018b0b13          	addi	s6,s6,24
   1e580:	00ec2e23          	sw	a4,28(s8)
   1e584:	000b2703          	lw	a4,0(s6)
   1e588:	d81ff06f          	j	1e308 <_realloc_r+0x34c>

0001e58c <cleanup_glue>:
   1e58c:	ff010113          	addi	sp,sp,-16
   1e590:	00812423          	sw	s0,8(sp)
   1e594:	00058413          	mv	s0,a1
   1e598:	0005a583          	lw	a1,0(a1)
   1e59c:	00912223          	sw	s1,4(sp)
   1e5a0:	00112623          	sw	ra,12(sp)
   1e5a4:	00050493          	mv	s1,a0
   1e5a8:	00058463          	beqz	a1,1e5b0 <cleanup_glue+0x24>
   1e5ac:	fe1ff0ef          	jal	ra,1e58c <cleanup_glue>
   1e5b0:	00040593          	mv	a1,s0
   1e5b4:	00812403          	lw	s0,8(sp)
   1e5b8:	00c12083          	lw	ra,12(sp)
   1e5bc:	00048513          	mv	a0,s1
   1e5c0:	00412483          	lw	s1,4(sp)
   1e5c4:	01010113          	addi	sp,sp,16
   1e5c8:	a75f506f          	j	1403c <_free_r>

0001e5cc <_reclaim_reent>:
   1e5cc:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   1e5d0:	0007a783          	lw	a5,0(a5)
   1e5d4:	10a78263          	beq	a5,a0,1e6d8 <_reclaim_reent+0x10c>
   1e5d8:	04c52703          	lw	a4,76(a0)
   1e5dc:	fe010113          	addi	sp,sp,-32
   1e5e0:	00912a23          	sw	s1,20(sp)
   1e5e4:	00112e23          	sw	ra,28(sp)
   1e5e8:	00812c23          	sw	s0,24(sp)
   1e5ec:	01212823          	sw	s2,16(sp)
   1e5f0:	01312623          	sw	s3,12(sp)
   1e5f4:	00050493          	mv	s1,a0
   1e5f8:	04070263          	beqz	a4,1e63c <_reclaim_reent+0x70>
   1e5fc:	00000913          	li	s2,0
   1e600:	08000993          	li	s3,128
   1e604:	012707b3          	add	a5,a4,s2
   1e608:	0007a583          	lw	a1,0(a5)
   1e60c:	00058e63          	beqz	a1,1e628 <_reclaim_reent+0x5c>
   1e610:	0005a403          	lw	s0,0(a1)
   1e614:	00048513          	mv	a0,s1
   1e618:	a25f50ef          	jal	ra,1403c <_free_r>
   1e61c:	00040593          	mv	a1,s0
   1e620:	fe0418e3          	bnez	s0,1e610 <_reclaim_reent+0x44>
   1e624:	04c4a703          	lw	a4,76(s1)
   1e628:	00490913          	addi	s2,s2,4
   1e62c:	fd391ce3          	bne	s2,s3,1e604 <_reclaim_reent+0x38>
   1e630:	00070593          	mv	a1,a4
   1e634:	00048513          	mv	a0,s1
   1e638:	a05f50ef          	jal	ra,1403c <_free_r>
   1e63c:	0404a583          	lw	a1,64(s1)
   1e640:	00058663          	beqz	a1,1e64c <_reclaim_reent+0x80>
   1e644:	00048513          	mv	a0,s1
   1e648:	9f5f50ef          	jal	ra,1403c <_free_r>
   1e64c:	1484a583          	lw	a1,328(s1)
   1e650:	02058063          	beqz	a1,1e670 <_reclaim_reent+0xa4>
   1e654:	14c48913          	addi	s2,s1,332
   1e658:	01258c63          	beq	a1,s2,1e670 <_reclaim_reent+0xa4>
   1e65c:	0005a403          	lw	s0,0(a1)
   1e660:	00048513          	mv	a0,s1
   1e664:	9d9f50ef          	jal	ra,1403c <_free_r>
   1e668:	00040593          	mv	a1,s0
   1e66c:	fe8918e3          	bne	s2,s0,1e65c <_reclaim_reent+0x90>
   1e670:	0544a583          	lw	a1,84(s1)
   1e674:	00058663          	beqz	a1,1e680 <_reclaim_reent+0xb4>
   1e678:	00048513          	mv	a0,s1
   1e67c:	9c1f50ef          	jal	ra,1403c <_free_r>
   1e680:	0384a783          	lw	a5,56(s1)
   1e684:	02078c63          	beqz	a5,1e6bc <_reclaim_reent+0xf0>
   1e688:	03c4a783          	lw	a5,60(s1)
   1e68c:	00048513          	mv	a0,s1
   1e690:	000780e7          	jalr	a5
   1e694:	2e04a583          	lw	a1,736(s1)
   1e698:	02058263          	beqz	a1,1e6bc <_reclaim_reent+0xf0>
   1e69c:	01812403          	lw	s0,24(sp)
   1e6a0:	01c12083          	lw	ra,28(sp)
   1e6a4:	01012903          	lw	s2,16(sp)
   1e6a8:	00c12983          	lw	s3,12(sp)
   1e6ac:	00048513          	mv	a0,s1
   1e6b0:	01412483          	lw	s1,20(sp)
   1e6b4:	02010113          	addi	sp,sp,32
   1e6b8:	ed5ff06f          	j	1e58c <cleanup_glue>
   1e6bc:	01c12083          	lw	ra,28(sp)
   1e6c0:	01812403          	lw	s0,24(sp)
   1e6c4:	01412483          	lw	s1,20(sp)
   1e6c8:	01012903          	lw	s2,16(sp)
   1e6cc:	00c12983          	lw	s3,12(sp)
   1e6d0:	02010113          	addi	sp,sp,32
   1e6d4:	00008067          	ret
   1e6d8:	00008067          	ret

0001e6dc <__ssprint_r>:
   1e6dc:	00862783          	lw	a5,8(a2)
   1e6e0:	fd010113          	addi	sp,sp,-48
   1e6e4:	01512a23          	sw	s5,20(sp)
   1e6e8:	02112623          	sw	ra,44(sp)
   1e6ec:	02812423          	sw	s0,40(sp)
   1e6f0:	02912223          	sw	s1,36(sp)
   1e6f4:	03212023          	sw	s2,32(sp)
   1e6f8:	01312e23          	sw	s3,28(sp)
   1e6fc:	01412c23          	sw	s4,24(sp)
   1e700:	01612823          	sw	s6,16(sp)
   1e704:	01712623          	sw	s7,12(sp)
   1e708:	01812423          	sw	s8,8(sp)
   1e70c:	00060a93          	mv	s5,a2
   1e710:	14078863          	beqz	a5,1e860 <__ssprint_r+0x184>
   1e714:	00050b13          	mv	s6,a0
   1e718:	00058413          	mv	s0,a1
   1e71c:	00062983          	lw	s3,0(a2)
   1e720:	0005a503          	lw	a0,0(a1)
   1e724:	0085a483          	lw	s1,8(a1)
   1e728:	0d40006f          	j	1e7fc <__ssprint_r+0x120>
   1e72c:	00c45783          	lhu	a5,12(s0)
   1e730:	4807f713          	andi	a4,a5,1152
   1e734:	08070a63          	beqz	a4,1e7c8 <__ssprint_r+0xec>
   1e738:	01442683          	lw	a3,20(s0)
   1e73c:	01042583          	lw	a1,16(s0)
   1e740:	00190713          	addi	a4,s2,1
   1e744:	00169493          	slli	s1,a3,0x1
   1e748:	00d486b3          	add	a3,s1,a3
   1e74c:	01f6d493          	srli	s1,a3,0x1f
   1e750:	40b50a33          	sub	s4,a0,a1
   1e754:	00d484b3          	add	s1,s1,a3
   1e758:	4014d493          	srai	s1,s1,0x1
   1e75c:	01470733          	add	a4,a4,s4
   1e760:	00048613          	mv	a2,s1
   1e764:	00e4f663          	bgeu	s1,a4,1e770 <__ssprint_r+0x94>
   1e768:	00070493          	mv	s1,a4
   1e76c:	00070613          	mv	a2,a4
   1e770:	4007f793          	andi	a5,a5,1024
   1e774:	0a078663          	beqz	a5,1e820 <__ssprint_r+0x144>
   1e778:	00060593          	mv	a1,a2
   1e77c:	000b0513          	mv	a0,s6
   1e780:	b39f80ef          	jal	ra,172b8 <_malloc_r>
   1e784:	00050c13          	mv	s8,a0
   1e788:	0a050a63          	beqz	a0,1e83c <__ssprint_r+0x160>
   1e78c:	01042583          	lw	a1,16(s0)
   1e790:	000a0613          	mv	a2,s4
   1e794:	d8cff0ef          	jal	ra,1dd20 <memcpy>
   1e798:	00c45783          	lhu	a5,12(s0)
   1e79c:	b7f7f793          	andi	a5,a5,-1153
   1e7a0:	0807e793          	ori	a5,a5,128
   1e7a4:	00f41623          	sh	a5,12(s0)
   1e7a8:	014c0533          	add	a0,s8,s4
   1e7ac:	41448a33          	sub	s4,s1,s4
   1e7b0:	00942a23          	sw	s1,20(s0)
   1e7b4:	01442423          	sw	s4,8(s0)
   1e7b8:	01842823          	sw	s8,16(s0)
   1e7bc:	00a42023          	sw	a0,0(s0)
   1e7c0:	00090493          	mv	s1,s2
   1e7c4:	00090a13          	mv	s4,s2
   1e7c8:	000a0613          	mv	a2,s4
   1e7cc:	000b8593          	mv	a1,s7
   1e7d0:	e6cff0ef          	jal	ra,1de3c <memmove>
   1e7d4:	00842703          	lw	a4,8(s0)
   1e7d8:	00042503          	lw	a0,0(s0)
   1e7dc:	008aa783          	lw	a5,8(s5)
   1e7e0:	409704b3          	sub	s1,a4,s1
   1e7e4:	01450533          	add	a0,a0,s4
   1e7e8:	00942423          	sw	s1,8(s0)
   1e7ec:	00a42023          	sw	a0,0(s0)
   1e7f0:	41278933          	sub	s2,a5,s2
   1e7f4:	012aa423          	sw	s2,8(s5)
   1e7f8:	06090463          	beqz	s2,1e860 <__ssprint_r+0x184>
   1e7fc:	0049a903          	lw	s2,4(s3)
   1e800:	0009ab83          	lw	s7,0(s3)
   1e804:	00048a13          	mv	s4,s1
   1e808:	00898993          	addi	s3,s3,8
   1e80c:	fe0908e3          	beqz	s2,1e7fc <__ssprint_r+0x120>
   1e810:	f0997ee3          	bgeu	s2,s1,1e72c <__ssprint_r+0x50>
   1e814:	00090493          	mv	s1,s2
   1e818:	00090a13          	mv	s4,s2
   1e81c:	fadff06f          	j	1e7c8 <__ssprint_r+0xec>
   1e820:	000b0513          	mv	a0,s6
   1e824:	f98ff0ef          	jal	ra,1dfbc <_realloc_r>
   1e828:	00050c13          	mv	s8,a0
   1e82c:	f6051ee3          	bnez	a0,1e7a8 <__ssprint_r+0xcc>
   1e830:	01042583          	lw	a1,16(s0)
   1e834:	000b0513          	mv	a0,s6
   1e838:	805f50ef          	jal	ra,1403c <_free_r>
   1e83c:	00c00793          	li	a5,12
   1e840:	00fb2023          	sw	a5,0(s6)
   1e844:	00c45783          	lhu	a5,12(s0)
   1e848:	fff00513          	li	a0,-1
   1e84c:	0407e793          	ori	a5,a5,64
   1e850:	00f41623          	sh	a5,12(s0)
   1e854:	000aa423          	sw	zero,8(s5)
   1e858:	000aa223          	sw	zero,4(s5)
   1e85c:	00c0006f          	j	1e868 <__ssprint_r+0x18c>
   1e860:	000aa223          	sw	zero,4(s5)
   1e864:	00000513          	li	a0,0
   1e868:	02c12083          	lw	ra,44(sp)
   1e86c:	02812403          	lw	s0,40(sp)
   1e870:	02412483          	lw	s1,36(sp)
   1e874:	02012903          	lw	s2,32(sp)
   1e878:	01c12983          	lw	s3,28(sp)
   1e87c:	01812a03          	lw	s4,24(sp)
   1e880:	01412a83          	lw	s5,20(sp)
   1e884:	01012b03          	lw	s6,16(sp)
   1e888:	00c12b83          	lw	s7,12(sp)
   1e88c:	00812c03          	lw	s8,8(sp)
   1e890:	03010113          	addi	sp,sp,48
   1e894:	00008067          	ret

0001e898 <_svfiprintf_r>:
   1e898:	00c5d783          	lhu	a5,12(a1)
   1e89c:	ed010113          	addi	sp,sp,-304
   1e8a0:	11312e23          	sw	s3,284(sp)
   1e8a4:	11412c23          	sw	s4,280(sp)
   1e8a8:	11812423          	sw	s8,264(sp)
   1e8ac:	12112623          	sw	ra,300(sp)
   1e8b0:	12812423          	sw	s0,296(sp)
   1e8b4:	12912223          	sw	s1,292(sp)
   1e8b8:	13212023          	sw	s2,288(sp)
   1e8bc:	11512a23          	sw	s5,276(sp)
   1e8c0:	11612823          	sw	s6,272(sp)
   1e8c4:	11712623          	sw	s7,268(sp)
   1e8c8:	11912223          	sw	s9,260(sp)
   1e8cc:	11a12023          	sw	s10,256(sp)
   1e8d0:	0fb12e23          	sw	s11,252(sp)
   1e8d4:	0807f793          	andi	a5,a5,128
   1e8d8:	00d12623          	sw	a3,12(sp)
   1e8dc:	00058993          	mv	s3,a1
   1e8e0:	00050a13          	mv	s4,a0
   1e8e4:	00060c13          	mv	s8,a2
   1e8e8:	00078663          	beqz	a5,1e8f4 <_svfiprintf_r+0x5c>
   1e8ec:	0105a783          	lw	a5,16(a1)
   1e8f0:	560786e3          	beqz	a5,1f65c <_svfiprintf_r+0xdc4>
   1e8f4:	ffff87b7          	lui	a5,0xffff8
   1e8f8:	04c10493          	addi	s1,sp,76
   1e8fc:	8307c793          	xori	a5,a5,-2000
   1e900:	04912023          	sw	s1,64(sp)
   1e904:	04012423          	sw	zero,72(sp)
   1e908:	04012223          	sw	zero,68(sp)
   1e90c:	00012823          	sw	zero,16(sp)
   1e910:	00012c23          	sw	zero,24(sp)
   1e914:	02012023          	sw	zero,32(sp)
   1e918:	00012e23          	sw	zero,28(sp)
   1e91c:	00012423          	sw	zero,8(sp)
   1e920:	00007a97          	auipc	s5,0x7
   1e924:	caca8a93          	addi	s5,s5,-852 # 255cc <_ctype_+0x104>
   1e928:	02f12223          	sw	a5,36(sp)
   1e92c:	00048413          	mv	s0,s1
   1e930:	000c0d13          	mv	s10,s8
   1e934:	000d4783          	lbu	a5,0(s10)
   1e938:	12078063          	beqz	a5,1ea58 <_svfiprintf_r+0x1c0>
   1e93c:	02500693          	li	a3,37
   1e940:	4ad786e3          	beq	a5,a3,1f5ec <_svfiprintf_r+0xd54>
   1e944:	000d0913          	mv	s2,s10
   1e948:	00c0006f          	j	1e954 <_svfiprintf_r+0xbc>
   1e94c:	0ed78263          	beq	a5,a3,1ea30 <_svfiprintf_r+0x198>
   1e950:	000b0913          	mv	s2,s6
   1e954:	00194783          	lbu	a5,1(s2)
   1e958:	00190b13          	addi	s6,s2,1
   1e95c:	fe0798e3          	bnez	a5,1e94c <_svfiprintf_r+0xb4>
   1e960:	41ab0c33          	sub	s8,s6,s10
   1e964:	0e0c0a63          	beqz	s8,1ea58 <_svfiprintf_r+0x1c0>
   1e968:	04812703          	lw	a4,72(sp)
   1e96c:	04412783          	lw	a5,68(sp)
   1e970:	01a42023          	sw	s10,0(s0)
   1e974:	01870733          	add	a4,a4,s8
   1e978:	00178793          	addi	a5,a5,1 # ffff8001 <__BSS_END__+0xfffd1519>
   1e97c:	01842223          	sw	s8,4(s0)
   1e980:	04e12423          	sw	a4,72(sp)
   1e984:	04f12223          	sw	a5,68(sp)
   1e988:	00700713          	li	a4,7
   1e98c:	00840413          	addi	s0,s0,8
   1e990:	0af74663          	blt	a4,a5,1ea3c <_svfiprintf_r+0x1a4>
   1e994:	00812703          	lw	a4,8(sp)
   1e998:	00194783          	lbu	a5,1(s2)
   1e99c:	01870733          	add	a4,a4,s8
   1e9a0:	00e12423          	sw	a4,8(sp)
   1e9a4:	0a078a63          	beqz	a5,1ea58 <_svfiprintf_r+0x1c0>
   1e9a8:	001b0d13          	addi	s10,s6,1
   1e9ac:	001b4683          	lbu	a3,1(s6)
   1e9b0:	02010da3          	sb	zero,59(sp)
   1e9b4:	fff00c13          	li	s8,-1
   1e9b8:	00000913          	li	s2,0
   1e9bc:	00000c93          	li	s9,0
   1e9c0:	02a00b13          	li	s6,42
   1e9c4:	001d0d13          	addi	s10,s10,1
   1e9c8:	05a00713          	li	a4,90
   1e9cc:	fe068793          	addi	a5,a3,-32
   1e9d0:	1af76e63          	bltu	a4,a5,1eb8c <_svfiprintf_r+0x2f4>
   1e9d4:	00279793          	slli	a5,a5,0x2
   1e9d8:	015787b3          	add	a5,a5,s5
   1e9dc:	0007a783          	lw	a5,0(a5)
   1e9e0:	015787b3          	add	a5,a5,s5
   1e9e4:	00078067          	jr	a5
   1e9e8:	000a0513          	mv	a0,s4
   1e9ec:	e34f80ef          	jal	ra,17020 <_localeconv_r>
   1e9f0:	00452783          	lw	a5,4(a0)
   1e9f4:	00078513          	mv	a0,a5
   1e9f8:	00f12e23          	sw	a5,28(sp)
   1e9fc:	805fa0ef          	jal	ra,19200 <strlen>
   1ea00:	02a12023          	sw	a0,32(sp)
   1ea04:	00050b93          	mv	s7,a0
   1ea08:	000a0513          	mv	a0,s4
   1ea0c:	e14f80ef          	jal	ra,17020 <_localeconv_r>
   1ea10:	00852783          	lw	a5,8(a0)
   1ea14:	00f12c23          	sw	a5,24(sp)
   1ea18:	3c0b9ee3          	bnez	s7,1f5f4 <_svfiprintf_r+0xd5c>
   1ea1c:	000d4683          	lbu	a3,0(s10)
   1ea20:	fa5ff06f          	j	1e9c4 <_svfiprintf_r+0x12c>
   1ea24:	020cec93          	ori	s9,s9,32
   1ea28:	000d4683          	lbu	a3,0(s10)
   1ea2c:	f99ff06f          	j	1e9c4 <_svfiprintf_r+0x12c>
   1ea30:	41ab0c33          	sub	s8,s6,s10
   1ea34:	f60c0ae3          	beqz	s8,1e9a8 <_svfiprintf_r+0x110>
   1ea38:	f31ff06f          	j	1e968 <_svfiprintf_r+0xd0>
   1ea3c:	04010613          	addi	a2,sp,64
   1ea40:	00098593          	mv	a1,s3
   1ea44:	000a0513          	mv	a0,s4
   1ea48:	c95ff0ef          	jal	ra,1e6dc <__ssprint_r>
   1ea4c:	02051263          	bnez	a0,1ea70 <_svfiprintf_r+0x1d8>
   1ea50:	00048413          	mv	s0,s1
   1ea54:	f41ff06f          	j	1e994 <_svfiprintf_r+0xfc>
   1ea58:	04812783          	lw	a5,72(sp)
   1ea5c:	00078a63          	beqz	a5,1ea70 <_svfiprintf_r+0x1d8>
   1ea60:	04010613          	addi	a2,sp,64
   1ea64:	00098593          	mv	a1,s3
   1ea68:	000a0513          	mv	a0,s4
   1ea6c:	c71ff0ef          	jal	ra,1e6dc <__ssprint_r>
   1ea70:	00c9d783          	lhu	a5,12(s3)
   1ea74:	0407f793          	andi	a5,a5,64
   1ea78:	6a0792e3          	bnez	a5,1f91c <_svfiprintf_r+0x1084>
   1ea7c:	12c12083          	lw	ra,300(sp)
   1ea80:	12812403          	lw	s0,296(sp)
   1ea84:	00812503          	lw	a0,8(sp)
   1ea88:	12412483          	lw	s1,292(sp)
   1ea8c:	12012903          	lw	s2,288(sp)
   1ea90:	11c12983          	lw	s3,284(sp)
   1ea94:	11812a03          	lw	s4,280(sp)
   1ea98:	11412a83          	lw	s5,276(sp)
   1ea9c:	11012b03          	lw	s6,272(sp)
   1eaa0:	10c12b83          	lw	s7,268(sp)
   1eaa4:	10812c03          	lw	s8,264(sp)
   1eaa8:	10412c83          	lw	s9,260(sp)
   1eaac:	10012d03          	lw	s10,256(sp)
   1eab0:	0fc12d83          	lw	s11,252(sp)
   1eab4:	13010113          	addi	sp,sp,304
   1eab8:	00008067          	ret
   1eabc:	00006797          	auipc	a5,0x6
   1eac0:	31c78793          	addi	a5,a5,796 # 24dd8 <zeroes.4505+0x34>
   1eac4:	00f12823          	sw	a5,16(sp)
   1eac8:	020cf793          	andi	a5,s9,32
   1eacc:	4c078663          	beqz	a5,1ef98 <_svfiprintf_r+0x700>
   1ead0:	00c12783          	lw	a5,12(sp)
   1ead4:	00778613          	addi	a2,a5,7
   1ead8:	ff867613          	andi	a2,a2,-8
   1eadc:	00062d83          	lw	s11,0(a2)
   1eae0:	00462303          	lw	t1,4(a2)
   1eae4:	00860793          	addi	a5,a2,8
   1eae8:	00f12623          	sw	a5,12(sp)
   1eaec:	001cf613          	andi	a2,s9,1
   1eaf0:	00060663          	beqz	a2,1eafc <_svfiprintf_r+0x264>
   1eaf4:	006de633          	or	a2,s11,t1
   1eaf8:	30061ce3          	bnez	a2,1f610 <_svfiprintf_r+0xd78>
   1eafc:	bffcfb13          	andi	s6,s9,-1025
   1eb00:	00200693          	li	a3,2
   1eb04:	02010da3          	sb	zero,59(sp)
   1eb08:	fff00613          	li	a2,-1
   1eb0c:	5ecc0c63          	beq	s8,a2,1f104 <_svfiprintf_r+0x86c>
   1eb10:	006de633          	or	a2,s11,t1
   1eb14:	f7fb7c93          	andi	s9,s6,-129
   1eb18:	100616e3          	bnez	a2,1f424 <_svfiprintf_r+0xb8c>
   1eb1c:	6c0c1a63          	bnez	s8,1f1f0 <_svfiprintf_r+0x958>
   1eb20:	26069ee3          	bnez	a3,1f59c <_svfiprintf_r+0xd04>
   1eb24:	001b7d93          	andi	s11,s6,1
   1eb28:	0f010b93          	addi	s7,sp,240
   1eb2c:	000d8863          	beqz	s11,1eb3c <_svfiprintf_r+0x2a4>
   1eb30:	03000793          	li	a5,48
   1eb34:	0ef107a3          	sb	a5,239(sp)
   1eb38:	0ef10b93          	addi	s7,sp,239
   1eb3c:	000c0b13          	mv	s6,s8
   1eb40:	01bc5463          	bge	s8,s11,1eb48 <_svfiprintf_r+0x2b0>
   1eb44:	000d8b13          	mv	s6,s11
   1eb48:	03b14783          	lbu	a5,59(sp)
   1eb4c:	00f037b3          	snez	a5,a5
   1eb50:	00fb0b33          	add	s6,s6,a5
   1eb54:	0540006f          	j	1eba8 <_svfiprintf_r+0x310>
   1eb58:	00000913          	li	s2,0
   1eb5c:	fd068613          	addi	a2,a3,-48
   1eb60:	001d0d13          	addi	s10,s10,1
   1eb64:	00291793          	slli	a5,s2,0x2
   1eb68:	fffd4683          	lbu	a3,-1(s10)
   1eb6c:	01278933          	add	s2,a5,s2
   1eb70:	00191913          	slli	s2,s2,0x1
   1eb74:	01260933          	add	s2,a2,s2
   1eb78:	00900793          	li	a5,9
   1eb7c:	fd068613          	addi	a2,a3,-48
   1eb80:	fec7f0e3          	bgeu	a5,a2,1eb60 <_svfiprintf_r+0x2c8>
   1eb84:	fe068793          	addi	a5,a3,-32
   1eb88:	e4f776e3          	bgeu	a4,a5,1e9d4 <_svfiprintf_r+0x13c>
   1eb8c:	ec0686e3          	beqz	a3,1ea58 <_svfiprintf_r+0x1c0>
   1eb90:	08d10623          	sb	a3,140(sp)
   1eb94:	02010da3          	sb	zero,59(sp)
   1eb98:	00100b13          	li	s6,1
   1eb9c:	00100d93          	li	s11,1
   1eba0:	08c10b93          	addi	s7,sp,140
   1eba4:	00000c13          	li	s8,0
   1eba8:	002cff13          	andi	t5,s9,2
   1ebac:	000f0463          	beqz	t5,1ebb4 <_svfiprintf_r+0x31c>
   1ebb0:	002b0b13          	addi	s6,s6,2
   1ebb4:	084cfe93          	andi	t4,s9,132
   1ebb8:	04812783          	lw	a5,72(sp)
   1ebbc:	04412603          	lw	a2,68(sp)
   1ebc0:	000e9663          	bnez	t4,1ebcc <_svfiprintf_r+0x334>
   1ebc4:	416906b3          	sub	a3,s2,s6
   1ebc8:	06d042e3          	bgtz	a3,1f42c <_svfiprintf_r+0xb94>
   1ebcc:	03b14503          	lbu	a0,59(sp)
   1ebd0:	00160593          	addi	a1,a2,1
   1ebd4:	00840693          	addi	a3,s0,8
   1ebd8:	04050063          	beqz	a0,1ec18 <_svfiprintf_r+0x380>
   1ebdc:	03b10513          	addi	a0,sp,59
   1ebe0:	00178793          	addi	a5,a5,1
   1ebe4:	00a42023          	sw	a0,0(s0)
   1ebe8:	00100513          	li	a0,1
   1ebec:	00a42223          	sw	a0,4(s0)
   1ebf0:	04f12423          	sw	a5,72(sp)
   1ebf4:	04b12223          	sw	a1,68(sp)
   1ebf8:	00700513          	li	a0,7
   1ebfc:	12b546e3          	blt	a0,a1,1f528 <_svfiprintf_r+0xc90>
   1ec00:	00260313          	addi	t1,a2,2
   1ec04:	01040513          	addi	a0,s0,16
   1ec08:	00058613          	mv	a2,a1
   1ec0c:	00068413          	mv	s0,a3
   1ec10:	00030593          	mv	a1,t1
   1ec14:	00050693          	mv	a3,a0
   1ec18:	020f0c63          	beqz	t5,1ec50 <_svfiprintf_r+0x3b8>
   1ec1c:	03c10613          	addi	a2,sp,60
   1ec20:	00278793          	addi	a5,a5,2
   1ec24:	00c42023          	sw	a2,0(s0)
   1ec28:	00200613          	li	a2,2
   1ec2c:	00c42223          	sw	a2,4(s0)
   1ec30:	04f12423          	sw	a5,72(sp)
   1ec34:	04b12223          	sw	a1,68(sp)
   1ec38:	00700613          	li	a2,7
   1ec3c:	12b644e3          	blt	a2,a1,1f564 <_svfiprintf_r+0xccc>
   1ec40:	00058613          	mv	a2,a1
   1ec44:	00068413          	mv	s0,a3
   1ec48:	00158593          	addi	a1,a1,1
   1ec4c:	00868693          	addi	a3,a3,8
   1ec50:	08000513          	li	a0,128
   1ec54:	5eae8a63          	beq	t4,a0,1f248 <_svfiprintf_r+0x9b0>
   1ec58:	41bc0c33          	sub	s8,s8,s11
   1ec5c:	6d804063          	bgtz	s8,1f31c <_svfiprintf_r+0xa84>
   1ec60:	00fd87b3          	add	a5,s11,a5
   1ec64:	01742023          	sw	s7,0(s0)
   1ec68:	01b42223          	sw	s11,4(s0)
   1ec6c:	04f12423          	sw	a5,72(sp)
   1ec70:	04b12223          	sw	a1,68(sp)
   1ec74:	00700613          	li	a2,7
   1ec78:	76b64a63          	blt	a2,a1,1f3ec <_svfiprintf_r+0xb54>
   1ec7c:	004cf813          	andi	a6,s9,4
   1ec80:	00080663          	beqz	a6,1ec8c <_svfiprintf_r+0x3f4>
   1ec84:	41690433          	sub	s0,s2,s6
   1ec88:	1e804263          	bgtz	s0,1ee6c <_svfiprintf_r+0x5d4>
   1ec8c:	01695463          	bge	s2,s6,1ec94 <_svfiprintf_r+0x3fc>
   1ec90:	000b0913          	mv	s2,s6
   1ec94:	00812703          	lw	a4,8(sp)
   1ec98:	01270733          	add	a4,a4,s2
   1ec9c:	00e12423          	sw	a4,8(sp)
   1eca0:	76079663          	bnez	a5,1f40c <_svfiprintf_r+0xb74>
   1eca4:	04012223          	sw	zero,68(sp)
   1eca8:	00048413          	mv	s0,s1
   1ecac:	c89ff06f          	j	1e934 <_svfiprintf_r+0x9c>
   1ecb0:	00c12783          	lw	a5,12(sp)
   1ecb4:	02010da3          	sb	zero,59(sp)
   1ecb8:	0007ab83          	lw	s7,0(a5)
   1ecbc:	00478713          	addi	a4,a5,4
   1ecc0:	2e0b82e3          	beqz	s7,1f7a4 <_svfiprintf_r+0xf0c>
   1ecc4:	fff00793          	li	a5,-1
   1ecc8:	00e12623          	sw	a4,12(sp)
   1eccc:	16fc0ee3          	beq	s8,a5,1f648 <_svfiprintf_r+0xdb0>
   1ecd0:	000c0613          	mv	a2,s8
   1ecd4:	00000593          	li	a1,0
   1ecd8:	000b8513          	mv	a0,s7
   1ecdc:	e1df80ef          	jal	ra,17af8 <memchr>
   1ece0:	00c12703          	lw	a4,12(sp)
   1ece4:	40050ae3          	beqz	a0,1f8f8 <_svfiprintf_r+0x1060>
   1ece8:	41750db3          	sub	s11,a0,s7
   1ecec:	00000c13          	li	s8,0
   1ecf0:	e4dff06f          	j	1eb3c <_svfiprintf_r+0x2a4>
   1ecf4:	020cf793          	andi	a5,s9,32
   1ecf8:	010ce813          	ori	a6,s9,16
   1ecfc:	46079e63          	bnez	a5,1f178 <_svfiprintf_r+0x8e0>
   1ed00:	00c12783          	lw	a5,12(sp)
   1ed04:	00478693          	addi	a3,a5,4
   1ed08:	00c12783          	lw	a5,12(sp)
   1ed0c:	00000313          	li	t1,0
   1ed10:	00d12623          	sw	a3,12(sp)
   1ed14:	0007ad83          	lw	s11,0(a5)
   1ed18:	47c0006f          	j	1f194 <_svfiprintf_r+0x8fc>
   1ed1c:	020cf793          	andi	a5,s9,32
   1ed20:	010ceb13          	ori	s6,s9,16
   1ed24:	48079063          	bnez	a5,1f1a4 <_svfiprintf_r+0x90c>
   1ed28:	00c12783          	lw	a5,12(sp)
   1ed2c:	00478693          	addi	a3,a5,4
   1ed30:	00c12783          	lw	a5,12(sp)
   1ed34:	00000313          	li	t1,0
   1ed38:	00d12623          	sw	a3,12(sp)
   1ed3c:	0007ad83          	lw	s11,0(a5)
   1ed40:	00100693          	li	a3,1
   1ed44:	dc1ff06f          	j	1eb04 <_svfiprintf_r+0x26c>
   1ed48:	080cec93          	ori	s9,s9,128
   1ed4c:	000d4683          	lbu	a3,0(s10)
   1ed50:	c75ff06f          	j	1e9c4 <_svfiprintf_r+0x12c>
   1ed54:	000d4683          	lbu	a3,0(s10)
   1ed58:	001d0793          	addi	a5,s10,1
   1ed5c:	3d6686e3          	beq	a3,s6,1f928 <_svfiprintf_r+0x1090>
   1ed60:	00078d13          	mv	s10,a5
   1ed64:	fd068613          	addi	a2,a3,-48
   1ed68:	00900793          	li	a5,9
   1ed6c:	00000c13          	li	s8,0
   1ed70:	c4c7eee3          	bltu	a5,a2,1e9cc <_svfiprintf_r+0x134>
   1ed74:	001d0d13          	addi	s10,s10,1
   1ed78:	002c1793          	slli	a5,s8,0x2
   1ed7c:	fffd4683          	lbu	a3,-1(s10)
   1ed80:	01878c33          	add	s8,a5,s8
   1ed84:	001c1c13          	slli	s8,s8,0x1
   1ed88:	00cc0c33          	add	s8,s8,a2
   1ed8c:	00900793          	li	a5,9
   1ed90:	fd068613          	addi	a2,a3,-48
   1ed94:	fec7f0e3          	bgeu	a5,a2,1ed74 <_svfiprintf_r+0x4dc>
   1ed98:	c35ff06f          	j	1e9cc <_svfiprintf_r+0x134>
   1ed9c:	000d4683          	lbu	a3,0(s10)
   1eda0:	004cec93          	ori	s9,s9,4
   1eda4:	c21ff06f          	j	1e9c4 <_svfiprintf_r+0x12c>
   1eda8:	02b00793          	li	a5,43
   1edac:	02f10da3          	sb	a5,59(sp)
   1edb0:	000d4683          	lbu	a3,0(s10)
   1edb4:	c11ff06f          	j	1e9c4 <_svfiprintf_r+0x12c>
   1edb8:	00c12783          	lw	a5,12(sp)
   1edbc:	000d4683          	lbu	a3,0(s10)
   1edc0:	0007a903          	lw	s2,0(a5)
   1edc4:	00478793          	addi	a5,a5,4
   1edc8:	00f12623          	sw	a5,12(sp)
   1edcc:	be095ce3          	bgez	s2,1e9c4 <_svfiprintf_r+0x12c>
   1edd0:	41200933          	neg	s2,s2
   1edd4:	004cec93          	ori	s9,s9,4
   1edd8:	bedff06f          	j	1e9c4 <_svfiprintf_r+0x12c>
   1eddc:	020cf793          	andi	a5,s9,32
   1ede0:	010ceb13          	ori	s6,s9,16
   1ede4:	3e079463          	bnez	a5,1f1cc <_svfiprintf_r+0x934>
   1ede8:	00c12783          	lw	a5,12(sp)
   1edec:	00478693          	addi	a3,a5,4
   1edf0:	00c12783          	lw	a5,12(sp)
   1edf4:	00d12623          	sw	a3,12(sp)
   1edf8:	0007ad83          	lw	s11,0(a5)
   1edfc:	41fdd313          	srai	t1,s11,0x1f
   1ee00:	00030693          	mv	a3,t1
   1ee04:	2c06cc63          	bltz	a3,1f0dc <_svfiprintf_r+0x844>
   1ee08:	fff00693          	li	a3,-1
   1ee0c:	00dc0a63          	beq	s8,a3,1ee20 <_svfiprintf_r+0x588>
   1ee10:	006de6b3          	or	a3,s11,t1
   1ee14:	f7fb7c93          	andi	s9,s6,-129
   1ee18:	78068063          	beqz	a3,1f598 <_svfiprintf_r+0xd00>
   1ee1c:	000c8b13          	mv	s6,s9
   1ee20:	04031ee3          	bnez	t1,1f67c <_svfiprintf_r+0xde4>
   1ee24:	00900793          	li	a5,9
   1ee28:	05b7eae3          	bltu	a5,s11,1f67c <_svfiprintf_r+0xde4>
   1ee2c:	030d8793          	addi	a5,s11,48
   1ee30:	0ef107a3          	sb	a5,239(sp)
   1ee34:	000b0c93          	mv	s9,s6
   1ee38:	00100d93          	li	s11,1
   1ee3c:	0ef10b93          	addi	s7,sp,239
   1ee40:	cfdff06f          	j	1eb3c <_svfiprintf_r+0x2a4>
   1ee44:	00c12703          	lw	a4,12(sp)
   1ee48:	02010da3          	sb	zero,59(sp)
   1ee4c:	00100b13          	li	s6,1
   1ee50:	00072783          	lw	a5,0(a4)
   1ee54:	00470713          	addi	a4,a4,4
   1ee58:	00e12623          	sw	a4,12(sp)
   1ee5c:	08f10623          	sb	a5,140(sp)
   1ee60:	00100d93          	li	s11,1
   1ee64:	08c10b93          	addi	s7,sp,140
   1ee68:	d3dff06f          	j	1eba4 <_svfiprintf_r+0x30c>
   1ee6c:	00007317          	auipc	t1,0x7
   1ee70:	8cc30313          	addi	t1,t1,-1844 # 25738 <blanks.4466>
   1ee74:	01000593          	li	a1,16
   1ee78:	04412603          	lw	a2,68(sp)
   1ee7c:	01000c13          	li	s8,16
   1ee80:	00700d93          	li	s11,7
   1ee84:	00030b93          	mv	s7,t1
   1ee88:	0085c863          	blt	a1,s0,1ee98 <_svfiprintf_r+0x600>
   1ee8c:	0580006f          	j	1eee4 <_svfiprintf_r+0x64c>
   1ee90:	ff040413          	addi	s0,s0,-16
   1ee94:	048c5663          	bge	s8,s0,1eee0 <_svfiprintf_r+0x648>
   1ee98:	01078793          	addi	a5,a5,16
   1ee9c:	00160613          	addi	a2,a2,1
   1eea0:	0176a023          	sw	s7,0(a3)
   1eea4:	0186a223          	sw	s8,4(a3)
   1eea8:	04f12423          	sw	a5,72(sp)
   1eeac:	04c12223          	sw	a2,68(sp)
   1eeb0:	00868693          	addi	a3,a3,8
   1eeb4:	fccddee3          	bge	s11,a2,1ee90 <_svfiprintf_r+0x5f8>
   1eeb8:	04010613          	addi	a2,sp,64
   1eebc:	00098593          	mv	a1,s3
   1eec0:	000a0513          	mv	a0,s4
   1eec4:	819ff0ef          	jal	ra,1e6dc <__ssprint_r>
   1eec8:	ba0514e3          	bnez	a0,1ea70 <_svfiprintf_r+0x1d8>
   1eecc:	ff040413          	addi	s0,s0,-16
   1eed0:	04812783          	lw	a5,72(sp)
   1eed4:	04412603          	lw	a2,68(sp)
   1eed8:	00048693          	mv	a3,s1
   1eedc:	fa8c4ee3          	blt	s8,s0,1ee98 <_svfiprintf_r+0x600>
   1eee0:	000b8313          	mv	t1,s7
   1eee4:	008787b3          	add	a5,a5,s0
   1eee8:	00160613          	addi	a2,a2,1
   1eeec:	0066a023          	sw	t1,0(a3)
   1eef0:	0086a223          	sw	s0,4(a3)
   1eef4:	04f12423          	sw	a5,72(sp)
   1eef8:	04c12223          	sw	a2,68(sp)
   1eefc:	00700693          	li	a3,7
   1ef00:	d8c6d6e3          	bge	a3,a2,1ec8c <_svfiprintf_r+0x3f4>
   1ef04:	04010613          	addi	a2,sp,64
   1ef08:	00098593          	mv	a1,s3
   1ef0c:	000a0513          	mv	a0,s4
   1ef10:	fccff0ef          	jal	ra,1e6dc <__ssprint_r>
   1ef14:	b4051ee3          	bnez	a0,1ea70 <_svfiprintf_r+0x1d8>
   1ef18:	04812783          	lw	a5,72(sp)
   1ef1c:	d71ff06f          	j	1ec8c <_svfiprintf_r+0x3f4>
   1ef20:	001cec93          	ori	s9,s9,1
   1ef24:	000d4683          	lbu	a3,0(s10)
   1ef28:	a9dff06f          	j	1e9c4 <_svfiprintf_r+0x12c>
   1ef2c:	03b14783          	lbu	a5,59(sp)
   1ef30:	000d4683          	lbu	a3,0(s10)
   1ef34:	a80798e3          	bnez	a5,1e9c4 <_svfiprintf_r+0x12c>
   1ef38:	02000793          	li	a5,32
   1ef3c:	02f10da3          	sb	a5,59(sp)
   1ef40:	a85ff06f          	j	1e9c4 <_svfiprintf_r+0x12c>
   1ef44:	020cf793          	andi	a5,s9,32
   1ef48:	24079c63          	bnez	a5,1f1a0 <_svfiprintf_r+0x908>
   1ef4c:	00c12783          	lw	a5,12(sp)
   1ef50:	010cf613          	andi	a2,s9,16
   1ef54:	00478693          	addi	a3,a5,4
   1ef58:	0007a783          	lw	a5,0(a5)
   1ef5c:	20061ae3          	bnez	a2,1f970 <_svfiprintf_r+0x10d8>
   1ef60:	040cf613          	andi	a2,s9,64
   1ef64:	060602e3          	beqz	a2,1f7c8 <_svfiprintf_r+0xf30>
   1ef68:	01079d93          	slli	s11,a5,0x10
   1ef6c:	00d12623          	sw	a3,12(sp)
   1ef70:	010ddd93          	srli	s11,s11,0x10
   1ef74:	00000313          	li	t1,0
   1ef78:	000c8b13          	mv	s6,s9
   1ef7c:	00100693          	li	a3,1
   1ef80:	b85ff06f          	j	1eb04 <_svfiprintf_r+0x26c>
   1ef84:	00006797          	auipc	a5,0x6
   1ef88:	e4078793          	addi	a5,a5,-448 # 24dc4 <zeroes.4505+0x20>
   1ef8c:	00f12823          	sw	a5,16(sp)
   1ef90:	020cf793          	andi	a5,s9,32
   1ef94:	b2079ee3          	bnez	a5,1ead0 <_svfiprintf_r+0x238>
   1ef98:	00c12703          	lw	a4,12(sp)
   1ef9c:	010cf613          	andi	a2,s9,16
   1efa0:	00072783          	lw	a5,0(a4)
   1efa4:	00470713          	addi	a4,a4,4
   1efa8:	00e12623          	sw	a4,12(sp)
   1efac:	60061463          	bnez	a2,1f5b4 <_svfiprintf_r+0xd1c>
   1efb0:	040cf613          	andi	a2,s9,64
   1efb4:	5e060c63          	beqz	a2,1f5ac <_svfiprintf_r+0xd14>
   1efb8:	01079d93          	slli	s11,a5,0x10
   1efbc:	010ddd93          	srli	s11,s11,0x10
   1efc0:	00000313          	li	t1,0
   1efc4:	b29ff06f          	j	1eaec <_svfiprintf_r+0x254>
   1efc8:	00c12783          	lw	a5,12(sp)
   1efcc:	02412703          	lw	a4,36(sp)
   1efd0:	00000313          	li	t1,0
   1efd4:	0007ad83          	lw	s11,0(a5)
   1efd8:	00478793          	addi	a5,a5,4
   1efdc:	00f12623          	sw	a5,12(sp)
   1efe0:	00006797          	auipc	a5,0x6
   1efe4:	de478793          	addi	a5,a5,-540 # 24dc4 <zeroes.4505+0x20>
   1efe8:	002ceb13          	ori	s6,s9,2
   1efec:	02e11e23          	sh	a4,60(sp)
   1eff0:	00f12823          	sw	a5,16(sp)
   1eff4:	00200693          	li	a3,2
   1eff8:	b0dff06f          	j	1eb04 <_svfiprintf_r+0x26c>
   1effc:	020cf793          	andi	a5,s9,32
   1f000:	16079a63          	bnez	a5,1f174 <_svfiprintf_r+0x8dc>
   1f004:	00c12783          	lw	a5,12(sp)
   1f008:	010cf613          	andi	a2,s9,16
   1f00c:	00478693          	addi	a3,a5,4
   1f010:	0007a783          	lw	a5,0(a5)
   1f014:	14061ae3          	bnez	a2,1f968 <_svfiprintf_r+0x10d0>
   1f018:	040cf613          	andi	a2,s9,64
   1f01c:	7e060863          	beqz	a2,1f80c <_svfiprintf_r+0xf74>
   1f020:	01079d93          	slli	s11,a5,0x10
   1f024:	010ddd93          	srli	s11,s11,0x10
   1f028:	00000313          	li	t1,0
   1f02c:	000c8813          	mv	a6,s9
   1f030:	00d12623          	sw	a3,12(sp)
   1f034:	1600006f          	j	1f194 <_svfiprintf_r+0x8fc>
   1f038:	00c12703          	lw	a4,12(sp)
   1f03c:	020cf793          	andi	a5,s9,32
   1f040:	00470693          	addi	a3,a4,4
   1f044:	5e079463          	bnez	a5,1f62c <_svfiprintf_r+0xd94>
   1f048:	010cf793          	andi	a5,s9,16
   1f04c:	74079063          	bnez	a5,1f78c <_svfiprintf_r+0xef4>
   1f050:	040cf793          	andi	a5,s9,64
   1f054:	080792e3          	bnez	a5,1f8d8 <_svfiprintf_r+0x1040>
   1f058:	200cf813          	andi	a6,s9,512
   1f05c:	72080863          	beqz	a6,1f78c <_svfiprintf_r+0xef4>
   1f060:	00c12783          	lw	a5,12(sp)
   1f064:	00812703          	lw	a4,8(sp)
   1f068:	00d12623          	sw	a3,12(sp)
   1f06c:	0007a783          	lw	a5,0(a5)
   1f070:	00e78023          	sb	a4,0(a5)
   1f074:	8c1ff06f          	j	1e934 <_svfiprintf_r+0x9c>
   1f078:	000d4683          	lbu	a3,0(s10)
   1f07c:	06c00793          	li	a5,108
   1f080:	6cf68863          	beq	a3,a5,1f750 <_svfiprintf_r+0xeb8>
   1f084:	010cec93          	ori	s9,s9,16
   1f088:	93dff06f          	j	1e9c4 <_svfiprintf_r+0x12c>
   1f08c:	000d4683          	lbu	a3,0(s10)
   1f090:	06800793          	li	a5,104
   1f094:	6af68663          	beq	a3,a5,1f740 <_svfiprintf_r+0xea8>
   1f098:	040cec93          	ori	s9,s9,64
   1f09c:	929ff06f          	j	1e9c4 <_svfiprintf_r+0x12c>
   1f0a0:	020cf793          	andi	a5,s9,32
   1f0a4:	12079263          	bnez	a5,1f1c8 <_svfiprintf_r+0x930>
   1f0a8:	00c12703          	lw	a4,12(sp)
   1f0ac:	010cf793          	andi	a5,s9,16
   1f0b0:	00470693          	addi	a3,a4,4
   1f0b4:	0a0796e3          	bnez	a5,1f960 <_svfiprintf_r+0x10c8>
   1f0b8:	040cf793          	andi	a5,s9,64
   1f0bc:	72078663          	beqz	a5,1f7e8 <_svfiprintf_r+0xf50>
   1f0c0:	00c12783          	lw	a5,12(sp)
   1f0c4:	00d12623          	sw	a3,12(sp)
   1f0c8:	000c8b13          	mv	s6,s9
   1f0cc:	00079d83          	lh	s11,0(a5)
   1f0d0:	41fdd313          	srai	t1,s11,0x1f
   1f0d4:	00030693          	mv	a3,t1
   1f0d8:	d206d8e3          	bgez	a3,1ee08 <_svfiprintf_r+0x570>
   1f0dc:	41b007b3          	neg	a5,s11
   1f0e0:	00f036b3          	snez	a3,a5
   1f0e4:	40600333          	neg	t1,t1
   1f0e8:	40d30333          	sub	t1,t1,a3
   1f0ec:	02d00693          	li	a3,45
   1f0f0:	02d10da3          	sb	a3,59(sp)
   1f0f4:	fff00613          	li	a2,-1
   1f0f8:	00078d93          	mv	s11,a5
   1f0fc:	00100693          	li	a3,1
   1f100:	a0cc18e3          	bne	s8,a2,1eb10 <_svfiprintf_r+0x278>
   1f104:	00100613          	li	a2,1
   1f108:	d0c68ce3          	beq	a3,a2,1ee20 <_svfiprintf_r+0x588>
   1f10c:	00200613          	li	a2,2
   1f110:	0ec68a63          	beq	a3,a2,1f204 <_svfiprintf_r+0x96c>
   1f114:	0f010613          	addi	a2,sp,240
   1f118:	0080006f          	j	1f120 <_svfiprintf_r+0x888>
   1f11c:	000b8613          	mv	a2,s7
   1f120:	01d31793          	slli	a5,t1,0x1d
   1f124:	007df693          	andi	a3,s11,7
   1f128:	003ddd93          	srli	s11,s11,0x3
   1f12c:	03068693          	addi	a3,a3,48
   1f130:	01b7edb3          	or	s11,a5,s11
   1f134:	00335313          	srli	t1,t1,0x3
   1f138:	fed60fa3          	sb	a3,-1(a2)
   1f13c:	006de7b3          	or	a5,s11,t1
   1f140:	fff60b93          	addi	s7,a2,-1
   1f144:	fc079ce3          	bnez	a5,1f11c <_svfiprintf_r+0x884>
   1f148:	001b7793          	andi	a5,s6,1
   1f14c:	0e078663          	beqz	a5,1f238 <_svfiprintf_r+0x9a0>
   1f150:	03000793          	li	a5,48
   1f154:	0ef68263          	beq	a3,a5,1f238 <_svfiprintf_r+0x9a0>
   1f158:	ffe60613          	addi	a2,a2,-2
   1f15c:	fefb8fa3          	sb	a5,-1(s7) # 7fffffff <__BSS_END__+0x7ffd9517>
   1f160:	0f010793          	addi	a5,sp,240
   1f164:	40c78db3          	sub	s11,a5,a2
   1f168:	000b0c93          	mv	s9,s6
   1f16c:	00060b93          	mv	s7,a2
   1f170:	9cdff06f          	j	1eb3c <_svfiprintf_r+0x2a4>
   1f174:	000c8813          	mv	a6,s9
   1f178:	00c12783          	lw	a5,12(sp)
   1f17c:	00778693          	addi	a3,a5,7
   1f180:	ff86f693          	andi	a3,a3,-8
   1f184:	0006ad83          	lw	s11,0(a3)
   1f188:	0046a303          	lw	t1,4(a3)
   1f18c:	00868793          	addi	a5,a3,8
   1f190:	00f12623          	sw	a5,12(sp)
   1f194:	bff87b13          	andi	s6,a6,-1025
   1f198:	00000693          	li	a3,0
   1f19c:	969ff06f          	j	1eb04 <_svfiprintf_r+0x26c>
   1f1a0:	000c8b13          	mv	s6,s9
   1f1a4:	00c12783          	lw	a5,12(sp)
   1f1a8:	00778693          	addi	a3,a5,7
   1f1ac:	ff86f693          	andi	a3,a3,-8
   1f1b0:	00868793          	addi	a5,a3,8
   1f1b4:	0006ad83          	lw	s11,0(a3)
   1f1b8:	0046a303          	lw	t1,4(a3)
   1f1bc:	00f12623          	sw	a5,12(sp)
   1f1c0:	00100693          	li	a3,1
   1f1c4:	941ff06f          	j	1eb04 <_svfiprintf_r+0x26c>
   1f1c8:	000c8b13          	mv	s6,s9
   1f1cc:	00c12783          	lw	a5,12(sp)
   1f1d0:	00778793          	addi	a5,a5,7
   1f1d4:	ff87f793          	andi	a5,a5,-8
   1f1d8:	0047a683          	lw	a3,4(a5)
   1f1dc:	00878713          	addi	a4,a5,8
   1f1e0:	00e12623          	sw	a4,12(sp)
   1f1e4:	0007ad83          	lw	s11,0(a5)
   1f1e8:	00068313          	mv	t1,a3
   1f1ec:	c19ff06f          	j	1ee04 <_svfiprintf_r+0x56c>
   1f1f0:	00100613          	li	a2,1
   1f1f4:	6ec68e63          	beq	a3,a2,1f8f0 <_svfiprintf_r+0x1058>
   1f1f8:	00200613          	li	a2,2
   1f1fc:	000c8b13          	mv	s6,s9
   1f200:	f0c69ae3          	bne	a3,a2,1f114 <_svfiprintf_r+0x87c>
   1f204:	01012683          	lw	a3,16(sp)
   1f208:	0f010b93          	addi	s7,sp,240
   1f20c:	00fdf793          	andi	a5,s11,15
   1f210:	00f687b3          	add	a5,a3,a5
   1f214:	0007c783          	lbu	a5,0(a5)
   1f218:	01c31713          	slli	a4,t1,0x1c
   1f21c:	004ddd93          	srli	s11,s11,0x4
   1f220:	fffb8b93          	addi	s7,s7,-1
   1f224:	01b76db3          	or	s11,a4,s11
   1f228:	00435313          	srli	t1,t1,0x4
   1f22c:	00fb8023          	sb	a5,0(s7)
   1f230:	006de7b3          	or	a5,s11,t1
   1f234:	fc079ce3          	bnez	a5,1f20c <_svfiprintf_r+0x974>
   1f238:	0f010793          	addi	a5,sp,240
   1f23c:	41778db3          	sub	s11,a5,s7
   1f240:	000b0c93          	mv	s9,s6
   1f244:	8f9ff06f          	j	1eb3c <_svfiprintf_r+0x2a4>
   1f248:	41690e33          	sub	t3,s2,s6
   1f24c:	a1c056e3          	blez	t3,1ec58 <_svfiprintf_r+0x3c0>
   1f250:	01000513          	li	a0,16
   1f254:	6bc55a63          	bge	a0,t3,1f908 <_svfiprintf_r+0x1070>
   1f258:	00006317          	auipc	t1,0x6
   1f25c:	4f030313          	addi	t1,t1,1264 # 25748 <zeroes.4467>
   1f260:	01212a23          	sw	s2,20(sp)
   1f264:	03612423          	sw	s6,40(sp)
   1f268:	01000693          	li	a3,16
   1f26c:	00700e93          	li	t4,7
   1f270:	000e0913          	mv	s2,t3
   1f274:	00030b13          	mv	s6,t1
   1f278:	00c0006f          	j	1f284 <_svfiprintf_r+0x9ec>
   1f27c:	ff090913          	addi	s2,s2,-16
   1f280:	0526da63          	bge	a3,s2,1f2d4 <_svfiprintf_r+0xa3c>
   1f284:	01078793          	addi	a5,a5,16
   1f288:	00160613          	addi	a2,a2,1
   1f28c:	01642023          	sw	s6,0(s0)
   1f290:	00d42223          	sw	a3,4(s0)
   1f294:	04f12423          	sw	a5,72(sp)
   1f298:	04c12223          	sw	a2,68(sp)
   1f29c:	00840413          	addi	s0,s0,8
   1f2a0:	fccedee3          	bge	t4,a2,1f27c <_svfiprintf_r+0x9e4>
   1f2a4:	04010613          	addi	a2,sp,64
   1f2a8:	00098593          	mv	a1,s3
   1f2ac:	000a0513          	mv	a0,s4
   1f2b0:	c2cff0ef          	jal	ra,1e6dc <__ssprint_r>
   1f2b4:	fa051e63          	bnez	a0,1ea70 <_svfiprintf_r+0x1d8>
   1f2b8:	01000693          	li	a3,16
   1f2bc:	ff090913          	addi	s2,s2,-16
   1f2c0:	04812783          	lw	a5,72(sp)
   1f2c4:	04412603          	lw	a2,68(sp)
   1f2c8:	00048413          	mv	s0,s1
   1f2cc:	00700e93          	li	t4,7
   1f2d0:	fb26cae3          	blt	a3,s2,1f284 <_svfiprintf_r+0x9ec>
   1f2d4:	00090e13          	mv	t3,s2
   1f2d8:	000b0313          	mv	t1,s6
   1f2dc:	01412903          	lw	s2,20(sp)
   1f2e0:	02812b03          	lw	s6,40(sp)
   1f2e4:	00160613          	addi	a2,a2,1
   1f2e8:	00840513          	addi	a0,s0,8
   1f2ec:	01c787b3          	add	a5,a5,t3
   1f2f0:	00642023          	sw	t1,0(s0)
   1f2f4:	01c42223          	sw	t3,4(s0)
   1f2f8:	04f12423          	sw	a5,72(sp)
   1f2fc:	04c12223          	sw	a2,68(sp)
   1f300:	00700693          	li	a3,7
   1f304:	44c6ce63          	blt	a3,a2,1f760 <_svfiprintf_r+0xec8>
   1f308:	41bc0c33          	sub	s8,s8,s11
   1f30c:	00160593          	addi	a1,a2,1
   1f310:	00850693          	addi	a3,a0,8
   1f314:	00050413          	mv	s0,a0
   1f318:	958054e3          	blez	s8,1ec60 <_svfiprintf_r+0x3c8>
   1f31c:	01000513          	li	a0,16
   1f320:	51855463          	bge	a0,s8,1f828 <_svfiprintf_r+0xf90>
   1f324:	00006317          	auipc	t1,0x6
   1f328:	42430313          	addi	t1,t1,1060 # 25748 <zeroes.4467>
   1f32c:	01212a23          	sw	s2,20(sp)
   1f330:	01000693          	li	a3,16
   1f334:	00700e13          	li	t3,7
   1f338:	00030913          	mv	s2,t1
   1f33c:	00c0006f          	j	1f348 <_svfiprintf_r+0xab0>
   1f340:	ff0c0c13          	addi	s8,s8,-16
   1f344:	0586da63          	bge	a3,s8,1f398 <_svfiprintf_r+0xb00>
   1f348:	01078793          	addi	a5,a5,16
   1f34c:	00160613          	addi	a2,a2,1
   1f350:	01242023          	sw	s2,0(s0)
   1f354:	00d42223          	sw	a3,4(s0)
   1f358:	04f12423          	sw	a5,72(sp)
   1f35c:	04c12223          	sw	a2,68(sp)
   1f360:	00840413          	addi	s0,s0,8
   1f364:	fcce5ee3          	bge	t3,a2,1f340 <_svfiprintf_r+0xaa8>
   1f368:	04010613          	addi	a2,sp,64
   1f36c:	00098593          	mv	a1,s3
   1f370:	000a0513          	mv	a0,s4
   1f374:	b68ff0ef          	jal	ra,1e6dc <__ssprint_r>
   1f378:	ee051c63          	bnez	a0,1ea70 <_svfiprintf_r+0x1d8>
   1f37c:	01000693          	li	a3,16
   1f380:	ff0c0c13          	addi	s8,s8,-16
   1f384:	04812783          	lw	a5,72(sp)
   1f388:	04412603          	lw	a2,68(sp)
   1f38c:	00048413          	mv	s0,s1
   1f390:	00700e13          	li	t3,7
   1f394:	fb86cae3          	blt	a3,s8,1f348 <_svfiprintf_r+0xab0>
   1f398:	00090313          	mv	t1,s2
   1f39c:	01412903          	lw	s2,20(sp)
   1f3a0:	00160593          	addi	a1,a2,1
   1f3a4:	00840613          	addi	a2,s0,8
   1f3a8:	018787b3          	add	a5,a5,s8
   1f3ac:	00642023          	sw	t1,0(s0)
   1f3b0:	01842223          	sw	s8,4(s0)
   1f3b4:	04f12423          	sw	a5,72(sp)
   1f3b8:	04b12223          	sw	a1,68(sp)
   1f3bc:	00700693          	li	a3,7
   1f3c0:	20b6c063          	blt	a3,a1,1f5c0 <_svfiprintf_r+0xd28>
   1f3c4:	00060413          	mv	s0,a2
   1f3c8:	00158593          	addi	a1,a1,1
   1f3cc:	00fd87b3          	add	a5,s11,a5
   1f3d0:	00860693          	addi	a3,a2,8
   1f3d4:	01742023          	sw	s7,0(s0)
   1f3d8:	01b42223          	sw	s11,4(s0)
   1f3dc:	04f12423          	sw	a5,72(sp)
   1f3e0:	04b12223          	sw	a1,68(sp)
   1f3e4:	00700613          	li	a2,7
   1f3e8:	88b65ae3          	bge	a2,a1,1ec7c <_svfiprintf_r+0x3e4>
   1f3ec:	04010613          	addi	a2,sp,64
   1f3f0:	00098593          	mv	a1,s3
   1f3f4:	000a0513          	mv	a0,s4
   1f3f8:	ae4ff0ef          	jal	ra,1e6dc <__ssprint_r>
   1f3fc:	e6051a63          	bnez	a0,1ea70 <_svfiprintf_r+0x1d8>
   1f400:	04812783          	lw	a5,72(sp)
   1f404:	00048693          	mv	a3,s1
   1f408:	875ff06f          	j	1ec7c <_svfiprintf_r+0x3e4>
   1f40c:	04010613          	addi	a2,sp,64
   1f410:	00098593          	mv	a1,s3
   1f414:	000a0513          	mv	a0,s4
   1f418:	ac4ff0ef          	jal	ra,1e6dc <__ssprint_r>
   1f41c:	880504e3          	beqz	a0,1eca4 <_svfiprintf_r+0x40c>
   1f420:	e50ff06f          	j	1ea70 <_svfiprintf_r+0x1d8>
   1f424:	000c8b13          	mv	s6,s9
   1f428:	cddff06f          	j	1f104 <_svfiprintf_r+0x86c>
   1f42c:	01000593          	li	a1,16
   1f430:	00006317          	auipc	t1,0x6
   1f434:	30830313          	addi	t1,t1,776 # 25738 <blanks.4466>
   1f438:	08d5dc63          	bge	a1,a3,1f4d0 <_svfiprintf_r+0xc38>
   1f43c:	03212623          	sw	s2,44(sp)
   1f440:	00040713          	mv	a4,s0
   1f444:	01000e13          	li	t3,16
   1f448:	00700f93          	li	t6,7
   1f44c:	01e12a23          	sw	t5,20(sp)
   1f450:	03d12423          	sw	t4,40(sp)
   1f454:	00068413          	mv	s0,a3
   1f458:	00030913          	mv	s2,t1
   1f45c:	00c0006f          	j	1f468 <_svfiprintf_r+0xbd0>
   1f460:	ff040413          	addi	s0,s0,-16
   1f464:	048e5a63          	bge	t3,s0,1f4b8 <_svfiprintf_r+0xc20>
   1f468:	01078793          	addi	a5,a5,16
   1f46c:	00160613          	addi	a2,a2,1
   1f470:	01272023          	sw	s2,0(a4)
   1f474:	01c72223          	sw	t3,4(a4)
   1f478:	04f12423          	sw	a5,72(sp)
   1f47c:	04c12223          	sw	a2,68(sp)
   1f480:	00870713          	addi	a4,a4,8
   1f484:	fccfdee3          	bge	t6,a2,1f460 <_svfiprintf_r+0xbc8>
   1f488:	04010613          	addi	a2,sp,64
   1f48c:	00098593          	mv	a1,s3
   1f490:	000a0513          	mv	a0,s4
   1f494:	a48ff0ef          	jal	ra,1e6dc <__ssprint_r>
   1f498:	dc051c63          	bnez	a0,1ea70 <_svfiprintf_r+0x1d8>
   1f49c:	01000e13          	li	t3,16
   1f4a0:	ff040413          	addi	s0,s0,-16
   1f4a4:	04812783          	lw	a5,72(sp)
   1f4a8:	04412603          	lw	a2,68(sp)
   1f4ac:	00048713          	mv	a4,s1
   1f4b0:	00700f93          	li	t6,7
   1f4b4:	fa8e4ae3          	blt	t3,s0,1f468 <_svfiprintf_r+0xbd0>
   1f4b8:	00090313          	mv	t1,s2
   1f4bc:	01412f03          	lw	t5,20(sp)
   1f4c0:	02812e83          	lw	t4,40(sp)
   1f4c4:	02c12903          	lw	s2,44(sp)
   1f4c8:	00040693          	mv	a3,s0
   1f4cc:	00070413          	mv	s0,a4
   1f4d0:	00d787b3          	add	a5,a5,a3
   1f4d4:	00160613          	addi	a2,a2,1
   1f4d8:	00d42223          	sw	a3,4(s0)
   1f4dc:	00642023          	sw	t1,0(s0)
   1f4e0:	04f12423          	sw	a5,72(sp)
   1f4e4:	04c12223          	sw	a2,68(sp)
   1f4e8:	00700693          	li	a3,7
   1f4ec:	00840413          	addi	s0,s0,8
   1f4f0:	ecc6de63          	bge	a3,a2,1ebcc <_svfiprintf_r+0x334>
   1f4f4:	04010613          	addi	a2,sp,64
   1f4f8:	00098593          	mv	a1,s3
   1f4fc:	000a0513          	mv	a0,s4
   1f500:	03d12423          	sw	t4,40(sp)
   1f504:	01e12a23          	sw	t5,20(sp)
   1f508:	9d4ff0ef          	jal	ra,1e6dc <__ssprint_r>
   1f50c:	d6051263          	bnez	a0,1ea70 <_svfiprintf_r+0x1d8>
   1f510:	04812783          	lw	a5,72(sp)
   1f514:	04412603          	lw	a2,68(sp)
   1f518:	00048413          	mv	s0,s1
   1f51c:	02812e83          	lw	t4,40(sp)
   1f520:	01412f03          	lw	t5,20(sp)
   1f524:	ea8ff06f          	j	1ebcc <_svfiprintf_r+0x334>
   1f528:	04010613          	addi	a2,sp,64
   1f52c:	00098593          	mv	a1,s3
   1f530:	000a0513          	mv	a0,s4
   1f534:	03d12423          	sw	t4,40(sp)
   1f538:	01e12a23          	sw	t5,20(sp)
   1f53c:	9a0ff0ef          	jal	ra,1e6dc <__ssprint_r>
   1f540:	d2051863          	bnez	a0,1ea70 <_svfiprintf_r+0x1d8>
   1f544:	04412603          	lw	a2,68(sp)
   1f548:	04812783          	lw	a5,72(sp)
   1f54c:	05410693          	addi	a3,sp,84
   1f550:	00160593          	addi	a1,a2,1
   1f554:	00048413          	mv	s0,s1
   1f558:	02812e83          	lw	t4,40(sp)
   1f55c:	01412f03          	lw	t5,20(sp)
   1f560:	eb8ff06f          	j	1ec18 <_svfiprintf_r+0x380>
   1f564:	04010613          	addi	a2,sp,64
   1f568:	00098593          	mv	a1,s3
   1f56c:	000a0513          	mv	a0,s4
   1f570:	01d12a23          	sw	t4,20(sp)
   1f574:	968ff0ef          	jal	ra,1e6dc <__ssprint_r>
   1f578:	ce051c63          	bnez	a0,1ea70 <_svfiprintf_r+0x1d8>
   1f57c:	04412603          	lw	a2,68(sp)
   1f580:	04812783          	lw	a5,72(sp)
   1f584:	05410693          	addi	a3,sp,84
   1f588:	00160593          	addi	a1,a2,1
   1f58c:	00048413          	mv	s0,s1
   1f590:	01412e83          	lw	t4,20(sp)
   1f594:	ebcff06f          	j	1ec50 <_svfiprintf_r+0x3b8>
   1f598:	340c1c63          	bnez	s8,1f8f0 <_svfiprintf_r+0x1058>
   1f59c:	00000c13          	li	s8,0
   1f5a0:	00000d93          	li	s11,0
   1f5a4:	0f010b93          	addi	s7,sp,240
   1f5a8:	d94ff06f          	j	1eb3c <_svfiprintf_r+0x2a4>
   1f5ac:	200cf613          	andi	a2,s9,512
   1f5b0:	30061e63          	bnez	a2,1f8cc <_svfiprintf_r+0x1034>
   1f5b4:	00078d93          	mv	s11,a5
   1f5b8:	00000313          	li	t1,0
   1f5bc:	d30ff06f          	j	1eaec <_svfiprintf_r+0x254>
   1f5c0:	04010613          	addi	a2,sp,64
   1f5c4:	00098593          	mv	a1,s3
   1f5c8:	000a0513          	mv	a0,s4
   1f5cc:	910ff0ef          	jal	ra,1e6dc <__ssprint_r>
   1f5d0:	ca051063          	bnez	a0,1ea70 <_svfiprintf_r+0x1d8>
   1f5d4:	04412583          	lw	a1,68(sp)
   1f5d8:	04812783          	lw	a5,72(sp)
   1f5dc:	05410693          	addi	a3,sp,84
   1f5e0:	00158593          	addi	a1,a1,1
   1f5e4:	00048413          	mv	s0,s1
   1f5e8:	e78ff06f          	j	1ec60 <_svfiprintf_r+0x3c8>
   1f5ec:	000d0b13          	mv	s6,s10
   1f5f0:	bb8ff06f          	j	1e9a8 <_svfiprintf_r+0x110>
   1f5f4:	01812783          	lw	a5,24(sp)
   1f5f8:	000d4683          	lbu	a3,0(s10)
   1f5fc:	bc078463          	beqz	a5,1e9c4 <_svfiprintf_r+0x12c>
   1f600:	0007c783          	lbu	a5,0(a5)
   1f604:	bc078063          	beqz	a5,1e9c4 <_svfiprintf_r+0x12c>
   1f608:	400cec93          	ori	s9,s9,1024
   1f60c:	bb8ff06f          	j	1e9c4 <_svfiprintf_r+0x12c>
   1f610:	03000613          	li	a2,48
   1f614:	002cec93          	ori	s9,s9,2
   1f618:	02d10ea3          	sb	a3,61(sp)
   1f61c:	02c10e23          	sb	a2,60(sp)
   1f620:	bffcfb13          	andi	s6,s9,-1025
   1f624:	00200693          	li	a3,2
   1f628:	cdcff06f          	j	1eb04 <_svfiprintf_r+0x26c>
   1f62c:	00072783          	lw	a5,0(a4)
   1f630:	00812703          	lw	a4,8(sp)
   1f634:	00d12623          	sw	a3,12(sp)
   1f638:	41f75613          	srai	a2,a4,0x1f
   1f63c:	00e7a023          	sw	a4,0(a5)
   1f640:	00c7a223          	sw	a2,4(a5)
   1f644:	af0ff06f          	j	1e934 <_svfiprintf_r+0x9c>
   1f648:	000b8513          	mv	a0,s7
   1f64c:	bb5f90ef          	jal	ra,19200 <strlen>
   1f650:	00050d93          	mv	s11,a0
   1f654:	00000c13          	li	s8,0
   1f658:	ce4ff06f          	j	1eb3c <_svfiprintf_r+0x2a4>
   1f65c:	04000593          	li	a1,64
   1f660:	c59f70ef          	jal	ra,172b8 <_malloc_r>
   1f664:	00a9a023          	sw	a0,0(s3)
   1f668:	00a9a823          	sw	a0,16(s3)
   1f66c:	2e050063          	beqz	a0,1f94c <_svfiprintf_r+0x10b4>
   1f670:	04000793          	li	a5,64
   1f674:	00f9aa23          	sw	a5,20(s3)
   1f678:	a7cff06f          	j	1e8f4 <_svfiprintf_r+0x5c>
   1f67c:	0f010b93          	addi	s7,sp,240
   1f680:	400b7793          	andi	a5,s6,1024
   1f684:	01612a23          	sw	s6,20(sp)
   1f688:	03212423          	sw	s2,40(sp)
   1f68c:	02812623          	sw	s0,44(sp)
   1f690:	000b8913          	mv	s2,s7
   1f694:	00000c93          	li	s9,0
   1f698:	000d0b93          	mv	s7,s10
   1f69c:	01812403          	lw	s0,24(sp)
   1f6a0:	00098d13          	mv	s10,s3
   1f6a4:	00078b13          	mv	s6,a5
   1f6a8:	00030993          	mv	s3,t1
   1f6ac:	0240006f          	j	1f6d0 <_svfiprintf_r+0xe38>
   1f6b0:	00a00613          	li	a2,10
   1f6b4:	00000693          	li	a3,0
   1f6b8:	000d8513          	mv	a0,s11
   1f6bc:	00098593          	mv	a1,s3
   1f6c0:	74c000ef          	jal	ra,1fe0c <__udivdi3>
   1f6c4:	16098a63          	beqz	s3,1f838 <_svfiprintf_r+0xfa0>
   1f6c8:	00050d93          	mv	s11,a0
   1f6cc:	00058993          	mv	s3,a1
   1f6d0:	00a00613          	li	a2,10
   1f6d4:	00000693          	li	a3,0
   1f6d8:	000d8513          	mv	a0,s11
   1f6dc:	00098593          	mv	a1,s3
   1f6e0:	501000ef          	jal	ra,203e0 <__umoddi3>
   1f6e4:	03050513          	addi	a0,a0,48
   1f6e8:	fea90fa3          	sb	a0,-1(s2)
   1f6ec:	001c8c93          	addi	s9,s9,1
   1f6f0:	fff90913          	addi	s2,s2,-1
   1f6f4:	fa0b0ee3          	beqz	s6,1f6b0 <_svfiprintf_r+0xe18>
   1f6f8:	00044703          	lbu	a4,0(s0)
   1f6fc:	fb971ae3          	bne	a4,s9,1f6b0 <_svfiprintf_r+0xe18>
   1f700:	0ff00793          	li	a5,255
   1f704:	fafc86e3          	beq	s9,a5,1f6b0 <_svfiprintf_r+0xe18>
   1f708:	12099e63          	bnez	s3,1f844 <_svfiprintf_r+0xfac>
   1f70c:	00900793          	li	a5,9
   1f710:	13b7ea63          	bltu	a5,s11,1f844 <_svfiprintf_r+0xfac>
   1f714:	01412b03          	lw	s6,20(sp)
   1f718:	000d0993          	mv	s3,s10
   1f71c:	0f010793          	addi	a5,sp,240
   1f720:	000b8d13          	mv	s10,s7
   1f724:	00090b93          	mv	s7,s2
   1f728:	00812c23          	sw	s0,24(sp)
   1f72c:	02812903          	lw	s2,40(sp)
   1f730:	02c12403          	lw	s0,44(sp)
   1f734:	41778db3          	sub	s11,a5,s7
   1f738:	000b0c93          	mv	s9,s6
   1f73c:	c00ff06f          	j	1eb3c <_svfiprintf_r+0x2a4>
   1f740:	001d4683          	lbu	a3,1(s10)
   1f744:	200cec93          	ori	s9,s9,512
   1f748:	001d0d13          	addi	s10,s10,1
   1f74c:	a78ff06f          	j	1e9c4 <_svfiprintf_r+0x12c>
   1f750:	001d4683          	lbu	a3,1(s10)
   1f754:	020cec93          	ori	s9,s9,32
   1f758:	001d0d13          	addi	s10,s10,1
   1f75c:	a68ff06f          	j	1e9c4 <_svfiprintf_r+0x12c>
   1f760:	04010613          	addi	a2,sp,64
   1f764:	00098593          	mv	a1,s3
   1f768:	000a0513          	mv	a0,s4
   1f76c:	f71fe0ef          	jal	ra,1e6dc <__ssprint_r>
   1f770:	b0051063          	bnez	a0,1ea70 <_svfiprintf_r+0x1d8>
   1f774:	04412603          	lw	a2,68(sp)
   1f778:	04812783          	lw	a5,72(sp)
   1f77c:	05410693          	addi	a3,sp,84
   1f780:	00160593          	addi	a1,a2,1
   1f784:	00048413          	mv	s0,s1
   1f788:	cd0ff06f          	j	1ec58 <_svfiprintf_r+0x3c0>
   1f78c:	00c12783          	lw	a5,12(sp)
   1f790:	00812703          	lw	a4,8(sp)
   1f794:	0007a783          	lw	a5,0(a5)
   1f798:	00d12623          	sw	a3,12(sp)
   1f79c:	00e7a023          	sw	a4,0(a5)
   1f7a0:	994ff06f          	j	1e934 <_svfiprintf_r+0x9c>
   1f7a4:	00600793          	li	a5,6
   1f7a8:	000c0d93          	mv	s11,s8
   1f7ac:	0187f463          	bgeu	a5,s8,1f7b4 <_svfiprintf_r+0xf1c>
   1f7b0:	00600d93          	li	s11,6
   1f7b4:	000d8b13          	mv	s6,s11
   1f7b8:	00e12623          	sw	a4,12(sp)
   1f7bc:	00005b97          	auipc	s7,0x5
   1f7c0:	630b8b93          	addi	s7,s7,1584 # 24dec <zeroes.4505+0x48>
   1f7c4:	be0ff06f          	j	1eba4 <_svfiprintf_r+0x30c>
   1f7c8:	200cf613          	andi	a2,s9,512
   1f7cc:	0e060463          	beqz	a2,1f8b4 <_svfiprintf_r+0x101c>
   1f7d0:	00d12623          	sw	a3,12(sp)
   1f7d4:	0ff7fd93          	andi	s11,a5,255
   1f7d8:	00000313          	li	t1,0
   1f7dc:	000c8b13          	mv	s6,s9
   1f7e0:	00100693          	li	a3,1
   1f7e4:	b20ff06f          	j	1eb04 <_svfiprintf_r+0x26c>
   1f7e8:	200cf793          	andi	a5,s9,512
   1f7ec:	0a078663          	beqz	a5,1f898 <_svfiprintf_r+0x1000>
   1f7f0:	00c12783          	lw	a5,12(sp)
   1f7f4:	000c8b13          	mv	s6,s9
   1f7f8:	00d12623          	sw	a3,12(sp)
   1f7fc:	00078d83          	lb	s11,0(a5)
   1f800:	41fdd313          	srai	t1,s11,0x1f
   1f804:	00030693          	mv	a3,t1
   1f808:	dfcff06f          	j	1ee04 <_svfiprintf_r+0x56c>
   1f80c:	200cf613          	andi	a2,s9,512
   1f810:	06060a63          	beqz	a2,1f884 <_svfiprintf_r+0xfec>
   1f814:	0ff7fd93          	andi	s11,a5,255
   1f818:	00000313          	li	t1,0
   1f81c:	000c8813          	mv	a6,s9
   1f820:	00d12623          	sw	a3,12(sp)
   1f824:	971ff06f          	j	1f194 <_svfiprintf_r+0x8fc>
   1f828:	00068613          	mv	a2,a3
   1f82c:	00006317          	auipc	t1,0x6
   1f830:	f1c30313          	addi	t1,t1,-228 # 25748 <zeroes.4467>
   1f834:	b75ff06f          	j	1f3a8 <_svfiprintf_r+0xb10>
   1f838:	00900793          	li	a5,9
   1f83c:	e9b7e6e3          	bltu	a5,s11,1f6c8 <_svfiprintf_r+0xe30>
   1f840:	ed5ff06f          	j	1f714 <_svfiprintf_r+0xe7c>
   1f844:	02012783          	lw	a5,32(sp)
   1f848:	01c12583          	lw	a1,28(sp)
   1f84c:	00000c93          	li	s9,0
   1f850:	40f90933          	sub	s2,s2,a5
   1f854:	00078613          	mv	a2,a5
   1f858:	00090513          	mv	a0,s2
   1f85c:	a31f90ef          	jal	ra,1928c <strncpy>
   1f860:	00144703          	lbu	a4,1(s0)
   1f864:	00a00613          	li	a2,10
   1f868:	00000693          	li	a3,0
   1f86c:	00e03733          	snez	a4,a4
   1f870:	000d8513          	mv	a0,s11
   1f874:	00098593          	mv	a1,s3
   1f878:	00e40433          	add	s0,s0,a4
   1f87c:	590000ef          	jal	ra,1fe0c <__udivdi3>
   1f880:	e49ff06f          	j	1f6c8 <_svfiprintf_r+0xe30>
   1f884:	00078d93          	mv	s11,a5
   1f888:	00000313          	li	t1,0
   1f88c:	000c8813          	mv	a6,s9
   1f890:	00d12623          	sw	a3,12(sp)
   1f894:	901ff06f          	j	1f194 <_svfiprintf_r+0x8fc>
   1f898:	00c12783          	lw	a5,12(sp)
   1f89c:	000c8b13          	mv	s6,s9
   1f8a0:	00d12623          	sw	a3,12(sp)
   1f8a4:	0007ad83          	lw	s11,0(a5)
   1f8a8:	41fdd313          	srai	t1,s11,0x1f
   1f8ac:	00030693          	mv	a3,t1
   1f8b0:	d54ff06f          	j	1ee04 <_svfiprintf_r+0x56c>
   1f8b4:	00d12623          	sw	a3,12(sp)
   1f8b8:	00078d93          	mv	s11,a5
   1f8bc:	00000313          	li	t1,0
   1f8c0:	000c8b13          	mv	s6,s9
   1f8c4:	00100693          	li	a3,1
   1f8c8:	a3cff06f          	j	1eb04 <_svfiprintf_r+0x26c>
   1f8cc:	0ff7fd93          	andi	s11,a5,255
   1f8d0:	00000313          	li	t1,0
   1f8d4:	a18ff06f          	j	1eaec <_svfiprintf_r+0x254>
   1f8d8:	00c12783          	lw	a5,12(sp)
   1f8dc:	00812703          	lw	a4,8(sp)
   1f8e0:	00d12623          	sw	a3,12(sp)
   1f8e4:	0007a783          	lw	a5,0(a5)
   1f8e8:	00e79023          	sh	a4,0(a5)
   1f8ec:	848ff06f          	j	1e934 <_svfiprintf_r+0x9c>
   1f8f0:	000c8b13          	mv	s6,s9
   1f8f4:	d38ff06f          	j	1ee2c <_svfiprintf_r+0x594>
   1f8f8:	000c0d93          	mv	s11,s8
   1f8fc:	00e12623          	sw	a4,12(sp)
   1f900:	00000c13          	li	s8,0
   1f904:	a38ff06f          	j	1eb3c <_svfiprintf_r+0x2a4>
   1f908:	00068513          	mv	a0,a3
   1f90c:	00058613          	mv	a2,a1
   1f910:	00006317          	auipc	t1,0x6
   1f914:	e3830313          	addi	t1,t1,-456 # 25748 <zeroes.4467>
   1f918:	9d5ff06f          	j	1f2ec <_svfiprintf_r+0xa54>
   1f91c:	fff00793          	li	a5,-1
   1f920:	00f12423          	sw	a5,8(sp)
   1f924:	958ff06f          	j	1ea7c <_svfiprintf_r+0x1e4>
   1f928:	00c12703          	lw	a4,12(sp)
   1f92c:	00072c03          	lw	s8,0(a4)
   1f930:	00470713          	addi	a4,a4,4
   1f934:	000c5463          	bgez	s8,1f93c <_svfiprintf_r+0x10a4>
   1f938:	fff00c13          	li	s8,-1
   1f93c:	001d4683          	lbu	a3,1(s10)
   1f940:	00e12623          	sw	a4,12(sp)
   1f944:	00078d13          	mv	s10,a5
   1f948:	87cff06f          	j	1e9c4 <_svfiprintf_r+0x12c>
   1f94c:	00c00793          	li	a5,12
   1f950:	00fa2023          	sw	a5,0(s4)
   1f954:	fff00793          	li	a5,-1
   1f958:	00f12423          	sw	a5,8(sp)
   1f95c:	920ff06f          	j	1ea7c <_svfiprintf_r+0x1e4>
   1f960:	000c8b13          	mv	s6,s9
   1f964:	c8cff06f          	j	1edf0 <_svfiprintf_r+0x558>
   1f968:	000c8813          	mv	a6,s9
   1f96c:	b9cff06f          	j	1ed08 <_svfiprintf_r+0x470>
   1f970:	000c8b13          	mv	s6,s9
   1f974:	bbcff06f          	j	1ed30 <_svfiprintf_r+0x498>

0001f978 <_wcrtomb_r>:
   1f978:	fe010113          	addi	sp,sp,-32
   1f97c:	00812c23          	sw	s0,24(sp)
   1f980:	00912a23          	sw	s1,20(sp)
   1f984:	c2818793          	addi	a5,gp,-984 # 264e8 <__global_locale>
   1f988:	00112e23          	sw	ra,28(sp)
   1f98c:	00050413          	mv	s0,a0
   1f990:	00068493          	mv	s1,a3
   1f994:	0e07a783          	lw	a5,224(a5)
   1f998:	02058263          	beqz	a1,1f9bc <_wcrtomb_r+0x44>
   1f99c:	000780e7          	jalr	a5
   1f9a0:	fff00793          	li	a5,-1
   1f9a4:	02f50663          	beq	a0,a5,1f9d0 <_wcrtomb_r+0x58>
   1f9a8:	01c12083          	lw	ra,28(sp)
   1f9ac:	01812403          	lw	s0,24(sp)
   1f9b0:	01412483          	lw	s1,20(sp)
   1f9b4:	02010113          	addi	sp,sp,32
   1f9b8:	00008067          	ret
   1f9bc:	00000613          	li	a2,0
   1f9c0:	00410593          	addi	a1,sp,4
   1f9c4:	000780e7          	jalr	a5
   1f9c8:	fff00793          	li	a5,-1
   1f9cc:	fcf51ee3          	bne	a0,a5,1f9a8 <_wcrtomb_r+0x30>
   1f9d0:	0004a023          	sw	zero,0(s1)
   1f9d4:	08a00793          	li	a5,138
   1f9d8:	00f42023          	sw	a5,0(s0)
   1f9dc:	01c12083          	lw	ra,28(sp)
   1f9e0:	01812403          	lw	s0,24(sp)
   1f9e4:	01412483          	lw	s1,20(sp)
   1f9e8:	02010113          	addi	sp,sp,32
   1f9ec:	00008067          	ret

0001f9f0 <wcrtomb>:
   1f9f0:	fe010113          	addi	sp,sp,-32
   1f9f4:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   1f9f8:	00812c23          	sw	s0,24(sp)
   1f9fc:	00912a23          	sw	s1,20(sp)
   1fa00:	0007a403          	lw	s0,0(a5)
   1fa04:	00112e23          	sw	ra,28(sp)
   1fa08:	c2818793          	addi	a5,gp,-984 # 264e8 <__global_locale>
   1fa0c:	00060493          	mv	s1,a2
   1fa10:	0e07a783          	lw	a5,224(a5)
   1fa14:	00060693          	mv	a3,a2
   1fa18:	02050863          	beqz	a0,1fa48 <wcrtomb+0x58>
   1fa1c:	00058613          	mv	a2,a1
   1fa20:	00050593          	mv	a1,a0
   1fa24:	00040513          	mv	a0,s0
   1fa28:	000780e7          	jalr	a5
   1fa2c:	fff00793          	li	a5,-1
   1fa30:	02f50863          	beq	a0,a5,1fa60 <wcrtomb+0x70>
   1fa34:	01c12083          	lw	ra,28(sp)
   1fa38:	01812403          	lw	s0,24(sp)
   1fa3c:	01412483          	lw	s1,20(sp)
   1fa40:	02010113          	addi	sp,sp,32
   1fa44:	00008067          	ret
   1fa48:	00000613          	li	a2,0
   1fa4c:	00410593          	addi	a1,sp,4
   1fa50:	00040513          	mv	a0,s0
   1fa54:	000780e7          	jalr	a5
   1fa58:	fff00793          	li	a5,-1
   1fa5c:	fcf51ce3          	bne	a0,a5,1fa34 <wcrtomb+0x44>
   1fa60:	0004a023          	sw	zero,0(s1)
   1fa64:	08a00793          	li	a5,138
   1fa68:	00f42023          	sw	a5,0(s0)
   1fa6c:	01c12083          	lw	ra,28(sp)
   1fa70:	01812403          	lw	s0,24(sp)
   1fa74:	01412483          	lw	s1,20(sp)
   1fa78:	02010113          	addi	sp,sp,32
   1fa7c:	00008067          	ret

0001fa80 <_close>:
   1fa80:	ff010113          	addi	sp,sp,-16
   1fa84:	00112623          	sw	ra,12(sp)
   1fa88:	00812423          	sw	s0,8(sp)
   1fa8c:	00000593          	li	a1,0
   1fa90:	00000613          	li	a2,0
   1fa94:	00000693          	li	a3,0
   1fa98:	00000713          	li	a4,0
   1fa9c:	00000793          	li	a5,0
   1faa0:	03900893          	li	a7,57
   1faa4:	00000073          	ecall
   1faa8:	00050413          	mv	s0,a0
   1faac:	00054c63          	bltz	a0,1fac4 <_close+0x44>
   1fab0:	00040513          	mv	a0,s0
   1fab4:	00c12083          	lw	ra,12(sp)
   1fab8:	00812403          	lw	s0,8(sp)
   1fabc:	01010113          	addi	sp,sp,16
   1fac0:	00008067          	ret
   1fac4:	40800433          	neg	s0,s0
   1fac8:	338000ef          	jal	ra,1fe00 <__errno>
   1facc:	00852023          	sw	s0,0(a0)
   1fad0:	fff00413          	li	s0,-1
   1fad4:	fddff06f          	j	1fab0 <_close+0x30>

0001fad8 <_exit>:
   1fad8:	00000593          	li	a1,0
   1fadc:	00000613          	li	a2,0
   1fae0:	00000693          	li	a3,0
   1fae4:	00000713          	li	a4,0
   1fae8:	00000793          	li	a5,0
   1faec:	05d00893          	li	a7,93
   1faf0:	00000073          	ecall
   1faf4:	00054463          	bltz	a0,1fafc <_exit+0x24>
   1faf8:	0000006f          	j	1faf8 <_exit+0x20>
   1fafc:	ff010113          	addi	sp,sp,-16
   1fb00:	00812423          	sw	s0,8(sp)
   1fb04:	00050413          	mv	s0,a0
   1fb08:	00112623          	sw	ra,12(sp)
   1fb0c:	40800433          	neg	s0,s0
   1fb10:	2f0000ef          	jal	ra,1fe00 <__errno>
   1fb14:	00852023          	sw	s0,0(a0)
   1fb18:	0000006f          	j	1fb18 <_exit+0x40>

0001fb1c <_fstat>:
   1fb1c:	f7010113          	addi	sp,sp,-144
   1fb20:	08912223          	sw	s1,132(sp)
   1fb24:	08112623          	sw	ra,140(sp)
   1fb28:	00058493          	mv	s1,a1
   1fb2c:	08812423          	sw	s0,136(sp)
   1fb30:	00000613          	li	a2,0
   1fb34:	00010593          	mv	a1,sp
   1fb38:	00000693          	li	a3,0
   1fb3c:	00000713          	li	a4,0
   1fb40:	00000793          	li	a5,0
   1fb44:	05000893          	li	a7,80
   1fb48:	00000073          	ecall
   1fb4c:	00050413          	mv	s0,a0
   1fb50:	02054463          	bltz	a0,1fb78 <_fstat+0x5c>
   1fb54:	00048513          	mv	a0,s1
   1fb58:	00010593          	mv	a1,sp
   1fb5c:	200000ef          	jal	ra,1fd5c <_conv_stat>
   1fb60:	00040513          	mv	a0,s0
   1fb64:	08c12083          	lw	ra,140(sp)
   1fb68:	08812403          	lw	s0,136(sp)
   1fb6c:	08412483          	lw	s1,132(sp)
   1fb70:	09010113          	addi	sp,sp,144
   1fb74:	00008067          	ret
   1fb78:	40800433          	neg	s0,s0
   1fb7c:	284000ef          	jal	ra,1fe00 <__errno>
   1fb80:	00852023          	sw	s0,0(a0)
   1fb84:	fff00413          	li	s0,-1
   1fb88:	fcdff06f          	j	1fb54 <_fstat+0x38>

0001fb8c <_isatty>:
   1fb8c:	f9010113          	addi	sp,sp,-112
   1fb90:	00810593          	addi	a1,sp,8
   1fb94:	06112623          	sw	ra,108(sp)
   1fb98:	f85ff0ef          	jal	ra,1fb1c <_fstat>
   1fb9c:	fff00793          	li	a5,-1
   1fba0:	00f50e63          	beq	a0,a5,1fbbc <_isatty+0x30>
   1fba4:	00c12503          	lw	a0,12(sp)
   1fba8:	06c12083          	lw	ra,108(sp)
   1fbac:	00d55513          	srli	a0,a0,0xd
   1fbb0:	00157513          	andi	a0,a0,1
   1fbb4:	07010113          	addi	sp,sp,112
   1fbb8:	00008067          	ret
   1fbbc:	06c12083          	lw	ra,108(sp)
   1fbc0:	00000513          	li	a0,0
   1fbc4:	07010113          	addi	sp,sp,112
   1fbc8:	00008067          	ret

0001fbcc <_lseek>:
   1fbcc:	ff010113          	addi	sp,sp,-16
   1fbd0:	00112623          	sw	ra,12(sp)
   1fbd4:	00812423          	sw	s0,8(sp)
   1fbd8:	00000693          	li	a3,0
   1fbdc:	00000713          	li	a4,0
   1fbe0:	00000793          	li	a5,0
   1fbe4:	03e00893          	li	a7,62
   1fbe8:	00000073          	ecall
   1fbec:	00050413          	mv	s0,a0
   1fbf0:	00054c63          	bltz	a0,1fc08 <_lseek+0x3c>
   1fbf4:	00040513          	mv	a0,s0
   1fbf8:	00c12083          	lw	ra,12(sp)
   1fbfc:	00812403          	lw	s0,8(sp)
   1fc00:	01010113          	addi	sp,sp,16
   1fc04:	00008067          	ret
   1fc08:	40800433          	neg	s0,s0
   1fc0c:	1f4000ef          	jal	ra,1fe00 <__errno>
   1fc10:	00852023          	sw	s0,0(a0)
   1fc14:	fff00413          	li	s0,-1
   1fc18:	fddff06f          	j	1fbf4 <_lseek+0x28>

0001fc1c <_read>:
   1fc1c:	ff010113          	addi	sp,sp,-16
   1fc20:	00112623          	sw	ra,12(sp)
   1fc24:	00812423          	sw	s0,8(sp)
   1fc28:	00000693          	li	a3,0
   1fc2c:	00000713          	li	a4,0
   1fc30:	00000793          	li	a5,0
   1fc34:	03f00893          	li	a7,63
   1fc38:	00000073          	ecall
   1fc3c:	00050413          	mv	s0,a0
   1fc40:	00054c63          	bltz	a0,1fc58 <_read+0x3c>
   1fc44:	00040513          	mv	a0,s0
   1fc48:	00c12083          	lw	ra,12(sp)
   1fc4c:	00812403          	lw	s0,8(sp)
   1fc50:	01010113          	addi	sp,sp,16
   1fc54:	00008067          	ret
   1fc58:	40800433          	neg	s0,s0
   1fc5c:	1a4000ef          	jal	ra,1fe00 <__errno>
   1fc60:	00852023          	sw	s0,0(a0)
   1fc64:	fff00413          	li	s0,-1
   1fc68:	fddff06f          	j	1fc44 <_read+0x28>

0001fc6c <_sbrk>:
   1fc6c:	1dc18313          	addi	t1,gp,476 # 26a9c <heap_end.1864>
   1fc70:	00032783          	lw	a5,0(t1)
   1fc74:	ff010113          	addi	sp,sp,-16
   1fc78:	00112623          	sw	ra,12(sp)
   1fc7c:	00050813          	mv	a6,a0
   1fc80:	02079863          	bnez	a5,1fcb0 <_sbrk+0x44>
   1fc84:	00000513          	li	a0,0
   1fc88:	00000593          	li	a1,0
   1fc8c:	00000613          	li	a2,0
   1fc90:	00000693          	li	a3,0
   1fc94:	00000713          	li	a4,0
   1fc98:	0d600893          	li	a7,214
   1fc9c:	00000073          	ecall
   1fca0:	fff00793          	li	a5,-1
   1fca4:	04f50663          	beq	a0,a5,1fcf0 <_sbrk+0x84>
   1fca8:	00050793          	mv	a5,a0
   1fcac:	1ca1ae23          	sw	a0,476(gp) # 26a9c <heap_end.1864>
   1fcb0:	00f80533          	add	a0,a6,a5
   1fcb4:	00000593          	li	a1,0
   1fcb8:	00000613          	li	a2,0
   1fcbc:	00000693          	li	a3,0
   1fcc0:	00000713          	li	a4,0
   1fcc4:	00000793          	li	a5,0
   1fcc8:	0d600893          	li	a7,214
   1fccc:	00000073          	ecall
   1fcd0:	00032783          	lw	a5,0(t1)
   1fcd4:	00f80833          	add	a6,a6,a5
   1fcd8:	01051c63          	bne	a0,a6,1fcf0 <_sbrk+0x84>
   1fcdc:	00c12083          	lw	ra,12(sp)
   1fce0:	1ca1ae23          	sw	a0,476(gp) # 26a9c <heap_end.1864>
   1fce4:	00078513          	mv	a0,a5
   1fce8:	01010113          	addi	sp,sp,16
   1fcec:	00008067          	ret
   1fcf0:	110000ef          	jal	ra,1fe00 <__errno>
   1fcf4:	00c12083          	lw	ra,12(sp)
   1fcf8:	00c00793          	li	a5,12
   1fcfc:	00f52023          	sw	a5,0(a0)
   1fd00:	fff00513          	li	a0,-1
   1fd04:	01010113          	addi	sp,sp,16
   1fd08:	00008067          	ret

0001fd0c <_write>:
   1fd0c:	ff010113          	addi	sp,sp,-16
   1fd10:	00112623          	sw	ra,12(sp)
   1fd14:	00812423          	sw	s0,8(sp)
   1fd18:	00000693          	li	a3,0
   1fd1c:	00000713          	li	a4,0
   1fd20:	00000793          	li	a5,0
   1fd24:	04000893          	li	a7,64
   1fd28:	00000073          	ecall
   1fd2c:	00050413          	mv	s0,a0
   1fd30:	00054c63          	bltz	a0,1fd48 <_write+0x3c>
   1fd34:	00040513          	mv	a0,s0
   1fd38:	00c12083          	lw	ra,12(sp)
   1fd3c:	00812403          	lw	s0,8(sp)
   1fd40:	01010113          	addi	sp,sp,16
   1fd44:	00008067          	ret
   1fd48:	40800433          	neg	s0,s0
   1fd4c:	0b4000ef          	jal	ra,1fe00 <__errno>
   1fd50:	00852023          	sw	s0,0(a0)
   1fd54:	fff00413          	li	s0,-1
   1fd58:	fddff06f          	j	1fd34 <_write+0x28>

0001fd5c <_conv_stat>:
   1fd5c:	ff010113          	addi	sp,sp,-16
   1fd60:	0145a383          	lw	t2,20(a1)
   1fd64:	0185a283          	lw	t0,24(a1)
   1fd68:	01c5af83          	lw	t6,28(a1)
   1fd6c:	0205af03          	lw	t5,32(a1)
   1fd70:	0305ae83          	lw	t4,48(a1)
   1fd74:	0405ae03          	lw	t3,64(a1)
   1fd78:	0385a303          	lw	t1,56(a1)
   1fd7c:	0485a803          	lw	a6,72(a1)
   1fd80:	04c5a883          	lw	a7,76(a1)
   1fd84:	0585a603          	lw	a2,88(a1)
   1fd88:	00812623          	sw	s0,12(sp)
   1fd8c:	00912423          	sw	s1,8(sp)
   1fd90:	0105a403          	lw	s0,16(a1)
   1fd94:	0085a483          	lw	s1,8(a1)
   1fd98:	01212223          	sw	s2,4(sp)
   1fd9c:	0005a903          	lw	s2,0(a1)
   1fda0:	05c5a683          	lw	a3,92(a1)
   1fda4:	0685a703          	lw	a4,104(a1)
   1fda8:	06c5a783          	lw	a5,108(a1)
   1fdac:	01251023          	sh	s2,0(a0)
   1fdb0:	00951123          	sh	s1,2(a0)
   1fdb4:	00852223          	sw	s0,4(a0)
   1fdb8:	00751423          	sh	t2,8(a0)
   1fdbc:	00551523          	sh	t0,10(a0)
   1fdc0:	01f51623          	sh	t6,12(a0)
   1fdc4:	01e51723          	sh	t5,14(a0)
   1fdc8:	01d52823          	sw	t4,16(a0)
   1fdcc:	05c52423          	sw	t3,72(a0)
   1fdd0:	04652223          	sw	t1,68(a0)
   1fdd4:	01052c23          	sw	a6,24(a0)
   1fdd8:	01152e23          	sw	a7,28(a0)
   1fddc:	02c52423          	sw	a2,40(a0)
   1fde0:	02d52623          	sw	a3,44(a0)
   1fde4:	00c12403          	lw	s0,12(sp)
   1fde8:	02e52c23          	sw	a4,56(a0)
   1fdec:	02f52e23          	sw	a5,60(a0)
   1fdf0:	00812483          	lw	s1,8(sp)
   1fdf4:	00412903          	lw	s2,4(sp)
   1fdf8:	01010113          	addi	sp,sp,16
   1fdfc:	00008067          	ret

0001fe00 <__errno>:
   1fe00:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   1fe04:	0007a503          	lw	a0,0(a5)
   1fe08:	00008067          	ret

0001fe0c <__udivdi3>:
   1fe0c:	fd010113          	addi	sp,sp,-48
   1fe10:	02912223          	sw	s1,36(sp)
   1fe14:	01612823          	sw	s6,16(sp)
   1fe18:	02112623          	sw	ra,44(sp)
   1fe1c:	02812423          	sw	s0,40(sp)
   1fe20:	03212023          	sw	s2,32(sp)
   1fe24:	01312e23          	sw	s3,28(sp)
   1fe28:	01412c23          	sw	s4,24(sp)
   1fe2c:	01512a23          	sw	s5,20(sp)
   1fe30:	01712623          	sw	s7,12(sp)
   1fe34:	01812423          	sw	s8,8(sp)
   1fe38:	01912223          	sw	s9,4(sp)
   1fe3c:	00050b13          	mv	s6,a0
   1fe40:	00058493          	mv	s1,a1
   1fe44:	38069c63          	bnez	a3,201dc <__udivdi3+0x3d0>
   1fe48:	00060413          	mv	s0,a2
   1fe4c:	00050993          	mv	s3,a0
   1fe50:	00006917          	auipc	s2,0x6
   1fe54:	9bc90913          	addi	s2,s2,-1604 # 2580c <__clz_tab>
   1fe58:	12c5f863          	bgeu	a1,a2,1ff88 <__udivdi3+0x17c>
   1fe5c:	000107b7          	lui	a5,0x10
   1fe60:	00058a93          	mv	s5,a1
   1fe64:	10f67863          	bgeu	a2,a5,1ff74 <__udivdi3+0x168>
   1fe68:	0ff00693          	li	a3,255
   1fe6c:	00c6b6b3          	sltu	a3,a3,a2
   1fe70:	00369693          	slli	a3,a3,0x3
   1fe74:	00d657b3          	srl	a5,a2,a3
   1fe78:	00f90933          	add	s2,s2,a5
   1fe7c:	00094703          	lbu	a4,0(s2)
   1fe80:	00d706b3          	add	a3,a4,a3
   1fe84:	02000713          	li	a4,32
   1fe88:	40d70733          	sub	a4,a4,a3
   1fe8c:	00070c63          	beqz	a4,1fea4 <__udivdi3+0x98>
   1fe90:	00e494b3          	sll	s1,s1,a4
   1fe94:	00db56b3          	srl	a3,s6,a3
   1fe98:	00e61433          	sll	s0,a2,a4
   1fe9c:	0096eab3          	or	s5,a3,s1
   1fea0:	00eb19b3          	sll	s3,s6,a4
   1fea4:	01045b13          	srli	s6,s0,0x10
   1fea8:	000b0593          	mv	a1,s6
   1feac:	000a8513          	mv	a0,s5
   1feb0:	d20f00ef          	jal	ra,103d0 <__umodsi3>
   1feb4:	00050913          	mv	s2,a0
   1feb8:	000b0593          	mv	a1,s6
   1febc:	01041b93          	slli	s7,s0,0x10
   1fec0:	000a8513          	mv	a0,s5
   1fec4:	cc4f00ef          	jal	ra,10388 <__udivsi3>
   1fec8:	010bdb93          	srli	s7,s7,0x10
   1fecc:	00050493          	mv	s1,a0
   1fed0:	00050593          	mv	a1,a0
   1fed4:	000b8513          	mv	a0,s7
   1fed8:	c84f00ef          	jal	ra,1035c <__mulsi3>
   1fedc:	01091913          	slli	s2,s2,0x10
   1fee0:	0109d713          	srli	a4,s3,0x10
   1fee4:	00e96733          	or	a4,s2,a4
   1fee8:	00048a13          	mv	s4,s1
   1feec:	00a77e63          	bgeu	a4,a0,1ff08 <__udivdi3+0xfc>
   1fef0:	00870733          	add	a4,a4,s0
   1fef4:	fff48a13          	addi	s4,s1,-1
   1fef8:	00876863          	bltu	a4,s0,1ff08 <__udivdi3+0xfc>
   1fefc:	00a77663          	bgeu	a4,a0,1ff08 <__udivdi3+0xfc>
   1ff00:	ffe48a13          	addi	s4,s1,-2
   1ff04:	00870733          	add	a4,a4,s0
   1ff08:	40a704b3          	sub	s1,a4,a0
   1ff0c:	000b0593          	mv	a1,s6
   1ff10:	00048513          	mv	a0,s1
   1ff14:	cbcf00ef          	jal	ra,103d0 <__umodsi3>
   1ff18:	00050913          	mv	s2,a0
   1ff1c:	000b0593          	mv	a1,s6
   1ff20:	00048513          	mv	a0,s1
   1ff24:	c64f00ef          	jal	ra,10388 <__udivsi3>
   1ff28:	01099993          	slli	s3,s3,0x10
   1ff2c:	00050493          	mv	s1,a0
   1ff30:	00050593          	mv	a1,a0
   1ff34:	01091913          	slli	s2,s2,0x10
   1ff38:	000b8513          	mv	a0,s7
   1ff3c:	0109d993          	srli	s3,s3,0x10
   1ff40:	c1cf00ef          	jal	ra,1035c <__mulsi3>
   1ff44:	013969b3          	or	s3,s2,s3
   1ff48:	00048613          	mv	a2,s1
   1ff4c:	00a9fc63          	bgeu	s3,a0,1ff64 <__udivdi3+0x158>
   1ff50:	013409b3          	add	s3,s0,s3
   1ff54:	fff48613          	addi	a2,s1,-1
   1ff58:	0089e663          	bltu	s3,s0,1ff64 <__udivdi3+0x158>
   1ff5c:	00a9f463          	bgeu	s3,a0,1ff64 <__udivdi3+0x158>
   1ff60:	ffe48613          	addi	a2,s1,-2
   1ff64:	010a1793          	slli	a5,s4,0x10
   1ff68:	00c7e7b3          	or	a5,a5,a2
   1ff6c:	00000a13          	li	s4,0
   1ff70:	1300006f          	j	200a0 <__udivdi3+0x294>
   1ff74:	010007b7          	lui	a5,0x1000
   1ff78:	01000693          	li	a3,16
   1ff7c:	eef66ce3          	bltu	a2,a5,1fe74 <__udivdi3+0x68>
   1ff80:	01800693          	li	a3,24
   1ff84:	ef1ff06f          	j	1fe74 <__udivdi3+0x68>
   1ff88:	00068a13          	mv	s4,a3
   1ff8c:	00061a63          	bnez	a2,1ffa0 <__udivdi3+0x194>
   1ff90:	00000593          	li	a1,0
   1ff94:	00100513          	li	a0,1
   1ff98:	bf0f00ef          	jal	ra,10388 <__udivsi3>
   1ff9c:	00050413          	mv	s0,a0
   1ffa0:	000107b7          	lui	a5,0x10
   1ffa4:	12f47c63          	bgeu	s0,a5,200dc <__udivdi3+0x2d0>
   1ffa8:	0ff00793          	li	a5,255
   1ffac:	0087f463          	bgeu	a5,s0,1ffb4 <__udivdi3+0x1a8>
   1ffb0:	00800a13          	li	s4,8
   1ffb4:	014457b3          	srl	a5,s0,s4
   1ffb8:	00f90933          	add	s2,s2,a5
   1ffbc:	00094683          	lbu	a3,0(s2)
   1ffc0:	02000613          	li	a2,32
   1ffc4:	014686b3          	add	a3,a3,s4
   1ffc8:	40d60633          	sub	a2,a2,a3
   1ffcc:	12061263          	bnez	a2,200f0 <__udivdi3+0x2e4>
   1ffd0:	408484b3          	sub	s1,s1,s0
   1ffd4:	00100a13          	li	s4,1
   1ffd8:	01045b13          	srli	s6,s0,0x10
   1ffdc:	000b0593          	mv	a1,s6
   1ffe0:	00048513          	mv	a0,s1
   1ffe4:	becf00ef          	jal	ra,103d0 <__umodsi3>
   1ffe8:	00050913          	mv	s2,a0
   1ffec:	000b0593          	mv	a1,s6
   1fff0:	00048513          	mv	a0,s1
   1fff4:	01041b93          	slli	s7,s0,0x10
   1fff8:	b90f00ef          	jal	ra,10388 <__udivsi3>
   1fffc:	010bdb93          	srli	s7,s7,0x10
   20000:	00050493          	mv	s1,a0
   20004:	00050593          	mv	a1,a0
   20008:	000b8513          	mv	a0,s7
   2000c:	b50f00ef          	jal	ra,1035c <__mulsi3>
   20010:	01091913          	slli	s2,s2,0x10
   20014:	0109d713          	srli	a4,s3,0x10
   20018:	00e96733          	or	a4,s2,a4
   2001c:	00048a93          	mv	s5,s1
   20020:	00a77e63          	bgeu	a4,a0,2003c <__udivdi3+0x230>
   20024:	00870733          	add	a4,a4,s0
   20028:	fff48a93          	addi	s5,s1,-1
   2002c:	00876863          	bltu	a4,s0,2003c <__udivdi3+0x230>
   20030:	00a77663          	bgeu	a4,a0,2003c <__udivdi3+0x230>
   20034:	ffe48a93          	addi	s5,s1,-2
   20038:	00870733          	add	a4,a4,s0
   2003c:	40a704b3          	sub	s1,a4,a0
   20040:	000b0593          	mv	a1,s6
   20044:	00048513          	mv	a0,s1
   20048:	b88f00ef          	jal	ra,103d0 <__umodsi3>
   2004c:	00050913          	mv	s2,a0
   20050:	000b0593          	mv	a1,s6
   20054:	00048513          	mv	a0,s1
   20058:	b30f00ef          	jal	ra,10388 <__udivsi3>
   2005c:	01099993          	slli	s3,s3,0x10
   20060:	00050493          	mv	s1,a0
   20064:	00050593          	mv	a1,a0
   20068:	01091913          	slli	s2,s2,0x10
   2006c:	000b8513          	mv	a0,s7
   20070:	0109d993          	srli	s3,s3,0x10
   20074:	ae8f00ef          	jal	ra,1035c <__mulsi3>
   20078:	013969b3          	or	s3,s2,s3
   2007c:	00048613          	mv	a2,s1
   20080:	00a9fc63          	bgeu	s3,a0,20098 <__udivdi3+0x28c>
   20084:	013409b3          	add	s3,s0,s3
   20088:	fff48613          	addi	a2,s1,-1
   2008c:	0089e663          	bltu	s3,s0,20098 <__udivdi3+0x28c>
   20090:	00a9f463          	bgeu	s3,a0,20098 <__udivdi3+0x28c>
   20094:	ffe48613          	addi	a2,s1,-2
   20098:	010a9793          	slli	a5,s5,0x10
   2009c:	00c7e7b3          	or	a5,a5,a2
   200a0:	00078513          	mv	a0,a5
   200a4:	000a0593          	mv	a1,s4
   200a8:	02c12083          	lw	ra,44(sp)
   200ac:	02812403          	lw	s0,40(sp)
   200b0:	02412483          	lw	s1,36(sp)
   200b4:	02012903          	lw	s2,32(sp)
   200b8:	01c12983          	lw	s3,28(sp)
   200bc:	01812a03          	lw	s4,24(sp)
   200c0:	01412a83          	lw	s5,20(sp)
   200c4:	01012b03          	lw	s6,16(sp)
   200c8:	00c12b83          	lw	s7,12(sp)
   200cc:	00812c03          	lw	s8,8(sp)
   200d0:	00412c83          	lw	s9,4(sp)
   200d4:	03010113          	addi	sp,sp,48
   200d8:	00008067          	ret
   200dc:	010007b7          	lui	a5,0x1000
   200e0:	01000a13          	li	s4,16
   200e4:	ecf468e3          	bltu	s0,a5,1ffb4 <__udivdi3+0x1a8>
   200e8:	01800a13          	li	s4,24
   200ec:	ec9ff06f          	j	1ffb4 <__udivdi3+0x1a8>
   200f0:	00c41433          	sll	s0,s0,a2
   200f4:	00d4da33          	srl	s4,s1,a3
   200f8:	00cb19b3          	sll	s3,s6,a2
   200fc:	00db56b3          	srl	a3,s6,a3
   20100:	01045b13          	srli	s6,s0,0x10
   20104:	00c494b3          	sll	s1,s1,a2
   20108:	000b0593          	mv	a1,s6
   2010c:	000a0513          	mv	a0,s4
   20110:	0096eab3          	or	s5,a3,s1
   20114:	abcf00ef          	jal	ra,103d0 <__umodsi3>
   20118:	00050913          	mv	s2,a0
   2011c:	000b0593          	mv	a1,s6
   20120:	000a0513          	mv	a0,s4
   20124:	01041b93          	slli	s7,s0,0x10
   20128:	a60f00ef          	jal	ra,10388 <__udivsi3>
   2012c:	010bdb93          	srli	s7,s7,0x10
   20130:	00050493          	mv	s1,a0
   20134:	00050593          	mv	a1,a0
   20138:	000b8513          	mv	a0,s7
   2013c:	a20f00ef          	jal	ra,1035c <__mulsi3>
   20140:	01091913          	slli	s2,s2,0x10
   20144:	010ad713          	srli	a4,s5,0x10
   20148:	00e96733          	or	a4,s2,a4
   2014c:	00048a13          	mv	s4,s1
   20150:	00a77e63          	bgeu	a4,a0,2016c <__udivdi3+0x360>
   20154:	00870733          	add	a4,a4,s0
   20158:	fff48a13          	addi	s4,s1,-1
   2015c:	00876863          	bltu	a4,s0,2016c <__udivdi3+0x360>
   20160:	00a77663          	bgeu	a4,a0,2016c <__udivdi3+0x360>
   20164:	ffe48a13          	addi	s4,s1,-2
   20168:	00870733          	add	a4,a4,s0
   2016c:	40a704b3          	sub	s1,a4,a0
   20170:	000b0593          	mv	a1,s6
   20174:	00048513          	mv	a0,s1
   20178:	a58f00ef          	jal	ra,103d0 <__umodsi3>
   2017c:	00050913          	mv	s2,a0
   20180:	000b0593          	mv	a1,s6
   20184:	00048513          	mv	a0,s1
   20188:	a00f00ef          	jal	ra,10388 <__udivsi3>
   2018c:	00050493          	mv	s1,a0
   20190:	00050593          	mv	a1,a0
   20194:	000b8513          	mv	a0,s7
   20198:	9c4f00ef          	jal	ra,1035c <__mulsi3>
   2019c:	010a9693          	slli	a3,s5,0x10
   201a0:	01091913          	slli	s2,s2,0x10
   201a4:	0106d693          	srli	a3,a3,0x10
   201a8:	00d967b3          	or	a5,s2,a3
   201ac:	00048713          	mv	a4,s1
   201b0:	00a7fe63          	bgeu	a5,a0,201cc <__udivdi3+0x3c0>
   201b4:	008787b3          	add	a5,a5,s0
   201b8:	fff48713          	addi	a4,s1,-1
   201bc:	0087e863          	bltu	a5,s0,201cc <__udivdi3+0x3c0>
   201c0:	00a7f663          	bgeu	a5,a0,201cc <__udivdi3+0x3c0>
   201c4:	ffe48713          	addi	a4,s1,-2
   201c8:	008787b3          	add	a5,a5,s0
   201cc:	010a1a13          	slli	s4,s4,0x10
   201d0:	40a784b3          	sub	s1,a5,a0
   201d4:	00ea6a33          	or	s4,s4,a4
   201d8:	e01ff06f          	j	1ffd8 <__udivdi3+0x1cc>
   201dc:	1ed5ec63          	bltu	a1,a3,203d4 <__udivdi3+0x5c8>
   201e0:	000107b7          	lui	a5,0x10
   201e4:	04f6f463          	bgeu	a3,a5,2022c <__udivdi3+0x420>
   201e8:	0ff00593          	li	a1,255
   201ec:	00d5b533          	sltu	a0,a1,a3
   201f0:	00351513          	slli	a0,a0,0x3
   201f4:	00a6d733          	srl	a4,a3,a0
   201f8:	00005797          	auipc	a5,0x5
   201fc:	61478793          	addi	a5,a5,1556 # 2580c <__clz_tab>
   20200:	00e787b3          	add	a5,a5,a4
   20204:	0007c583          	lbu	a1,0(a5)
   20208:	02000a13          	li	s4,32
   2020c:	00a585b3          	add	a1,a1,a0
   20210:	40ba0a33          	sub	s4,s4,a1
   20214:	020a1663          	bnez	s4,20240 <__udivdi3+0x434>
   20218:	00100793          	li	a5,1
   2021c:	e896e2e3          	bltu	a3,s1,200a0 <__udivdi3+0x294>
   20220:	00cb3633          	sltu	a2,s6,a2
   20224:	00164793          	xori	a5,a2,1
   20228:	e79ff06f          	j	200a0 <__udivdi3+0x294>
   2022c:	010007b7          	lui	a5,0x1000
   20230:	01000513          	li	a0,16
   20234:	fcf6e0e3          	bltu	a3,a5,201f4 <__udivdi3+0x3e8>
   20238:	01800513          	li	a0,24
   2023c:	fb9ff06f          	j	201f4 <__udivdi3+0x3e8>
   20240:	00b65ab3          	srl	s5,a2,a1
   20244:	014696b3          	sll	a3,a3,s4
   20248:	00daeab3          	or	s5,s5,a3
   2024c:	00b4d933          	srl	s2,s1,a1
   20250:	014497b3          	sll	a5,s1,s4
   20254:	00bb55b3          	srl	a1,s6,a1
   20258:	010adb93          	srli	s7,s5,0x10
   2025c:	00f5e4b3          	or	s1,a1,a5
   20260:	00090513          	mv	a0,s2
   20264:	000b8593          	mv	a1,s7
   20268:	014619b3          	sll	s3,a2,s4
   2026c:	964f00ef          	jal	ra,103d0 <__umodsi3>
   20270:	00050413          	mv	s0,a0
   20274:	000b8593          	mv	a1,s7
   20278:	00090513          	mv	a0,s2
   2027c:	010a9c13          	slli	s8,s5,0x10
   20280:	908f00ef          	jal	ra,10388 <__udivsi3>
   20284:	010c5c13          	srli	s8,s8,0x10
   20288:	00050913          	mv	s2,a0
   2028c:	00050593          	mv	a1,a0
   20290:	000c0513          	mv	a0,s8
   20294:	8c8f00ef          	jal	ra,1035c <__mulsi3>
   20298:	01041413          	slli	s0,s0,0x10
   2029c:	0104d713          	srli	a4,s1,0x10
   202a0:	00e46733          	or	a4,s0,a4
   202a4:	00090c93          	mv	s9,s2
   202a8:	00a77e63          	bgeu	a4,a0,202c4 <__udivdi3+0x4b8>
   202ac:	01570733          	add	a4,a4,s5
   202b0:	fff90c93          	addi	s9,s2,-1
   202b4:	01576863          	bltu	a4,s5,202c4 <__udivdi3+0x4b8>
   202b8:	00a77663          	bgeu	a4,a0,202c4 <__udivdi3+0x4b8>
   202bc:	ffe90c93          	addi	s9,s2,-2
   202c0:	01570733          	add	a4,a4,s5
   202c4:	40a70933          	sub	s2,a4,a0
   202c8:	000b8593          	mv	a1,s7
   202cc:	00090513          	mv	a0,s2
   202d0:	900f00ef          	jal	ra,103d0 <__umodsi3>
   202d4:	00050413          	mv	s0,a0
   202d8:	000b8593          	mv	a1,s7
   202dc:	00090513          	mv	a0,s2
   202e0:	8a8f00ef          	jal	ra,10388 <__udivsi3>
   202e4:	00050913          	mv	s2,a0
   202e8:	00050593          	mv	a1,a0
   202ec:	000c0513          	mv	a0,s8
   202f0:	86cf00ef          	jal	ra,1035c <__mulsi3>
   202f4:	01049793          	slli	a5,s1,0x10
   202f8:	01041413          	slli	s0,s0,0x10
   202fc:	0107d793          	srli	a5,a5,0x10
   20300:	00f46733          	or	a4,s0,a5
   20304:	00090613          	mv	a2,s2
   20308:	00a77e63          	bgeu	a4,a0,20324 <__udivdi3+0x518>
   2030c:	01570733          	add	a4,a4,s5
   20310:	fff90613          	addi	a2,s2,-1
   20314:	01576863          	bltu	a4,s5,20324 <__udivdi3+0x518>
   20318:	00a77663          	bgeu	a4,a0,20324 <__udivdi3+0x518>
   2031c:	ffe90613          	addi	a2,s2,-2
   20320:	01570733          	add	a4,a4,s5
   20324:	010c9793          	slli	a5,s9,0x10
   20328:	00010e37          	lui	t3,0x10
   2032c:	00c7e7b3          	or	a5,a5,a2
   20330:	fffe0813          	addi	a6,t3,-1 # ffff <register_fini-0x75>
   20334:	0107f333          	and	t1,a5,a6
   20338:	0109f833          	and	a6,s3,a6
   2033c:	40a70733          	sub	a4,a4,a0
   20340:	0107de93          	srli	t4,a5,0x10
   20344:	0109d993          	srli	s3,s3,0x10
   20348:	00030513          	mv	a0,t1
   2034c:	00080593          	mv	a1,a6
   20350:	80cf00ef          	jal	ra,1035c <__mulsi3>
   20354:	00050893          	mv	a7,a0
   20358:	00098593          	mv	a1,s3
   2035c:	00030513          	mv	a0,t1
   20360:	ffdef0ef          	jal	ra,1035c <__mulsi3>
   20364:	00050313          	mv	t1,a0
   20368:	00080593          	mv	a1,a6
   2036c:	000e8513          	mv	a0,t4
   20370:	fedef0ef          	jal	ra,1035c <__mulsi3>
   20374:	00050813          	mv	a6,a0
   20378:	00098593          	mv	a1,s3
   2037c:	000e8513          	mv	a0,t4
   20380:	fddef0ef          	jal	ra,1035c <__mulsi3>
   20384:	0108d693          	srli	a3,a7,0x10
   20388:	01030333          	add	t1,t1,a6
   2038c:	006686b3          	add	a3,a3,t1
   20390:	0106f463          	bgeu	a3,a6,20398 <__udivdi3+0x58c>
   20394:	01c50533          	add	a0,a0,t3
   20398:	0106d613          	srli	a2,a3,0x10
   2039c:	00a60533          	add	a0,a2,a0
   203a0:	02a76663          	bltu	a4,a0,203cc <__udivdi3+0x5c0>
   203a4:	bca714e3          	bne	a4,a0,1ff6c <__udivdi3+0x160>
   203a8:	00010737          	lui	a4,0x10
   203ac:	fff70713          	addi	a4,a4,-1 # ffff <register_fini-0x75>
   203b0:	00e6f6b3          	and	a3,a3,a4
   203b4:	01069693          	slli	a3,a3,0x10
   203b8:	00e8f8b3          	and	a7,a7,a4
   203bc:	014b1633          	sll	a2,s6,s4
   203c0:	011686b3          	add	a3,a3,a7
   203c4:	00000a13          	li	s4,0
   203c8:	ccd67ce3          	bgeu	a2,a3,200a0 <__udivdi3+0x294>
   203cc:	fff78793          	addi	a5,a5,-1 # ffffff <__BSS_END__+0xfd9517>
   203d0:	b9dff06f          	j	1ff6c <__udivdi3+0x160>
   203d4:	00000a13          	li	s4,0
   203d8:	00000793          	li	a5,0
   203dc:	cc5ff06f          	j	200a0 <__udivdi3+0x294>

000203e0 <__umoddi3>:
   203e0:	fd010113          	addi	sp,sp,-48
   203e4:	02812423          	sw	s0,40(sp)
   203e8:	02912223          	sw	s1,36(sp)
   203ec:	01312e23          	sw	s3,28(sp)
   203f0:	01612823          	sw	s6,16(sp)
   203f4:	02112623          	sw	ra,44(sp)
   203f8:	03212023          	sw	s2,32(sp)
   203fc:	01412c23          	sw	s4,24(sp)
   20400:	01512a23          	sw	s5,20(sp)
   20404:	01712623          	sw	s7,12(sp)
   20408:	01812423          	sw	s8,8(sp)
   2040c:	01912223          	sw	s9,4(sp)
   20410:	01a12023          	sw	s10,0(sp)
   20414:	00050b13          	mv	s6,a0
   20418:	00058993          	mv	s3,a1
   2041c:	00050413          	mv	s0,a0
   20420:	00058493          	mv	s1,a1
   20424:	26069c63          	bnez	a3,2069c <__umoddi3+0x2bc>
   20428:	00060913          	mv	s2,a2
   2042c:	00068a13          	mv	s4,a3
   20430:	00005a97          	auipc	s5,0x5
   20434:	3dca8a93          	addi	s5,s5,988 # 2580c <__clz_tab>
   20438:	14c5f263          	bgeu	a1,a2,2057c <__umoddi3+0x19c>
   2043c:	000107b7          	lui	a5,0x10
   20440:	12f67463          	bgeu	a2,a5,20568 <__umoddi3+0x188>
   20444:	0ff00793          	li	a5,255
   20448:	00c7f463          	bgeu	a5,a2,20450 <__umoddi3+0x70>
   2044c:	00800a13          	li	s4,8
   20450:	014657b3          	srl	a5,a2,s4
   20454:	00fa8ab3          	add	s5,s5,a5
   20458:	000ac703          	lbu	a4,0(s5)
   2045c:	02000513          	li	a0,32
   20460:	01470733          	add	a4,a4,s4
   20464:	40e50a33          	sub	s4,a0,a4
   20468:	000a0c63          	beqz	s4,20480 <__umoddi3+0xa0>
   2046c:	014995b3          	sll	a1,s3,s4
   20470:	00eb5733          	srl	a4,s6,a4
   20474:	01461933          	sll	s2,a2,s4
   20478:	00b764b3          	or	s1,a4,a1
   2047c:	014b1433          	sll	s0,s6,s4
   20480:	01095a93          	srli	s5,s2,0x10
   20484:	000a8593          	mv	a1,s5
   20488:	00048513          	mv	a0,s1
   2048c:	f45ef0ef          	jal	ra,103d0 <__umodsi3>
   20490:	00050993          	mv	s3,a0
   20494:	000a8593          	mv	a1,s5
   20498:	01091b13          	slli	s6,s2,0x10
   2049c:	00048513          	mv	a0,s1
   204a0:	ee9ef0ef          	jal	ra,10388 <__udivsi3>
   204a4:	010b5b13          	srli	s6,s6,0x10
   204a8:	00050593          	mv	a1,a0
   204ac:	000b0513          	mv	a0,s6
   204b0:	eadef0ef          	jal	ra,1035c <__mulsi3>
   204b4:	01099993          	slli	s3,s3,0x10
   204b8:	01045793          	srli	a5,s0,0x10
   204bc:	00f9e7b3          	or	a5,s3,a5
   204c0:	00a7fa63          	bgeu	a5,a0,204d4 <__umoddi3+0xf4>
   204c4:	012787b3          	add	a5,a5,s2
   204c8:	0127e663          	bltu	a5,s2,204d4 <__umoddi3+0xf4>
   204cc:	00a7f463          	bgeu	a5,a0,204d4 <__umoddi3+0xf4>
   204d0:	012787b3          	add	a5,a5,s2
   204d4:	40a784b3          	sub	s1,a5,a0
   204d8:	000a8593          	mv	a1,s5
   204dc:	00048513          	mv	a0,s1
   204e0:	ef1ef0ef          	jal	ra,103d0 <__umodsi3>
   204e4:	00050993          	mv	s3,a0
   204e8:	000a8593          	mv	a1,s5
   204ec:	00048513          	mv	a0,s1
   204f0:	e99ef0ef          	jal	ra,10388 <__udivsi3>
   204f4:	01041413          	slli	s0,s0,0x10
   204f8:	00050593          	mv	a1,a0
   204fc:	01099993          	slli	s3,s3,0x10
   20500:	000b0513          	mv	a0,s6
   20504:	01045413          	srli	s0,s0,0x10
   20508:	e55ef0ef          	jal	ra,1035c <__mulsi3>
   2050c:	0089e433          	or	s0,s3,s0
   20510:	00a47a63          	bgeu	s0,a0,20524 <__umoddi3+0x144>
   20514:	01240433          	add	s0,s0,s2
   20518:	01246663          	bltu	s0,s2,20524 <__umoddi3+0x144>
   2051c:	00a47463          	bgeu	s0,a0,20524 <__umoddi3+0x144>
   20520:	01240433          	add	s0,s0,s2
   20524:	40a40433          	sub	s0,s0,a0
   20528:	01445533          	srl	a0,s0,s4
   2052c:	00000593          	li	a1,0
   20530:	02c12083          	lw	ra,44(sp)
   20534:	02812403          	lw	s0,40(sp)
   20538:	02412483          	lw	s1,36(sp)
   2053c:	02012903          	lw	s2,32(sp)
   20540:	01c12983          	lw	s3,28(sp)
   20544:	01812a03          	lw	s4,24(sp)
   20548:	01412a83          	lw	s5,20(sp)
   2054c:	01012b03          	lw	s6,16(sp)
   20550:	00c12b83          	lw	s7,12(sp)
   20554:	00812c03          	lw	s8,8(sp)
   20558:	00412c83          	lw	s9,4(sp)
   2055c:	00012d03          	lw	s10,0(sp)
   20560:	03010113          	addi	sp,sp,48
   20564:	00008067          	ret
   20568:	010007b7          	lui	a5,0x1000
   2056c:	01000a13          	li	s4,16
   20570:	eef660e3          	bltu	a2,a5,20450 <__umoddi3+0x70>
   20574:	01800a13          	li	s4,24
   20578:	ed9ff06f          	j	20450 <__umoddi3+0x70>
   2057c:	00061a63          	bnez	a2,20590 <__umoddi3+0x1b0>
   20580:	00000593          	li	a1,0
   20584:	00100513          	li	a0,1
   20588:	e01ef0ef          	jal	ra,10388 <__udivsi3>
   2058c:	00050913          	mv	s2,a0
   20590:	000107b7          	lui	a5,0x10
   20594:	0ef97a63          	bgeu	s2,a5,20688 <__umoddi3+0x2a8>
   20598:	0ff00793          	li	a5,255
   2059c:	0127f463          	bgeu	a5,s2,205a4 <__umoddi3+0x1c4>
   205a0:	00800a13          	li	s4,8
   205a4:	014957b3          	srl	a5,s2,s4
   205a8:	00fa8ab3          	add	s5,s5,a5
   205ac:	000ac703          	lbu	a4,0(s5)
   205b0:	02000513          	li	a0,32
   205b4:	412984b3          	sub	s1,s3,s2
   205b8:	01470733          	add	a4,a4,s4
   205bc:	40e50a33          	sub	s4,a0,a4
   205c0:	ec0a00e3          	beqz	s4,20480 <__umoddi3+0xa0>
   205c4:	01491933          	sll	s2,s2,s4
   205c8:	00e9dab3          	srl	s5,s3,a4
   205cc:	014995b3          	sll	a1,s3,s4
   205d0:	00eb5733          	srl	a4,s6,a4
   205d4:	01095493          	srli	s1,s2,0x10
   205d8:	00b76bb3          	or	s7,a4,a1
   205dc:	000a8513          	mv	a0,s5
   205e0:	00048593          	mv	a1,s1
   205e4:	dedef0ef          	jal	ra,103d0 <__umodsi3>
   205e8:	00050993          	mv	s3,a0
   205ec:	00048593          	mv	a1,s1
   205f0:	014b1433          	sll	s0,s6,s4
   205f4:	000a8513          	mv	a0,s5
   205f8:	01091b13          	slli	s6,s2,0x10
   205fc:	d8def0ef          	jal	ra,10388 <__udivsi3>
   20600:	010b5b13          	srli	s6,s6,0x10
   20604:	00050593          	mv	a1,a0
   20608:	000b0513          	mv	a0,s6
   2060c:	d51ef0ef          	jal	ra,1035c <__mulsi3>
   20610:	01099993          	slli	s3,s3,0x10
   20614:	010bd793          	srli	a5,s7,0x10
   20618:	00f9e7b3          	or	a5,s3,a5
   2061c:	00a7fa63          	bgeu	a5,a0,20630 <__umoddi3+0x250>
   20620:	012787b3          	add	a5,a5,s2
   20624:	0127e663          	bltu	a5,s2,20630 <__umoddi3+0x250>
   20628:	00a7f463          	bgeu	a5,a0,20630 <__umoddi3+0x250>
   2062c:	012787b3          	add	a5,a5,s2
   20630:	40a78ab3          	sub	s5,a5,a0
   20634:	00048593          	mv	a1,s1
   20638:	000a8513          	mv	a0,s5
   2063c:	d95ef0ef          	jal	ra,103d0 <__umodsi3>
   20640:	00050993          	mv	s3,a0
   20644:	00048593          	mv	a1,s1
   20648:	000a8513          	mv	a0,s5
   2064c:	d3def0ef          	jal	ra,10388 <__udivsi3>
   20650:	00050593          	mv	a1,a0
   20654:	000b0513          	mv	a0,s6
   20658:	d05ef0ef          	jal	ra,1035c <__mulsi3>
   2065c:	010b9593          	slli	a1,s7,0x10
   20660:	01099993          	slli	s3,s3,0x10
   20664:	0105d593          	srli	a1,a1,0x10
   20668:	00b9e5b3          	or	a1,s3,a1
   2066c:	00a5fa63          	bgeu	a1,a0,20680 <__umoddi3+0x2a0>
   20670:	012585b3          	add	a1,a1,s2
   20674:	0125e663          	bltu	a1,s2,20680 <__umoddi3+0x2a0>
   20678:	00a5f463          	bgeu	a1,a0,20680 <__umoddi3+0x2a0>
   2067c:	012585b3          	add	a1,a1,s2
   20680:	40a584b3          	sub	s1,a1,a0
   20684:	dfdff06f          	j	20480 <__umoddi3+0xa0>
   20688:	010007b7          	lui	a5,0x1000
   2068c:	01000a13          	li	s4,16
   20690:	f0f96ae3          	bltu	s2,a5,205a4 <__umoddi3+0x1c4>
   20694:	01800a13          	li	s4,24
   20698:	f0dff06f          	j	205a4 <__umoddi3+0x1c4>
   2069c:	e8d5eae3          	bltu	a1,a3,20530 <__umoddi3+0x150>
   206a0:	000107b7          	lui	a5,0x10
   206a4:	04f6fc63          	bgeu	a3,a5,206fc <__umoddi3+0x31c>
   206a8:	0ff00a93          	li	s5,255
   206ac:	00dab533          	sltu	a0,s5,a3
   206b0:	00351513          	slli	a0,a0,0x3
   206b4:	00a6d733          	srl	a4,a3,a0
   206b8:	00005797          	auipc	a5,0x5
   206bc:	15478793          	addi	a5,a5,340 # 2580c <__clz_tab>
   206c0:	00e787b3          	add	a5,a5,a4
   206c4:	0007ca83          	lbu	s5,0(a5)
   206c8:	02000593          	li	a1,32
   206cc:	00aa8ab3          	add	s5,s5,a0
   206d0:	41558a33          	sub	s4,a1,s5
   206d4:	020a1e63          	bnez	s4,20710 <__umoddi3+0x330>
   206d8:	0136e463          	bltu	a3,s3,206e0 <__umoddi3+0x300>
   206dc:	00cb6a63          	bltu	s6,a2,206f0 <__umoddi3+0x310>
   206e0:	40cb0433          	sub	s0,s6,a2
   206e4:	40d986b3          	sub	a3,s3,a3
   206e8:	008b3b33          	sltu	s6,s6,s0
   206ec:	416684b3          	sub	s1,a3,s6
   206f0:	00040513          	mv	a0,s0
   206f4:	00048593          	mv	a1,s1
   206f8:	e39ff06f          	j	20530 <__umoddi3+0x150>
   206fc:	010007b7          	lui	a5,0x1000
   20700:	01000513          	li	a0,16
   20704:	faf6e8e3          	bltu	a3,a5,206b4 <__umoddi3+0x2d4>
   20708:	01800513          	li	a0,24
   2070c:	fa9ff06f          	j	206b4 <__umoddi3+0x2d4>
   20710:	014696b3          	sll	a3,a3,s4
   20714:	015657b3          	srl	a5,a2,s5
   20718:	00d7ebb3          	or	s7,a5,a3
   2071c:	0159d433          	srl	s0,s3,s5
   20720:	014995b3          	sll	a1,s3,s4
   20724:	015b54b3          	srl	s1,s6,s5
   20728:	010bdc13          	srli	s8,s7,0x10
   2072c:	00b4e4b3          	or	s1,s1,a1
   20730:	00040513          	mv	a0,s0
   20734:	000c0593          	mv	a1,s8
   20738:	01461d33          	sll	s10,a2,s4
   2073c:	c95ef0ef          	jal	ra,103d0 <__umodsi3>
   20740:	00050993          	mv	s3,a0
   20744:	000c0593          	mv	a1,s8
   20748:	00040513          	mv	a0,s0
   2074c:	010b9c93          	slli	s9,s7,0x10
   20750:	c39ef0ef          	jal	ra,10388 <__udivsi3>
   20754:	010cdc93          	srli	s9,s9,0x10
   20758:	00050413          	mv	s0,a0
   2075c:	00050593          	mv	a1,a0
   20760:	000c8513          	mv	a0,s9
   20764:	bf9ef0ef          	jal	ra,1035c <__mulsi3>
   20768:	01099993          	slli	s3,s3,0x10
   2076c:	0104d713          	srli	a4,s1,0x10
   20770:	00e9e733          	or	a4,s3,a4
   20774:	014b1b33          	sll	s6,s6,s4
   20778:	00040993          	mv	s3,s0
   2077c:	00a77e63          	bgeu	a4,a0,20798 <__umoddi3+0x3b8>
   20780:	01770733          	add	a4,a4,s7
   20784:	fff40993          	addi	s3,s0,-1
   20788:	01776863          	bltu	a4,s7,20798 <__umoddi3+0x3b8>
   2078c:	00a77663          	bgeu	a4,a0,20798 <__umoddi3+0x3b8>
   20790:	ffe40993          	addi	s3,s0,-2
   20794:	01770733          	add	a4,a4,s7
   20798:	40a70933          	sub	s2,a4,a0
   2079c:	000c0593          	mv	a1,s8
   207a0:	00090513          	mv	a0,s2
   207a4:	c2def0ef          	jal	ra,103d0 <__umodsi3>
   207a8:	00050413          	mv	s0,a0
   207ac:	000c0593          	mv	a1,s8
   207b0:	00090513          	mv	a0,s2
   207b4:	bd5ef0ef          	jal	ra,10388 <__udivsi3>
   207b8:	00050593          	mv	a1,a0
   207bc:	00050913          	mv	s2,a0
   207c0:	000c8513          	mv	a0,s9
   207c4:	b99ef0ef          	jal	ra,1035c <__mulsi3>
   207c8:	01049593          	slli	a1,s1,0x10
   207cc:	01041413          	slli	s0,s0,0x10
   207d0:	0105d593          	srli	a1,a1,0x10
   207d4:	00b465b3          	or	a1,s0,a1
   207d8:	00090793          	mv	a5,s2
   207dc:	00a5fe63          	bgeu	a1,a0,207f8 <__umoddi3+0x418>
   207e0:	017585b3          	add	a1,a1,s7
   207e4:	fff90793          	addi	a5,s2,-1
   207e8:	0175e863          	bltu	a1,s7,207f8 <__umoddi3+0x418>
   207ec:	00a5f663          	bgeu	a1,a0,207f8 <__umoddi3+0x418>
   207f0:	ffe90793          	addi	a5,s2,-2
   207f4:	017585b3          	add	a1,a1,s7
   207f8:	00010e37          	lui	t3,0x10
   207fc:	01099993          	slli	s3,s3,0x10
   20800:	00f9e9b3          	or	s3,s3,a5
   20804:	fffe0813          	addi	a6,t3,-1 # ffff <register_fini-0x75>
   20808:	0109f733          	and	a4,s3,a6
   2080c:	010d7833          	and	a6,s10,a6
   20810:	40a584b3          	sub	s1,a1,a0
   20814:	0109d993          	srli	s3,s3,0x10
   20818:	010d5893          	srli	a7,s10,0x10
   2081c:	00070513          	mv	a0,a4
   20820:	00080593          	mv	a1,a6
   20824:	b39ef0ef          	jal	ra,1035c <__mulsi3>
   20828:	00050793          	mv	a5,a0
   2082c:	00088593          	mv	a1,a7
   20830:	00070513          	mv	a0,a4
   20834:	b29ef0ef          	jal	ra,1035c <__mulsi3>
   20838:	00050313          	mv	t1,a0
   2083c:	00080593          	mv	a1,a6
   20840:	00098513          	mv	a0,s3
   20844:	b19ef0ef          	jal	ra,1035c <__mulsi3>
   20848:	00050813          	mv	a6,a0
   2084c:	00088593          	mv	a1,a7
   20850:	00098513          	mv	a0,s3
   20854:	b09ef0ef          	jal	ra,1035c <__mulsi3>
   20858:	0107d713          	srli	a4,a5,0x10
   2085c:	01030333          	add	t1,t1,a6
   20860:	00670733          	add	a4,a4,t1
   20864:	01077463          	bgeu	a4,a6,2086c <__umoddi3+0x48c>
   20868:	01c50533          	add	a0,a0,t3
   2086c:	000106b7          	lui	a3,0x10
   20870:	fff68693          	addi	a3,a3,-1 # ffff <register_fini-0x75>
   20874:	01075593          	srli	a1,a4,0x10
   20878:	00d77733          	and	a4,a4,a3
   2087c:	01071713          	slli	a4,a4,0x10
   20880:	00d7f7b3          	and	a5,a5,a3
   20884:	00a585b3          	add	a1,a1,a0
   20888:	00f707b3          	add	a5,a4,a5
   2088c:	00b4e663          	bltu	s1,a1,20898 <__umoddi3+0x4b8>
   20890:	00b49e63          	bne	s1,a1,208ac <__umoddi3+0x4cc>
   20894:	00fb7c63          	bgeu	s6,a5,208ac <__umoddi3+0x4cc>
   20898:	41a78633          	sub	a2,a5,s10
   2089c:	00c7b7b3          	sltu	a5,a5,a2
   208a0:	017787b3          	add	a5,a5,s7
   208a4:	40f585b3          	sub	a1,a1,a5
   208a8:	00060793          	mv	a5,a2
   208ac:	40fb07b3          	sub	a5,s6,a5
   208b0:	00fb3b33          	sltu	s6,s6,a5
   208b4:	40b485b3          	sub	a1,s1,a1
   208b8:	416585b3          	sub	a1,a1,s6
   208bc:	01559433          	sll	s0,a1,s5
   208c0:	0147d7b3          	srl	a5,a5,s4
   208c4:	00f46533          	or	a0,s0,a5
   208c8:	0145d5b3          	srl	a1,a1,s4
   208cc:	c65ff06f          	j	20530 <__umoddi3+0x150>

000208d0 <__divdf3>:
   208d0:	fb010113          	addi	sp,sp,-80
   208d4:	03312e23          	sw	s3,60(sp)
   208d8:	0145d993          	srli	s3,a1,0x14
   208dc:	04912223          	sw	s1,68(sp)
   208e0:	05212023          	sw	s2,64(sp)
   208e4:	03512a23          	sw	s5,52(sp)
   208e8:	03612823          	sw	s6,48(sp)
   208ec:	03712623          	sw	s7,44(sp)
   208f0:	00c59493          	slli	s1,a1,0xc
   208f4:	04112623          	sw	ra,76(sp)
   208f8:	04812423          	sw	s0,72(sp)
   208fc:	03412c23          	sw	s4,56(sp)
   20900:	03812423          	sw	s8,40(sp)
   20904:	03912223          	sw	s9,36(sp)
   20908:	03a12023          	sw	s10,32(sp)
   2090c:	01b12e23          	sw	s11,28(sp)
   20910:	7ff9f993          	andi	s3,s3,2047
   20914:	00050913          	mv	s2,a0
   20918:	00060b93          	mv	s7,a2
   2091c:	00068b13          	mv	s6,a3
   20920:	00c4d493          	srli	s1,s1,0xc
   20924:	01f5da93          	srli	s5,a1,0x1f
   20928:	0a098263          	beqz	s3,209cc <__divdf3+0xfc>
   2092c:	7ff00793          	li	a5,2047
   20930:	10f98063          	beq	s3,a5,20a30 <__divdf3+0x160>
   20934:	01d55c93          	srli	s9,a0,0x1d
   20938:	00349493          	slli	s1,s1,0x3
   2093c:	009ce4b3          	or	s1,s9,s1
   20940:	00800cb7          	lui	s9,0x800
   20944:	0194ecb3          	or	s9,s1,s9
   20948:	00351413          	slli	s0,a0,0x3
   2094c:	c0198a13          	addi	s4,s3,-1023
   20950:	00000c13          	li	s8,0
   20954:	014b5513          	srli	a0,s6,0x14
   20958:	00cb1913          	slli	s2,s6,0xc
   2095c:	7ff57993          	andi	s3,a0,2047
   20960:	00c95913          	srli	s2,s2,0xc
   20964:	01fb5b13          	srli	s6,s6,0x1f
   20968:	10098263          	beqz	s3,20a6c <__divdf3+0x19c>
   2096c:	7ff00793          	li	a5,2047
   20970:	16f98263          	beq	s3,a5,20ad4 <__divdf3+0x204>
   20974:	00391513          	slli	a0,s2,0x3
   20978:	01dbd793          	srli	a5,s7,0x1d
   2097c:	00a7e533          	or	a0,a5,a0
   20980:	00800937          	lui	s2,0x800
   20984:	01256933          	or	s2,a0,s2
   20988:	003b9813          	slli	a6,s7,0x3
   2098c:	c0198513          	addi	a0,s3,-1023
   20990:	00000793          	li	a5,0
   20994:	002c1713          	slli	a4,s8,0x2
   20998:	00f76733          	or	a4,a4,a5
   2099c:	fff70713          	addi	a4,a4,-1
   209a0:	00e00693          	li	a3,14
   209a4:	016ac4b3          	xor	s1,s5,s6
   209a8:	40aa09b3          	sub	s3,s4,a0
   209ac:	16e6e063          	bltu	a3,a4,20b0c <__divdf3+0x23c>
   209b0:	00005697          	auipc	a3,0x5
   209b4:	da868693          	addi	a3,a3,-600 # 25758 <zeroes.4467+0x10>
   209b8:	00271713          	slli	a4,a4,0x2
   209bc:	00d70733          	add	a4,a4,a3
   209c0:	00072703          	lw	a4,0(a4)
   209c4:	00d70733          	add	a4,a4,a3
   209c8:	00070067          	jr	a4
   209cc:	00a4ecb3          	or	s9,s1,a0
   209d0:	060c8e63          	beqz	s9,20a4c <__divdf3+0x17c>
   209d4:	04048063          	beqz	s1,20a14 <__divdf3+0x144>
   209d8:	00048513          	mv	a0,s1
   209dc:	1a8040ef          	jal	ra,24b84 <__clzsi2>
   209e0:	ff550793          	addi	a5,a0,-11
   209e4:	01c00713          	li	a4,28
   209e8:	02f74c63          	blt	a4,a5,20a20 <__divdf3+0x150>
   209ec:	01d00c93          	li	s9,29
   209f0:	ff850413          	addi	s0,a0,-8
   209f4:	40fc8cb3          	sub	s9,s9,a5
   209f8:	008494b3          	sll	s1,s1,s0
   209fc:	01995cb3          	srl	s9,s2,s9
   20a00:	009cecb3          	or	s9,s9,s1
   20a04:	00891433          	sll	s0,s2,s0
   20a08:	c0d00993          	li	s3,-1011
   20a0c:	40a98a33          	sub	s4,s3,a0
   20a10:	f41ff06f          	j	20950 <__divdf3+0x80>
   20a14:	170040ef          	jal	ra,24b84 <__clzsi2>
   20a18:	02050513          	addi	a0,a0,32
   20a1c:	fc5ff06f          	j	209e0 <__divdf3+0x110>
   20a20:	fd850493          	addi	s1,a0,-40
   20a24:	00991cb3          	sll	s9,s2,s1
   20a28:	00000413          	li	s0,0
   20a2c:	fddff06f          	j	20a08 <__divdf3+0x138>
   20a30:	00a4ecb3          	or	s9,s1,a0
   20a34:	020c8463          	beqz	s9,20a5c <__divdf3+0x18c>
   20a38:	00050413          	mv	s0,a0
   20a3c:	00048c93          	mv	s9,s1
   20a40:	7ff00a13          	li	s4,2047
   20a44:	00300c13          	li	s8,3
   20a48:	f0dff06f          	j	20954 <__divdf3+0x84>
   20a4c:	00000413          	li	s0,0
   20a50:	00000a13          	li	s4,0
   20a54:	00100c13          	li	s8,1
   20a58:	efdff06f          	j	20954 <__divdf3+0x84>
   20a5c:	00000413          	li	s0,0
   20a60:	7ff00a13          	li	s4,2047
   20a64:	00200c13          	li	s8,2
   20a68:	eedff06f          	j	20954 <__divdf3+0x84>
   20a6c:	01796833          	or	a6,s2,s7
   20a70:	06080e63          	beqz	a6,20aec <__divdf3+0x21c>
   20a74:	04090063          	beqz	s2,20ab4 <__divdf3+0x1e4>
   20a78:	00090513          	mv	a0,s2
   20a7c:	108040ef          	jal	ra,24b84 <__clzsi2>
   20a80:	ff550793          	addi	a5,a0,-11
   20a84:	01c00713          	li	a4,28
   20a88:	02f74e63          	blt	a4,a5,20ac4 <__divdf3+0x1f4>
   20a8c:	01d00713          	li	a4,29
   20a90:	ff850813          	addi	a6,a0,-8
   20a94:	40f70733          	sub	a4,a4,a5
   20a98:	01091933          	sll	s2,s2,a6
   20a9c:	00ebd733          	srl	a4,s7,a4
   20aa0:	01276933          	or	s2,a4,s2
   20aa4:	010b9833          	sll	a6,s7,a6
   20aa8:	c0d00713          	li	a4,-1011
   20aac:	40a70533          	sub	a0,a4,a0
   20ab0:	ee1ff06f          	j	20990 <__divdf3+0xc0>
   20ab4:	000b8513          	mv	a0,s7
   20ab8:	0cc040ef          	jal	ra,24b84 <__clzsi2>
   20abc:	02050513          	addi	a0,a0,32
   20ac0:	fc1ff06f          	j	20a80 <__divdf3+0x1b0>
   20ac4:	fd850913          	addi	s2,a0,-40
   20ac8:	012b9933          	sll	s2,s7,s2
   20acc:	00000813          	li	a6,0
   20ad0:	fd9ff06f          	j	20aa8 <__divdf3+0x1d8>
   20ad4:	01796833          	or	a6,s2,s7
   20ad8:	02080263          	beqz	a6,20afc <__divdf3+0x22c>
   20adc:	000b8813          	mv	a6,s7
   20ae0:	7ff00513          	li	a0,2047
   20ae4:	00300793          	li	a5,3
   20ae8:	eadff06f          	j	20994 <__divdf3+0xc4>
   20aec:	00000913          	li	s2,0
   20af0:	00000513          	li	a0,0
   20af4:	00100793          	li	a5,1
   20af8:	e9dff06f          	j	20994 <__divdf3+0xc4>
   20afc:	00000913          	li	s2,0
   20b00:	7ff00513          	li	a0,2047
   20b04:	00200793          	li	a5,2
   20b08:	e8dff06f          	j	20994 <__divdf3+0xc4>
   20b0c:	01996663          	bltu	s2,s9,20b18 <__divdf3+0x248>
   20b10:	452c9263          	bne	s9,s2,20f54 <__divdf3+0x684>
   20b14:	45046063          	bltu	s0,a6,20f54 <__divdf3+0x684>
   20b18:	01fc9713          	slli	a4,s9,0x1f
   20b1c:	00145793          	srli	a5,s0,0x1
   20b20:	01f41d93          	slli	s11,s0,0x1f
   20b24:	001cdc93          	srli	s9,s9,0x1
   20b28:	00f76433          	or	s0,a4,a5
   20b2c:	01885b93          	srli	s7,a6,0x18
   20b30:	00891513          	slli	a0,s2,0x8
   20b34:	00abebb3          	or	s7,s7,a0
   20b38:	010bda93          	srli	s5,s7,0x10
   20b3c:	000a8593          	mv	a1,s5
   20b40:	010b9b13          	slli	s6,s7,0x10
   20b44:	000c8513          	mv	a0,s9
   20b48:	00881c13          	slli	s8,a6,0x8
   20b4c:	010b5b13          	srli	s6,s6,0x10
   20b50:	839ef0ef          	jal	ra,10388 <__udivsi3>
   20b54:	00050593          	mv	a1,a0
   20b58:	00050d13          	mv	s10,a0
   20b5c:	000b0513          	mv	a0,s6
   20b60:	ffcef0ef          	jal	ra,1035c <__mulsi3>
   20b64:	00050913          	mv	s2,a0
   20b68:	000a8593          	mv	a1,s5
   20b6c:	000c8513          	mv	a0,s9
   20b70:	861ef0ef          	jal	ra,103d0 <__umodsi3>
   20b74:	01051513          	slli	a0,a0,0x10
   20b78:	01045793          	srli	a5,s0,0x10
   20b7c:	00a7e533          	or	a0,a5,a0
   20b80:	000d0a13          	mv	s4,s10
   20b84:	01257e63          	bgeu	a0,s2,20ba0 <__divdf3+0x2d0>
   20b88:	01750533          	add	a0,a0,s7
   20b8c:	fffd0a13          	addi	s4,s10,-1
   20b90:	01756863          	bltu	a0,s7,20ba0 <__divdf3+0x2d0>
   20b94:	01257663          	bgeu	a0,s2,20ba0 <__divdf3+0x2d0>
   20b98:	ffed0a13          	addi	s4,s10,-2
   20b9c:	01750533          	add	a0,a0,s7
   20ba0:	41250933          	sub	s2,a0,s2
   20ba4:	000a8593          	mv	a1,s5
   20ba8:	00090513          	mv	a0,s2
   20bac:	fdcef0ef          	jal	ra,10388 <__udivsi3>
   20bb0:	00050593          	mv	a1,a0
   20bb4:	00050d13          	mv	s10,a0
   20bb8:	000b0513          	mv	a0,s6
   20bbc:	fa0ef0ef          	jal	ra,1035c <__mulsi3>
   20bc0:	00050c93          	mv	s9,a0
   20bc4:	000a8593          	mv	a1,s5
   20bc8:	00090513          	mv	a0,s2
   20bcc:	805ef0ef          	jal	ra,103d0 <__umodsi3>
   20bd0:	01041413          	slli	s0,s0,0x10
   20bd4:	01051513          	slli	a0,a0,0x10
   20bd8:	01045413          	srli	s0,s0,0x10
   20bdc:	00a46433          	or	s0,s0,a0
   20be0:	000d0713          	mv	a4,s10
   20be4:	01947e63          	bgeu	s0,s9,20c00 <__divdf3+0x330>
   20be8:	01740433          	add	s0,s0,s7
   20bec:	fffd0713          	addi	a4,s10,-1
   20bf0:	01746863          	bltu	s0,s7,20c00 <__divdf3+0x330>
   20bf4:	01947663          	bgeu	s0,s9,20c00 <__divdf3+0x330>
   20bf8:	ffed0713          	addi	a4,s10,-2
   20bfc:	01740433          	add	s0,s0,s7
   20c00:	010a1793          	slli	a5,s4,0x10
   20c04:	00010e37          	lui	t3,0x10
   20c08:	00e7e7b3          	or	a5,a5,a4
   20c0c:	41940833          	sub	a6,s0,s9
   20c10:	fffe0c93          	addi	s9,t3,-1 # ffff <register_fini-0x75>
   20c14:	0197f333          	and	t1,a5,s9
   20c18:	019c7cb3          	and	s9,s8,s9
   20c1c:	0107d713          	srli	a4,a5,0x10
   20c20:	010c5d13          	srli	s10,s8,0x10
   20c24:	00030513          	mv	a0,t1
   20c28:	000c8593          	mv	a1,s9
   20c2c:	f30ef0ef          	jal	ra,1035c <__mulsi3>
   20c30:	00050893          	mv	a7,a0
   20c34:	000d0593          	mv	a1,s10
   20c38:	00030513          	mv	a0,t1
   20c3c:	f20ef0ef          	jal	ra,1035c <__mulsi3>
   20c40:	00050313          	mv	t1,a0
   20c44:	000c8593          	mv	a1,s9
   20c48:	00070513          	mv	a0,a4
   20c4c:	f10ef0ef          	jal	ra,1035c <__mulsi3>
   20c50:	00050e93          	mv	t4,a0
   20c54:	000d0593          	mv	a1,s10
   20c58:	00070513          	mv	a0,a4
   20c5c:	f00ef0ef          	jal	ra,1035c <__mulsi3>
   20c60:	0108d713          	srli	a4,a7,0x10
   20c64:	01d30333          	add	t1,t1,t4
   20c68:	00670733          	add	a4,a4,t1
   20c6c:	01d77463          	bgeu	a4,t4,20c74 <__divdf3+0x3a4>
   20c70:	01c50533          	add	a0,a0,t3
   20c74:	01075413          	srli	s0,a4,0x10
   20c78:	00a40433          	add	s0,s0,a0
   20c7c:	00010537          	lui	a0,0x10
   20c80:	fff50513          	addi	a0,a0,-1 # ffff <register_fini-0x75>
   20c84:	00a77a33          	and	s4,a4,a0
   20c88:	010a1a13          	slli	s4,s4,0x10
   20c8c:	00a8f8b3          	and	a7,a7,a0
   20c90:	011a0a33          	add	s4,s4,a7
   20c94:	00886863          	bltu	a6,s0,20ca4 <__divdf3+0x3d4>
   20c98:	00078913          	mv	s2,a5
   20c9c:	04881463          	bne	a6,s0,20ce4 <__divdf3+0x414>
   20ca0:	054df263          	bgeu	s11,s4,20ce4 <__divdf3+0x414>
   20ca4:	018d8db3          	add	s11,s11,s8
   20ca8:	018db733          	sltu	a4,s11,s8
   20cac:	01770733          	add	a4,a4,s7
   20cb0:	00e80833          	add	a6,a6,a4
   20cb4:	fff78913          	addi	s2,a5,-1 # ffffff <__BSS_END__+0xfd9517>
   20cb8:	010be663          	bltu	s7,a6,20cc4 <__divdf3+0x3f4>
   20cbc:	030b9463          	bne	s7,a6,20ce4 <__divdf3+0x414>
   20cc0:	038de263          	bltu	s11,s8,20ce4 <__divdf3+0x414>
   20cc4:	00886663          	bltu	a6,s0,20cd0 <__divdf3+0x400>
   20cc8:	01041e63          	bne	s0,a6,20ce4 <__divdf3+0x414>
   20ccc:	014dfc63          	bgeu	s11,s4,20ce4 <__divdf3+0x414>
   20cd0:	018d8db3          	add	s11,s11,s8
   20cd4:	ffe78913          	addi	s2,a5,-2
   20cd8:	018db7b3          	sltu	a5,s11,s8
   20cdc:	017787b3          	add	a5,a5,s7
   20ce0:	00f80833          	add	a6,a6,a5
   20ce4:	414d8a33          	sub	s4,s11,s4
   20ce8:	40880433          	sub	s0,a6,s0
   20cec:	014db7b3          	sltu	a5,s11,s4
   20cf0:	40f40433          	sub	s0,s0,a5
   20cf4:	fff00813          	li	a6,-1
   20cf8:	1a8b8063          	beq	s7,s0,20e98 <__divdf3+0x5c8>
   20cfc:	000a8593          	mv	a1,s5
   20d00:	00040513          	mv	a0,s0
   20d04:	e84ef0ef          	jal	ra,10388 <__udivsi3>
   20d08:	00050593          	mv	a1,a0
   20d0c:	00a12623          	sw	a0,12(sp)
   20d10:	000b0513          	mv	a0,s6
   20d14:	e48ef0ef          	jal	ra,1035c <__mulsi3>
   20d18:	00a12423          	sw	a0,8(sp)
   20d1c:	000a8593          	mv	a1,s5
   20d20:	00040513          	mv	a0,s0
   20d24:	eacef0ef          	jal	ra,103d0 <__umodsi3>
   20d28:	00c12683          	lw	a3,12(sp)
   20d2c:	00812703          	lw	a4,8(sp)
   20d30:	01051513          	slli	a0,a0,0x10
   20d34:	010a5793          	srli	a5,s4,0x10
   20d38:	00a7e533          	or	a0,a5,a0
   20d3c:	00068d93          	mv	s11,a3
   20d40:	00e57e63          	bgeu	a0,a4,20d5c <__divdf3+0x48c>
   20d44:	01750533          	add	a0,a0,s7
   20d48:	fff68d93          	addi	s11,a3,-1
   20d4c:	01756863          	bltu	a0,s7,20d5c <__divdf3+0x48c>
   20d50:	00e57663          	bgeu	a0,a4,20d5c <__divdf3+0x48c>
   20d54:	ffe68d93          	addi	s11,a3,-2
   20d58:	01750533          	add	a0,a0,s7
   20d5c:	40e50433          	sub	s0,a0,a4
   20d60:	000a8593          	mv	a1,s5
   20d64:	00040513          	mv	a0,s0
   20d68:	e20ef0ef          	jal	ra,10388 <__udivsi3>
   20d6c:	00050593          	mv	a1,a0
   20d70:	00a12423          	sw	a0,8(sp)
   20d74:	000b0513          	mv	a0,s6
   20d78:	de4ef0ef          	jal	ra,1035c <__mulsi3>
   20d7c:	00050b13          	mv	s6,a0
   20d80:	000a8593          	mv	a1,s5
   20d84:	00040513          	mv	a0,s0
   20d88:	e48ef0ef          	jal	ra,103d0 <__umodsi3>
   20d8c:	010a1a13          	slli	s4,s4,0x10
   20d90:	00812703          	lw	a4,8(sp)
   20d94:	01051513          	slli	a0,a0,0x10
   20d98:	010a5a13          	srli	s4,s4,0x10
   20d9c:	00aa6533          	or	a0,s4,a0
   20da0:	00070793          	mv	a5,a4
   20da4:	01657e63          	bgeu	a0,s6,20dc0 <__divdf3+0x4f0>
   20da8:	01750533          	add	a0,a0,s7
   20dac:	fff70793          	addi	a5,a4,-1
   20db0:	01756863          	bltu	a0,s7,20dc0 <__divdf3+0x4f0>
   20db4:	01657663          	bgeu	a0,s6,20dc0 <__divdf3+0x4f0>
   20db8:	ffe70793          	addi	a5,a4,-2
   20dbc:	01750533          	add	a0,a0,s7
   20dc0:	010d9893          	slli	a7,s11,0x10
   20dc4:	00f8e8b3          	or	a7,a7,a5
   20dc8:	01089713          	slli	a4,a7,0x10
   20dcc:	01075713          	srli	a4,a4,0x10
   20dd0:	41650333          	sub	t1,a0,s6
   20dd4:	0108d793          	srli	a5,a7,0x10
   20dd8:	00070513          	mv	a0,a4
   20ddc:	000c8593          	mv	a1,s9
   20de0:	d7cef0ef          	jal	ra,1035c <__mulsi3>
   20de4:	00050813          	mv	a6,a0
   20de8:	000d0593          	mv	a1,s10
   20dec:	00070513          	mv	a0,a4
   20df0:	d6cef0ef          	jal	ra,1035c <__mulsi3>
   20df4:	00050713          	mv	a4,a0
   20df8:	000c8593          	mv	a1,s9
   20dfc:	00078513          	mv	a0,a5
   20e00:	d5cef0ef          	jal	ra,1035c <__mulsi3>
   20e04:	00050e13          	mv	t3,a0
   20e08:	000d0593          	mv	a1,s10
   20e0c:	00078513          	mv	a0,a5
   20e10:	d4cef0ef          	jal	ra,1035c <__mulsi3>
   20e14:	01085793          	srli	a5,a6,0x10
   20e18:	01c70733          	add	a4,a4,t3
   20e1c:	00e787b3          	add	a5,a5,a4
   20e20:	01c7f663          	bgeu	a5,t3,20e2c <__divdf3+0x55c>
   20e24:	00010737          	lui	a4,0x10
   20e28:	00e50533          	add	a0,a0,a4
   20e2c:	00010637          	lui	a2,0x10
   20e30:	fff60613          	addi	a2,a2,-1 # ffff <register_fini-0x75>
   20e34:	0107d693          	srli	a3,a5,0x10
   20e38:	00c7f733          	and	a4,a5,a2
   20e3c:	01071713          	slli	a4,a4,0x10
   20e40:	00c87833          	and	a6,a6,a2
   20e44:	00a686b3          	add	a3,a3,a0
   20e48:	01070733          	add	a4,a4,a6
   20e4c:	00d36863          	bltu	t1,a3,20e5c <__divdf3+0x58c>
   20e50:	24d31463          	bne	t1,a3,21098 <__divdf3+0x7c8>
   20e54:	00088813          	mv	a6,a7
   20e58:	04070063          	beqz	a4,20e98 <__divdf3+0x5c8>
   20e5c:	006b8533          	add	a0,s7,t1
   20e60:	fff88813          	addi	a6,a7,-1
   20e64:	03756463          	bltu	a0,s7,20e8c <__divdf3+0x5bc>
   20e68:	00d56663          	bltu	a0,a3,20e74 <__divdf3+0x5a4>
   20e6c:	22d51463          	bne	a0,a3,21094 <__divdf3+0x7c4>
   20e70:	02ec7063          	bgeu	s8,a4,20e90 <__divdf3+0x5c0>
   20e74:	001c1793          	slli	a5,s8,0x1
   20e78:	0187bc33          	sltu	s8,a5,s8
   20e7c:	017c0bb3          	add	s7,s8,s7
   20e80:	ffe88813          	addi	a6,a7,-2
   20e84:	01750533          	add	a0,a0,s7
   20e88:	00078c13          	mv	s8,a5
   20e8c:	00d51463          	bne	a0,a3,20e94 <__divdf3+0x5c4>
   20e90:	00ec0463          	beq	s8,a4,20e98 <__divdf3+0x5c8>
   20e94:	00186813          	ori	a6,a6,1
   20e98:	3ff98713          	addi	a4,s3,1023
   20e9c:	10e05a63          	blez	a4,20fb0 <__divdf3+0x6e0>
   20ea0:	00787793          	andi	a5,a6,7
   20ea4:	02078063          	beqz	a5,20ec4 <__divdf3+0x5f4>
   20ea8:	00f87793          	andi	a5,a6,15
   20eac:	00400693          	li	a3,4
   20eb0:	00d78a63          	beq	a5,a3,20ec4 <__divdf3+0x5f4>
   20eb4:	00480693          	addi	a3,a6,4
   20eb8:	0106b833          	sltu	a6,a3,a6
   20ebc:	01090933          	add	s2,s2,a6
   20ec0:	00068813          	mv	a6,a3
   20ec4:	00791793          	slli	a5,s2,0x7
   20ec8:	0007da63          	bgez	a5,20edc <__divdf3+0x60c>
   20ecc:	ff0007b7          	lui	a5,0xff000
   20ed0:	fff78793          	addi	a5,a5,-1 # feffffff <__BSS_END__+0xfefd9517>
   20ed4:	00f97933          	and	s2,s2,a5
   20ed8:	40098713          	addi	a4,s3,1024
   20edc:	7fe00793          	li	a5,2046
   20ee0:	18e7ca63          	blt	a5,a4,21074 <__divdf3+0x7a4>
   20ee4:	00385813          	srli	a6,a6,0x3
   20ee8:	01d91793          	slli	a5,s2,0x1d
   20eec:	0107e7b3          	or	a5,a5,a6
   20ef0:	00395513          	srli	a0,s2,0x3
   20ef4:	00c51513          	slli	a0,a0,0xc
   20ef8:	7ff77713          	andi	a4,a4,2047
   20efc:	01471713          	slli	a4,a4,0x14
   20f00:	04c12083          	lw	ra,76(sp)
   20f04:	04812403          	lw	s0,72(sp)
   20f08:	00c55513          	srli	a0,a0,0xc
   20f0c:	01f49493          	slli	s1,s1,0x1f
   20f10:	00e56533          	or	a0,a0,a4
   20f14:	00956733          	or	a4,a0,s1
   20f18:	04012903          	lw	s2,64(sp)
   20f1c:	04412483          	lw	s1,68(sp)
   20f20:	03c12983          	lw	s3,60(sp)
   20f24:	03812a03          	lw	s4,56(sp)
   20f28:	03412a83          	lw	s5,52(sp)
   20f2c:	03012b03          	lw	s6,48(sp)
   20f30:	02c12b83          	lw	s7,44(sp)
   20f34:	02812c03          	lw	s8,40(sp)
   20f38:	02412c83          	lw	s9,36(sp)
   20f3c:	02012d03          	lw	s10,32(sp)
   20f40:	01c12d83          	lw	s11,28(sp)
   20f44:	00078513          	mv	a0,a5
   20f48:	00070593          	mv	a1,a4
   20f4c:	05010113          	addi	sp,sp,80
   20f50:	00008067          	ret
   20f54:	fff98993          	addi	s3,s3,-1
   20f58:	00000d93          	li	s11,0
   20f5c:	bd1ff06f          	j	20b2c <__divdf3+0x25c>
   20f60:	000a8493          	mv	s1,s5
   20f64:	000c8913          	mv	s2,s9
   20f68:	00040813          	mv	a6,s0
   20f6c:	000c0793          	mv	a5,s8
   20f70:	00200713          	li	a4,2
   20f74:	10e78063          	beq	a5,a4,21074 <__divdf3+0x7a4>
   20f78:	00300713          	li	a4,3
   20f7c:	0ee78263          	beq	a5,a4,21060 <__divdf3+0x790>
   20f80:	00100713          	li	a4,1
   20f84:	f0e79ae3          	bne	a5,a4,20e98 <__divdf3+0x5c8>
   20f88:	00000513          	li	a0,0
   20f8c:	00000793          	li	a5,0
   20f90:	0940006f          	j	21024 <__divdf3+0x754>
   20f94:	000b0493          	mv	s1,s6
   20f98:	fd9ff06f          	j	20f70 <__divdf3+0x6a0>
   20f9c:	00080937          	lui	s2,0x80
   20fa0:	00000813          	li	a6,0
   20fa4:	00000493          	li	s1,0
   20fa8:	00300793          	li	a5,3
   20fac:	fc5ff06f          	j	20f70 <__divdf3+0x6a0>
   20fb0:	00100513          	li	a0,1
   20fb4:	40e50533          	sub	a0,a0,a4
   20fb8:	03800793          	li	a5,56
   20fbc:	fca7c6e3          	blt	a5,a0,20f88 <__divdf3+0x6b8>
   20fc0:	01f00793          	li	a5,31
   20fc4:	06a7c463          	blt	a5,a0,2102c <__divdf3+0x75c>
   20fc8:	41e98993          	addi	s3,s3,1054
   20fcc:	013917b3          	sll	a5,s2,s3
   20fd0:	00a85733          	srl	a4,a6,a0
   20fd4:	013819b3          	sll	s3,a6,s3
   20fd8:	00e7e7b3          	or	a5,a5,a4
   20fdc:	013039b3          	snez	s3,s3
   20fe0:	0137e7b3          	or	a5,a5,s3
   20fe4:	00a95533          	srl	a0,s2,a0
   20fe8:	0077f713          	andi	a4,a5,7
   20fec:	02070063          	beqz	a4,2100c <__divdf3+0x73c>
   20ff0:	00f7f713          	andi	a4,a5,15
   20ff4:	00400693          	li	a3,4
   20ff8:	00d70a63          	beq	a4,a3,2100c <__divdf3+0x73c>
   20ffc:	00478713          	addi	a4,a5,4
   21000:	00f737b3          	sltu	a5,a4,a5
   21004:	00f50533          	add	a0,a0,a5
   21008:	00070793          	mv	a5,a4
   2100c:	00851713          	slli	a4,a0,0x8
   21010:	06074a63          	bltz	a4,21084 <__divdf3+0x7b4>
   21014:	01d51713          	slli	a4,a0,0x1d
   21018:	0037d793          	srli	a5,a5,0x3
   2101c:	00f767b3          	or	a5,a4,a5
   21020:	00355513          	srli	a0,a0,0x3
   21024:	00000713          	li	a4,0
   21028:	ecdff06f          	j	20ef4 <__divdf3+0x624>
   2102c:	fe100793          	li	a5,-31
   21030:	40e787b3          	sub	a5,a5,a4
   21034:	02000693          	li	a3,32
   21038:	00f957b3          	srl	a5,s2,a5
   2103c:	00000713          	li	a4,0
   21040:	00d50663          	beq	a0,a3,2104c <__divdf3+0x77c>
   21044:	43e98993          	addi	s3,s3,1086
   21048:	01391733          	sll	a4,s2,s3
   2104c:	01076833          	or	a6,a4,a6
   21050:	01003833          	snez	a6,a6
   21054:	0107e7b3          	or	a5,a5,a6
   21058:	00000513          	li	a0,0
   2105c:	f8dff06f          	j	20fe8 <__divdf3+0x718>
   21060:	00080537          	lui	a0,0x80
   21064:	00000793          	li	a5,0
   21068:	7ff00713          	li	a4,2047
   2106c:	00000493          	li	s1,0
   21070:	e85ff06f          	j	20ef4 <__divdf3+0x624>
   21074:	00000513          	li	a0,0
   21078:	00000793          	li	a5,0
   2107c:	7ff00713          	li	a4,2047
   21080:	e75ff06f          	j	20ef4 <__divdf3+0x624>
   21084:	00000513          	li	a0,0
   21088:	00000793          	li	a5,0
   2108c:	00100713          	li	a4,1
   21090:	e65ff06f          	j	20ef4 <__divdf3+0x624>
   21094:	00080893          	mv	a7,a6
   21098:	00088813          	mv	a6,a7
   2109c:	df9ff06f          	j	20e94 <__divdf3+0x5c4>

000210a0 <__muldf3>:
   210a0:	fd010113          	addi	sp,sp,-48
   210a4:	01312e23          	sw	s3,28(sp)
   210a8:	0145d993          	srli	s3,a1,0x14
   210ac:	02812423          	sw	s0,40(sp)
   210b0:	02912223          	sw	s1,36(sp)
   210b4:	01412c23          	sw	s4,24(sp)
   210b8:	01512a23          	sw	s5,20(sp)
   210bc:	01612823          	sw	s6,16(sp)
   210c0:	00c59493          	slli	s1,a1,0xc
   210c4:	02112623          	sw	ra,44(sp)
   210c8:	03212023          	sw	s2,32(sp)
   210cc:	01712623          	sw	s7,12(sp)
   210d0:	7ff9f993          	andi	s3,s3,2047
   210d4:	00050413          	mv	s0,a0
   210d8:	00060b13          	mv	s6,a2
   210dc:	00068a93          	mv	s5,a3
   210e0:	00c4d493          	srli	s1,s1,0xc
   210e4:	01f5da13          	srli	s4,a1,0x1f
   210e8:	0a098463          	beqz	s3,21190 <__muldf3+0xf0>
   210ec:	7ff00793          	li	a5,2047
   210f0:	10f98263          	beq	s3,a5,211f4 <__muldf3+0x154>
   210f4:	01d55793          	srli	a5,a0,0x1d
   210f8:	00349493          	slli	s1,s1,0x3
   210fc:	0097e4b3          	or	s1,a5,s1
   21100:	008007b7          	lui	a5,0x800
   21104:	00f4e4b3          	or	s1,s1,a5
   21108:	00351913          	slli	s2,a0,0x3
   2110c:	c0198993          	addi	s3,s3,-1023
   21110:	00000b93          	li	s7,0
   21114:	014ad513          	srli	a0,s5,0x14
   21118:	00ca9413          	slli	s0,s5,0xc
   2111c:	7ff57513          	andi	a0,a0,2047
   21120:	00c45413          	srli	s0,s0,0xc
   21124:	01fada93          	srli	s5,s5,0x1f
   21128:	10050263          	beqz	a0,2122c <__muldf3+0x18c>
   2112c:	7ff00793          	li	a5,2047
   21130:	16f50263          	beq	a0,a5,21294 <__muldf3+0x1f4>
   21134:	01db5793          	srli	a5,s6,0x1d
   21138:	00341413          	slli	s0,s0,0x3
   2113c:	0087e433          	or	s0,a5,s0
   21140:	008007b7          	lui	a5,0x800
   21144:	00f46433          	or	s0,s0,a5
   21148:	c0150513          	addi	a0,a0,-1023 # 7fc01 <__BSS_END__+0x59119>
   2114c:	003b1793          	slli	a5,s6,0x3
   21150:	00000713          	li	a4,0
   21154:	002b9693          	slli	a3,s7,0x2
   21158:	00e6e6b3          	or	a3,a3,a4
   2115c:	00a989b3          	add	s3,s3,a0
   21160:	fff68693          	addi	a3,a3,-1
   21164:	00e00613          	li	a2,14
   21168:	015a4833          	xor	a6,s4,s5
   2116c:	00198893          	addi	a7,s3,1
   21170:	14d66e63          	bltu	a2,a3,212cc <__muldf3+0x22c>
   21174:	00004617          	auipc	a2,0x4
   21178:	62060613          	addi	a2,a2,1568 # 25794 <zeroes.4467+0x4c>
   2117c:	00269693          	slli	a3,a3,0x2
   21180:	00c686b3          	add	a3,a3,a2
   21184:	0006a683          	lw	a3,0(a3)
   21188:	00c686b3          	add	a3,a3,a2
   2118c:	00068067          	jr	a3
   21190:	00a4e933          	or	s2,s1,a0
   21194:	06090c63          	beqz	s2,2120c <__muldf3+0x16c>
   21198:	04048063          	beqz	s1,211d8 <__muldf3+0x138>
   2119c:	00048513          	mv	a0,s1
   211a0:	1e5030ef          	jal	ra,24b84 <__clzsi2>
   211a4:	ff550713          	addi	a4,a0,-11
   211a8:	01c00793          	li	a5,28
   211ac:	02e7cc63          	blt	a5,a4,211e4 <__muldf3+0x144>
   211b0:	01d00793          	li	a5,29
   211b4:	ff850913          	addi	s2,a0,-8
   211b8:	40e787b3          	sub	a5,a5,a4
   211bc:	012494b3          	sll	s1,s1,s2
   211c0:	00f457b3          	srl	a5,s0,a5
   211c4:	0097e4b3          	or	s1,a5,s1
   211c8:	01241933          	sll	s2,s0,s2
   211cc:	c0d00993          	li	s3,-1011
   211d0:	40a989b3          	sub	s3,s3,a0
   211d4:	f3dff06f          	j	21110 <__muldf3+0x70>
   211d8:	1ad030ef          	jal	ra,24b84 <__clzsi2>
   211dc:	02050513          	addi	a0,a0,32
   211e0:	fc5ff06f          	j	211a4 <__muldf3+0x104>
   211e4:	fd850493          	addi	s1,a0,-40
   211e8:	009414b3          	sll	s1,s0,s1
   211ec:	00000913          	li	s2,0
   211f0:	fddff06f          	j	211cc <__muldf3+0x12c>
   211f4:	00a4e933          	or	s2,s1,a0
   211f8:	02090263          	beqz	s2,2121c <__muldf3+0x17c>
   211fc:	00050913          	mv	s2,a0
   21200:	7ff00993          	li	s3,2047
   21204:	00300b93          	li	s7,3
   21208:	f0dff06f          	j	21114 <__muldf3+0x74>
   2120c:	00000493          	li	s1,0
   21210:	00000993          	li	s3,0
   21214:	00100b93          	li	s7,1
   21218:	efdff06f          	j	21114 <__muldf3+0x74>
   2121c:	00000493          	li	s1,0
   21220:	7ff00993          	li	s3,2047
   21224:	00200b93          	li	s7,2
   21228:	eedff06f          	j	21114 <__muldf3+0x74>
   2122c:	016467b3          	or	a5,s0,s6
   21230:	06078e63          	beqz	a5,212ac <__muldf3+0x20c>
   21234:	04040063          	beqz	s0,21274 <__muldf3+0x1d4>
   21238:	00040513          	mv	a0,s0
   2123c:	149030ef          	jal	ra,24b84 <__clzsi2>
   21240:	ff550693          	addi	a3,a0,-11
   21244:	01c00793          	li	a5,28
   21248:	02d7ce63          	blt	a5,a3,21284 <__muldf3+0x1e4>
   2124c:	01d00713          	li	a4,29
   21250:	ff850793          	addi	a5,a0,-8
   21254:	40d70733          	sub	a4,a4,a3
   21258:	00f41433          	sll	s0,s0,a5
   2125c:	00eb5733          	srl	a4,s6,a4
   21260:	00876433          	or	s0,a4,s0
   21264:	00fb17b3          	sll	a5,s6,a5
   21268:	c0d00713          	li	a4,-1011
   2126c:	40a70533          	sub	a0,a4,a0
   21270:	ee1ff06f          	j	21150 <__muldf3+0xb0>
   21274:	000b0513          	mv	a0,s6
   21278:	10d030ef          	jal	ra,24b84 <__clzsi2>
   2127c:	02050513          	addi	a0,a0,32
   21280:	fc1ff06f          	j	21240 <__muldf3+0x1a0>
   21284:	fd850413          	addi	s0,a0,-40
   21288:	008b1433          	sll	s0,s6,s0
   2128c:	00000793          	li	a5,0
   21290:	fd9ff06f          	j	21268 <__muldf3+0x1c8>
   21294:	016467b3          	or	a5,s0,s6
   21298:	02078263          	beqz	a5,212bc <__muldf3+0x21c>
   2129c:	000b0793          	mv	a5,s6
   212a0:	7ff00513          	li	a0,2047
   212a4:	00300713          	li	a4,3
   212a8:	eadff06f          	j	21154 <__muldf3+0xb4>
   212ac:	00000413          	li	s0,0
   212b0:	00000513          	li	a0,0
   212b4:	00100713          	li	a4,1
   212b8:	e9dff06f          	j	21154 <__muldf3+0xb4>
   212bc:	00000413          	li	s0,0
   212c0:	7ff00513          	li	a0,2047
   212c4:	00200713          	li	a4,2
   212c8:	e8dff06f          	j	21154 <__muldf3+0xb4>
   212cc:	000102b7          	lui	t0,0x10
   212d0:	fff28313          	addi	t1,t0,-1 # ffff <register_fini-0x75>
   212d4:	01095f13          	srli	t5,s2,0x10
   212d8:	0107df93          	srli	t6,a5,0x10
   212dc:	00697933          	and	s2,s2,t1
   212e0:	0067f7b3          	and	a5,a5,t1
   212e4:	00090513          	mv	a0,s2
   212e8:	00078593          	mv	a1,a5
   212ec:	870ef0ef          	jal	ra,1035c <__mulsi3>
   212f0:	00050e93          	mv	t4,a0
   212f4:	000f8593          	mv	a1,t6
   212f8:	00090513          	mv	a0,s2
   212fc:	860ef0ef          	jal	ra,1035c <__mulsi3>
   21300:	00050e13          	mv	t3,a0
   21304:	00078593          	mv	a1,a5
   21308:	000f0513          	mv	a0,t5
   2130c:	850ef0ef          	jal	ra,1035c <__mulsi3>
   21310:	00050a13          	mv	s4,a0
   21314:	000f8593          	mv	a1,t6
   21318:	000f0513          	mv	a0,t5
   2131c:	840ef0ef          	jal	ra,1035c <__mulsi3>
   21320:	010ed713          	srli	a4,t4,0x10
   21324:	014e0e33          	add	t3,t3,s4
   21328:	01c70733          	add	a4,a4,t3
   2132c:	00050393          	mv	t2,a0
   21330:	01477463          	bgeu	a4,s4,21338 <__muldf3+0x298>
   21334:	005503b3          	add	t2,a0,t0
   21338:	00677e33          	and	t3,a4,t1
   2133c:	006efeb3          	and	t4,t4,t1
   21340:	01045a13          	srli	s4,s0,0x10
   21344:	010e1e13          	slli	t3,t3,0x10
   21348:	00647433          	and	s0,s0,t1
   2134c:	01075293          	srli	t0,a4,0x10
   21350:	01de0e33          	add	t3,t3,t4
   21354:	00090513          	mv	a0,s2
   21358:	00040593          	mv	a1,s0
   2135c:	800ef0ef          	jal	ra,1035c <__mulsi3>
   21360:	00050e93          	mv	t4,a0
   21364:	000a0593          	mv	a1,s4
   21368:	00090513          	mv	a0,s2
   2136c:	ff1ee0ef          	jal	ra,1035c <__mulsi3>
   21370:	00050713          	mv	a4,a0
   21374:	00040593          	mv	a1,s0
   21378:	000f0513          	mv	a0,t5
   2137c:	fe1ee0ef          	jal	ra,1035c <__mulsi3>
   21380:	00050313          	mv	t1,a0
   21384:	000a0593          	mv	a1,s4
   21388:	000f0513          	mv	a0,t5
   2138c:	fd1ee0ef          	jal	ra,1035c <__mulsi3>
   21390:	010ed693          	srli	a3,t4,0x10
   21394:	00670733          	add	a4,a4,t1
   21398:	00e686b3          	add	a3,a3,a4
   2139c:	0066f663          	bgeu	a3,t1,213a8 <__muldf3+0x308>
   213a0:	00010737          	lui	a4,0x10
   213a4:	00e50533          	add	a0,a0,a4
   213a8:	00010ab7          	lui	s5,0x10
   213ac:	fffa8613          	addi	a2,s5,-1 # ffff <register_fini-0x75>
   213b0:	0106d713          	srli	a4,a3,0x10
   213b4:	00c6f6b3          	and	a3,a3,a2
   213b8:	01069693          	slli	a3,a3,0x10
   213bc:	00cefeb3          	and	t4,t4,a2
   213c0:	00a70f33          	add	t5,a4,a0
   213c4:	01d68eb3          	add	t4,a3,t4
   213c8:	0104d713          	srli	a4,s1,0x10
   213cc:	00c4f4b3          	and	s1,s1,a2
   213d0:	01d282b3          	add	t0,t0,t4
   213d4:	00048513          	mv	a0,s1
   213d8:	00078593          	mv	a1,a5
   213dc:	f81ee0ef          	jal	ra,1035c <__mulsi3>
   213e0:	00050913          	mv	s2,a0
   213e4:	000f8593          	mv	a1,t6
   213e8:	00048513          	mv	a0,s1
   213ec:	f71ee0ef          	jal	ra,1035c <__mulsi3>
   213f0:	00050313          	mv	t1,a0
   213f4:	00078593          	mv	a1,a5
   213f8:	00070513          	mv	a0,a4
   213fc:	f61ee0ef          	jal	ra,1035c <__mulsi3>
   21400:	00050b13          	mv	s6,a0
   21404:	000f8593          	mv	a1,t6
   21408:	00070513          	mv	a0,a4
   2140c:	f51ee0ef          	jal	ra,1035c <__mulsi3>
   21410:	01095793          	srli	a5,s2,0x10
   21414:	01630333          	add	t1,t1,s6
   21418:	006787b3          	add	a5,a5,t1
   2141c:	0167f463          	bgeu	a5,s6,21424 <__muldf3+0x384>
   21420:	01550533          	add	a0,a0,s5
   21424:	00010ab7          	lui	s5,0x10
   21428:	fffa8693          	addi	a3,s5,-1 # ffff <register_fini-0x75>
   2142c:	00d7f333          	and	t1,a5,a3
   21430:	0107d613          	srli	a2,a5,0x10
   21434:	00d97933          	and	s2,s2,a3
   21438:	01031313          	slli	t1,t1,0x10
   2143c:	00a60fb3          	add	t6,a2,a0
   21440:	01230333          	add	t1,t1,s2
   21444:	00048513          	mv	a0,s1
   21448:	00040593          	mv	a1,s0
   2144c:	f11ee0ef          	jal	ra,1035c <__mulsi3>
   21450:	00050793          	mv	a5,a0
   21454:	000a0593          	mv	a1,s4
   21458:	00048513          	mv	a0,s1
   2145c:	f01ee0ef          	jal	ra,1035c <__mulsi3>
   21460:	00050493          	mv	s1,a0
   21464:	00040593          	mv	a1,s0
   21468:	00070513          	mv	a0,a4
   2146c:	ef1ee0ef          	jal	ra,1035c <__mulsi3>
   21470:	00050913          	mv	s2,a0
   21474:	000a0593          	mv	a1,s4
   21478:	00070513          	mv	a0,a4
   2147c:	ee1ee0ef          	jal	ra,1035c <__mulsi3>
   21480:	0107d693          	srli	a3,a5,0x10
   21484:	012484b3          	add	s1,s1,s2
   21488:	009686b3          	add	a3,a3,s1
   2148c:	0126f463          	bgeu	a3,s2,21494 <__muldf3+0x3f4>
   21490:	01550533          	add	a0,a0,s5
   21494:	00010637          	lui	a2,0x10
   21498:	fff60613          	addi	a2,a2,-1 # ffff <register_fini-0x75>
   2149c:	00c6f733          	and	a4,a3,a2
   214a0:	00c7f7b3          	and	a5,a5,a2
   214a4:	01071713          	slli	a4,a4,0x10
   214a8:	007282b3          	add	t0,t0,t2
   214ac:	00f70733          	add	a4,a4,a5
   214b0:	01d2beb3          	sltu	t4,t0,t4
   214b4:	01e70733          	add	a4,a4,t5
   214b8:	01d70433          	add	s0,a4,t4
   214bc:	006282b3          	add	t0,t0,t1
   214c0:	01f40633          	add	a2,s0,t6
   214c4:	0062b333          	sltu	t1,t0,t1
   214c8:	006605b3          	add	a1,a2,t1
   214cc:	01e73733          	sltu	a4,a4,t5
   214d0:	01d43433          	sltu	s0,s0,t4
   214d4:	00876433          	or	s0,a4,s0
   214d8:	0106d693          	srli	a3,a3,0x10
   214dc:	01f63633          	sltu	a2,a2,t6
   214e0:	0065b333          	sltu	t1,a1,t1
   214e4:	00d40433          	add	s0,s0,a3
   214e8:	00666333          	or	t1,a2,t1
   214ec:	00640433          	add	s0,s0,t1
   214f0:	00929793          	slli	a5,t0,0x9
   214f4:	00a40433          	add	s0,s0,a0
   214f8:	01c7e7b3          	or	a5,a5,t3
   214fc:	00941413          	slli	s0,s0,0x9
   21500:	0175d513          	srli	a0,a1,0x17
   21504:	00f037b3          	snez	a5,a5
   21508:	0172de13          	srli	t3,t0,0x17
   2150c:	00959713          	slli	a4,a1,0x9
   21510:	00a46433          	or	s0,s0,a0
   21514:	01c7e7b3          	or	a5,a5,t3
   21518:	00e7e7b3          	or	a5,a5,a4
   2151c:	00741713          	slli	a4,s0,0x7
   21520:	10075263          	bgez	a4,21624 <__muldf3+0x584>
   21524:	0017d713          	srli	a4,a5,0x1
   21528:	0017f793          	andi	a5,a5,1
   2152c:	00f767b3          	or	a5,a4,a5
   21530:	01f41713          	slli	a4,s0,0x1f
   21534:	00e7e7b3          	or	a5,a5,a4
   21538:	00145413          	srli	s0,s0,0x1
   2153c:	3ff88693          	addi	a3,a7,1023
   21540:	0ed05663          	blez	a3,2162c <__muldf3+0x58c>
   21544:	0077f713          	andi	a4,a5,7
   21548:	02070063          	beqz	a4,21568 <__muldf3+0x4c8>
   2154c:	00f7f713          	andi	a4,a5,15
   21550:	00400613          	li	a2,4
   21554:	00c70a63          	beq	a4,a2,21568 <__muldf3+0x4c8>
   21558:	00478713          	addi	a4,a5,4 # 800004 <__BSS_END__+0x7d951c>
   2155c:	00f737b3          	sltu	a5,a4,a5
   21560:	00f40433          	add	s0,s0,a5
   21564:	00070793          	mv	a5,a4
   21568:	00741713          	slli	a4,s0,0x7
   2156c:	00075a63          	bgez	a4,21580 <__muldf3+0x4e0>
   21570:	ff000737          	lui	a4,0xff000
   21574:	fff70713          	addi	a4,a4,-1 # feffffff <__BSS_END__+0xfefd9517>
   21578:	00e47433          	and	s0,s0,a4
   2157c:	40088693          	addi	a3,a7,1024
   21580:	7fe00713          	li	a4,2046
   21584:	16d74663          	blt	a4,a3,216f0 <__muldf3+0x650>
   21588:	0037d713          	srli	a4,a5,0x3
   2158c:	01d41793          	slli	a5,s0,0x1d
   21590:	00e7e7b3          	or	a5,a5,a4
   21594:	00345413          	srli	s0,s0,0x3
   21598:	00c41413          	slli	s0,s0,0xc
   2159c:	7ff6f713          	andi	a4,a3,2047
   215a0:	01471713          	slli	a4,a4,0x14
   215a4:	00c45413          	srli	s0,s0,0xc
   215a8:	00e46433          	or	s0,s0,a4
   215ac:	01f81813          	slli	a6,a6,0x1f
   215b0:	01046733          	or	a4,s0,a6
   215b4:	02c12083          	lw	ra,44(sp)
   215b8:	02812403          	lw	s0,40(sp)
   215bc:	02412483          	lw	s1,36(sp)
   215c0:	02012903          	lw	s2,32(sp)
   215c4:	01c12983          	lw	s3,28(sp)
   215c8:	01812a03          	lw	s4,24(sp)
   215cc:	01412a83          	lw	s5,20(sp)
   215d0:	01012b03          	lw	s6,16(sp)
   215d4:	00c12b83          	lw	s7,12(sp)
   215d8:	00078513          	mv	a0,a5
   215dc:	00070593          	mv	a1,a4
   215e0:	03010113          	addi	sp,sp,48
   215e4:	00008067          	ret
   215e8:	000a0813          	mv	a6,s4
   215ec:	00048413          	mv	s0,s1
   215f0:	00090793          	mv	a5,s2
   215f4:	000b8713          	mv	a4,s7
   215f8:	00200693          	li	a3,2
   215fc:	0ed70a63          	beq	a4,a3,216f0 <__muldf3+0x650>
   21600:	00300693          	li	a3,3
   21604:	0cd70c63          	beq	a4,a3,216dc <__muldf3+0x63c>
   21608:	00100693          	li	a3,1
   2160c:	f2d718e3          	bne	a4,a3,2153c <__muldf3+0x49c>
   21610:	00000413          	li	s0,0
   21614:	00000793          	li	a5,0
   21618:	0880006f          	j	216a0 <__muldf3+0x600>
   2161c:	000a8813          	mv	a6,s5
   21620:	fd9ff06f          	j	215f8 <__muldf3+0x558>
   21624:	00098893          	mv	a7,s3
   21628:	f15ff06f          	j	2153c <__muldf3+0x49c>
   2162c:	00100613          	li	a2,1
   21630:	40d60633          	sub	a2,a2,a3
   21634:	03800713          	li	a4,56
   21638:	fcc74ce3          	blt	a4,a2,21610 <__muldf3+0x570>
   2163c:	01f00713          	li	a4,31
   21640:	06c74463          	blt	a4,a2,216a8 <__muldf3+0x608>
   21644:	41e88893          	addi	a7,a7,1054
   21648:	01141733          	sll	a4,s0,a7
   2164c:	00c7d6b3          	srl	a3,a5,a2
   21650:	011797b3          	sll	a5,a5,a7
   21654:	00d76733          	or	a4,a4,a3
   21658:	00f037b3          	snez	a5,a5
   2165c:	00f767b3          	or	a5,a4,a5
   21660:	00c45433          	srl	s0,s0,a2
   21664:	0077f713          	andi	a4,a5,7
   21668:	02070063          	beqz	a4,21688 <__muldf3+0x5e8>
   2166c:	00f7f713          	andi	a4,a5,15
   21670:	00400693          	li	a3,4
   21674:	00d70a63          	beq	a4,a3,21688 <__muldf3+0x5e8>
   21678:	00478713          	addi	a4,a5,4
   2167c:	00f737b3          	sltu	a5,a4,a5
   21680:	00f40433          	add	s0,s0,a5
   21684:	00070793          	mv	a5,a4
   21688:	00841713          	slli	a4,s0,0x8
   2168c:	06074a63          	bltz	a4,21700 <__muldf3+0x660>
   21690:	01d41713          	slli	a4,s0,0x1d
   21694:	0037d793          	srli	a5,a5,0x3
   21698:	00f767b3          	or	a5,a4,a5
   2169c:	00345413          	srli	s0,s0,0x3
   216a0:	00000693          	li	a3,0
   216a4:	ef5ff06f          	j	21598 <__muldf3+0x4f8>
   216a8:	fe100713          	li	a4,-31
   216ac:	40d70733          	sub	a4,a4,a3
   216b0:	02000593          	li	a1,32
   216b4:	00e45733          	srl	a4,s0,a4
   216b8:	00000693          	li	a3,0
   216bc:	00b60663          	beq	a2,a1,216c8 <__muldf3+0x628>
   216c0:	43e88893          	addi	a7,a7,1086
   216c4:	011416b3          	sll	a3,s0,a7
   216c8:	00f6e7b3          	or	a5,a3,a5
   216cc:	00f037b3          	snez	a5,a5
   216d0:	00f767b3          	or	a5,a4,a5
   216d4:	00000413          	li	s0,0
   216d8:	f8dff06f          	j	21664 <__muldf3+0x5c4>
   216dc:	00080437          	lui	s0,0x80
   216e0:	00000793          	li	a5,0
   216e4:	7ff00693          	li	a3,2047
   216e8:	00000813          	li	a6,0
   216ec:	eadff06f          	j	21598 <__muldf3+0x4f8>
   216f0:	00000413          	li	s0,0
   216f4:	00000793          	li	a5,0
   216f8:	7ff00693          	li	a3,2047
   216fc:	e9dff06f          	j	21598 <__muldf3+0x4f8>
   21700:	00000413          	li	s0,0
   21704:	00000793          	li	a5,0
   21708:	00100693          	li	a3,1
   2170c:	e8dff06f          	j	21598 <__muldf3+0x4f8>

00021710 <__eqtf2>:
   21710:	00c52783          	lw	a5,12(a0)
   21714:	0005af03          	lw	t5,0(a1)
   21718:	0045af83          	lw	t6,4(a1)
   2171c:	0085a283          	lw	t0,8(a1)
   21720:	00c5a583          	lw	a1,12(a1)
   21724:	00008737          	lui	a4,0x8
   21728:	0107d693          	srli	a3,a5,0x10
   2172c:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   21730:	01079813          	slli	a6,a5,0x10
   21734:	01059e93          	slli	t4,a1,0x10
   21738:	01f7d613          	srli	a2,a5,0x1f
   2173c:	00e6f6b3          	and	a3,a3,a4
   21740:	0105d793          	srli	a5,a1,0x10
   21744:	ff010113          	addi	sp,sp,-16
   21748:	00052883          	lw	a7,0(a0)
   2174c:	00452303          	lw	t1,4(a0)
   21750:	00852e03          	lw	t3,8(a0)
   21754:	01085813          	srli	a6,a6,0x10
   21758:	010ede93          	srli	t4,t4,0x10
   2175c:	00e7f7b3          	and	a5,a5,a4
   21760:	01f5d593          	srli	a1,a1,0x1f
   21764:	02e69063          	bne	a3,a4,21784 <__eqtf2+0x74>
   21768:	0068e733          	or	a4,a7,t1
   2176c:	01c76733          	or	a4,a4,t3
   21770:	01076733          	or	a4,a4,a6
   21774:	00100513          	li	a0,1
   21778:	04071a63          	bnez	a4,217cc <__eqtf2+0xbc>
   2177c:	04d79863          	bne	a5,a3,217cc <__eqtf2+0xbc>
   21780:	0080006f          	j	21788 <__eqtf2+0x78>
   21784:	00e79c63          	bne	a5,a4,2179c <__eqtf2+0x8c>
   21788:	01ff6733          	or	a4,t5,t6
   2178c:	00576733          	or	a4,a4,t0
   21790:	01d76733          	or	a4,a4,t4
   21794:	00100513          	li	a0,1
   21798:	02071a63          	bnez	a4,217cc <__eqtf2+0xbc>
   2179c:	00100513          	li	a0,1
   217a0:	02d79663          	bne	a5,a3,217cc <__eqtf2+0xbc>
   217a4:	03e89463          	bne	a7,t5,217cc <__eqtf2+0xbc>
   217a8:	03f31263          	bne	t1,t6,217cc <__eqtf2+0xbc>
   217ac:	025e1063          	bne	t3,t0,217cc <__eqtf2+0xbc>
   217b0:	01d81e63          	bne	a6,t4,217cc <__eqtf2+0xbc>
   217b4:	02b60063          	beq	a2,a1,217d4 <__eqtf2+0xc4>
   217b8:	00079a63          	bnez	a5,217cc <__eqtf2+0xbc>
   217bc:	0068e533          	or	a0,a7,t1
   217c0:	01c56533          	or	a0,a0,t3
   217c4:	01056533          	or	a0,a0,a6
   217c8:	00a03533          	snez	a0,a0
   217cc:	01010113          	addi	sp,sp,16
   217d0:	00008067          	ret
   217d4:	00000513          	li	a0,0
   217d8:	ff5ff06f          	j	217cc <__eqtf2+0xbc>

000217dc <__getf2>:
   217dc:	00052f83          	lw	t6,0(a0)
   217e0:	00452803          	lw	a6,4(a0)
   217e4:	00852e03          	lw	t3,8(a0)
   217e8:	00c52503          	lw	a0,12(a0)
   217ec:	00c5a603          	lw	a2,12(a1)
   217f0:	000087b7          	lui	a5,0x8
   217f4:	01055693          	srli	a3,a0,0x10
   217f8:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   217fc:	01061313          	slli	t1,a2,0x10
   21800:	01065713          	srli	a4,a2,0x10
   21804:	0005a283          	lw	t0,0(a1)
   21808:	0045a883          	lw	a7,4(a1)
   2180c:	0085ae83          	lw	t4,8(a1)
   21810:	00f6f6b3          	and	a3,a3,a5
   21814:	01051593          	slli	a1,a0,0x10
   21818:	ff010113          	addi	sp,sp,-16
   2181c:	0105d593          	srli	a1,a1,0x10
   21820:	01f55513          	srli	a0,a0,0x1f
   21824:	01035313          	srli	t1,t1,0x10
   21828:	00f77733          	and	a4,a4,a5
   2182c:	01f65613          	srli	a2,a2,0x1f
   21830:	00f69e63          	bne	a3,a5,2184c <__getf2+0x70>
   21834:	01f867b3          	or	a5,a6,t6
   21838:	01c7e7b3          	or	a5,a5,t3
   2183c:	00b7e7b3          	or	a5,a5,a1
   21840:	0c078863          	beqz	a5,21910 <__getf2+0x134>
   21844:	ffe00513          	li	a0,-2
   21848:	0600006f          	j	218a8 <__getf2+0xcc>
   2184c:	00f71a63          	bne	a4,a5,21860 <__getf2+0x84>
   21850:	0058e7b3          	or	a5,a7,t0
   21854:	01d7e7b3          	or	a5,a5,t4
   21858:	0067e7b3          	or	a5,a5,t1
   2185c:	fe0794e3          	bnez	a5,21844 <__getf2+0x68>
   21860:	0a069a63          	bnez	a3,21914 <__getf2+0x138>
   21864:	01f867b3          	or	a5,a6,t6
   21868:	01c7e7b3          	or	a5,a5,t3
   2186c:	00b7e7b3          	or	a5,a5,a1
   21870:	0017b793          	seqz	a5,a5
   21874:	00071a63          	bnez	a4,21888 <__getf2+0xac>
   21878:	0058ef33          	or	t5,a7,t0
   2187c:	01df6f33          	or	t5,t5,t4
   21880:	006f6f33          	or	t5,t5,t1
   21884:	060f0a63          	beqz	t5,218f8 <__getf2+0x11c>
   21888:	00079a63          	bnez	a5,2189c <__getf2+0xc0>
   2188c:	02c50263          	beq	a0,a2,218b0 <__getf2+0xd4>
   21890:	06050063          	beqz	a0,218f0 <__getf2+0x114>
   21894:	fff00513          	li	a0,-1
   21898:	0100006f          	j	218a8 <__getf2+0xcc>
   2189c:	fff00513          	li	a0,-1
   218a0:	00060463          	beqz	a2,218a8 <__getf2+0xcc>
   218a4:	00060513          	mv	a0,a2
   218a8:	01010113          	addi	sp,sp,16
   218ac:	00008067          	ret
   218b0:	fed740e3          	blt	a4,a3,21890 <__getf2+0xb4>
   218b4:	00e6d663          	bge	a3,a4,218c0 <__getf2+0xe4>
   218b8:	fe0518e3          	bnez	a0,218a8 <__getf2+0xcc>
   218bc:	fd9ff06f          	j	21894 <__getf2+0xb8>
   218c0:	fcb368e3          	bltu	t1,a1,21890 <__getf2+0xb4>
   218c4:	02659e63          	bne	a1,t1,21900 <__getf2+0x124>
   218c8:	fdcee4e3          	bltu	t4,t3,21890 <__getf2+0xb4>
   218cc:	03ce9e63          	bne	t4,t3,21908 <__getf2+0x12c>
   218d0:	fd08e0e3          	bltu	a7,a6,21890 <__getf2+0xb4>
   218d4:	01089463          	bne	a7,a6,218dc <__getf2+0x100>
   218d8:	fbf2ece3          	bltu	t0,t6,21890 <__getf2+0xb4>
   218dc:	fd186ee3          	bltu	a6,a7,218b8 <__getf2+0xdc>
   218e0:	01089463          	bne	a7,a6,218e8 <__getf2+0x10c>
   218e4:	fc5feae3          	bltu	t6,t0,218b8 <__getf2+0xdc>
   218e8:	00000513          	li	a0,0
   218ec:	fbdff06f          	j	218a8 <__getf2+0xcc>
   218f0:	00100513          	li	a0,1
   218f4:	fb5ff06f          	j	218a8 <__getf2+0xcc>
   218f8:	fe0798e3          	bnez	a5,218e8 <__getf2+0x10c>
   218fc:	f95ff06f          	j	21890 <__getf2+0xb4>
   21900:	fa65ece3          	bltu	a1,t1,218b8 <__getf2+0xdc>
   21904:	fe5ff06f          	j	218e8 <__getf2+0x10c>
   21908:	fbde68e3          	bltu	t3,t4,218b8 <__getf2+0xdc>
   2190c:	fddff06f          	j	218e8 <__getf2+0x10c>
   21910:	f4d700e3          	beq	a4,a3,21850 <__getf2+0x74>
   21914:	f6071ce3          	bnez	a4,2188c <__getf2+0xb0>
   21918:	00000793          	li	a5,0
   2191c:	f5dff06f          	j	21878 <__getf2+0x9c>

00021920 <__letf2>:
   21920:	00052f83          	lw	t6,0(a0)
   21924:	00452803          	lw	a6,4(a0)
   21928:	00852e03          	lw	t3,8(a0)
   2192c:	00c52503          	lw	a0,12(a0)
   21930:	00c5a603          	lw	a2,12(a1)
   21934:	000087b7          	lui	a5,0x8
   21938:	01055693          	srli	a3,a0,0x10
   2193c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   21940:	01061313          	slli	t1,a2,0x10
   21944:	01065713          	srli	a4,a2,0x10
   21948:	0005a283          	lw	t0,0(a1)
   2194c:	0045a883          	lw	a7,4(a1)
   21950:	0085ae83          	lw	t4,8(a1)
   21954:	00f6f6b3          	and	a3,a3,a5
   21958:	01051593          	slli	a1,a0,0x10
   2195c:	ff010113          	addi	sp,sp,-16
   21960:	0105d593          	srli	a1,a1,0x10
   21964:	01f55513          	srli	a0,a0,0x1f
   21968:	01035313          	srli	t1,t1,0x10
   2196c:	00f77733          	and	a4,a4,a5
   21970:	01f65613          	srli	a2,a2,0x1f
   21974:	00f69e63          	bne	a3,a5,21990 <__letf2+0x70>
   21978:	01f867b3          	or	a5,a6,t6
   2197c:	01c7e7b3          	or	a5,a5,t3
   21980:	00b7e7b3          	or	a5,a5,a1
   21984:	0c078863          	beqz	a5,21a54 <__letf2+0x134>
   21988:	00200513          	li	a0,2
   2198c:	0600006f          	j	219ec <__letf2+0xcc>
   21990:	00f71a63          	bne	a4,a5,219a4 <__letf2+0x84>
   21994:	0058e7b3          	or	a5,a7,t0
   21998:	01d7e7b3          	or	a5,a5,t4
   2199c:	0067e7b3          	or	a5,a5,t1
   219a0:	fe0794e3          	bnez	a5,21988 <__letf2+0x68>
   219a4:	0a069a63          	bnez	a3,21a58 <__letf2+0x138>
   219a8:	01f867b3          	or	a5,a6,t6
   219ac:	01c7e7b3          	or	a5,a5,t3
   219b0:	00b7e7b3          	or	a5,a5,a1
   219b4:	0017b793          	seqz	a5,a5
   219b8:	00071a63          	bnez	a4,219cc <__letf2+0xac>
   219bc:	0058ef33          	or	t5,a7,t0
   219c0:	01df6f33          	or	t5,t5,t4
   219c4:	006f6f33          	or	t5,t5,t1
   219c8:	060f0a63          	beqz	t5,21a3c <__letf2+0x11c>
   219cc:	00079a63          	bnez	a5,219e0 <__letf2+0xc0>
   219d0:	02c50263          	beq	a0,a2,219f4 <__letf2+0xd4>
   219d4:	06050063          	beqz	a0,21a34 <__letf2+0x114>
   219d8:	fff00513          	li	a0,-1
   219dc:	0100006f          	j	219ec <__letf2+0xcc>
   219e0:	fff00513          	li	a0,-1
   219e4:	00060463          	beqz	a2,219ec <__letf2+0xcc>
   219e8:	00060513          	mv	a0,a2
   219ec:	01010113          	addi	sp,sp,16
   219f0:	00008067          	ret
   219f4:	fed740e3          	blt	a4,a3,219d4 <__letf2+0xb4>
   219f8:	00e6d663          	bge	a3,a4,21a04 <__letf2+0xe4>
   219fc:	fe0518e3          	bnez	a0,219ec <__letf2+0xcc>
   21a00:	fd9ff06f          	j	219d8 <__letf2+0xb8>
   21a04:	fcb368e3          	bltu	t1,a1,219d4 <__letf2+0xb4>
   21a08:	02659e63          	bne	a1,t1,21a44 <__letf2+0x124>
   21a0c:	fdcee4e3          	bltu	t4,t3,219d4 <__letf2+0xb4>
   21a10:	03ce9e63          	bne	t4,t3,21a4c <__letf2+0x12c>
   21a14:	fd08e0e3          	bltu	a7,a6,219d4 <__letf2+0xb4>
   21a18:	01089463          	bne	a7,a6,21a20 <__letf2+0x100>
   21a1c:	fbf2ece3          	bltu	t0,t6,219d4 <__letf2+0xb4>
   21a20:	fd186ee3          	bltu	a6,a7,219fc <__letf2+0xdc>
   21a24:	01089463          	bne	a7,a6,21a2c <__letf2+0x10c>
   21a28:	fc5feae3          	bltu	t6,t0,219fc <__letf2+0xdc>
   21a2c:	00000513          	li	a0,0
   21a30:	fbdff06f          	j	219ec <__letf2+0xcc>
   21a34:	00100513          	li	a0,1
   21a38:	fb5ff06f          	j	219ec <__letf2+0xcc>
   21a3c:	fe0798e3          	bnez	a5,21a2c <__letf2+0x10c>
   21a40:	f95ff06f          	j	219d4 <__letf2+0xb4>
   21a44:	fa65ece3          	bltu	a1,t1,219fc <__letf2+0xdc>
   21a48:	fe5ff06f          	j	21a2c <__letf2+0x10c>
   21a4c:	fbde68e3          	bltu	t3,t4,219fc <__letf2+0xdc>
   21a50:	fddff06f          	j	21a2c <__letf2+0x10c>
   21a54:	f4d700e3          	beq	a4,a3,21994 <__letf2+0x74>
   21a58:	f6071ce3          	bnez	a4,219d0 <__letf2+0xb0>
   21a5c:	00000793          	li	a5,0
   21a60:	f5dff06f          	j	219bc <__letf2+0x9c>

00021a64 <__multf3>:
   21a64:	f6010113          	addi	sp,sp,-160
   21a68:	09412423          	sw	s4,136(sp)
   21a6c:	00c5aa03          	lw	s4,12(a1)
   21a70:	0005a683          	lw	a3,0(a1)
   21a74:	0045a783          	lw	a5,4(a1)
   21a78:	08812c23          	sw	s0,152(sp)
   21a7c:	00050413          	mv	s0,a0
   21a80:	0085a503          	lw	a0,8(a1)
   21a84:	010a1713          	slli	a4,s4,0x10
   21a88:	08912a23          	sw	s1,148(sp)
   21a8c:	09312623          	sw	s3,140(sp)
   21a90:	09512223          	sw	s5,132(sp)
   21a94:	09612023          	sw	s6,128(sp)
   21a98:	00062483          	lw	s1,0(a2)
   21a9c:	00462b03          	lw	s6,4(a2)
   21aa0:	00862a83          	lw	s5,8(a2)
   21aa4:	00c62983          	lw	s3,12(a2)
   21aa8:	00008637          	lui	a2,0x8
   21aac:	09212823          	sw	s2,144(sp)
   21ab0:	01075713          	srli	a4,a4,0x10
   21ab4:	010a5913          	srli	s2,s4,0x10
   21ab8:	fff60613          	addi	a2,a2,-1 # 7fff <register_fini-0x8075>
   21abc:	05412623          	sw	s4,76(sp)
   21ac0:	08112e23          	sw	ra,156(sp)
   21ac4:	07712e23          	sw	s7,124(sp)
   21ac8:	07812c23          	sw	s8,120(sp)
   21acc:	07912a23          	sw	s9,116(sp)
   21ad0:	07a12823          	sw	s10,112(sp)
   21ad4:	07b12623          	sw	s11,108(sp)
   21ad8:	04d12023          	sw	a3,64(sp)
   21adc:	04f12223          	sw	a5,68(sp)
   21ae0:	04a12423          	sw	a0,72(sp)
   21ae4:	00d12823          	sw	a3,16(sp)
   21ae8:	00f12a23          	sw	a5,20(sp)
   21aec:	00a12c23          	sw	a0,24(sp)
   21af0:	00e12e23          	sw	a4,28(sp)
   21af4:	00c97933          	and	s2,s2,a2
   21af8:	01fa5a13          	srli	s4,s4,0x1f
   21afc:	12090663          	beqz	s2,21c28 <__multf3+0x1c4>
   21b00:	24c90263          	beq	s2,a2,21d44 <__multf3+0x2e0>
   21b04:	000107b7          	lui	a5,0x10
   21b08:	00f767b3          	or	a5,a4,a5
   21b0c:	00f12e23          	sw	a5,28(sp)
   21b10:	01010613          	addi	a2,sp,16
   21b14:	01c10793          	addi	a5,sp,28
   21b18:	0007a703          	lw	a4,0(a5) # 10000 <register_fini-0x74>
   21b1c:	ffc7a683          	lw	a3,-4(a5)
   21b20:	ffc78793          	addi	a5,a5,-4
   21b24:	00371713          	slli	a4,a4,0x3
   21b28:	01d6d693          	srli	a3,a3,0x1d
   21b2c:	00d76733          	or	a4,a4,a3
   21b30:	00e7a223          	sw	a4,4(a5)
   21b34:	fef612e3          	bne	a2,a5,21b18 <__multf3+0xb4>
   21b38:	01012783          	lw	a5,16(sp)
   21b3c:	ffffc537          	lui	a0,0xffffc
   21b40:	00150513          	addi	a0,a0,1 # ffffc001 <__BSS_END__+0xfffd5519>
   21b44:	00379793          	slli	a5,a5,0x3
   21b48:	00f12823          	sw	a5,16(sp)
   21b4c:	00a90933          	add	s2,s2,a0
   21b50:	00000c13          	li	s8,0
   21b54:	01099513          	slli	a0,s3,0x10
   21b58:	00008737          	lui	a4,0x8
   21b5c:	0109d793          	srli	a5,s3,0x10
   21b60:	01055513          	srli	a0,a0,0x10
   21b64:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   21b68:	05312623          	sw	s3,76(sp)
   21b6c:	04912023          	sw	s1,64(sp)
   21b70:	05612223          	sw	s6,68(sp)
   21b74:	05512423          	sw	s5,72(sp)
   21b78:	02912023          	sw	s1,32(sp)
   21b7c:	03612223          	sw	s6,36(sp)
   21b80:	03512423          	sw	s5,40(sp)
   21b84:	02a12623          	sw	a0,44(sp)
   21b88:	00e7f7b3          	and	a5,a5,a4
   21b8c:	01f9d993          	srli	s3,s3,0x1f
   21b90:	1c078e63          	beqz	a5,21d6c <__multf3+0x308>
   21b94:	2ee78a63          	beq	a5,a4,21e88 <__multf3+0x424>
   21b98:	00010ab7          	lui	s5,0x10
   21b9c:	01556ab3          	or	s5,a0,s5
   21ba0:	03512623          	sw	s5,44(sp)
   21ba4:	02010593          	addi	a1,sp,32
   21ba8:	02c10713          	addi	a4,sp,44
   21bac:	00072683          	lw	a3,0(a4)
   21bb0:	ffc72603          	lw	a2,-4(a4)
   21bb4:	ffc70713          	addi	a4,a4,-4
   21bb8:	00369693          	slli	a3,a3,0x3
   21bbc:	01d65613          	srli	a2,a2,0x1d
   21bc0:	00c6e6b3          	or	a3,a3,a2
   21bc4:	00d72223          	sw	a3,4(a4)
   21bc8:	fee592e3          	bne	a1,a4,21bac <__multf3+0x148>
   21bcc:	02012703          	lw	a4,32(sp)
   21bd0:	ffffc537          	lui	a0,0xffffc
   21bd4:	00150513          	addi	a0,a0,1 # ffffc001 <__BSS_END__+0xfffd5519>
   21bd8:	00371713          	slli	a4,a4,0x3
   21bdc:	02e12023          	sw	a4,32(sp)
   21be0:	00a787b3          	add	a5,a5,a0
   21be4:	00000713          	li	a4,0
   21be8:	00f907b3          	add	a5,s2,a5
   21bec:	00f12423          	sw	a5,8(sp)
   21bf0:	00178b93          	addi	s7,a5,1
   21bf4:	002c1793          	slli	a5,s8,0x2
   21bf8:	00e7e7b3          	or	a5,a5,a4
   21bfc:	fff78793          	addi	a5,a5,-1
   21c00:	00e00693          	li	a3,14
   21c04:	013a44b3          	xor	s1,s4,s3
   21c08:	2af6e463          	bltu	a3,a5,21eb0 <__multf3+0x44c>
   21c0c:	00004697          	auipc	a3,0x4
   21c10:	bc468693          	addi	a3,a3,-1084 # 257d0 <zeroes.4467+0x88>
   21c14:	00279793          	slli	a5,a5,0x2
   21c18:	00d787b3          	add	a5,a5,a3
   21c1c:	0007a783          	lw	a5,0(a5)
   21c20:	00d787b3          	add	a5,a5,a3
   21c24:	00078067          	jr	a5
   21c28:	00d7e633          	or	a2,a5,a3
   21c2c:	00a66633          	or	a2,a2,a0
   21c30:	00e66633          	or	a2,a2,a4
   21c34:	12060663          	beqz	a2,21d60 <__multf3+0x2fc>
   21c38:	06070063          	beqz	a4,21c98 <__multf3+0x234>
   21c3c:	00070513          	mv	a0,a4
   21c40:	745020ef          	jal	ra,24b84 <__clzsi2>
   21c44:	ff450693          	addi	a3,a0,-12
   21c48:	4056d713          	srai	a4,a3,0x5
   21c4c:	01f6f693          	andi	a3,a3,31
   21c50:	40e007b3          	neg	a5,a4
   21c54:	06068c63          	beqz	a3,21ccc <__multf3+0x268>
   21c58:	00279793          	slli	a5,a5,0x2
   21c5c:	01010313          	addi	t1,sp,16
   21c60:	00c78793          	addi	a5,a5,12
   21c64:	02000813          	li	a6,32
   21c68:	00f307b3          	add	a5,t1,a5
   21c6c:	00271593          	slli	a1,a4,0x2
   21c70:	40d80833          	sub	a6,a6,a3
   21c74:	08f31263          	bne	t1,a5,21cf8 <__multf3+0x294>
   21c78:	fff70793          	addi	a5,a4,-1
   21c7c:	06010713          	addi	a4,sp,96
   21c80:	00b705b3          	add	a1,a4,a1
   21c84:	01012703          	lw	a4,16(sp)
   21c88:	00d716b3          	sll	a3,a4,a3
   21c8c:	fad5a823          	sw	a3,-80(a1)
   21c90:	fff00693          	li	a3,-1
   21c94:	09c0006f          	j	21d30 <__multf3+0x2cc>
   21c98:	00050863          	beqz	a0,21ca8 <__multf3+0x244>
   21c9c:	6e9020ef          	jal	ra,24b84 <__clzsi2>
   21ca0:	02050513          	addi	a0,a0,32
   21ca4:	fa1ff06f          	j	21c44 <__multf3+0x1e0>
   21ca8:	00078a63          	beqz	a5,21cbc <__multf3+0x258>
   21cac:	00078513          	mv	a0,a5
   21cb0:	6d5020ef          	jal	ra,24b84 <__clzsi2>
   21cb4:	04050513          	addi	a0,a0,64
   21cb8:	f8dff06f          	j	21c44 <__multf3+0x1e0>
   21cbc:	00068513          	mv	a0,a3
   21cc0:	6c5020ef          	jal	ra,24b84 <__clzsi2>
   21cc4:	06050513          	addi	a0,a0,96
   21cc8:	f7dff06f          	j	21c44 <__multf3+0x1e0>
   21ccc:	01c10693          	addi	a3,sp,28
   21cd0:	00279793          	slli	a5,a5,0x2
   21cd4:	00300613          	li	a2,3
   21cd8:	00f685b3          	add	a1,a3,a5
   21cdc:	0005a583          	lw	a1,0(a1)
   21ce0:	fff60613          	addi	a2,a2,-1
   21ce4:	ffc68693          	addi	a3,a3,-4
   21ce8:	00b6a223          	sw	a1,4(a3)
   21cec:	fee656e3          	bge	a2,a4,21cd8 <__multf3+0x274>
   21cf0:	fff70793          	addi	a5,a4,-1
   21cf4:	f9dff06f          	j	21c90 <__multf3+0x22c>
   21cf8:	ffc7a603          	lw	a2,-4(a5)
   21cfc:	0007a883          	lw	a7,0(a5)
   21d00:	00b78e33          	add	t3,a5,a1
   21d04:	01065633          	srl	a2,a2,a6
   21d08:	00d898b3          	sll	a7,a7,a3
   21d0c:	01166633          	or	a2,a2,a7
   21d10:	00ce2023          	sw	a2,0(t3)
   21d14:	ffc78793          	addi	a5,a5,-4
   21d18:	f5dff06f          	j	21c74 <__multf3+0x210>
   21d1c:	00279713          	slli	a4,a5,0x2
   21d20:	01010613          	addi	a2,sp,16
   21d24:	00e60733          	add	a4,a2,a4
   21d28:	00072023          	sw	zero,0(a4)
   21d2c:	fff78793          	addi	a5,a5,-1
   21d30:	fed796e3          	bne	a5,a3,21d1c <__multf3+0x2b8>
   21d34:	ffffc937          	lui	s2,0xffffc
   21d38:	01190913          	addi	s2,s2,17 # ffffc011 <__BSS_END__+0xfffd5529>
   21d3c:	40a90933          	sub	s2,s2,a0
   21d40:	e11ff06f          	j	21b50 <__multf3+0xec>
   21d44:	00d7e7b3          	or	a5,a5,a3
   21d48:	00a7e7b3          	or	a5,a5,a0
   21d4c:	00e7e7b3          	or	a5,a5,a4
   21d50:	00300c13          	li	s8,3
   21d54:	e00790e3          	bnez	a5,21b54 <__multf3+0xf0>
   21d58:	00200c13          	li	s8,2
   21d5c:	df9ff06f          	j	21b54 <__multf3+0xf0>
   21d60:	00000913          	li	s2,0
   21d64:	00100c13          	li	s8,1
   21d68:	dedff06f          	j	21b54 <__multf3+0xf0>
   21d6c:	0164e7b3          	or	a5,s1,s6
   21d70:	0157e7b3          	or	a5,a5,s5
   21d74:	00a7e7b3          	or	a5,a5,a0
   21d78:	12078663          	beqz	a5,21ea4 <__multf3+0x440>
   21d7c:	04050e63          	beqz	a0,21dd8 <__multf3+0x374>
   21d80:	605020ef          	jal	ra,24b84 <__clzsi2>
   21d84:	ff450613          	addi	a2,a0,-12
   21d88:	40565693          	srai	a3,a2,0x5
   21d8c:	01f67613          	andi	a2,a2,31
   21d90:	40d00733          	neg	a4,a3
   21d94:	06060e63          	beqz	a2,21e10 <__multf3+0x3ac>
   21d98:	00271713          	slli	a4,a4,0x2
   21d9c:	02010313          	addi	t1,sp,32
   21da0:	00c70713          	addi	a4,a4,12
   21da4:	02000793          	li	a5,32
   21da8:	00e30733          	add	a4,t1,a4
   21dac:	00269813          	slli	a6,a3,0x2
   21db0:	40c787b3          	sub	a5,a5,a2
   21db4:	08e31463          	bne	t1,a4,21e3c <__multf3+0x3d8>
   21db8:	06010793          	addi	a5,sp,96
   21dbc:	01078833          	add	a6,a5,a6
   21dc0:	02012783          	lw	a5,32(sp)
   21dc4:	fff68713          	addi	a4,a3,-1
   21dc8:	00c79633          	sll	a2,a5,a2
   21dcc:	fcc82023          	sw	a2,-64(a6)
   21dd0:	fff00693          	li	a3,-1
   21dd4:	0a00006f          	j	21e74 <__multf3+0x410>
   21dd8:	000a8a63          	beqz	s5,21dec <__multf3+0x388>
   21ddc:	000a8513          	mv	a0,s5
   21de0:	5a5020ef          	jal	ra,24b84 <__clzsi2>
   21de4:	02050513          	addi	a0,a0,32
   21de8:	f9dff06f          	j	21d84 <__multf3+0x320>
   21dec:	000b0a63          	beqz	s6,21e00 <__multf3+0x39c>
   21df0:	000b0513          	mv	a0,s6
   21df4:	591020ef          	jal	ra,24b84 <__clzsi2>
   21df8:	04050513          	addi	a0,a0,64
   21dfc:	f89ff06f          	j	21d84 <__multf3+0x320>
   21e00:	00048513          	mv	a0,s1
   21e04:	581020ef          	jal	ra,24b84 <__clzsi2>
   21e08:	06050513          	addi	a0,a0,96
   21e0c:	f79ff06f          	j	21d84 <__multf3+0x320>
   21e10:	02c10613          	addi	a2,sp,44
   21e14:	00271713          	slli	a4,a4,0x2
   21e18:	00300793          	li	a5,3
   21e1c:	00e605b3          	add	a1,a2,a4
   21e20:	0005a583          	lw	a1,0(a1)
   21e24:	fff78793          	addi	a5,a5,-1
   21e28:	ffc60613          	addi	a2,a2,-4
   21e2c:	00b62223          	sw	a1,4(a2)
   21e30:	fed7d6e3          	bge	a5,a3,21e1c <__multf3+0x3b8>
   21e34:	fff68713          	addi	a4,a3,-1
   21e38:	f99ff06f          	j	21dd0 <__multf3+0x36c>
   21e3c:	ffc72583          	lw	a1,-4(a4)
   21e40:	00072883          	lw	a7,0(a4)
   21e44:	01070e33          	add	t3,a4,a6
   21e48:	00f5d5b3          	srl	a1,a1,a5
   21e4c:	00c898b3          	sll	a7,a7,a2
   21e50:	0115e5b3          	or	a1,a1,a7
   21e54:	00be2023          	sw	a1,0(t3)
   21e58:	ffc70713          	addi	a4,a4,-4
   21e5c:	f59ff06f          	j	21db4 <__multf3+0x350>
   21e60:	00271793          	slli	a5,a4,0x2
   21e64:	02010613          	addi	a2,sp,32
   21e68:	00f607b3          	add	a5,a2,a5
   21e6c:	0007a023          	sw	zero,0(a5)
   21e70:	fff70713          	addi	a4,a4,-1
   21e74:	fed716e3          	bne	a4,a3,21e60 <__multf3+0x3fc>
   21e78:	ffffc7b7          	lui	a5,0xffffc
   21e7c:	01178793          	addi	a5,a5,17 # ffffc011 <__BSS_END__+0xfffd5529>
   21e80:	40a787b3          	sub	a5,a5,a0
   21e84:	d61ff06f          	j	21be4 <__multf3+0x180>
   21e88:	0164e4b3          	or	s1,s1,s6
   21e8c:	0154eab3          	or	s5,s1,s5
   21e90:	00aaeab3          	or	s5,s5,a0
   21e94:	00300713          	li	a4,3
   21e98:	d40a98e3          	bnez	s5,21be8 <__multf3+0x184>
   21e9c:	00200713          	li	a4,2
   21ea0:	d49ff06f          	j	21be8 <__multf3+0x184>
   21ea4:	00000793          	li	a5,0
   21ea8:	00100713          	li	a4,1
   21eac:	d3dff06f          	j	21be8 <__multf3+0x184>
   21eb0:	01012283          	lw	t0,16(sp)
   21eb4:	02012f83          	lw	t6,32(sp)
   21eb8:	00010337          	lui	t1,0x10
   21ebc:	fff30793          	addi	a5,t1,-1 # ffff <register_fini-0x75>
   21ec0:	00f2f8b3          	and	a7,t0,a5
   21ec4:	00fff7b3          	and	a5,t6,a5
   21ec8:	0102de13          	srli	t3,t0,0x10
   21ecc:	010fd713          	srli	a4,t6,0x10
   21ed0:	00088513          	mv	a0,a7
   21ed4:	00078593          	mv	a1,a5
   21ed8:	c84ee0ef          	jal	ra,1035c <__mulsi3>
   21edc:	00050813          	mv	a6,a0
   21ee0:	00070593          	mv	a1,a4
   21ee4:	00088513          	mv	a0,a7
   21ee8:	c74ee0ef          	jal	ra,1035c <__mulsi3>
   21eec:	00050893          	mv	a7,a0
   21ef0:	00078593          	mv	a1,a5
   21ef4:	000e0513          	mv	a0,t3
   21ef8:	c64ee0ef          	jal	ra,1035c <__mulsi3>
   21efc:	00050793          	mv	a5,a0
   21f00:	00070593          	mv	a1,a4
   21f04:	000e0513          	mv	a0,t3
   21f08:	c54ee0ef          	jal	ra,1035c <__mulsi3>
   21f0c:	01085713          	srli	a4,a6,0x10
   21f10:	00f888b3          	add	a7,a7,a5
   21f14:	01170733          	add	a4,a4,a7
   21f18:	00f77463          	bgeu	a4,a5,21f20 <__multf3+0x4bc>
   21f1c:	00650533          	add	a0,a0,t1
   21f20:	01075793          	srli	a5,a4,0x10
   21f24:	00a787b3          	add	a5,a5,a0
   21f28:	00010e37          	lui	t3,0x10
   21f2c:	02412e83          	lw	t4,36(sp)
   21f30:	04f12223          	sw	a5,68(sp)
   21f34:	fffe0793          	addi	a5,t3,-1 # ffff <register_fini-0x75>
   21f38:	00f77733          	and	a4,a4,a5
   21f3c:	00f87833          	and	a6,a6,a5
   21f40:	01071713          	slli	a4,a4,0x10
   21f44:	01070733          	add	a4,a4,a6
   21f48:	00feff33          	and	t5,t4,a5
   21f4c:	00f2f833          	and	a6,t0,a5
   21f50:	04e12023          	sw	a4,64(sp)
   21f54:	0102d313          	srli	t1,t0,0x10
   21f58:	010ed713          	srli	a4,t4,0x10
   21f5c:	00080513          	mv	a0,a6
   21f60:	000f0593          	mv	a1,t5
   21f64:	bf8ee0ef          	jal	ra,1035c <__mulsi3>
   21f68:	00050893          	mv	a7,a0
   21f6c:	00070593          	mv	a1,a4
   21f70:	00080513          	mv	a0,a6
   21f74:	be8ee0ef          	jal	ra,1035c <__mulsi3>
   21f78:	00050813          	mv	a6,a0
   21f7c:	000f0593          	mv	a1,t5
   21f80:	00030513          	mv	a0,t1
   21f84:	bd8ee0ef          	jal	ra,1035c <__mulsi3>
   21f88:	00050f13          	mv	t5,a0
   21f8c:	00070593          	mv	a1,a4
   21f90:	00030513          	mv	a0,t1
   21f94:	bc8ee0ef          	jal	ra,1035c <__mulsi3>
   21f98:	0108d713          	srli	a4,a7,0x10
   21f9c:	01e80833          	add	a6,a6,t5
   21fa0:	01070733          	add	a4,a4,a6
   21fa4:	00050c13          	mv	s8,a0
   21fa8:	01e77463          	bgeu	a4,t5,21fb0 <__multf3+0x54c>
   21fac:	01c50c33          	add	s8,a0,t3
   21fb0:	01412f03          	lw	t5,20(sp)
   21fb4:	00f77833          	and	a6,a4,a5
   21fb8:	00f8f8b3          	and	a7,a7,a5
   21fbc:	01081813          	slli	a6,a6,0x10
   21fc0:	01075693          	srli	a3,a4,0x10
   21fc4:	01180833          	add	a6,a6,a7
   21fc8:	00ff78b3          	and	a7,t5,a5
   21fcc:	00fff7b3          	and	a5,t6,a5
   21fd0:	00d12623          	sw	a3,12(sp)
   21fd4:	010f5393          	srli	t2,t5,0x10
   21fd8:	010fd713          	srli	a4,t6,0x10
   21fdc:	00088513          	mv	a0,a7
   21fe0:	00078593          	mv	a1,a5
   21fe4:	b78ee0ef          	jal	ra,1035c <__mulsi3>
   21fe8:	00050313          	mv	t1,a0
   21fec:	00070593          	mv	a1,a4
   21ff0:	00088513          	mv	a0,a7
   21ff4:	b68ee0ef          	jal	ra,1035c <__mulsi3>
   21ff8:	00050893          	mv	a7,a0
   21ffc:	00078593          	mv	a1,a5
   22000:	00038513          	mv	a0,t2
   22004:	b58ee0ef          	jal	ra,1035c <__mulsi3>
   22008:	00050e13          	mv	t3,a0
   2200c:	00070593          	mv	a1,a4
   22010:	00038513          	mv	a0,t2
   22014:	b48ee0ef          	jal	ra,1035c <__mulsi3>
   22018:	01035793          	srli	a5,t1,0x10
   2201c:	01c888b3          	add	a7,a7,t3
   22020:	011787b3          	add	a5,a5,a7
   22024:	01c7f663          	bgeu	a5,t3,22030 <__multf3+0x5cc>
   22028:	00010737          	lui	a4,0x10
   2202c:	00e50533          	add	a0,a0,a4
   22030:	000103b7          	lui	t2,0x10
   22034:	fff38713          	addi	a4,t2,-1 # ffff <register_fini-0x75>
   22038:	00e7f8b3          	and	a7,a5,a4
   2203c:	0107da13          	srli	s4,a5,0x10
   22040:	00aa0a33          	add	s4,s4,a0
   22044:	00ef77b3          	and	a5,t5,a4
   22048:	00e37533          	and	a0,t1,a4
   2204c:	01089893          	slli	a7,a7,0x10
   22050:	00eef733          	and	a4,t4,a4
   22054:	00a888b3          	add	a7,a7,a0
   22058:	010f5913          	srli	s2,t5,0x10
   2205c:	010ede13          	srli	t3,t4,0x10
   22060:	00078513          	mv	a0,a5
   22064:	00070593          	mv	a1,a4
   22068:	af4ee0ef          	jal	ra,1035c <__mulsi3>
   2206c:	00050313          	mv	t1,a0
   22070:	000e0593          	mv	a1,t3
   22074:	00078513          	mv	a0,a5
   22078:	ae4ee0ef          	jal	ra,1035c <__mulsi3>
   2207c:	00050993          	mv	s3,a0
   22080:	00070593          	mv	a1,a4
   22084:	00090513          	mv	a0,s2
   22088:	ad4ee0ef          	jal	ra,1035c <__mulsi3>
   2208c:	00050713          	mv	a4,a0
   22090:	000e0593          	mv	a1,t3
   22094:	00090513          	mv	a0,s2
   22098:	ac4ee0ef          	jal	ra,1035c <__mulsi3>
   2209c:	01035793          	srli	a5,t1,0x10
   220a0:	00e989b3          	add	s3,s3,a4
   220a4:	013787b3          	add	a5,a5,s3
   220a8:	00e7f463          	bgeu	a5,a4,220b0 <__multf3+0x64c>
   220ac:	00750533          	add	a0,a0,t2
   220b0:	000103b7          	lui	t2,0x10
   220b4:	fff38593          	addi	a1,t2,-1 # ffff <register_fini-0x75>
   220b8:	00b7f733          	and	a4,a5,a1
   220bc:	00b37333          	and	t1,t1,a1
   220c0:	01071713          	slli	a4,a4,0x10
   220c4:	00670733          	add	a4,a4,t1
   220c8:	02812303          	lw	t1,40(sp)
   220cc:	0107d993          	srli	s3,a5,0x10
   220d0:	00b2f7b3          	and	a5,t0,a1
   220d4:	00b37ab3          	and	s5,t1,a1
   220d8:	00a989b3          	add	s3,s3,a0
   220dc:	0102d913          	srli	s2,t0,0x10
   220e0:	01035b13          	srli	s6,t1,0x10
   220e4:	00078513          	mv	a0,a5
   220e8:	000a8593          	mv	a1,s5
   220ec:	a70ee0ef          	jal	ra,1035c <__mulsi3>
   220f0:	00050e13          	mv	t3,a0
   220f4:	000b0593          	mv	a1,s6
   220f8:	00078513          	mv	a0,a5
   220fc:	a60ee0ef          	jal	ra,1035c <__mulsi3>
   22100:	00050793          	mv	a5,a0
   22104:	000a8593          	mv	a1,s5
   22108:	00090513          	mv	a0,s2
   2210c:	a50ee0ef          	jal	ra,1035c <__mulsi3>
   22110:	00050a93          	mv	s5,a0
   22114:	000b0593          	mv	a1,s6
   22118:	00090513          	mv	a0,s2
   2211c:	a40ee0ef          	jal	ra,1035c <__mulsi3>
   22120:	010e5693          	srli	a3,t3,0x10
   22124:	015787b3          	add	a5,a5,s5
   22128:	00f686b3          	add	a3,a3,a5
   2212c:	0156f463          	bgeu	a3,s5,22134 <__multf3+0x6d0>
   22130:	00750533          	add	a0,a0,t2
   22134:	00010d37          	lui	s10,0x10
   22138:	fffd0393          	addi	t2,s10,-1 # ffff <register_fini-0x75>
   2213c:	0076f7b3          	and	a5,a3,t2
   22140:	007e7e33          	and	t3,t3,t2
   22144:	01079793          	slli	a5,a5,0x10
   22148:	01c787b3          	add	a5,a5,t3
   2214c:	01812e03          	lw	t3,24(sp)
   22150:	0106d913          	srli	s2,a3,0x10
   22154:	00a90933          	add	s2,s2,a0
   22158:	007e7cb3          	and	s9,t3,t2
   2215c:	007ff3b3          	and	t2,t6,t2
   22160:	010e5d93          	srli	s11,t3,0x10
   22164:	010fdb13          	srli	s6,t6,0x10
   22168:	000c8513          	mv	a0,s9
   2216c:	00038593          	mv	a1,t2
   22170:	9ecee0ef          	jal	ra,1035c <__mulsi3>
   22174:	00050a93          	mv	s5,a0
   22178:	000b0593          	mv	a1,s6
   2217c:	000c8513          	mv	a0,s9
   22180:	9dcee0ef          	jal	ra,1035c <__mulsi3>
   22184:	00050c93          	mv	s9,a0
   22188:	00038593          	mv	a1,t2
   2218c:	000d8513          	mv	a0,s11
   22190:	9ccee0ef          	jal	ra,1035c <__mulsi3>
   22194:	00050393          	mv	t2,a0
   22198:	000b0593          	mv	a1,s6
   2219c:	000d8513          	mv	a0,s11
   221a0:	9bcee0ef          	jal	ra,1035c <__mulsi3>
   221a4:	010ad613          	srli	a2,s5,0x10
   221a8:	007c8cb3          	add	s9,s9,t2
   221ac:	01960cb3          	add	s9,a2,s9
   221b0:	007cf463          	bgeu	s9,t2,221b8 <__multf3+0x754>
   221b4:	01a50533          	add	a0,a0,s10
   221b8:	04412603          	lw	a2,68(sp)
   221bc:	010cd693          	srli	a3,s9,0x10
   221c0:	00a686b3          	add	a3,a3,a0
   221c4:	00c12503          	lw	a0,12(sp)
   221c8:	00c80633          	add	a2,a6,a2
   221cc:	010630b3          	sltu	ra,a2,a6
   221d0:	00150833          	add	a6,a0,ra
   221d4:	000103b7          	lui	t2,0x10
   221d8:	fff38593          	addi	a1,t2,-1 # ffff <register_fini-0x75>
   221dc:	01880c33          	add	s8,a6,s8
   221e0:	01160633          	add	a2,a2,a7
   221e4:	011638b3          	sltu	a7,a2,a7
   221e8:	014c0533          	add	a0,s8,s4
   221ec:	00bcfcb3          	and	s9,s9,a1
   221f0:	01150833          	add	a6,a0,a7
   221f4:	00bafab3          	and	s5,s5,a1
   221f8:	010c9c93          	slli	s9,s9,0x10
   221fc:	015c8cb3          	add	s9,s9,s5
   22200:	01453533          	sltu	a0,a0,s4
   22204:	00e80ab3          	add	s5,a6,a4
   22208:	01183833          	sltu	a6,a6,a7
   2220c:	001c3c33          	sltu	s8,s8,ra
   22210:	01056833          	or	a6,a0,a6
   22214:	01880833          	add	a6,a6,s8
   22218:	00eab733          	sltu	a4,s5,a4
   2221c:	01380833          	add	a6,a6,s3
   22220:	00e800b3          	add	ra,a6,a4
   22224:	00fa8ab3          	add	s5,s5,a5
   22228:	01208533          	add	a0,ra,s2
   2222c:	00fab7b3          	sltu	a5,s5,a5
   22230:	00f508b3          	add	a7,a0,a5
   22234:	019a8ab3          	add	s5,s5,s9
   22238:	04c12223          	sw	a2,68(sp)
   2223c:	05512423          	sw	s5,72(sp)
   22240:	00d88633          	add	a2,a7,a3
   22244:	019abab3          	sltu	s5,s5,s9
   22248:	01560a33          	add	s4,a2,s5
   2224c:	00f8b7b3          	sltu	a5,a7,a5
   22250:	01383833          	sltu	a6,a6,s3
   22254:	00e0b733          	sltu	a4,ra,a4
   22258:	01253533          	sltu	a0,a0,s2
   2225c:	00f56533          	or	a0,a0,a5
   22260:	00e86833          	or	a6,a6,a4
   22264:	00d636b3          	sltu	a3,a2,a3
   22268:	015a3ab3          	sltu	s5,s4,s5
   2226c:	00a80833          	add	a6,a6,a0
   22270:	0156eab3          	or	s5,a3,s5
   22274:	01580ab3          	add	s5,a6,s5
   22278:	02c12803          	lw	a6,44(sp)
   2227c:	0102d913          	srli	s2,t0,0x10
   22280:	00b2f2b3          	and	t0,t0,a1
   22284:	00b877b3          	and	a5,a6,a1
   22288:	05412623          	sw	s4,76(sp)
   2228c:	05512823          	sw	s5,80(sp)
   22290:	01085893          	srli	a7,a6,0x10
   22294:	00028513          	mv	a0,t0
   22298:	00078593          	mv	a1,a5
   2229c:	8c0ee0ef          	jal	ra,1035c <__mulsi3>
   222a0:	00050c93          	mv	s9,a0
   222a4:	00088593          	mv	a1,a7
   222a8:	00028513          	mv	a0,t0
   222ac:	8b0ee0ef          	jal	ra,1035c <__mulsi3>
   222b0:	00050713          	mv	a4,a0
   222b4:	00078593          	mv	a1,a5
   222b8:	00090513          	mv	a0,s2
   222bc:	8a0ee0ef          	jal	ra,1035c <__mulsi3>
   222c0:	00050793          	mv	a5,a0
   222c4:	00088593          	mv	a1,a7
   222c8:	00090513          	mv	a0,s2
   222cc:	890ee0ef          	jal	ra,1035c <__mulsi3>
   222d0:	010cd613          	srli	a2,s9,0x10
   222d4:	00f70733          	add	a4,a4,a5
   222d8:	00e60633          	add	a2,a2,a4
   222dc:	00f67463          	bgeu	a2,a5,222e4 <__multf3+0x880>
   222e0:	00750533          	add	a0,a0,t2
   222e4:	01c12883          	lw	a7,28(sp)
   222e8:	00010737          	lui	a4,0x10
   222ec:	fff70793          	addi	a5,a4,-1 # ffff <register_fini-0x75>
   222f0:	01065a13          	srli	s4,a2,0x10
   222f4:	00f67633          	and	a2,a2,a5
   222f8:	01061613          	slli	a2,a2,0x10
   222fc:	00fcfcb3          	and	s9,s9,a5
   22300:	010fd293          	srli	t0,t6,0x10
   22304:	00f8f933          	and	s2,a7,a5
   22308:	00ffffb3          	and	t6,t6,a5
   2230c:	00aa0a33          	add	s4,s4,a0
   22310:	01960cb3          	add	s9,a2,s9
   22314:	0108d393          	srli	t2,a7,0x10
   22318:	00090513          	mv	a0,s2
   2231c:	000f8593          	mv	a1,t6
   22320:	83cee0ef          	jal	ra,1035c <__mulsi3>
   22324:	00050b13          	mv	s6,a0
   22328:	00028593          	mv	a1,t0
   2232c:	00090513          	mv	a0,s2
   22330:	82cee0ef          	jal	ra,1035c <__mulsi3>
   22334:	00050793          	mv	a5,a0
   22338:	000f8593          	mv	a1,t6
   2233c:	00038513          	mv	a0,t2
   22340:	81cee0ef          	jal	ra,1035c <__mulsi3>
   22344:	00050f93          	mv	t6,a0
   22348:	00028593          	mv	a1,t0
   2234c:	00038513          	mv	a0,t2
   22350:	80cee0ef          	jal	ra,1035c <__mulsi3>
   22354:	010b5693          	srli	a3,s6,0x10
   22358:	01f787b3          	add	a5,a5,t6
   2235c:	00f686b3          	add	a3,a3,a5
   22360:	01f6f463          	bgeu	a3,t6,22368 <__multf3+0x904>
   22364:	00e50533          	add	a0,a0,a4
   22368:	000102b7          	lui	t0,0x10
   2236c:	fff28793          	addi	a5,t0,-1 # ffff <register_fini-0x75>
   22370:	0106d993          	srli	s3,a3,0x10
   22374:	00f6f6b3          	and	a3,a3,a5
   22378:	00ff7733          	and	a4,t5,a5
   2237c:	01069693          	slli	a3,a3,0x10
   22380:	00fb7b33          	and	s6,s6,a5
   22384:	00f377b3          	and	a5,t1,a5
   22388:	00a989b3          	add	s3,s3,a0
   2238c:	01668b33          	add	s6,a3,s6
   22390:	010f5913          	srli	s2,t5,0x10
   22394:	01035393          	srli	t2,t1,0x10
   22398:	00070513          	mv	a0,a4
   2239c:	00078593          	mv	a1,a5
   223a0:	fbded0ef          	jal	ra,1035c <__mulsi3>
   223a4:	00050f93          	mv	t6,a0
   223a8:	00038593          	mv	a1,t2
   223ac:	00070513          	mv	a0,a4
   223b0:	faded0ef          	jal	ra,1035c <__mulsi3>
   223b4:	00050713          	mv	a4,a0
   223b8:	00078593          	mv	a1,a5
   223bc:	00090513          	mv	a0,s2
   223c0:	f9ded0ef          	jal	ra,1035c <__mulsi3>
   223c4:	00050a93          	mv	s5,a0
   223c8:	00038593          	mv	a1,t2
   223cc:	00090513          	mv	a0,s2
   223d0:	f8ded0ef          	jal	ra,1035c <__mulsi3>
   223d4:	010fd793          	srli	a5,t6,0x10
   223d8:	01570733          	add	a4,a4,s5
   223dc:	00e787b3          	add	a5,a5,a4
   223e0:	0157f463          	bgeu	a5,s5,223e8 <__multf3+0x984>
   223e4:	00550533          	add	a0,a0,t0
   223e8:	000103b7          	lui	t2,0x10
   223ec:	fff38693          	addi	a3,t2,-1 # ffff <register_fini-0x75>
   223f0:	00d7f733          	and	a4,a5,a3
   223f4:	0107d913          	srli	s2,a5,0x10
   223f8:	00dfffb3          	and	t6,t6,a3
   223fc:	00de72b3          	and	t0,t3,a3
   22400:	00defab3          	and	s5,t4,a3
   22404:	01071713          	slli	a4,a4,0x10
   22408:	00a90933          	add	s2,s2,a0
   2240c:	01f70733          	add	a4,a4,t6
   22410:	010e5793          	srli	a5,t3,0x10
   22414:	010edc13          	srli	s8,t4,0x10
   22418:	00028513          	mv	a0,t0
   2241c:	000a8593          	mv	a1,s5
   22420:	f3ded0ef          	jal	ra,1035c <__mulsi3>
   22424:	00050f93          	mv	t6,a0
   22428:	000c0593          	mv	a1,s8
   2242c:	00028513          	mv	a0,t0
   22430:	f2ded0ef          	jal	ra,1035c <__mulsi3>
   22434:	00050293          	mv	t0,a0
   22438:	000a8593          	mv	a1,s5
   2243c:	00078513          	mv	a0,a5
   22440:	f1ded0ef          	jal	ra,1035c <__mulsi3>
   22444:	00050a93          	mv	s5,a0
   22448:	000c0593          	mv	a1,s8
   2244c:	00078513          	mv	a0,a5
   22450:	f0ded0ef          	jal	ra,1035c <__mulsi3>
   22454:	015286b3          	add	a3,t0,s5
   22458:	010fd293          	srli	t0,t6,0x10
   2245c:	005686b3          	add	a3,a3,t0
   22460:	0156f463          	bgeu	a3,s5,22468 <__multf3+0xa04>
   22464:	00750533          	add	a0,a0,t2
   22468:	00010ab7          	lui	s5,0x10
   2246c:	fffa8393          	addi	t2,s5,-1 # ffff <register_fini-0x75>
   22470:	0076f7b3          	and	a5,a3,t2
   22474:	007ff2b3          	and	t0,t6,t2
   22478:	01079793          	slli	a5,a5,0x10
   2247c:	005782b3          	add	t0,a5,t0
   22480:	04c12783          	lw	a5,76(sp)
   22484:	05012f83          	lw	t6,80(sp)
   22488:	0106dc13          	srli	s8,a3,0x10
   2248c:	00fc87b3          	add	a5,s9,a5
   22490:	0197b633          	sltu	a2,a5,s9
   22494:	01fa0fb3          	add	t6,s4,t6
   22498:	00cf8db3          	add	s11,t6,a2
   2249c:	016787b3          	add	a5,a5,s6
   224a0:	0167b6b3          	sltu	a3,a5,s6
   224a4:	013d8b33          	add	s6,s11,s3
   224a8:	00db0d33          	add	s10,s6,a3
   224ac:	00e787b3          	add	a5,a5,a4
   224b0:	00e7b733          	sltu	a4,a5,a4
   224b4:	012d05b3          	add	a1,s10,s2
   224b8:	00e58cb3          	add	s9,a1,a4
   224bc:	00ac0c33          	add	s8,s8,a0
   224c0:	005787b3          	add	a5,a5,t0
   224c4:	04f12623          	sw	a5,76(sp)
   224c8:	014fbfb3          	sltu	t6,t6,s4
   224cc:	0057b7b3          	sltu	a5,a5,t0
   224d0:	00cdb633          	sltu	a2,s11,a2
   224d4:	018c82b3          	add	t0,s9,s8
   224d8:	013b39b3          	sltu	s3,s6,s3
   224dc:	00dd36b3          	sltu	a3,s10,a3
   224e0:	00f280b3          	add	ra,t0,a5
   224e4:	00ecb733          	sltu	a4,s9,a4
   224e8:	00cfefb3          	or	t6,t6,a2
   224ec:	00d9e9b3          	or	s3,s3,a3
   224f0:	0125b5b3          	sltu	a1,a1,s2
   224f4:	0182bc33          	sltu	s8,t0,s8
   224f8:	013f8fb3          	add	t6,t6,s3
   224fc:	00e5e5b3          	or	a1,a1,a4
   22500:	00f0b7b3          	sltu	a5,ra,a5
   22504:	00bf85b3          	add	a1,t6,a1
   22508:	00fc67b3          	or	a5,s8,a5
   2250c:	00f587b3          	add	a5,a1,a5
   22510:	007e7733          	and	a4,t3,t2
   22514:	007373b3          	and	t2,t1,t2
   22518:	04f12a23          	sw	a5,84(sp)
   2251c:	04112823          	sw	ra,80(sp)
   22520:	010e5293          	srli	t0,t3,0x10
   22524:	01035793          	srli	a5,t1,0x10
   22528:	00070513          	mv	a0,a4
   2252c:	00038593          	mv	a1,t2
   22530:	e2ded0ef          	jal	ra,1035c <__mulsi3>
   22534:	00050f93          	mv	t6,a0
   22538:	00078593          	mv	a1,a5
   2253c:	00070513          	mv	a0,a4
   22540:	e1ded0ef          	jal	ra,1035c <__mulsi3>
   22544:	00050713          	mv	a4,a0
   22548:	00038593          	mv	a1,t2
   2254c:	00028513          	mv	a0,t0
   22550:	e0ded0ef          	jal	ra,1035c <__mulsi3>
   22554:	00050393          	mv	t2,a0
   22558:	00078593          	mv	a1,a5
   2255c:	00028513          	mv	a0,t0
   22560:	dfded0ef          	jal	ra,1035c <__mulsi3>
   22564:	010fd613          	srli	a2,t6,0x10
   22568:	00770733          	add	a4,a4,t2
   2256c:	00e60633          	add	a2,a2,a4
   22570:	00767463          	bgeu	a2,t2,22578 <__multf3+0xb14>
   22574:	01550533          	add	a0,a0,s5
   22578:	000102b7          	lui	t0,0x10
   2257c:	fff28793          	addi	a5,t0,-1 # ffff <register_fini-0x75>
   22580:	01065713          	srli	a4,a2,0x10
   22584:	00f67633          	and	a2,a2,a5
   22588:	00a709b3          	add	s3,a4,a0
   2258c:	01061613          	slli	a2,a2,0x10
   22590:	00fff733          	and	a4,t6,a5
   22594:	010f5913          	srli	s2,t5,0x10
   22598:	00f87fb3          	and	t6,a6,a5
   2259c:	00ff7f33          	and	t5,t5,a5
   225a0:	00e60733          	add	a4,a2,a4
   225a4:	01085393          	srli	t2,a6,0x10
   225a8:	000f0513          	mv	a0,t5
   225ac:	000f8593          	mv	a1,t6
   225b0:	daded0ef          	jal	ra,1035c <__mulsi3>
   225b4:	00050a13          	mv	s4,a0
   225b8:	00038593          	mv	a1,t2
   225bc:	000f0513          	mv	a0,t5
   225c0:	d9ded0ef          	jal	ra,1035c <__mulsi3>
   225c4:	00050793          	mv	a5,a0
   225c8:	000f8593          	mv	a1,t6
   225cc:	00090513          	mv	a0,s2
   225d0:	d8ded0ef          	jal	ra,1035c <__mulsi3>
   225d4:	00050f93          	mv	t6,a0
   225d8:	00038593          	mv	a1,t2
   225dc:	00090513          	mv	a0,s2
   225e0:	d7ded0ef          	jal	ra,1035c <__mulsi3>
   225e4:	01f786b3          	add	a3,a5,t6
   225e8:	010a5793          	srli	a5,s4,0x10
   225ec:	00f686b3          	add	a3,a3,a5
   225f0:	01f6f463          	bgeu	a3,t6,225f8 <__multf3+0xb94>
   225f4:	00550533          	add	a0,a0,t0
   225f8:	00010f37          	lui	t5,0x10
   225fc:	ffff0613          	addi	a2,t5,-1 # ffff <register_fini-0x75>
   22600:	0106d913          	srli	s2,a3,0x10
   22604:	00c6f6b3          	and	a3,a3,a2
   22608:	01069693          	slli	a3,a3,0x10
   2260c:	00ca7a33          	and	s4,s4,a2
   22610:	010ed393          	srli	t2,t4,0x10
   22614:	00c8f2b3          	and	t0,a7,a2
   22618:	00cefeb3          	and	t4,t4,a2
   2261c:	00a90933          	add	s2,s2,a0
   22620:	01468a33          	add	s4,a3,s4
   22624:	0108d793          	srli	a5,a7,0x10
   22628:	00028513          	mv	a0,t0
   2262c:	000e8593          	mv	a1,t4
   22630:	d2ded0ef          	jal	ra,1035c <__mulsi3>
   22634:	00050f93          	mv	t6,a0
   22638:	00038593          	mv	a1,t2
   2263c:	00028513          	mv	a0,t0
   22640:	d1ded0ef          	jal	ra,1035c <__mulsi3>
   22644:	00050293          	mv	t0,a0
   22648:	000e8593          	mv	a1,t4
   2264c:	00078513          	mv	a0,a5
   22650:	d0ded0ef          	jal	ra,1035c <__mulsi3>
   22654:	00050e93          	mv	t4,a0
   22658:	00038593          	mv	a1,t2
   2265c:	00078513          	mv	a0,a5
   22660:	cfded0ef          	jal	ra,1035c <__mulsi3>
   22664:	010fd693          	srli	a3,t6,0x10
   22668:	01d282b3          	add	t0,t0,t4
   2266c:	005686b3          	add	a3,a3,t0
   22670:	01d6f463          	bgeu	a3,t4,22678 <__multf3+0xc14>
   22674:	01e50533          	add	a0,a0,t5
   22678:	00010eb7          	lui	t4,0x10
   2267c:	fffe8793          	addi	a5,t4,-1 # ffff <register_fini-0x75>
   22680:	00f6f5b3          	and	a1,a3,a5
   22684:	0106d393          	srli	t2,a3,0x10
   22688:	01059593          	slli	a1,a1,0x10
   2268c:	00ffffb3          	and	t6,t6,a5
   22690:	010e5a93          	srli	s5,t3,0x10
   22694:	00fe7e33          	and	t3,t3,a5
   22698:	00f877b3          	and	a5,a6,a5
   2269c:	00a383b3          	add	t2,t2,a0
   226a0:	01f58fb3          	add	t6,a1,t6
   226a4:	01085293          	srli	t0,a6,0x10
   226a8:	000e0513          	mv	a0,t3
   226ac:	00078593          	mv	a1,a5
   226b0:	caded0ef          	jal	ra,1035c <__mulsi3>
   226b4:	00050f13          	mv	t5,a0
   226b8:	00028593          	mv	a1,t0
   226bc:	000e0513          	mv	a0,t3
   226c0:	c9ded0ef          	jal	ra,1035c <__mulsi3>
   226c4:	00050e13          	mv	t3,a0
   226c8:	00078593          	mv	a1,a5
   226cc:	000a8513          	mv	a0,s5
   226d0:	c8ded0ef          	jal	ra,1035c <__mulsi3>
   226d4:	00050793          	mv	a5,a0
   226d8:	00028593          	mv	a1,t0
   226dc:	000a8513          	mv	a0,s5
   226e0:	c7ded0ef          	jal	ra,1035c <__mulsi3>
   226e4:	010f5693          	srli	a3,t5,0x10
   226e8:	00fe0e33          	add	t3,t3,a5
   226ec:	01c686b3          	add	a3,a3,t3
   226f0:	00f6f463          	bgeu	a3,a5,226f8 <__multf3+0xc94>
   226f4:	01d50533          	add	a0,a0,t4
   226f8:	00010eb7          	lui	t4,0x10
   226fc:	fffe8613          	addi	a2,t4,-1 # ffff <register_fini-0x75>
   22700:	00c6fe33          	and	t3,a3,a2
   22704:	00cf7f33          	and	t5,t5,a2
   22708:	010e1e13          	slli	t3,t3,0x10
   2270c:	0106d793          	srli	a5,a3,0x10
   22710:	01ee0e33          	add	t3,t3,t5
   22714:	01035b13          	srli	s6,t1,0x10
   22718:	00c8ff33          	and	t5,a7,a2
   2271c:	00c37333          	and	t1,t1,a2
   22720:	00a782b3          	add	t0,a5,a0
   22724:	00030593          	mv	a1,t1
   22728:	0108d793          	srli	a5,a7,0x10
   2272c:	000f0513          	mv	a0,t5
   22730:	c2ded0ef          	jal	ra,1035c <__mulsi3>
   22734:	00050a93          	mv	s5,a0
   22738:	000b0593          	mv	a1,s6
   2273c:	000f0513          	mv	a0,t5
   22740:	c1ded0ef          	jal	ra,1035c <__mulsi3>
   22744:	00050f13          	mv	t5,a0
   22748:	00030593          	mv	a1,t1
   2274c:	00078513          	mv	a0,a5
   22750:	c0ded0ef          	jal	ra,1035c <__mulsi3>
   22754:	00050313          	mv	t1,a0
   22758:	000b0593          	mv	a1,s6
   2275c:	00078513          	mv	a0,a5
   22760:	bfded0ef          	jal	ra,1035c <__mulsi3>
   22764:	010ad693          	srli	a3,s5,0x10
   22768:	006f0f33          	add	t5,t5,t1
   2276c:	01e686b3          	add	a3,a3,t5
   22770:	0066f463          	bgeu	a3,t1,22778 <__multf3+0xd14>
   22774:	01d50533          	add	a0,a0,t4
   22778:	05012583          	lw	a1,80(sp)
   2277c:	00010eb7          	lui	t4,0x10
   22780:	fffe8313          	addi	t1,t4,-1 # ffff <register_fini-0x75>
   22784:	00b705b3          	add	a1,a4,a1
   22788:	00e5b633          	sltu	a2,a1,a4
   2278c:	05412703          	lw	a4,84(sp)
   22790:	0066ff33          	and	t5,a3,t1
   22794:	006afab3          	and	s5,s5,t1
   22798:	00e98733          	add	a4,s3,a4
   2279c:	00c70cb3          	add	s9,a4,a2
   227a0:	014585b3          	add	a1,a1,s4
   227a4:	010f1f13          	slli	t5,t5,0x10
   227a8:	0106d793          	srli	a5,a3,0x10
   227ac:	015f0f33          	add	t5,t5,s5
   227b0:	0145b6b3          	sltu	a3,a1,s4
   227b4:	012c8ab3          	add	s5,s9,s2
   227b8:	00da8c33          	add	s8,s5,a3
   227bc:	01f585b3          	add	a1,a1,t6
   227c0:	007c0a33          	add	s4,s8,t2
   227c4:	00dc36b3          	sltu	a3,s8,a3
   227c8:	04b12823          	sw	a1,80(sp)
   227cc:	01373733          	sltu	a4,a4,s3
   227d0:	01f5b5b3          	sltu	a1,a1,t6
   227d4:	00ccb633          	sltu	a2,s9,a2
   227d8:	012ab933          	sltu	s2,s5,s2
   227dc:	00ba0b33          	add	s6,s4,a1
   227e0:	00a78533          	add	a0,a5,a0
   227e4:	00c76733          	or	a4,a4,a2
   227e8:	00d967b3          	or	a5,s2,a3
   227ec:	00f70733          	add	a4,a4,a5
   227f0:	007a33b3          	sltu	t2,s4,t2
   227f4:	00bb37b3          	sltu	a5,s6,a1
   227f8:	00f3e7b3          	or	a5,t2,a5
   227fc:	01cb0fb3          	add	t6,s6,t3
   22800:	00f70733          	add	a4,a4,a5
   22804:	005707b3          	add	a5,a4,t0
   22808:	01cfbe33          	sltu	t3,t6,t3
   2280c:	01c786b3          	add	a3,a5,t3
   22810:	01ef8fb3          	add	t6,t6,t5
   22814:	00a68733          	add	a4,a3,a0
   22818:	01efbf33          	sltu	t5,t6,t5
   2281c:	05f12a23          	sw	t6,84(sp)
   22820:	01e70fb3          	add	t6,a4,t5
   22824:	00a73533          	sltu	a0,a4,a0
   22828:	0057b7b3          	sltu	a5,a5,t0
   2282c:	01c6be33          	sltu	t3,a3,t3
   22830:	01efbf33          	sltu	t5,t6,t5
   22834:	01e56f33          	or	t5,a0,t5
   22838:	01c7e7b3          	or	a5,a5,t3
   2283c:	01e787b3          	add	a5,a5,t5
   22840:	04f12e23          	sw	a5,92(sp)
   22844:	0108df13          	srli	t5,a7,0x10
   22848:	01085793          	srli	a5,a6,0x10
   2284c:	0068f8b3          	and	a7,a7,t1
   22850:	00687833          	and	a6,a6,t1
   22854:	05f12c23          	sw	t6,88(sp)
   22858:	00088513          	mv	a0,a7
   2285c:	00080593          	mv	a1,a6
   22860:	afded0ef          	jal	ra,1035c <__mulsi3>
   22864:	00050e13          	mv	t3,a0
   22868:	00078593          	mv	a1,a5
   2286c:	00088513          	mv	a0,a7
   22870:	aeded0ef          	jal	ra,1035c <__mulsi3>
   22874:	00050713          	mv	a4,a0
   22878:	00080593          	mv	a1,a6
   2287c:	000f0513          	mv	a0,t5
   22880:	added0ef          	jal	ra,1035c <__mulsi3>
   22884:	00050813          	mv	a6,a0
   22888:	00078593          	mv	a1,a5
   2288c:	000f0513          	mv	a0,t5
   22890:	acded0ef          	jal	ra,1035c <__mulsi3>
   22894:	010e5793          	srli	a5,t3,0x10
   22898:	01070733          	add	a4,a4,a6
   2289c:	00e787b3          	add	a5,a5,a4
   228a0:	0107f463          	bgeu	a5,a6,228a8 <__multf3+0xe44>
   228a4:	01d50533          	add	a0,a0,t4
   228a8:	0067f733          	and	a4,a5,t1
   228ac:	01071713          	slli	a4,a4,0x10
   228b0:	006e7333          	and	t1,t3,t1
   228b4:	00670333          	add	t1,a4,t1
   228b8:	05812703          	lw	a4,88(sp)
   228bc:	05c12683          	lw	a3,92(sp)
   228c0:	0107d793          	srli	a5,a5,0x10
   228c4:	00e30733          	add	a4,t1,a4
   228c8:	00673333          	sltu	t1,a4,t1
   228cc:	00d787b3          	add	a5,a5,a3
   228d0:	006787b3          	add	a5,a5,t1
   228d4:	00a787b3          	add	a5,a5,a0
   228d8:	04f12e23          	sw	a5,92(sp)
   228dc:	04e12c23          	sw	a4,88(sp)
   228e0:	04012783          	lw	a5,64(sp)
   228e4:	04412703          	lw	a4,68(sp)
   228e8:	05010593          	addi	a1,sp,80
   228ec:	00e7e7b3          	or	a5,a5,a4
   228f0:	04812703          	lw	a4,72(sp)
   228f4:	00e7e733          	or	a4,a5,a4
   228f8:	04c12783          	lw	a5,76(sp)
   228fc:	00d79793          	slli	a5,a5,0xd
   22900:	00e7e7b3          	or	a5,a5,a4
   22904:	04010713          	addi	a4,sp,64
   22908:	00c72683          	lw	a3,12(a4)
   2290c:	01072603          	lw	a2,16(a4)
   22910:	00470713          	addi	a4,a4,4
   22914:	0136d693          	srli	a3,a3,0x13
   22918:	00d61613          	slli	a2,a2,0xd
   2291c:	00c6e6b3          	or	a3,a3,a2
   22920:	fed72e23          	sw	a3,-4(a4)
   22924:	fee592e3          	bne	a1,a4,22908 <__multf3+0xea4>
   22928:	04012703          	lw	a4,64(sp)
   2292c:	04812683          	lw	a3,72(sp)
   22930:	00f037b3          	snez	a5,a5
   22934:	00e7e7b3          	or	a5,a5,a4
   22938:	02d12c23          	sw	a3,56(sp)
   2293c:	04c12703          	lw	a4,76(sp)
   22940:	04412683          	lw	a3,68(sp)
   22944:	02f12823          	sw	a5,48(sp)
   22948:	02e12e23          	sw	a4,60(sp)
   2294c:	02d12a23          	sw	a3,52(sp)
   22950:	00b71693          	slli	a3,a4,0xb
   22954:	2206d063          	bgez	a3,22b74 <__multf3+0x1110>
   22958:	01f79793          	slli	a5,a5,0x1f
   2295c:	03010713          	addi	a4,sp,48
   22960:	03c10593          	addi	a1,sp,60
   22964:	00072683          	lw	a3,0(a4)
   22968:	00472603          	lw	a2,4(a4)
   2296c:	00470713          	addi	a4,a4,4
   22970:	0016d693          	srli	a3,a3,0x1
   22974:	01f61613          	slli	a2,a2,0x1f
   22978:	00c6e6b3          	or	a3,a3,a2
   2297c:	fed72e23          	sw	a3,-4(a4)
   22980:	fee592e3          	bne	a1,a4,22964 <__multf3+0xf00>
   22984:	03c12703          	lw	a4,60(sp)
   22988:	00f037b3          	snez	a5,a5
   2298c:	00175713          	srli	a4,a4,0x1
   22990:	02e12e23          	sw	a4,60(sp)
   22994:	03012703          	lw	a4,48(sp)
   22998:	00f767b3          	or	a5,a4,a5
   2299c:	02f12823          	sw	a5,48(sp)
   229a0:	000047b7          	lui	a5,0x4
   229a4:	fff78793          	addi	a5,a5,-1 # 3fff <register_fini-0xc075>
   229a8:	00fb87b3          	add	a5,s7,a5
   229ac:	1ef05463          	blez	a5,22b94 <__multf3+0x1130>
   229b0:	03012703          	lw	a4,48(sp)
   229b4:	00777693          	andi	a3,a4,7
   229b8:	04068463          	beqz	a3,22a00 <__multf3+0xf9c>
   229bc:	00f77693          	andi	a3,a4,15
   229c0:	00400613          	li	a2,4
   229c4:	02c68e63          	beq	a3,a2,22a00 <__multf3+0xf9c>
   229c8:	03412683          	lw	a3,52(sp)
   229cc:	00470713          	addi	a4,a4,4
   229d0:	02e12823          	sw	a4,48(sp)
   229d4:	00473713          	sltiu	a4,a4,4
   229d8:	00d706b3          	add	a3,a4,a3
   229dc:	00e6b733          	sltu	a4,a3,a4
   229e0:	02d12a23          	sw	a3,52(sp)
   229e4:	03812683          	lw	a3,56(sp)
   229e8:	00d706b3          	add	a3,a4,a3
   229ec:	02d12c23          	sw	a3,56(sp)
   229f0:	00e6b6b3          	sltu	a3,a3,a4
   229f4:	03c12703          	lw	a4,60(sp)
   229f8:	00e686b3          	add	a3,a3,a4
   229fc:	02d12e23          	sw	a3,60(sp)
   22a00:	03c12703          	lw	a4,60(sp)
   22a04:	00b71693          	slli	a3,a4,0xb
   22a08:	0006de63          	bgez	a3,22a24 <__multf3+0xfc0>
   22a0c:	fff007b7          	lui	a5,0xfff00
   22a10:	fff78793          	addi	a5,a5,-1 # ffefffff <__BSS_END__+0xffed9517>
   22a14:	00f77733          	and	a4,a4,a5
   22a18:	000047b7          	lui	a5,0x4
   22a1c:	02e12e23          	sw	a4,60(sp)
   22a20:	00fb87b3          	add	a5,s7,a5
   22a24:	03010713          	addi	a4,sp,48
   22a28:	03c10593          	addi	a1,sp,60
   22a2c:	00072683          	lw	a3,0(a4)
   22a30:	00472603          	lw	a2,4(a4)
   22a34:	00470713          	addi	a4,a4,4
   22a38:	0036d693          	srli	a3,a3,0x3
   22a3c:	01d61613          	slli	a2,a2,0x1d
   22a40:	00c6e6b3          	or	a3,a3,a2
   22a44:	fed72e23          	sw	a3,-4(a4)
   22a48:	feb712e3          	bne	a4,a1,22a2c <__multf3+0xfc8>
   22a4c:	00008737          	lui	a4,0x8
   22a50:	ffe70693          	addi	a3,a4,-2 # 7ffe <register_fini-0x8076>
   22a54:	12f6c463          	blt	a3,a5,22b7c <__multf3+0x1118>
   22a58:	03c12703          	lw	a4,60(sp)
   22a5c:	00375713          	srli	a4,a4,0x3
   22a60:	02e12e23          	sw	a4,60(sp)
   22a64:	03c12703          	lw	a4,60(sp)
   22a68:	01179793          	slli	a5,a5,0x11
   22a6c:	800106b7          	lui	a3,0x80010
   22a70:	04e11623          	sh	a4,76(sp)
   22a74:	04c12703          	lw	a4,76(sp)
   22a78:	0117d793          	srli	a5,a5,0x11
   22a7c:	fff68693          	addi	a3,a3,-1 # 8000ffff <__BSS_END__+0x7ffe9517>
   22a80:	00d77733          	and	a4,a4,a3
   22a84:	01079793          	slli	a5,a5,0x10
   22a88:	00f767b3          	or	a5,a4,a5
   22a8c:	03012703          	lw	a4,48(sp)
   22a90:	00179793          	slli	a5,a5,0x1
   22a94:	01f49493          	slli	s1,s1,0x1f
   22a98:	00e42023          	sw	a4,0(s0) # 80000 <__BSS_END__+0x59518>
   22a9c:	03412703          	lw	a4,52(sp)
   22aa0:	0017d793          	srli	a5,a5,0x1
   22aa4:	0097e7b3          	or	a5,a5,s1
   22aa8:	00e42223          	sw	a4,4(s0)
   22aac:	03812703          	lw	a4,56(sp)
   22ab0:	00f42623          	sw	a5,12(s0)
   22ab4:	00040513          	mv	a0,s0
   22ab8:	00e42423          	sw	a4,8(s0)
   22abc:	09c12083          	lw	ra,156(sp)
   22ac0:	09812403          	lw	s0,152(sp)
   22ac4:	09412483          	lw	s1,148(sp)
   22ac8:	09012903          	lw	s2,144(sp)
   22acc:	08c12983          	lw	s3,140(sp)
   22ad0:	08812a03          	lw	s4,136(sp)
   22ad4:	08412a83          	lw	s5,132(sp)
   22ad8:	08012b03          	lw	s6,128(sp)
   22adc:	07c12b83          	lw	s7,124(sp)
   22ae0:	07812c03          	lw	s8,120(sp)
   22ae4:	07412c83          	lw	s9,116(sp)
   22ae8:	07012d03          	lw	s10,112(sp)
   22aec:	06c12d83          	lw	s11,108(sp)
   22af0:	0a010113          	addi	sp,sp,160
   22af4:	00008067          	ret
   22af8:	000a0493          	mv	s1,s4
   22afc:	01012783          	lw	a5,16(sp)
   22b00:	02f12823          	sw	a5,48(sp)
   22b04:	01412783          	lw	a5,20(sp)
   22b08:	02f12a23          	sw	a5,52(sp)
   22b0c:	01812783          	lw	a5,24(sp)
   22b10:	02f12c23          	sw	a5,56(sp)
   22b14:	01c12783          	lw	a5,28(sp)
   22b18:	02f12e23          	sw	a5,60(sp)
   22b1c:	00200793          	li	a5,2
   22b20:	26fc0a63          	beq	s8,a5,22d94 <__multf3+0x1330>
   22b24:	00300793          	li	a5,3
   22b28:	28fc0463          	beq	s8,a5,22db0 <__multf3+0x134c>
   22b2c:	00100793          	li	a5,1
   22b30:	e6fc18e3          	bne	s8,a5,229a0 <__multf3+0xf3c>
   22b34:	02012e23          	sw	zero,60(sp)
   22b38:	02012c23          	sw	zero,56(sp)
   22b3c:	02012a23          	sw	zero,52(sp)
   22b40:	02012823          	sw	zero,48(sp)
   22b44:	2100006f          	j	22d54 <__multf3+0x12f0>
   22b48:	00098493          	mv	s1,s3
   22b4c:	02012783          	lw	a5,32(sp)
   22b50:	00070c13          	mv	s8,a4
   22b54:	02f12823          	sw	a5,48(sp)
   22b58:	02412783          	lw	a5,36(sp)
   22b5c:	02f12a23          	sw	a5,52(sp)
   22b60:	02812783          	lw	a5,40(sp)
   22b64:	02f12c23          	sw	a5,56(sp)
   22b68:	02c12783          	lw	a5,44(sp)
   22b6c:	02f12e23          	sw	a5,60(sp)
   22b70:	fadff06f          	j	22b1c <__multf3+0x10b8>
   22b74:	00812b83          	lw	s7,8(sp)
   22b78:	e29ff06f          	j	229a0 <__multf3+0xf3c>
   22b7c:	02012e23          	sw	zero,60(sp)
   22b80:	02012c23          	sw	zero,56(sp)
   22b84:	02012a23          	sw	zero,52(sp)
   22b88:	02012823          	sw	zero,48(sp)
   22b8c:	fff70793          	addi	a5,a4,-1
   22b90:	ed5ff06f          	j	22a64 <__multf3+0x1000>
   22b94:	00100713          	li	a4,1
   22b98:	40f707b3          	sub	a5,a4,a5
   22b9c:	07400713          	li	a4,116
   22ba0:	1af74e63          	blt	a4,a5,22d5c <__multf3+0x12f8>
   22ba4:	4057d893          	srai	a7,a5,0x5
   22ba8:	00000713          	li	a4,0
   22bac:	01f7f793          	andi	a5,a5,31
   22bb0:	00000693          	li	a3,0
   22bb4:	00269613          	slli	a2,a3,0x2
   22bb8:	03169a63          	bne	a3,a7,22bec <__multf3+0x1188>
   22bbc:	04079463          	bnez	a5,22c04 <__multf3+0x11a0>
   22bc0:	00300513          	li	a0,3
   22bc4:	03010593          	addi	a1,sp,48
   22bc8:	40d506b3          	sub	a3,a0,a3
   22bcc:	00c58533          	add	a0,a1,a2
   22bd0:	00052503          	lw	a0,0(a0)
   22bd4:	00178793          	addi	a5,a5,1 # 4001 <register_fini-0xc073>
   22bd8:	00458593          	addi	a1,a1,4
   22bdc:	fea5ae23          	sw	a0,-4(a1)
   22be0:	fef6d6e3          	bge	a3,a5,22bcc <__multf3+0x1168>
   22be4:	00400613          	li	a2,4
   22be8:	0b80006f          	j	22ca0 <__multf3+0x123c>
   22bec:	03010593          	addi	a1,sp,48
   22bf0:	00c58633          	add	a2,a1,a2
   22bf4:	00062603          	lw	a2,0(a2)
   22bf8:	00168693          	addi	a3,a3,1
   22bfc:	00c76733          	or	a4,a4,a2
   22c00:	fb5ff06f          	j	22bb4 <__multf3+0x1150>
   22c04:	06010693          	addi	a3,sp,96
   22c08:	00c686b3          	add	a3,a3,a2
   22c0c:	fd06a683          	lw	a3,-48(a3)
   22c10:	02000813          	li	a6,32
   22c14:	40f80833          	sub	a6,a6,a5
   22c18:	010696b3          	sll	a3,a3,a6
   22c1c:	00d76733          	or	a4,a4,a3
   22c20:	03010693          	addi	a3,sp,48
   22c24:	00c68633          	add	a2,a3,a2
   22c28:	00300693          	li	a3,3
   22c2c:	00000513          	li	a0,0
   22c30:	411686b3          	sub	a3,a3,a7
   22c34:	00460613          	addi	a2,a2,4
   22c38:	02d54463          	blt	a0,a3,22c60 <__multf3+0x11fc>
   22c3c:	06010613          	addi	a2,sp,96
   22c40:	00269693          	slli	a3,a3,0x2
   22c44:	00d606b3          	add	a3,a2,a3
   22c48:	03c12603          	lw	a2,60(sp)
   22c4c:	00f657b3          	srl	a5,a2,a5
   22c50:	fcf6a823          	sw	a5,-48(a3)
   22c54:	00400793          	li	a5,4
   22c58:	411787b3          	sub	a5,a5,a7
   22c5c:	f89ff06f          	j	22be4 <__multf3+0x1180>
   22c60:	00251313          	slli	t1,a0,0x2
   22c64:	03010593          	addi	a1,sp,48
   22c68:	00658333          	add	t1,a1,t1
   22c6c:	00062e03          	lw	t3,0(a2)
   22c70:	ffc62583          	lw	a1,-4(a2)
   22c74:	00150513          	addi	a0,a0,1
   22c78:	010e1e33          	sll	t3,t3,a6
   22c7c:	00f5d5b3          	srl	a1,a1,a5
   22c80:	01c5e5b3          	or	a1,a1,t3
   22c84:	00b32023          	sw	a1,0(t1)
   22c88:	fadff06f          	j	22c34 <__multf3+0x11d0>
   22c8c:	00279693          	slli	a3,a5,0x2
   22c90:	03010593          	addi	a1,sp,48
   22c94:	00d586b3          	add	a3,a1,a3
   22c98:	0006a023          	sw	zero,0(a3)
   22c9c:	00178793          	addi	a5,a5,1
   22ca0:	fec796e3          	bne	a5,a2,22c8c <__multf3+0x1228>
   22ca4:	03012683          	lw	a3,48(sp)
   22ca8:	00e03733          	snez	a4,a4
   22cac:	00d76733          	or	a4,a4,a3
   22cb0:	02e12823          	sw	a4,48(sp)
   22cb4:	00777693          	andi	a3,a4,7
   22cb8:	04068263          	beqz	a3,22cfc <__multf3+0x1298>
   22cbc:	00f77693          	andi	a3,a4,15
   22cc0:	02f68e63          	beq	a3,a5,22cfc <__multf3+0x1298>
   22cc4:	03412783          	lw	a5,52(sp)
   22cc8:	00470713          	addi	a4,a4,4
   22ccc:	02e12823          	sw	a4,48(sp)
   22cd0:	00473713          	sltiu	a4,a4,4
   22cd4:	00f707b3          	add	a5,a4,a5
   22cd8:	00e7b733          	sltu	a4,a5,a4
   22cdc:	02f12a23          	sw	a5,52(sp)
   22ce0:	03812783          	lw	a5,56(sp)
   22ce4:	00f707b3          	add	a5,a4,a5
   22ce8:	02f12c23          	sw	a5,56(sp)
   22cec:	00e7b7b3          	sltu	a5,a5,a4
   22cf0:	03c12703          	lw	a4,60(sp)
   22cf4:	00e787b3          	add	a5,a5,a4
   22cf8:	02f12e23          	sw	a5,60(sp)
   22cfc:	03c12783          	lw	a5,60(sp)
   22d00:	00c79713          	slli	a4,a5,0xc
   22d04:	00075e63          	bgez	a4,22d20 <__multf3+0x12bc>
   22d08:	02012e23          	sw	zero,60(sp)
   22d0c:	02012c23          	sw	zero,56(sp)
   22d10:	02012a23          	sw	zero,52(sp)
   22d14:	02012823          	sw	zero,48(sp)
   22d18:	00100793          	li	a5,1
   22d1c:	d49ff06f          	j	22a64 <__multf3+0x1000>
   22d20:	03010793          	addi	a5,sp,48
   22d24:	03c10613          	addi	a2,sp,60
   22d28:	0007a703          	lw	a4,0(a5)
   22d2c:	0047a683          	lw	a3,4(a5)
   22d30:	00478793          	addi	a5,a5,4
   22d34:	00375713          	srli	a4,a4,0x3
   22d38:	01d69693          	slli	a3,a3,0x1d
   22d3c:	00d76733          	or	a4,a4,a3
   22d40:	fee7ae23          	sw	a4,-4(a5)
   22d44:	fef612e3          	bne	a2,a5,22d28 <__multf3+0x12c4>
   22d48:	03c12783          	lw	a5,60(sp)
   22d4c:	0037d793          	srli	a5,a5,0x3
   22d50:	02f12e23          	sw	a5,60(sp)
   22d54:	00000793          	li	a5,0
   22d58:	d0dff06f          	j	22a64 <__multf3+0x1000>
   22d5c:	03412783          	lw	a5,52(sp)
   22d60:	03012703          	lw	a4,48(sp)
   22d64:	00f76733          	or	a4,a4,a5
   22d68:	03812783          	lw	a5,56(sp)
   22d6c:	00f76733          	or	a4,a4,a5
   22d70:	03c12783          	lw	a5,60(sp)
   22d74:	00f76733          	or	a4,a4,a5
   22d78:	00000793          	li	a5,0
   22d7c:	ce0704e3          	beqz	a4,22a64 <__multf3+0x1000>
   22d80:	02012e23          	sw	zero,60(sp)
   22d84:	02012c23          	sw	zero,56(sp)
   22d88:	02012a23          	sw	zero,52(sp)
   22d8c:	02012823          	sw	zero,48(sp)
   22d90:	cd5ff06f          	j	22a64 <__multf3+0x1000>
   22d94:	000087b7          	lui	a5,0x8
   22d98:	02012e23          	sw	zero,60(sp)
   22d9c:	02012c23          	sw	zero,56(sp)
   22da0:	02012a23          	sw	zero,52(sp)
   22da4:	02012823          	sw	zero,48(sp)
   22da8:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   22dac:	cb9ff06f          	j	22a64 <__multf3+0x1000>
   22db0:	000087b7          	lui	a5,0x8
   22db4:	02f12e23          	sw	a5,60(sp)
   22db8:	02012c23          	sw	zero,56(sp)
   22dbc:	02012a23          	sw	zero,52(sp)
   22dc0:	02012823          	sw	zero,48(sp)
   22dc4:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   22dc8:	00000493          	li	s1,0
   22dcc:	c99ff06f          	j	22a64 <__multf3+0x1000>

00022dd0 <__subtf3>:
   22dd0:	fa010113          	addi	sp,sp,-96
   22dd4:	0085a783          	lw	a5,8(a1)
   22dd8:	05212823          	sw	s2,80(sp)
   22ddc:	00c5a903          	lw	s2,12(a1)
   22de0:	0005a803          	lw	a6,0(a1)
   22de4:	0045a703          	lw	a4,4(a1)
   22de8:	04912a23          	sw	s1,84(sp)
   22dec:	02f12c23          	sw	a5,56(sp)
   22df0:	00050493          	mv	s1,a0
   22df4:	00f12c23          	sw	a5,24(sp)
   22df8:	00062303          	lw	t1,0(a2)
   22dfc:	01091793          	slli	a5,s2,0x10
   22e00:	00462583          	lw	a1,4(a2)
   22e04:	00862683          	lw	a3,8(a2)
   22e08:	00c62503          	lw	a0,12(a2)
   22e0c:	04812c23          	sw	s0,88(sp)
   22e10:	0107d793          	srli	a5,a5,0x10
   22e14:	00191413          	slli	s0,s2,0x1
   22e18:	03012823          	sw	a6,48(sp)
   22e1c:	03212e23          	sw	s2,60(sp)
   22e20:	01012823          	sw	a6,16(sp)
   22e24:	04112e23          	sw	ra,92(sp)
   22e28:	05312623          	sw	s3,76(sp)
   22e2c:	05412423          	sw	s4,72(sp)
   22e30:	05512223          	sw	s5,68(sp)
   22e34:	02e12a23          	sw	a4,52(sp)
   22e38:	00e12a23          	sw	a4,20(sp)
   22e3c:	00f12e23          	sw	a5,28(sp)
   22e40:	01145413          	srli	s0,s0,0x11
   22e44:	01f95913          	srli	s2,s2,0x1f
   22e48:	01010893          	addi	a7,sp,16
   22e4c:	01c10813          	addi	a6,sp,28
   22e50:	00082783          	lw	a5,0(a6)
   22e54:	ffc82703          	lw	a4,-4(a6)
   22e58:	ffc80813          	addi	a6,a6,-4
   22e5c:	00379793          	slli	a5,a5,0x3
   22e60:	01d75713          	srli	a4,a4,0x1d
   22e64:	00e7e7b3          	or	a5,a5,a4
   22e68:	00f82223          	sw	a5,4(a6)
   22e6c:	ff0892e3          	bne	a7,a6,22e50 <__subtf3+0x80>
   22e70:	01012703          	lw	a4,16(sp)
   22e74:	01051793          	slli	a5,a0,0x10
   22e78:	00151613          	slli	a2,a0,0x1
   22e7c:	00371713          	slli	a4,a4,0x3
   22e80:	0107d793          	srli	a5,a5,0x10
   22e84:	02612823          	sw	t1,48(sp)
   22e88:	02a12e23          	sw	a0,60(sp)
   22e8c:	02612023          	sw	t1,32(sp)
   22e90:	00e12823          	sw	a4,16(sp)
   22e94:	02b12a23          	sw	a1,52(sp)
   22e98:	02d12c23          	sw	a3,56(sp)
   22e9c:	02b12223          	sw	a1,36(sp)
   22ea0:	02d12423          	sw	a3,40(sp)
   22ea4:	02f12623          	sw	a5,44(sp)
   22ea8:	01165613          	srli	a2,a2,0x11
   22eac:	01f55513          	srli	a0,a0,0x1f
   22eb0:	02010313          	addi	t1,sp,32
   22eb4:	02c10e13          	addi	t3,sp,44
   22eb8:	000e2783          	lw	a5,0(t3)
   22ebc:	ffce2683          	lw	a3,-4(t3)
   22ec0:	ffce0e13          	addi	t3,t3,-4
   22ec4:	00379793          	slli	a5,a5,0x3
   22ec8:	01d6d693          	srli	a3,a3,0x1d
   22ecc:	00d7e7b3          	or	a5,a5,a3
   22ed0:	00fe2223          	sw	a5,4(t3)
   22ed4:	ffc312e3          	bne	t1,t3,22eb8 <__subtf3+0xe8>
   22ed8:	02012783          	lw	a5,32(sp)
   22edc:	000086b7          	lui	a3,0x8
   22ee0:	fff68693          	addi	a3,a3,-1 # 7fff <register_fini-0x8075>
   22ee4:	00379793          	slli	a5,a5,0x3
   22ee8:	02f12023          	sw	a5,32(sp)
   22eec:	02d61063          	bne	a2,a3,22f0c <__subtf3+0x13c>
   22ef0:	02812583          	lw	a1,40(sp)
   22ef4:	02412683          	lw	a3,36(sp)
   22ef8:	00b6e6b3          	or	a3,a3,a1
   22efc:	02c12583          	lw	a1,44(sp)
   22f00:	00b6e6b3          	or	a3,a3,a1
   22f04:	00f6e6b3          	or	a3,a3,a5
   22f08:	00069463          	bnez	a3,22f10 <__subtf3+0x140>
   22f0c:	00154513          	xori	a0,a0,1
   22f10:	40c405b3          	sub	a1,s0,a2
   22f14:	15251ce3          	bne	a0,s2,2386c <__subtf3+0xa9c>
   22f18:	30b05463          	blez	a1,23220 <__subtf3+0x450>
   22f1c:	0c061663          	bnez	a2,22fe8 <__subtf3+0x218>
   22f20:	02412503          	lw	a0,36(sp)
   22f24:	02812603          	lw	a2,40(sp)
   22f28:	02c12803          	lw	a6,44(sp)
   22f2c:	00c566b3          	or	a3,a0,a2
   22f30:	0106e6b3          	or	a3,a3,a6
   22f34:	00f6e6b3          	or	a3,a3,a5
   22f38:	02069063          	bnez	a3,22f58 <__subtf3+0x188>
   22f3c:	01412783          	lw	a5,20(sp)
   22f40:	02e12823          	sw	a4,48(sp)
   22f44:	02f12a23          	sw	a5,52(sp)
   22f48:	01812783          	lw	a5,24(sp)
   22f4c:	02f12c23          	sw	a5,56(sp)
   22f50:	01c12783          	lw	a5,28(sp)
   22f54:	30c0006f          	j	23260 <__subtf3+0x490>
   22f58:	fff58693          	addi	a3,a1,-1
   22f5c:	06069063          	bnez	a3,22fbc <__subtf3+0x1ec>
   22f60:	01412683          	lw	a3,20(sp)
   22f64:	00f707b3          	add	a5,a4,a5
   22f68:	00e7b733          	sltu	a4,a5,a4
   22f6c:	00d505b3          	add	a1,a0,a3
   22f70:	02f12823          	sw	a5,48(sp)
   22f74:	00e587b3          	add	a5,a1,a4
   22f78:	00e7b733          	sltu	a4,a5,a4
   22f7c:	02f12a23          	sw	a5,52(sp)
   22f80:	01812783          	lw	a5,24(sp)
   22f84:	00d5b6b3          	sltu	a3,a1,a3
   22f88:	00e6e733          	or	a4,a3,a4
   22f8c:	00f606b3          	add	a3,a2,a5
   22f90:	00e68633          	add	a2,a3,a4
   22f94:	00e63733          	sltu	a4,a2,a4
   22f98:	00f6b7b3          	sltu	a5,a3,a5
   22f9c:	00e7e7b3          	or	a5,a5,a4
   22fa0:	01c12703          	lw	a4,28(sp)
   22fa4:	02c12c23          	sw	a2,56(sp)
   22fa8:	00e80833          	add	a6,a6,a4
   22fac:	010787b3          	add	a5,a5,a6
   22fb0:	02f12e23          	sw	a5,60(sp)
   22fb4:	00100413          	li	s0,1
   22fb8:	1dc0006f          	j	23194 <__subtf3+0x3c4>
   22fbc:	000087b7          	lui	a5,0x8
   22fc0:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   22fc4:	f6f58ce3          	beq	a1,a5,22f3c <__subtf3+0x16c>
   22fc8:	07400793          	li	a5,116
   22fcc:	06d7d263          	bge	a5,a3,23030 <__subtf3+0x260>
   22fd0:	00100793          	li	a5,1
   22fd4:	02012623          	sw	zero,44(sp)
   22fd8:	02012423          	sw	zero,40(sp)
   22fdc:	02012223          	sw	zero,36(sp)
   22fe0:	02f12023          	sw	a5,32(sp)
   22fe4:	1480006f          	j	2312c <__subtf3+0x35c>
   22fe8:	000087b7          	lui	a5,0x8
   22fec:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   22ff0:	02f41263          	bne	s0,a5,23014 <__subtf3+0x244>
   22ff4:	01412783          	lw	a5,20(sp)
   22ff8:	02e12823          	sw	a4,48(sp)
   22ffc:	02f12a23          	sw	a5,52(sp)
   23000:	01812783          	lw	a5,24(sp)
   23004:	02f12c23          	sw	a5,56(sp)
   23008:	01c12783          	lw	a5,28(sp)
   2300c:	02f12e23          	sw	a5,60(sp)
   23010:	2580006f          	j	23268 <__subtf3+0x498>
   23014:	02c12783          	lw	a5,44(sp)
   23018:	00080737          	lui	a4,0x80
   2301c:	00e7e7b3          	or	a5,a5,a4
   23020:	02f12623          	sw	a5,44(sp)
   23024:	07400793          	li	a5,116
   23028:	fab7c4e3          	blt	a5,a1,22fd0 <__subtf3+0x200>
   2302c:	00058693          	mv	a3,a1
   23030:	4056d893          	srai	a7,a3,0x5
   23034:	01f6f793          	andi	a5,a3,31
   23038:	00000613          	li	a2,0
   2303c:	00000713          	li	a4,0
   23040:	00271693          	slli	a3,a4,0x2
   23044:	03171863          	bne	a4,a7,23074 <__subtf3+0x2a4>
   23048:	04079063          	bnez	a5,23088 <__subtf3+0x2b8>
   2304c:	00300593          	li	a1,3
   23050:	40e58733          	sub	a4,a1,a4
   23054:	00de05b3          	add	a1,t3,a3
   23058:	0005a583          	lw	a1,0(a1)
   2305c:	00178793          	addi	a5,a5,1
   23060:	004e0e13          	addi	t3,t3,4
   23064:	febe2e23          	sw	a1,-4(t3)
   23068:	fef756e3          	bge	a4,a5,23054 <__subtf3+0x284>
   2306c:	00400693          	li	a3,4
   23070:	0a80006f          	j	23118 <__subtf3+0x348>
   23074:	00d306b3          	add	a3,t1,a3
   23078:	0006a683          	lw	a3,0(a3)
   2307c:	00170713          	addi	a4,a4,1 # 80001 <__BSS_END__+0x59519>
   23080:	00d66633          	or	a2,a2,a3
   23084:	fbdff06f          	j	23040 <__subtf3+0x270>
   23088:	04010713          	addi	a4,sp,64
   2308c:	00d70733          	add	a4,a4,a3
   23090:	fe072703          	lw	a4,-32(a4)
   23094:	02000813          	li	a6,32
   23098:	40f80833          	sub	a6,a6,a5
   2309c:	01071733          	sll	a4,a4,a6
   230a0:	00e66633          	or	a2,a2,a4
   230a4:	00300713          	li	a4,3
   230a8:	00d306b3          	add	a3,t1,a3
   230ac:	00000513          	li	a0,0
   230b0:	41170733          	sub	a4,a4,a7
   230b4:	00468693          	addi	a3,a3,4
   230b8:	02e54463          	blt	a0,a4,230e0 <__subtf3+0x310>
   230bc:	04010693          	addi	a3,sp,64
   230c0:	00271713          	slli	a4,a4,0x2
   230c4:	00e68733          	add	a4,a3,a4
   230c8:	02c12683          	lw	a3,44(sp)
   230cc:	00f6d7b3          	srl	a5,a3,a5
   230d0:	fef72023          	sw	a5,-32(a4)
   230d4:	00400793          	li	a5,4
   230d8:	411787b3          	sub	a5,a5,a7
   230dc:	f91ff06f          	j	2306c <__subtf3+0x29c>
   230e0:	ffc6a583          	lw	a1,-4(a3)
   230e4:	0006ae83          	lw	t4,0(a3)
   230e8:	00251e13          	slli	t3,a0,0x2
   230ec:	00f5d5b3          	srl	a1,a1,a5
   230f0:	010e9eb3          	sll	t4,t4,a6
   230f4:	01c30e33          	add	t3,t1,t3
   230f8:	01d5e5b3          	or	a1,a1,t4
   230fc:	00be2023          	sw	a1,0(t3)
   23100:	00150513          	addi	a0,a0,1
   23104:	fb1ff06f          	j	230b4 <__subtf3+0x2e4>
   23108:	00279713          	slli	a4,a5,0x2
   2310c:	00e30733          	add	a4,t1,a4
   23110:	00072023          	sw	zero,0(a4)
   23114:	00178793          	addi	a5,a5,1
   23118:	fed798e3          	bne	a5,a3,23108 <__subtf3+0x338>
   2311c:	02012783          	lw	a5,32(sp)
   23120:	00c03633          	snez	a2,a2
   23124:	00c7e633          	or	a2,a5,a2
   23128:	02c12023          	sw	a2,32(sp)
   2312c:	01012683          	lw	a3,16(sp)
   23130:	02012783          	lw	a5,32(sp)
   23134:	01412703          	lw	a4,20(sp)
   23138:	02812583          	lw	a1,40(sp)
   2313c:	00f687b3          	add	a5,a3,a5
   23140:	00d7b6b3          	sltu	a3,a5,a3
   23144:	02f12823          	sw	a5,48(sp)
   23148:	02412783          	lw	a5,36(sp)
   2314c:	02c12503          	lw	a0,44(sp)
   23150:	00f707b3          	add	a5,a4,a5
   23154:	00d78633          	add	a2,a5,a3
   23158:	00e7b733          	sltu	a4,a5,a4
   2315c:	00d637b3          	sltu	a5,a2,a3
   23160:	00f767b3          	or	a5,a4,a5
   23164:	01812703          	lw	a4,24(sp)
   23168:	01c12683          	lw	a3,28(sp)
   2316c:	02c12a23          	sw	a2,52(sp)
   23170:	00b705b3          	add	a1,a4,a1
   23174:	00f58633          	add	a2,a1,a5
   23178:	00e5b733          	sltu	a4,a1,a4
   2317c:	00f637b3          	sltu	a5,a2,a5
   23180:	00a686b3          	add	a3,a3,a0
   23184:	00f76733          	or	a4,a4,a5
   23188:	00e68733          	add	a4,a3,a4
   2318c:	02c12c23          	sw	a2,56(sp)
   23190:	02e12e23          	sw	a4,60(sp)
   23194:	03c12783          	lw	a5,60(sp)
   23198:	00c79713          	slli	a4,a5,0xc
   2319c:	0c075663          	bgez	a4,23268 <__subtf3+0x498>
   231a0:	fff80737          	lui	a4,0xfff80
   231a4:	fff70713          	addi	a4,a4,-1 # fff7ffff <__BSS_END__+0xfff59517>
   231a8:	00e7f7b3          	and	a5,a5,a4
   231ac:	02f12e23          	sw	a5,60(sp)
   231b0:	03012783          	lw	a5,48(sp)
   231b4:	00140413          	addi	s0,s0,1
   231b8:	03c10593          	addi	a1,sp,60
   231bc:	01f79713          	slli	a4,a5,0x1f
   231c0:	03010793          	addi	a5,sp,48
   231c4:	0007a683          	lw	a3,0(a5)
   231c8:	0047a603          	lw	a2,4(a5)
   231cc:	00478793          	addi	a5,a5,4
   231d0:	0016d693          	srli	a3,a3,0x1
   231d4:	01f61613          	slli	a2,a2,0x1f
   231d8:	00c6e6b3          	or	a3,a3,a2
   231dc:	fed7ae23          	sw	a3,-4(a5)
   231e0:	fef592e3          	bne	a1,a5,231c4 <__subtf3+0x3f4>
   231e4:	03c12783          	lw	a5,60(sp)
   231e8:	0017d793          	srli	a5,a5,0x1
   231ec:	02f12e23          	sw	a5,60(sp)
   231f0:	00e037b3          	snez	a5,a4
   231f4:	03012703          	lw	a4,48(sp)
   231f8:	00f767b3          	or	a5,a4,a5
   231fc:	02f12823          	sw	a5,48(sp)
   23200:	000087b7          	lui	a5,0x8
   23204:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   23208:	06f41063          	bne	s0,a5,23268 <__subtf3+0x498>
   2320c:	02012e23          	sw	zero,60(sp)
   23210:	02012c23          	sw	zero,56(sp)
   23214:	02012a23          	sw	zero,52(sp)
   23218:	02012823          	sw	zero,48(sp)
   2321c:	04c0006f          	j	23268 <__subtf3+0x498>
   23220:	42058863          	beqz	a1,23650 <__subtf3+0x880>
   23224:	408605b3          	sub	a1,a2,s0
   23228:	22041a63          	bnez	s0,2345c <__subtf3+0x68c>
   2322c:	01412303          	lw	t1,20(sp)
   23230:	01812503          	lw	a0,24(sp)
   23234:	01c12e03          	lw	t3,28(sp)
   23238:	00a366b3          	or	a3,t1,a0
   2323c:	01c6e6b3          	or	a3,a3,t3
   23240:	00e6e6b3          	or	a3,a3,a4
   23244:	18069863          	bnez	a3,233d4 <__subtf3+0x604>
   23248:	02f12823          	sw	a5,48(sp)
   2324c:	02412783          	lw	a5,36(sp)
   23250:	02f12a23          	sw	a5,52(sp)
   23254:	02812783          	lw	a5,40(sp)
   23258:	02f12c23          	sw	a5,56(sp)
   2325c:	02c12783          	lw	a5,44(sp)
   23260:	02f12e23          	sw	a5,60(sp)
   23264:	00058413          	mv	s0,a1
   23268:	03012783          	lw	a5,48(sp)
   2326c:	0077f713          	andi	a4,a5,7
   23270:	04070463          	beqz	a4,232b8 <__subtf3+0x4e8>
   23274:	00f7f713          	andi	a4,a5,15
   23278:	00400693          	li	a3,4
   2327c:	02d70e63          	beq	a4,a3,232b8 <__subtf3+0x4e8>
   23280:	03412703          	lw	a4,52(sp)
   23284:	00478793          	addi	a5,a5,4
   23288:	02f12823          	sw	a5,48(sp)
   2328c:	0047b793          	sltiu	a5,a5,4
   23290:	00e78733          	add	a4,a5,a4
   23294:	00f737b3          	sltu	a5,a4,a5
   23298:	02e12a23          	sw	a4,52(sp)
   2329c:	03812703          	lw	a4,56(sp)
   232a0:	00e78733          	add	a4,a5,a4
   232a4:	02e12c23          	sw	a4,56(sp)
   232a8:	00f73733          	sltu	a4,a4,a5
   232ac:	03c12783          	lw	a5,60(sp)
   232b0:	00f70733          	add	a4,a4,a5
   232b4:	02e12e23          	sw	a4,60(sp)
   232b8:	03c12783          	lw	a5,60(sp)
   232bc:	00c79713          	slli	a4,a5,0xc
   232c0:	02075463          	bgez	a4,232e8 <__subtf3+0x518>
   232c4:	00008737          	lui	a4,0x8
   232c8:	00140413          	addi	s0,s0,1
   232cc:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   232d0:	00e41463          	bne	s0,a4,232d8 <__subtf3+0x508>
   232d4:	0880106f          	j	2435c <__subtf3+0x158c>
   232d8:	fff80737          	lui	a4,0xfff80
   232dc:	fff70713          	addi	a4,a4,-1 # fff7ffff <__BSS_END__+0xfff59517>
   232e0:	00e7f7b3          	and	a5,a5,a4
   232e4:	02f12e23          	sw	a5,60(sp)
   232e8:	03010793          	addi	a5,sp,48
   232ec:	03c10613          	addi	a2,sp,60
   232f0:	0007a703          	lw	a4,0(a5)
   232f4:	0047a683          	lw	a3,4(a5)
   232f8:	00478793          	addi	a5,a5,4
   232fc:	00375713          	srli	a4,a4,0x3
   23300:	01d69693          	slli	a3,a3,0x1d
   23304:	00d76733          	or	a4,a4,a3
   23308:	fee7ae23          	sw	a4,-4(a5)
   2330c:	fef612e3          	bne	a2,a5,232f0 <__subtf3+0x520>
   23310:	03c12783          	lw	a5,60(sp)
   23314:	000086b7          	lui	a3,0x8
   23318:	0037d713          	srli	a4,a5,0x3
   2331c:	02e12e23          	sw	a4,60(sp)
   23320:	fff68793          	addi	a5,a3,-1 # 7fff <register_fini-0x8075>
   23324:	02f41a63          	bne	s0,a5,23358 <__subtf3+0x588>
   23328:	03412603          	lw	a2,52(sp)
   2332c:	03012783          	lw	a5,48(sp)
   23330:	00c7e7b3          	or	a5,a5,a2
   23334:	03812603          	lw	a2,56(sp)
   23338:	00c7e7b3          	or	a5,a5,a2
   2333c:	00e7e7b3          	or	a5,a5,a4
   23340:	00078c63          	beqz	a5,23358 <__subtf3+0x588>
   23344:	02d12e23          	sw	a3,60(sp)
   23348:	02012c23          	sw	zero,56(sp)
   2334c:	02012a23          	sw	zero,52(sp)
   23350:	02012823          	sw	zero,48(sp)
   23354:	00000913          	li	s2,0
   23358:	03c12783          	lw	a5,60(sp)
   2335c:	01141413          	slli	s0,s0,0x11
   23360:	01145413          	srli	s0,s0,0x11
   23364:	00f11623          	sh	a5,12(sp)
   23368:	01041793          	slli	a5,s0,0x10
   2336c:	00c12403          	lw	s0,12(sp)
   23370:	80010737          	lui	a4,0x80010
   23374:	fff70713          	addi	a4,a4,-1 # 8000ffff <__BSS_END__+0x7ffe9517>
   23378:	00e47433          	and	s0,s0,a4
   2337c:	00f46433          	or	s0,s0,a5
   23380:	03012783          	lw	a5,48(sp)
   23384:	00141413          	slli	s0,s0,0x1
   23388:	01f91913          	slli	s2,s2,0x1f
   2338c:	00f4a023          	sw	a5,0(s1)
   23390:	03412783          	lw	a5,52(sp)
   23394:	00145413          	srli	s0,s0,0x1
   23398:	01246433          	or	s0,s0,s2
   2339c:	00f4a223          	sw	a5,4(s1)
   233a0:	03812783          	lw	a5,56(sp)
   233a4:	0084a623          	sw	s0,12(s1)
   233a8:	05c12083          	lw	ra,92(sp)
   233ac:	05812403          	lw	s0,88(sp)
   233b0:	00f4a423          	sw	a5,8(s1)
   233b4:	00048513          	mv	a0,s1
   233b8:	05012903          	lw	s2,80(sp)
   233bc:	05412483          	lw	s1,84(sp)
   233c0:	04c12983          	lw	s3,76(sp)
   233c4:	04812a03          	lw	s4,72(sp)
   233c8:	04412a83          	lw	s5,68(sp)
   233cc:	06010113          	addi	sp,sp,96
   233d0:	00008067          	ret
   233d4:	fff58693          	addi	a3,a1,-1
   233d8:	04069e63          	bnez	a3,23434 <__subtf3+0x664>
   233dc:	02412683          	lw	a3,36(sp)
   233e0:	00f70733          	add	a4,a4,a5
   233e4:	00f737b3          	sltu	a5,a4,a5
   233e8:	00d30633          	add	a2,t1,a3
   233ec:	02e12823          	sw	a4,48(sp)
   233f0:	00f60733          	add	a4,a2,a5
   233f4:	00f737b3          	sltu	a5,a4,a5
   233f8:	02e12a23          	sw	a4,52(sp)
   233fc:	02812703          	lw	a4,40(sp)
   23400:	00d636b3          	sltu	a3,a2,a3
   23404:	00f6e7b3          	or	a5,a3,a5
   23408:	00e506b3          	add	a3,a0,a4
   2340c:	00f68633          	add	a2,a3,a5
   23410:	00f637b3          	sltu	a5,a2,a5
   23414:	00e6b733          	sltu	a4,a3,a4
   23418:	00f76733          	or	a4,a4,a5
   2341c:	02c12783          	lw	a5,44(sp)
   23420:	02c12c23          	sw	a2,56(sp)
   23424:	00fe0e33          	add	t3,t3,a5
   23428:	01c70733          	add	a4,a4,t3
   2342c:	02e12e23          	sw	a4,60(sp)
   23430:	b85ff06f          	j	22fb4 <__subtf3+0x1e4>
   23434:	00008737          	lui	a4,0x8
   23438:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   2343c:	e0e586e3          	beq	a1,a4,23248 <__subtf3+0x478>
   23440:	07400793          	li	a5,116
   23444:	06d7d263          	bge	a5,a3,234a8 <__subtf3+0x6d8>
   23448:	00012e23          	sw	zero,28(sp)
   2344c:	00012c23          	sw	zero,24(sp)
   23450:	00012a23          	sw	zero,20(sp)
   23454:	00100793          	li	a5,1
   23458:	1840006f          	j	235dc <__subtf3+0x80c>
   2345c:	00008737          	lui	a4,0x8
   23460:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   23464:	02e61463          	bne	a2,a4,2348c <__subtf3+0x6bc>
   23468:	02f12823          	sw	a5,48(sp)
   2346c:	02412783          	lw	a5,36(sp)
   23470:	00060413          	mv	s0,a2
   23474:	02f12a23          	sw	a5,52(sp)
   23478:	02812783          	lw	a5,40(sp)
   2347c:	02f12c23          	sw	a5,56(sp)
   23480:	02c12783          	lw	a5,44(sp)
   23484:	02f12e23          	sw	a5,60(sp)
   23488:	de1ff06f          	j	23268 <__subtf3+0x498>
   2348c:	01c12783          	lw	a5,28(sp)
   23490:	00080737          	lui	a4,0x80
   23494:	00e7e7b3          	or	a5,a5,a4
   23498:	00f12e23          	sw	a5,28(sp)
   2349c:	07400793          	li	a5,116
   234a0:	fab7c4e3          	blt	a5,a1,23448 <__subtf3+0x678>
   234a4:	00058693          	mv	a3,a1
   234a8:	41f6d793          	srai	a5,a3,0x1f
   234ac:	80000737          	lui	a4,0x80000
   234b0:	01f7f793          	andi	a5,a5,31
   234b4:	01f70713          	addi	a4,a4,31 # 8000001f <__BSS_END__+0x7ffd9537>
   234b8:	00d787b3          	add	a5,a5,a3
   234bc:	00e6f6b3          	and	a3,a3,a4
   234c0:	4057d793          	srai	a5,a5,0x5
   234c4:	0006d863          	bgez	a3,234d4 <__subtf3+0x704>
   234c8:	fff68693          	addi	a3,a3,-1
   234cc:	fe06e693          	ori	a3,a3,-32
   234d0:	00168693          	addi	a3,a3,1
   234d4:	00068713          	mv	a4,a3
   234d8:	00000313          	li	t1,0
   234dc:	00000593          	li	a1,0
   234e0:	04f5c063          	blt	a1,a5,23520 <__subtf3+0x750>
   234e4:	00078513          	mv	a0,a5
   234e8:	0007d463          	bgez	a5,234f0 <__subtf3+0x720>
   234ec:	00000513          	li	a0,0
   234f0:	00279593          	slli	a1,a5,0x2
   234f4:	04069263          	bnez	a3,23538 <__subtf3+0x768>
   234f8:	00300693          	li	a3,3
   234fc:	40f687b3          	sub	a5,a3,a5
   23500:	00b806b3          	add	a3,a6,a1
   23504:	0006a683          	lw	a3,0(a3)
   23508:	00170713          	addi	a4,a4,1
   2350c:	00480813          	addi	a6,a6,4
   23510:	fed82e23          	sw	a3,-4(a6)
   23514:	fee7d6e3          	bge	a5,a4,23500 <__subtf3+0x730>
   23518:	00300693          	li	a3,3
   2351c:	0b00006f          	j	235cc <__subtf3+0x7fc>
   23520:	00259513          	slli	a0,a1,0x2
   23524:	00a88533          	add	a0,a7,a0
   23528:	00052503          	lw	a0,0(a0)
   2352c:	00158593          	addi	a1,a1,1
   23530:	00a36333          	or	t1,t1,a0
   23534:	fadff06f          	j	234e0 <__subtf3+0x710>
   23538:	04010713          	addi	a4,sp,64
   2353c:	00251513          	slli	a0,a0,0x2
   23540:	00a70533          	add	a0,a4,a0
   23544:	fd052703          	lw	a4,-48(a0)
   23548:	02000e13          	li	t3,32
   2354c:	40de0e33          	sub	t3,t3,a3
   23550:	01c71733          	sll	a4,a4,t3
   23554:	00e36333          	or	t1,t1,a4
   23558:	00300713          	li	a4,3
   2355c:	00b885b3          	add	a1,a7,a1
   23560:	00000813          	li	a6,0
   23564:	40f70733          	sub	a4,a4,a5
   23568:	00458593          	addi	a1,a1,4
   2356c:	02e84463          	blt	a6,a4,23594 <__subtf3+0x7c4>
   23570:	04010593          	addi	a1,sp,64
   23574:	00271713          	slli	a4,a4,0x2
   23578:	00e58733          	add	a4,a1,a4
   2357c:	01c12583          	lw	a1,28(sp)
   23580:	00d5d6b3          	srl	a3,a1,a3
   23584:	fcd72823          	sw	a3,-48(a4)
   23588:	00400713          	li	a4,4
   2358c:	40f70733          	sub	a4,a4,a5
   23590:	f89ff06f          	j	23518 <__subtf3+0x748>
   23594:	ffc5a503          	lw	a0,-4(a1)
   23598:	0005af03          	lw	t5,0(a1)
   2359c:	00281e93          	slli	t4,a6,0x2
   235a0:	00d55533          	srl	a0,a0,a3
   235a4:	01cf1f33          	sll	t5,t5,t3
   235a8:	01d88eb3          	add	t4,a7,t4
   235ac:	01e56533          	or	a0,a0,t5
   235b0:	00aea023          	sw	a0,0(t4)
   235b4:	00180813          	addi	a6,a6,1
   235b8:	fb1ff06f          	j	23568 <__subtf3+0x798>
   235bc:	00271793          	slli	a5,a4,0x2
   235c0:	00f887b3          	add	a5,a7,a5
   235c4:	0007a023          	sw	zero,0(a5)
   235c8:	00170713          	addi	a4,a4,1
   235cc:	fee6d8e3          	bge	a3,a4,235bc <__subtf3+0x7ec>
   235d0:	01012703          	lw	a4,16(sp)
   235d4:	006037b3          	snez	a5,t1
   235d8:	00f767b3          	or	a5,a4,a5
   235dc:	00f12823          	sw	a5,16(sp)
   235e0:	02012683          	lw	a3,32(sp)
   235e4:	01012783          	lw	a5,16(sp)
   235e8:	02412703          	lw	a4,36(sp)
   235ec:	01812503          	lw	a0,24(sp)
   235f0:	00f687b3          	add	a5,a3,a5
   235f4:	00d7b6b3          	sltu	a3,a5,a3
   235f8:	02f12823          	sw	a5,48(sp)
   235fc:	01412783          	lw	a5,20(sp)
   23600:	01c12803          	lw	a6,28(sp)
   23604:	00060413          	mv	s0,a2
   23608:	00f707b3          	add	a5,a4,a5
   2360c:	00d785b3          	add	a1,a5,a3
   23610:	00e7b733          	sltu	a4,a5,a4
   23614:	00d5b7b3          	sltu	a5,a1,a3
   23618:	00f767b3          	or	a5,a4,a5
   2361c:	02812703          	lw	a4,40(sp)
   23620:	02c12683          	lw	a3,44(sp)
   23624:	02b12a23          	sw	a1,52(sp)
   23628:	00a70533          	add	a0,a4,a0
   2362c:	00f505b3          	add	a1,a0,a5
   23630:	00e53733          	sltu	a4,a0,a4
   23634:	00f5b7b3          	sltu	a5,a1,a5
   23638:	010686b3          	add	a3,a3,a6
   2363c:	00f76733          	or	a4,a4,a5
   23640:	00e68733          	add	a4,a3,a4
   23644:	02b12c23          	sw	a1,56(sp)
   23648:	02e12e23          	sw	a4,60(sp)
   2364c:	b49ff06f          	j	23194 <__subtf3+0x3c4>
   23650:	00008fb7          	lui	t6,0x8
   23654:	00140513          	addi	a0,s0,1
   23658:	ffef8613          	addi	a2,t6,-2 # 7ffe <register_fini-0x8076>
   2365c:	00c57633          	and	a2,a0,a2
   23660:	02412683          	lw	a3,36(sp)
   23664:	02812583          	lw	a1,40(sp)
   23668:	02c12803          	lw	a6,44(sp)
   2366c:	01412f03          	lw	t5,20(sp)
   23670:	01812e83          	lw	t4,24(sp)
   23674:	01c12883          	lw	a7,28(sp)
   23678:	03010313          	addi	t1,sp,48
   2367c:	03c10e13          	addi	t3,sp,60
   23680:	14061663          	bnez	a2,237cc <__subtf3+0x9fc>
   23684:	01df6533          	or	a0,t5,t4
   23688:	01156533          	or	a0,a0,a7
   2368c:	00e56533          	or	a0,a0,a4
   23690:	0a041663          	bnez	s0,2373c <__subtf3+0x96c>
   23694:	00051c63          	bnez	a0,236ac <__subtf3+0x8dc>
   23698:	02f12823          	sw	a5,48(sp)
   2369c:	02d12a23          	sw	a3,52(sp)
   236a0:	02b12c23          	sw	a1,56(sp)
   236a4:	03012e23          	sw	a6,60(sp)
   236a8:	bc1ff06f          	j	23268 <__subtf3+0x498>
   236ac:	00b6e633          	or	a2,a3,a1
   236b0:	01066633          	or	a2,a2,a6
   236b4:	00f66633          	or	a2,a2,a5
   236b8:	00061c63          	bnez	a2,236d0 <__subtf3+0x900>
   236bc:	02e12823          	sw	a4,48(sp)
   236c0:	03e12a23          	sw	t5,52(sp)
   236c4:	03d12c23          	sw	t4,56(sp)
   236c8:	03112e23          	sw	a7,60(sp)
   236cc:	b9dff06f          	j	23268 <__subtf3+0x498>
   236d0:	00f707b3          	add	a5,a4,a5
   236d4:	00e7b733          	sltu	a4,a5,a4
   236d8:	01e686b3          	add	a3,a3,t5
   236dc:	02f12823          	sw	a5,48(sp)
   236e0:	00e687b3          	add	a5,a3,a4
   236e4:	00e7b733          	sltu	a4,a5,a4
   236e8:	01e6b6b3          	sltu	a3,a3,t5
   236ec:	00e6e733          	or	a4,a3,a4
   236f0:	01d585b3          	add	a1,a1,t4
   236f4:	02f12a23          	sw	a5,52(sp)
   236f8:	00e587b3          	add	a5,a1,a4
   236fc:	01d5b633          	sltu	a2,a1,t4
   23700:	00e7b733          	sltu	a4,a5,a4
   23704:	00e66733          	or	a4,a2,a4
   23708:	01180633          	add	a2,a6,a7
   2370c:	00c70633          	add	a2,a4,a2
   23710:	02f12c23          	sw	a5,56(sp)
   23714:	00c61793          	slli	a5,a2,0xc
   23718:	0007c663          	bltz	a5,23724 <__subtf3+0x954>
   2371c:	02c12e23          	sw	a2,60(sp)
   23720:	b49ff06f          	j	23268 <__subtf3+0x498>
   23724:	fff80737          	lui	a4,0xfff80
   23728:	fff70713          	addi	a4,a4,-1 # fff7ffff <__BSS_END__+0xfff59517>
   2372c:	00e67633          	and	a2,a2,a4
   23730:	02c12e23          	sw	a2,60(sp)
   23734:	00100413          	li	s0,1
   23738:	b31ff06f          	j	23268 <__subtf3+0x498>
   2373c:	00051e63          	bnez	a0,23758 <__subtf3+0x988>
   23740:	02f12823          	sw	a5,48(sp)
   23744:	02d12a23          	sw	a3,52(sp)
   23748:	02b12c23          	sw	a1,56(sp)
   2374c:	03012e23          	sw	a6,60(sp)
   23750:	ffff8413          	addi	s0,t6,-1
   23754:	b15ff06f          	j	23268 <__subtf3+0x498>
   23758:	00b6e633          	or	a2,a3,a1
   2375c:	01066633          	or	a2,a2,a6
   23760:	00f667b3          	or	a5,a2,a5
   23764:	00079c63          	bnez	a5,2377c <__subtf3+0x9ac>
   23768:	02e12823          	sw	a4,48(sp)
   2376c:	03e12a23          	sw	t5,52(sp)
   23770:	03d12c23          	sw	t4,56(sp)
   23774:	03112e23          	sw	a7,60(sp)
   23778:	fd9ff06f          	j	23750 <__subtf3+0x980>
   2377c:	03f12e23          	sw	t6,60(sp)
   23780:	02012c23          	sw	zero,56(sp)
   23784:	02012a23          	sw	zero,52(sp)
   23788:	02012823          	sw	zero,48(sp)
   2378c:	000e0713          	mv	a4,t3
   23790:	00072783          	lw	a5,0(a4)
   23794:	ffc72683          	lw	a3,-4(a4)
   23798:	ffc70713          	addi	a4,a4,-4
   2379c:	00379793          	slli	a5,a5,0x3
   237a0:	01d6d693          	srli	a3,a3,0x1d
   237a4:	00d7e7b3          	or	a5,a5,a3
   237a8:	00f72223          	sw	a5,4(a4)
   237ac:	fee312e3          	bne	t1,a4,23790 <__subtf3+0x9c0>
   237b0:	03012783          	lw	a5,48(sp)
   237b4:	00008437          	lui	s0,0x8
   237b8:	00000913          	li	s2,0
   237bc:	00379793          	slli	a5,a5,0x3
   237c0:	02f12823          	sw	a5,48(sp)
   237c4:	fff40413          	addi	s0,s0,-1 # 7fff <register_fini-0x8075>
   237c8:	aa1ff06f          	j	23268 <__subtf3+0x498>
   237cc:	00f707b3          	add	a5,a4,a5
   237d0:	00e7b733          	sltu	a4,a5,a4
   237d4:	01e686b3          	add	a3,a3,t5
   237d8:	02f12823          	sw	a5,48(sp)
   237dc:	00e687b3          	add	a5,a3,a4
   237e0:	00e7b733          	sltu	a4,a5,a4
   237e4:	01e6b6b3          	sltu	a3,a3,t5
   237e8:	00e6e733          	or	a4,a3,a4
   237ec:	01d58633          	add	a2,a1,t4
   237f0:	00e606b3          	add	a3,a2,a4
   237f4:	00e6b733          	sltu	a4,a3,a4
   237f8:	01d63633          	sltu	a2,a2,t4
   237fc:	00e66633          	or	a2,a2,a4
   23800:	01180733          	add	a4,a6,a7
   23804:	00e60633          	add	a2,a2,a4
   23808:	02f12a23          	sw	a5,52(sp)
   2380c:	02d12c23          	sw	a3,56(sp)
   23810:	02c12e23          	sw	a2,60(sp)
   23814:	00030793          	mv	a5,t1
   23818:	0007a703          	lw	a4,0(a5)
   2381c:	0047a683          	lw	a3,4(a5)
   23820:	00478793          	addi	a5,a5,4
   23824:	00175713          	srli	a4,a4,0x1
   23828:	01f69693          	slli	a3,a3,0x1f
   2382c:	00d76733          	or	a4,a4,a3
   23830:	fee7ae23          	sw	a4,-4(a5)
   23834:	fefe12e3          	bne	t3,a5,23818 <__subtf3+0xa48>
   23838:	000087b7          	lui	a5,0x8
   2383c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   23840:	00f50c63          	beq	a0,a5,23858 <__subtf3+0xa88>
   23844:	03c12783          	lw	a5,60(sp)
   23848:	0017d793          	srli	a5,a5,0x1
   2384c:	02f12e23          	sw	a5,60(sp)
   23850:	00050413          	mv	s0,a0
   23854:	a15ff06f          	j	23268 <__subtf3+0x498>
   23858:	02012e23          	sw	zero,60(sp)
   2385c:	02012c23          	sw	zero,56(sp)
   23860:	02012a23          	sw	zero,52(sp)
   23864:	02012823          	sw	zero,48(sp)
   23868:	fe9ff06f          	j	23850 <__subtf3+0xa80>
   2386c:	28b05063          	blez	a1,23aec <__subtf3+0xd1c>
   23870:	0c061063          	bnez	a2,23930 <__subtf3+0xb60>
   23874:	02412503          	lw	a0,36(sp)
   23878:	02812683          	lw	a3,40(sp)
   2387c:	02c12e83          	lw	t4,44(sp)
   23880:	00d56633          	or	a2,a0,a3
   23884:	01d66633          	or	a2,a2,t4
   23888:	00f66633          	or	a2,a2,a5
   2388c:	ea060863          	beqz	a2,22f3c <__subtf3+0x16c>
   23890:	fff58813          	addi	a6,a1,-1
   23894:	06081a63          	bnez	a6,23908 <__subtf3+0xb38>
   23898:	01412883          	lw	a7,20(sp)
   2389c:	40f707b3          	sub	a5,a4,a5
   238a0:	00f73633          	sltu	a2,a4,a5
   238a4:	40a885b3          	sub	a1,a7,a0
   238a8:	00b8b333          	sltu	t1,a7,a1
   238ac:	40c585b3          	sub	a1,a1,a2
   238b0:	02f12823          	sw	a5,48(sp)
   238b4:	02b12a23          	sw	a1,52(sp)
   238b8:	00000613          	li	a2,0
   238bc:	00f77663          	bgeu	a4,a5,238c8 <__subtf3+0xaf8>
   238c0:	41150633          	sub	a2,a0,a7
   238c4:	00163613          	seqz	a2,a2
   238c8:	01812503          	lw	a0,24(sp)
   238cc:	00666633          	or	a2,a2,t1
   238d0:	40d505b3          	sub	a1,a0,a3
   238d4:	00b537b3          	sltu	a5,a0,a1
   238d8:	40c585b3          	sub	a1,a1,a2
   238dc:	02b12c23          	sw	a1,56(sp)
   238e0:	00060663          	beqz	a2,238ec <__subtf3+0xb1c>
   238e4:	40a686b3          	sub	a3,a3,a0
   238e8:	0016b813          	seqz	a6,a3
   238ec:	01c12703          	lw	a4,28(sp)
   238f0:	00f867b3          	or	a5,a6,a5
   238f4:	41d70733          	sub	a4,a4,t4
   238f8:	40f707b3          	sub	a5,a4,a5
   238fc:	02f12e23          	sw	a5,60(sp)
   23900:	00100413          	li	s0,1
   23904:	1c80006f          	j	23acc <__subtf3+0xcfc>
   23908:	000087b7          	lui	a5,0x8
   2390c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   23910:	e2f58663          	beq	a1,a5,22f3c <__subtf3+0x16c>
   23914:	07400793          	li	a5,116
   23918:	0507d063          	bge	a5,a6,23958 <__subtf3+0xb88>
   2391c:	02012623          	sw	zero,44(sp)
   23920:	02012423          	sw	zero,40(sp)
   23924:	02012223          	sw	zero,36(sp)
   23928:	00100793          	li	a5,1
   2392c:	1240006f          	j	23a50 <__subtf3+0xc80>
   23930:	000087b7          	lui	a5,0x8
   23934:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   23938:	eaf40e63          	beq	s0,a5,22ff4 <__subtf3+0x224>
   2393c:	02c12783          	lw	a5,44(sp)
   23940:	00080737          	lui	a4,0x80
   23944:	00e7e7b3          	or	a5,a5,a4
   23948:	02f12623          	sw	a5,44(sp)
   2394c:	07400793          	li	a5,116
   23950:	fcb7c6e3          	blt	a5,a1,2391c <__subtf3+0xb4c>
   23954:	00058813          	mv	a6,a1
   23958:	40585893          	srai	a7,a6,0x5
   2395c:	01f87793          	andi	a5,a6,31
   23960:	00000593          	li	a1,0
   23964:	00000713          	li	a4,0
   23968:	00271693          	slli	a3,a4,0x2
   2396c:	03171863          	bne	a4,a7,2399c <__subtf3+0xbcc>
   23970:	04079063          	bnez	a5,239b0 <__subtf3+0xbe0>
   23974:	00300613          	li	a2,3
   23978:	40e60733          	sub	a4,a2,a4
   2397c:	00de0633          	add	a2,t3,a3
   23980:	00062603          	lw	a2,0(a2)
   23984:	00178793          	addi	a5,a5,1
   23988:	004e0e13          	addi	t3,t3,4
   2398c:	fece2e23          	sw	a2,-4(t3)
   23990:	fef756e3          	bge	a4,a5,2397c <__subtf3+0xbac>
   23994:	00400693          	li	a3,4
   23998:	0a80006f          	j	23a40 <__subtf3+0xc70>
   2399c:	00d306b3          	add	a3,t1,a3
   239a0:	0006a683          	lw	a3,0(a3)
   239a4:	00170713          	addi	a4,a4,1 # 80001 <__BSS_END__+0x59519>
   239a8:	00d5e5b3          	or	a1,a1,a3
   239ac:	fbdff06f          	j	23968 <__subtf3+0xb98>
   239b0:	04010713          	addi	a4,sp,64
   239b4:	00d70733          	add	a4,a4,a3
   239b8:	fe072703          	lw	a4,-32(a4)
   239bc:	02000813          	li	a6,32
   239c0:	40f80833          	sub	a6,a6,a5
   239c4:	01071733          	sll	a4,a4,a6
   239c8:	00e5e5b3          	or	a1,a1,a4
   239cc:	00300713          	li	a4,3
   239d0:	00d306b3          	add	a3,t1,a3
   239d4:	00000513          	li	a0,0
   239d8:	41170733          	sub	a4,a4,a7
   239dc:	00468693          	addi	a3,a3,4
   239e0:	02e54463          	blt	a0,a4,23a08 <__subtf3+0xc38>
   239e4:	04010693          	addi	a3,sp,64
   239e8:	00271713          	slli	a4,a4,0x2
   239ec:	00e68733          	add	a4,a3,a4
   239f0:	02c12683          	lw	a3,44(sp)
   239f4:	00f6d7b3          	srl	a5,a3,a5
   239f8:	fef72023          	sw	a5,-32(a4)
   239fc:	00400793          	li	a5,4
   23a00:	411787b3          	sub	a5,a5,a7
   23a04:	f91ff06f          	j	23994 <__subtf3+0xbc4>
   23a08:	ffc6a603          	lw	a2,-4(a3)
   23a0c:	0006ae83          	lw	t4,0(a3)
   23a10:	00251e13          	slli	t3,a0,0x2
   23a14:	00f65633          	srl	a2,a2,a5
   23a18:	010e9eb3          	sll	t4,t4,a6
   23a1c:	01c30e33          	add	t3,t1,t3
   23a20:	01d66633          	or	a2,a2,t4
   23a24:	00ce2023          	sw	a2,0(t3)
   23a28:	00150513          	addi	a0,a0,1
   23a2c:	fb1ff06f          	j	239dc <__subtf3+0xc0c>
   23a30:	00279713          	slli	a4,a5,0x2
   23a34:	00e30733          	add	a4,t1,a4
   23a38:	00072023          	sw	zero,0(a4)
   23a3c:	00178793          	addi	a5,a5,1
   23a40:	fed798e3          	bne	a5,a3,23a30 <__subtf3+0xc60>
   23a44:	02012703          	lw	a4,32(sp)
   23a48:	00b037b3          	snez	a5,a1
   23a4c:	00f767b3          	or	a5,a4,a5
   23a50:	02f12023          	sw	a5,32(sp)
   23a54:	01412683          	lw	a3,20(sp)
   23a58:	01012583          	lw	a1,16(sp)
   23a5c:	02012703          	lw	a4,32(sp)
   23a60:	02412783          	lw	a5,36(sp)
   23a64:	40e58733          	sub	a4,a1,a4
   23a68:	40f687b3          	sub	a5,a3,a5
   23a6c:	00f6b633          	sltu	a2,a3,a5
   23a70:	00e5b6b3          	sltu	a3,a1,a4
   23a74:	40d786b3          	sub	a3,a5,a3
   23a78:	02d12a23          	sw	a3,52(sp)
   23a7c:	02e12823          	sw	a4,48(sp)
   23a80:	00000693          	li	a3,0
   23a84:	00e5f463          	bgeu	a1,a4,23a8c <__subtf3+0xcbc>
   23a88:	0017b693          	seqz	a3,a5
   23a8c:	00c6e6b3          	or	a3,a3,a2
   23a90:	02812703          	lw	a4,40(sp)
   23a94:	01812603          	lw	a2,24(sp)
   23a98:	40e60733          	sub	a4,a2,a4
   23a9c:	40d707b3          	sub	a5,a4,a3
   23aa0:	02f12c23          	sw	a5,56(sp)
   23aa4:	00e635b3          	sltu	a1,a2,a4
   23aa8:	00000613          	li	a2,0
   23aac:	00068463          	beqz	a3,23ab4 <__subtf3+0xce4>
   23ab0:	00173613          	seqz	a2,a4
   23ab4:	01c12783          	lw	a5,28(sp)
   23ab8:	02c12703          	lw	a4,44(sp)
   23abc:	00b66633          	or	a2,a2,a1
   23ac0:	40e787b3          	sub	a5,a5,a4
   23ac4:	40c787b3          	sub	a5,a5,a2
   23ac8:	02f12e23          	sw	a5,60(sp)
   23acc:	03c12783          	lw	a5,60(sp)
   23ad0:	00c79713          	slli	a4,a5,0xc
   23ad4:	f8075a63          	bgez	a4,23268 <__subtf3+0x498>
   23ad8:	00080737          	lui	a4,0x80
   23adc:	fff70713          	addi	a4,a4,-1 # 7ffff <__BSS_END__+0x59517>
   23ae0:	00e7f7b3          	and	a5,a5,a4
   23ae4:	02f12e23          	sw	a5,60(sp)
   23ae8:	5c40006f          	j	240ac <__subtf3+0x12dc>
   23aec:	2e058e63          	beqz	a1,23de8 <__subtf3+0x1018>
   23af0:	40860eb3          	sub	t4,a2,s0
   23af4:	0e041463          	bnez	s0,23bdc <__subtf3+0xe0c>
   23af8:	01412303          	lw	t1,20(sp)
   23afc:	01812583          	lw	a1,24(sp)
   23b00:	01c12f03          	lw	t5,28(sp)
   23b04:	00b36e33          	or	t3,t1,a1
   23b08:	01ee6e33          	or	t3,t3,t5
   23b0c:	00ee6e33          	or	t3,t3,a4
   23b10:	020e1663          	bnez	t3,23b3c <__subtf3+0xd6c>
   23b14:	02f12823          	sw	a5,48(sp)
   23b18:	02412783          	lw	a5,36(sp)
   23b1c:	000e8413          	mv	s0,t4
   23b20:	02f12a23          	sw	a5,52(sp)
   23b24:	02812783          	lw	a5,40(sp)
   23b28:	02f12c23          	sw	a5,56(sp)
   23b2c:	02c12783          	lw	a5,44(sp)
   23b30:	02f12e23          	sw	a5,60(sp)
   23b34:	00050913          	mv	s2,a0
   23b38:	f30ff06f          	j	23268 <__subtf3+0x498>
   23b3c:	fffe8693          	addi	a3,t4,-1
   23b40:	06069a63          	bnez	a3,23bb4 <__subtf3+0xde4>
   23b44:	02412883          	lw	a7,36(sp)
   23b48:	40e78733          	sub	a4,a5,a4
   23b4c:	00e7b633          	sltu	a2,a5,a4
   23b50:	40688833          	sub	a6,a7,t1
   23b54:	0108be33          	sltu	t3,a7,a6
   23b58:	40c80833          	sub	a6,a6,a2
   23b5c:	02e12823          	sw	a4,48(sp)
   23b60:	03012a23          	sw	a6,52(sp)
   23b64:	00000613          	li	a2,0
   23b68:	00e7f663          	bgeu	a5,a4,23b74 <__subtf3+0xda4>
   23b6c:	41130633          	sub	a2,t1,a7
   23b70:	00163613          	seqz	a2,a2
   23b74:	02812883          	lw	a7,40(sp)
   23b78:	01c66733          	or	a4,a2,t3
   23b7c:	40b88633          	sub	a2,a7,a1
   23b80:	00c8b833          	sltu	a6,a7,a2
   23b84:	40e60633          	sub	a2,a2,a4
   23b88:	02c12c23          	sw	a2,56(sp)
   23b8c:	00070663          	beqz	a4,23b98 <__subtf3+0xdc8>
   23b90:	411585b3          	sub	a1,a1,a7
   23b94:	0015b693          	seqz	a3,a1
   23b98:	02c12783          	lw	a5,44(sp)
   23b9c:	0106e6b3          	or	a3,a3,a6
   23ba0:	00050913          	mv	s2,a0
   23ba4:	41e787b3          	sub	a5,a5,t5
   23ba8:	40d786b3          	sub	a3,a5,a3
   23bac:	02d12e23          	sw	a3,60(sp)
   23bb0:	d51ff06f          	j	23900 <__subtf3+0xb30>
   23bb4:	00008737          	lui	a4,0x8
   23bb8:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   23bbc:	f4ee8ce3          	beq	t4,a4,23b14 <__subtf3+0xd44>
   23bc0:	07400793          	li	a5,116
   23bc4:	0cd7dc63          	bge	a5,a3,23c9c <__subtf3+0xecc>
   23bc8:	00012e23          	sw	zero,28(sp)
   23bcc:	00012c23          	sw	zero,24(sp)
   23bd0:	00012a23          	sw	zero,20(sp)
   23bd4:	00100793          	li	a5,1
   23bd8:	1880006f          	j	23d60 <__subtf3+0xf90>
   23bdc:	00008737          	lui	a4,0x8
   23be0:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   23be4:	02e61463          	bne	a2,a4,23c0c <__subtf3+0xe3c>
   23be8:	02f12823          	sw	a5,48(sp)
   23bec:	02412783          	lw	a5,36(sp)
   23bf0:	00060413          	mv	s0,a2
   23bf4:	02f12a23          	sw	a5,52(sp)
   23bf8:	02812783          	lw	a5,40(sp)
   23bfc:	02f12c23          	sw	a5,56(sp)
   23c00:	02c12783          	lw	a5,44(sp)
   23c04:	02f12e23          	sw	a5,60(sp)
   23c08:	f2dff06f          	j	23b34 <__subtf3+0xd64>
   23c0c:	01c12783          	lw	a5,28(sp)
   23c10:	00080737          	lui	a4,0x80
   23c14:	00e7e7b3          	or	a5,a5,a4
   23c18:	00f12e23          	sw	a5,28(sp)
   23c1c:	07400793          	li	a5,116
   23c20:	fbd7c4e3          	blt	a5,t4,23bc8 <__subtf3+0xdf8>
   23c24:	41fed793          	srai	a5,t4,0x1f
   23c28:	800005b7          	lui	a1,0x80000
   23c2c:	01f7f793          	andi	a5,a5,31
   23c30:	01f58593          	addi	a1,a1,31 # 8000001f <__BSS_END__+0x7ffd9537>
   23c34:	01d787b3          	add	a5,a5,t4
   23c38:	00bef5b3          	and	a1,t4,a1
   23c3c:	4057d313          	srai	t1,a5,0x5
   23c40:	0005d863          	bgez	a1,23c50 <__subtf3+0xe80>
   23c44:	fff58593          	addi	a1,a1,-1
   23c48:	fe05e593          	ori	a1,a1,-32
   23c4c:	00158593          	addi	a1,a1,1
   23c50:	00058793          	mv	a5,a1
   23c54:	00000e13          	li	t3,0
   23c58:	00000713          	li	a4,0
   23c5c:	04674463          	blt	a4,t1,23ca4 <__subtf3+0xed4>
   23c60:	00030693          	mv	a3,t1
   23c64:	00035463          	bgez	t1,23c6c <__subtf3+0xe9c>
   23c68:	00000693          	li	a3,0
   23c6c:	00231713          	slli	a4,t1,0x2
   23c70:	04059663          	bnez	a1,23cbc <__subtf3+0xeec>
   23c74:	00300693          	li	a3,3
   23c78:	40668333          	sub	t1,a3,t1
   23c7c:	00e806b3          	add	a3,a6,a4
   23c80:	0006a683          	lw	a3,0(a3)
   23c84:	00178793          	addi	a5,a5,1
   23c88:	00480813          	addi	a6,a6,4
   23c8c:	fed82e23          	sw	a3,-4(a6)
   23c90:	fef356e3          	bge	t1,a5,23c7c <__subtf3+0xeac>
   23c94:	00300693          	li	a3,3
   23c98:	0b80006f          	j	23d50 <__subtf3+0xf80>
   23c9c:	00068e93          	mv	t4,a3
   23ca0:	f85ff06f          	j	23c24 <__subtf3+0xe54>
   23ca4:	00271693          	slli	a3,a4,0x2
   23ca8:	00d886b3          	add	a3,a7,a3
   23cac:	0006a683          	lw	a3,0(a3)
   23cb0:	00170713          	addi	a4,a4,1 # 80001 <__BSS_END__+0x59519>
   23cb4:	00de6e33          	or	t3,t3,a3
   23cb8:	fa5ff06f          	j	23c5c <__subtf3+0xe8c>
   23cbc:	04010793          	addi	a5,sp,64
   23cc0:	00269693          	slli	a3,a3,0x2
   23cc4:	00d786b3          	add	a3,a5,a3
   23cc8:	fd06a783          	lw	a5,-48(a3)
   23ccc:	02000e93          	li	t4,32
   23cd0:	40be8eb3          	sub	t4,t4,a1
   23cd4:	01d797b3          	sll	a5,a5,t4
   23cd8:	00fe6e33          	or	t3,t3,a5
   23cdc:	00300793          	li	a5,3
   23ce0:	00e88733          	add	a4,a7,a4
   23ce4:	00000813          	li	a6,0
   23ce8:	406787b3          	sub	a5,a5,t1
   23cec:	00470713          	addi	a4,a4,4
   23cf0:	02f84463          	blt	a6,a5,23d18 <__subtf3+0xf48>
   23cf4:	04010713          	addi	a4,sp,64
   23cf8:	00279793          	slli	a5,a5,0x2
   23cfc:	00f707b3          	add	a5,a4,a5
   23d00:	01c12703          	lw	a4,28(sp)
   23d04:	00b755b3          	srl	a1,a4,a1
   23d08:	fcb7a823          	sw	a1,-48(a5)
   23d0c:	00400793          	li	a5,4
   23d10:	406787b3          	sub	a5,a5,t1
   23d14:	f81ff06f          	j	23c94 <__subtf3+0xec4>
   23d18:	ffc72683          	lw	a3,-4(a4)
   23d1c:	00072f83          	lw	t6,0(a4)
   23d20:	00281f13          	slli	t5,a6,0x2
   23d24:	00b6d6b3          	srl	a3,a3,a1
   23d28:	01df9fb3          	sll	t6,t6,t4
   23d2c:	01e88f33          	add	t5,a7,t5
   23d30:	01f6e6b3          	or	a3,a3,t6
   23d34:	00df2023          	sw	a3,0(t5)
   23d38:	00180813          	addi	a6,a6,1
   23d3c:	fb1ff06f          	j	23cec <__subtf3+0xf1c>
   23d40:	00279713          	slli	a4,a5,0x2
   23d44:	00e88733          	add	a4,a7,a4
   23d48:	00072023          	sw	zero,0(a4)
   23d4c:	00178793          	addi	a5,a5,1
   23d50:	fef6d8e3          	bge	a3,a5,23d40 <__subtf3+0xf70>
   23d54:	01012703          	lw	a4,16(sp)
   23d58:	01c037b3          	snez	a5,t3
   23d5c:	00f767b3          	or	a5,a4,a5
   23d60:	00f12823          	sw	a5,16(sp)
   23d64:	02412683          	lw	a3,36(sp)
   23d68:	02012803          	lw	a6,32(sp)
   23d6c:	01012703          	lw	a4,16(sp)
   23d70:	01412783          	lw	a5,20(sp)
   23d74:	40e80733          	sub	a4,a6,a4
   23d78:	40f687b3          	sub	a5,a3,a5
   23d7c:	00f6b5b3          	sltu	a1,a3,a5
   23d80:	00e836b3          	sltu	a3,a6,a4
   23d84:	40d786b3          	sub	a3,a5,a3
   23d88:	02d12a23          	sw	a3,52(sp)
   23d8c:	02e12823          	sw	a4,48(sp)
   23d90:	00000693          	li	a3,0
   23d94:	00e87463          	bgeu	a6,a4,23d9c <__subtf3+0xfcc>
   23d98:	0017b693          	seqz	a3,a5
   23d9c:	00b6e6b3          	or	a3,a3,a1
   23da0:	01812703          	lw	a4,24(sp)
   23da4:	02812583          	lw	a1,40(sp)
   23da8:	40e58733          	sub	a4,a1,a4
   23dac:	40d707b3          	sub	a5,a4,a3
   23db0:	02f12c23          	sw	a5,56(sp)
   23db4:	00e5b833          	sltu	a6,a1,a4
   23db8:	00000593          	li	a1,0
   23dbc:	00068463          	beqz	a3,23dc4 <__subtf3+0xff4>
   23dc0:	00173593          	seqz	a1,a4
   23dc4:	02c12783          	lw	a5,44(sp)
   23dc8:	01c12703          	lw	a4,28(sp)
   23dcc:	0105e5b3          	or	a1,a1,a6
   23dd0:	00060413          	mv	s0,a2
   23dd4:	40e787b3          	sub	a5,a5,a4
   23dd8:	40b787b3          	sub	a5,a5,a1
   23ddc:	02f12e23          	sw	a5,60(sp)
   23de0:	00050913          	mv	s2,a0
   23de4:	ce9ff06f          	j	23acc <__subtf3+0xcfc>
   23de8:	00008f37          	lui	t5,0x8
   23dec:	ffef0693          	addi	a3,t5,-2 # 7ffe <register_fini-0x8076>
   23df0:	00140e93          	addi	t4,s0,1
   23df4:	00defeb3          	and	t4,t4,a3
   23df8:	02412603          	lw	a2,36(sp)
   23dfc:	01412683          	lw	a3,20(sp)
   23e00:	01812803          	lw	a6,24(sp)
   23e04:	01c12e03          	lw	t3,28(sp)
   23e08:	02812883          	lw	a7,40(sp)
   23e0c:	02c12303          	lw	t1,44(sp)
   23e10:	1e0e9063          	bnez	t4,23ff0 <__subtf3+0x1220>
   23e14:	011665b3          	or	a1,a2,a7
   23e18:	0106eeb3          	or	t4,a3,a6
   23e1c:	0065e5b3          	or	a1,a1,t1
   23e20:	01ceeeb3          	or	t4,t4,t3
   23e24:	00f5e5b3          	or	a1,a1,a5
   23e28:	00eeeeb3          	or	t4,t4,a4
   23e2c:	10041a63          	bnez	s0,23f40 <__subtf3+0x1170>
   23e30:	020e9463          	bnez	t4,23e58 <__subtf3+0x1088>
   23e34:	02f12823          	sw	a5,48(sp)
   23e38:	02c12a23          	sw	a2,52(sp)
   23e3c:	03112c23          	sw	a7,56(sp)
   23e40:	02612e23          	sw	t1,60(sp)
   23e44:	00050913          	mv	s2,a0
   23e48:	c2059063          	bnez	a1,23268 <__subtf3+0x498>
   23e4c:	00000413          	li	s0,0
   23e50:	00000913          	li	s2,0
   23e54:	c14ff06f          	j	23268 <__subtf3+0x498>
   23e58:	00059c63          	bnez	a1,23e70 <__subtf3+0x10a0>
   23e5c:	02e12823          	sw	a4,48(sp)
   23e60:	02d12a23          	sw	a3,52(sp)
   23e64:	03012c23          	sw	a6,56(sp)
   23e68:	03c12e23          	sw	t3,60(sp)
   23e6c:	bfcff06f          	j	23268 <__subtf3+0x498>
   23e70:	40f705b3          	sub	a1,a4,a5
   23e74:	40c68fb3          	sub	t6,a3,a2
   23e78:	00b73f33          	sltu	t5,a4,a1
   23e7c:	01f6beb3          	sltu	t4,a3,t6
   23e80:	41ef8fb3          	sub	t6,t6,t5
   23e84:	02b12823          	sw	a1,48(sp)
   23e88:	03f12a23          	sw	t6,52(sp)
   23e8c:	00000f13          	li	t5,0
   23e90:	00b77663          	bgeu	a4,a1,23e9c <__subtf3+0x10cc>
   23e94:	40d60f33          	sub	t5,a2,a3
   23e98:	001f3f13          	seqz	t5,t5
   23e9c:	411802b3          	sub	t0,a6,a7
   23ea0:	01df6f33          	or	t5,t5,t4
   23ea4:	41e289b3          	sub	s3,t0,t5
   23ea8:	03312c23          	sw	s3,56(sp)
   23eac:	00583a33          	sltu	s4,a6,t0
   23eb0:	00000393          	li	t2,0
   23eb4:	000f0463          	beqz	t5,23ebc <__subtf3+0x10ec>
   23eb8:	0012b393          	seqz	t2,t0
   23ebc:	406e0eb3          	sub	t4,t3,t1
   23ec0:	0143e3b3          	or	t2,t2,s4
   23ec4:	407e8eb3          	sub	t4,t4,t2
   23ec8:	03d12e23          	sw	t4,60(sp)
   23ecc:	00ce9f13          	slli	t5,t4,0xc
   23ed0:	060f5063          	bgez	t5,23f30 <__subtf3+0x1160>
   23ed4:	40e78733          	sub	a4,a5,a4
   23ed8:	40d606b3          	sub	a3,a2,a3
   23edc:	00e7b5b3          	sltu	a1,a5,a4
   23ee0:	40b685b3          	sub	a1,a3,a1
   23ee4:	02b12a23          	sw	a1,52(sp)
   23ee8:	02e12823          	sw	a4,48(sp)
   23eec:	00d63633          	sltu	a2,a2,a3
   23ef0:	00000593          	li	a1,0
   23ef4:	00e7f463          	bgeu	a5,a4,23efc <__subtf3+0x112c>
   23ef8:	0016b593          	seqz	a1,a3
   23efc:	41088733          	sub	a4,a7,a6
   23f00:	00c5e633          	or	a2,a1,a2
   23f04:	00e8b8b3          	sltu	a7,a7,a4
   23f08:	40c70733          	sub	a4,a4,a2
   23f0c:	02e12c23          	sw	a4,56(sp)
   23f10:	00000693          	li	a3,0
   23f14:	00060463          	beqz	a2,23f1c <__subtf3+0x114c>
   23f18:	0012b693          	seqz	a3,t0
   23f1c:	41c30733          	sub	a4,t1,t3
   23f20:	0116e6b3          	or	a3,a3,a7
   23f24:	40d706b3          	sub	a3,a4,a3
   23f28:	02d12e23          	sw	a3,60(sp)
   23f2c:	c09ff06f          	j	23b34 <__subtf3+0xd64>
   23f30:	01f5e5b3          	or	a1,a1,t6
   23f34:	0135e5b3          	or	a1,a1,s3
   23f38:	01d5e5b3          	or	a1,a1,t4
   23f3c:	f0dff06f          	j	23e48 <__subtf3+0x1078>
   23f40:	03010f93          	addi	t6,sp,48
   23f44:	040e9e63          	bnez	t4,23fa0 <__subtf3+0x11d0>
   23f48:	02059e63          	bnez	a1,23f84 <__subtf3+0x11b4>
   23f4c:	03e12e23          	sw	t5,60(sp)
   23f50:	02012c23          	sw	zero,56(sp)
   23f54:	02012a23          	sw	zero,52(sp)
   23f58:	02012823          	sw	zero,48(sp)
   23f5c:	03c10793          	addi	a5,sp,60
   23f60:	0007a703          	lw	a4,0(a5)
   23f64:	ffc7a683          	lw	a3,-4(a5)
   23f68:	ffc78793          	addi	a5,a5,-4
   23f6c:	00371713          	slli	a4,a4,0x3
   23f70:	01d6d693          	srli	a3,a3,0x1d
   23f74:	00d76733          	or	a4,a4,a3
   23f78:	00e7a223          	sw	a4,4(a5)
   23f7c:	feff92e3          	bne	t6,a5,23f60 <__subtf3+0x1190>
   23f80:	831ff06f          	j	237b0 <__subtf3+0x9e0>
   23f84:	02f12823          	sw	a5,48(sp)
   23f88:	02c12a23          	sw	a2,52(sp)
   23f8c:	03112c23          	sw	a7,56(sp)
   23f90:	02612e23          	sw	t1,60(sp)
   23f94:	00050913          	mv	s2,a0
   23f98:	ffff0413          	addi	s0,t5,-1
   23f9c:	accff06f          	j	23268 <__subtf3+0x498>
   23fa0:	00059c63          	bnez	a1,23fb8 <__subtf3+0x11e8>
   23fa4:	02e12823          	sw	a4,48(sp)
   23fa8:	02d12a23          	sw	a3,52(sp)
   23fac:	03012c23          	sw	a6,56(sp)
   23fb0:	03c12e23          	sw	t3,60(sp)
   23fb4:	fe5ff06f          	j	23f98 <__subtf3+0x11c8>
   23fb8:	03e12e23          	sw	t5,60(sp)
   23fbc:	02012c23          	sw	zero,56(sp)
   23fc0:	02012a23          	sw	zero,52(sp)
   23fc4:	02012823          	sw	zero,48(sp)
   23fc8:	03c10793          	addi	a5,sp,60
   23fcc:	0007a703          	lw	a4,0(a5)
   23fd0:	ffc7a683          	lw	a3,-4(a5)
   23fd4:	ffc78793          	addi	a5,a5,-4
   23fd8:	00371713          	slli	a4,a4,0x3
   23fdc:	01d6d693          	srli	a3,a3,0x1d
   23fe0:	00d76733          	or	a4,a4,a3
   23fe4:	00e7a223          	sw	a4,4(a5)
   23fe8:	feff92e3          	bne	t6,a5,23fcc <__subtf3+0x11fc>
   23fec:	fc4ff06f          	j	237b0 <__subtf3+0x9e0>
   23ff0:	40f70eb3          	sub	t4,a4,a5
   23ff4:	40c682b3          	sub	t0,a3,a2
   23ff8:	01d73fb3          	sltu	t6,a4,t4
   23ffc:	0056bf33          	sltu	t5,a3,t0
   24000:	41f282b3          	sub	t0,t0,t6
   24004:	03d12823          	sw	t4,48(sp)
   24008:	02512a23          	sw	t0,52(sp)
   2400c:	00000f93          	li	t6,0
   24010:	01d77663          	bgeu	a4,t4,2401c <__subtf3+0x124c>
   24014:	40d60fb3          	sub	t6,a2,a3
   24018:	001fbf93          	seqz	t6,t6
   2401c:	411803b3          	sub	t2,a6,a7
   24020:	01efefb3          	or	t6,t6,t5
   24024:	41f38a33          	sub	s4,t2,t6
   24028:	03412c23          	sw	s4,56(sp)
   2402c:	00783ab3          	sltu	s5,a6,t2
   24030:	00000993          	li	s3,0
   24034:	000f8463          	beqz	t6,2403c <__subtf3+0x126c>
   24038:	0013b993          	seqz	s3,t2
   2403c:	406e0f33          	sub	t5,t3,t1
   24040:	0159e9b3          	or	s3,s3,s5
   24044:	413f0f33          	sub	t5,t5,s3
   24048:	03e12e23          	sw	t5,60(sp)
   2404c:	00cf1f93          	slli	t6,t5,0xc
   24050:	0e0fd063          	bgez	t6,24130 <__subtf3+0x1360>
   24054:	40e78733          	sub	a4,a5,a4
   24058:	40d606b3          	sub	a3,a2,a3
   2405c:	00e7beb3          	sltu	t4,a5,a4
   24060:	41d68eb3          	sub	t4,a3,t4
   24064:	03d12a23          	sw	t4,52(sp)
   24068:	02e12823          	sw	a4,48(sp)
   2406c:	00d63633          	sltu	a2,a2,a3
   24070:	00000e93          	li	t4,0
   24074:	00e7f463          	bgeu	a5,a4,2407c <__subtf3+0x12ac>
   24078:	0016be93          	seqz	t4,a3
   2407c:	41088733          	sub	a4,a7,a6
   24080:	00cee633          	or	a2,t4,a2
   24084:	00e8b8b3          	sltu	a7,a7,a4
   24088:	40c70733          	sub	a4,a4,a2
   2408c:	02e12c23          	sw	a4,56(sp)
   24090:	00060463          	beqz	a2,24098 <__subtf3+0x12c8>
   24094:	0013b593          	seqz	a1,t2
   24098:	41c30733          	sub	a4,t1,t3
   2409c:	0115e7b3          	or	a5,a1,a7
   240a0:	40f707b3          	sub	a5,a4,a5
   240a4:	02f12e23          	sw	a5,60(sp)
   240a8:	00050913          	mv	s2,a0
   240ac:	03c12503          	lw	a0,60(sp)
   240b0:	08050a63          	beqz	a0,24144 <__subtf3+0x1374>
   240b4:	2d1000ef          	jal	ra,24b84 <__clzsi2>
   240b8:	ff450513          	addi	a0,a0,-12
   240bc:	41f55793          	srai	a5,a0,0x1f
   240c0:	80000737          	lui	a4,0x80000
   240c4:	01f7f793          	andi	a5,a5,31
   240c8:	01f70713          	addi	a4,a4,31 # 8000001f <__BSS_END__+0x7ffd9537>
   240cc:	00a787b3          	add	a5,a5,a0
   240d0:	00e57733          	and	a4,a0,a4
   240d4:	4057d793          	srai	a5,a5,0x5
   240d8:	00075863          	bgez	a4,240e8 <__subtf3+0x1318>
   240dc:	fff70713          	addi	a4,a4,-1
   240e0:	fe076713          	ori	a4,a4,-32
   240e4:	00170713          	addi	a4,a4,1
   240e8:	40f006b3          	neg	a3,a5
   240ec:	08070863          	beqz	a4,2417c <__subtf3+0x13ac>
   240f0:	00269693          	slli	a3,a3,0x2
   240f4:	03010313          	addi	t1,sp,48
   240f8:	00c68693          	addi	a3,a3,12
   240fc:	02000813          	li	a6,32
   24100:	00d306b3          	add	a3,t1,a3
   24104:	00279593          	slli	a1,a5,0x2
   24108:	40e80833          	sub	a6,a6,a4
   2410c:	08d31e63          	bne	t1,a3,241a8 <__subtf3+0x13d8>
   24110:	04010693          	addi	a3,sp,64
   24114:	00b685b3          	add	a1,a3,a1
   24118:	03012683          	lw	a3,48(sp)
   2411c:	fff78793          	addi	a5,a5,-1
   24120:	00e69733          	sll	a4,a3,a4
   24124:	fee5a823          	sw	a4,-16(a1)
   24128:	fff00693          	li	a3,-1
   2412c:	0b40006f          	j	241e0 <__subtf3+0x1410>
   24130:	005eeeb3          	or	t4,t4,t0
   24134:	014eeeb3          	or	t4,t4,s4
   24138:	01eeeeb3          	or	t4,t4,t5
   2413c:	d00e88e3          	beqz	t4,23e4c <__subtf3+0x107c>
   24140:	f6dff06f          	j	240ac <__subtf3+0x12dc>
   24144:	03812503          	lw	a0,56(sp)
   24148:	00050863          	beqz	a0,24158 <__subtf3+0x1388>
   2414c:	239000ef          	jal	ra,24b84 <__clzsi2>
   24150:	02050513          	addi	a0,a0,32
   24154:	f65ff06f          	j	240b8 <__subtf3+0x12e8>
   24158:	03412503          	lw	a0,52(sp)
   2415c:	00050863          	beqz	a0,2416c <__subtf3+0x139c>
   24160:	225000ef          	jal	ra,24b84 <__clzsi2>
   24164:	04050513          	addi	a0,a0,64
   24168:	f51ff06f          	j	240b8 <__subtf3+0x12e8>
   2416c:	03012503          	lw	a0,48(sp)
   24170:	215000ef          	jal	ra,24b84 <__clzsi2>
   24174:	06050513          	addi	a0,a0,96
   24178:	f41ff06f          	j	240b8 <__subtf3+0x12e8>
   2417c:	03c10713          	addi	a4,sp,60
   24180:	00269693          	slli	a3,a3,0x2
   24184:	00300613          	li	a2,3
   24188:	00d705b3          	add	a1,a4,a3
   2418c:	0005a583          	lw	a1,0(a1)
   24190:	fff60613          	addi	a2,a2,-1
   24194:	ffc70713          	addi	a4,a4,-4
   24198:	00b72223          	sw	a1,4(a4)
   2419c:	fef656e3          	bge	a2,a5,24188 <__subtf3+0x13b8>
   241a0:	fff78793          	addi	a5,a5,-1
   241a4:	f85ff06f          	j	24128 <__subtf3+0x1358>
   241a8:	ffc6a603          	lw	a2,-4(a3)
   241ac:	0006a883          	lw	a7,0(a3)
   241b0:	00b68e33          	add	t3,a3,a1
   241b4:	01065633          	srl	a2,a2,a6
   241b8:	00e898b3          	sll	a7,a7,a4
   241bc:	01166633          	or	a2,a2,a7
   241c0:	00ce2023          	sw	a2,0(t3)
   241c4:	ffc68693          	addi	a3,a3,-4
   241c8:	f45ff06f          	j	2410c <__subtf3+0x133c>
   241cc:	00279713          	slli	a4,a5,0x2
   241d0:	03010613          	addi	a2,sp,48
   241d4:	00e60733          	add	a4,a2,a4
   241d8:	00072023          	sw	zero,0(a4)
   241dc:	fff78793          	addi	a5,a5,-1
   241e0:	fed796e3          	bne	a5,a3,241cc <__subtf3+0x13fc>
   241e4:	16854063          	blt	a0,s0,24344 <__subtf3+0x1574>
   241e8:	40850433          	sub	s0,a0,s0
   241ec:	00140413          	addi	s0,s0,1
   241f0:	41f45793          	srai	a5,s0,0x1f
   241f4:	01f7f793          	andi	a5,a5,31
   241f8:	008787b3          	add	a5,a5,s0
   241fc:	4057d513          	srai	a0,a5,0x5
   24200:	800007b7          	lui	a5,0x80000
   24204:	01f78793          	addi	a5,a5,31 # 8000001f <__BSS_END__+0x7ffd9537>
   24208:	00f47433          	and	s0,s0,a5
   2420c:	00045863          	bgez	s0,2421c <__subtf3+0x144c>
   24210:	fff40413          	addi	s0,s0,-1
   24214:	fe046413          	ori	s0,s0,-32
   24218:	00140413          	addi	s0,s0,1
   2421c:	00040793          	mv	a5,s0
   24220:	00000813          	li	a6,0
   24224:	00000713          	li	a4,0
   24228:	04a74263          	blt	a4,a0,2426c <__subtf3+0x149c>
   2422c:	00050693          	mv	a3,a0
   24230:	00055463          	bgez	a0,24238 <__subtf3+0x1468>
   24234:	00000693          	li	a3,0
   24238:	00251713          	slli	a4,a0,0x2
   2423c:	04041663          	bnez	s0,24288 <__subtf3+0x14b8>
   24240:	00300613          	li	a2,3
   24244:	03010693          	addi	a3,sp,48
   24248:	40a60533          	sub	a0,a2,a0
   2424c:	00e68633          	add	a2,a3,a4
   24250:	00062603          	lw	a2,0(a2)
   24254:	00178793          	addi	a5,a5,1
   24258:	00468693          	addi	a3,a3,4
   2425c:	fec6ae23          	sw	a2,-4(a3)
   24260:	fef556e3          	bge	a0,a5,2424c <__subtf3+0x147c>
   24264:	00300693          	li	a3,3
   24268:	0c00006f          	j	24328 <__subtf3+0x1558>
   2426c:	00271693          	slli	a3,a4,0x2
   24270:	03010613          	addi	a2,sp,48
   24274:	00d606b3          	add	a3,a2,a3
   24278:	0006a683          	lw	a3,0(a3)
   2427c:	00170713          	addi	a4,a4,1
   24280:	00d86833          	or	a6,a6,a3
   24284:	fa5ff06f          	j	24228 <__subtf3+0x1458>
   24288:	04010793          	addi	a5,sp,64
   2428c:	00269693          	slli	a3,a3,0x2
   24290:	00d786b3          	add	a3,a5,a3
   24294:	ff06a783          	lw	a5,-16(a3)
   24298:	02000593          	li	a1,32
   2429c:	408585b3          	sub	a1,a1,s0
   242a0:	00b797b3          	sll	a5,a5,a1
   242a4:	00f86833          	or	a6,a6,a5
   242a8:	03010793          	addi	a5,sp,48
   242ac:	00e78733          	add	a4,a5,a4
   242b0:	00300793          	li	a5,3
   242b4:	00000613          	li	a2,0
   242b8:	40a787b3          	sub	a5,a5,a0
   242bc:	00470713          	addi	a4,a4,4
   242c0:	02f64463          	blt	a2,a5,242e8 <__subtf3+0x1518>
   242c4:	04010713          	addi	a4,sp,64
   242c8:	00279793          	slli	a5,a5,0x2
   242cc:	00f707b3          	add	a5,a4,a5
   242d0:	03c12703          	lw	a4,60(sp)
   242d4:	00875433          	srl	s0,a4,s0
   242d8:	fe87a823          	sw	s0,-16(a5)
   242dc:	00400793          	li	a5,4
   242e0:	40a787b3          	sub	a5,a5,a0
   242e4:	f81ff06f          	j	24264 <__subtf3+0x1494>
   242e8:	00261893          	slli	a7,a2,0x2
   242ec:	03010693          	addi	a3,sp,48
   242f0:	011688b3          	add	a7,a3,a7
   242f4:	00072303          	lw	t1,0(a4)
   242f8:	ffc72683          	lw	a3,-4(a4)
   242fc:	00160613          	addi	a2,a2,1
   24300:	00b31333          	sll	t1,t1,a1
   24304:	0086d6b3          	srl	a3,a3,s0
   24308:	0066e6b3          	or	a3,a3,t1
   2430c:	00d8a023          	sw	a3,0(a7)
   24310:	fadff06f          	j	242bc <__subtf3+0x14ec>
   24314:	00279713          	slli	a4,a5,0x2
   24318:	03010613          	addi	a2,sp,48
   2431c:	00e60733          	add	a4,a2,a4
   24320:	00072023          	sw	zero,0(a4)
   24324:	00178793          	addi	a5,a5,1
   24328:	fef6d6e3          	bge	a3,a5,24314 <__subtf3+0x1544>
   2432c:	03012703          	lw	a4,48(sp)
   24330:	010037b3          	snez	a5,a6
   24334:	00000413          	li	s0,0
   24338:	00f767b3          	or	a5,a4,a5
   2433c:	02f12823          	sw	a5,48(sp)
   24340:	f29fe06f          	j	23268 <__subtf3+0x498>
   24344:	03c12783          	lw	a5,60(sp)
   24348:	fff80737          	lui	a4,0xfff80
   2434c:	fff70713          	addi	a4,a4,-1 # fff7ffff <__BSS_END__+0xfff59517>
   24350:	40a40433          	sub	s0,s0,a0
   24354:	00e7f7b3          	and	a5,a5,a4
   24358:	cb5fe06f          	j	2300c <__subtf3+0x23c>
   2435c:	02012e23          	sw	zero,60(sp)
   24360:	02012c23          	sw	zero,56(sp)
   24364:	02012a23          	sw	zero,52(sp)
   24368:	02012823          	sw	zero,48(sp)
   2436c:	f7dfe06f          	j	232e8 <__subtf3+0x518>

00024370 <__fixtfsi>:
   24370:	00c52703          	lw	a4,12(a0)
   24374:	00852783          	lw	a5,8(a0)
   24378:	00452683          	lw	a3,4(a0)
   2437c:	00052603          	lw	a2,0(a0)
   24380:	fe010113          	addi	sp,sp,-32
   24384:	00f12423          	sw	a5,8(sp)
   24388:	00e12623          	sw	a4,12(sp)
   2438c:	00f12c23          	sw	a5,24(sp)
   24390:	01071593          	slli	a1,a4,0x10
   24394:	00171793          	slli	a5,a4,0x1
   24398:	01f75813          	srli	a6,a4,0x1f
   2439c:	00004737          	lui	a4,0x4
   243a0:	00d12223          	sw	a3,4(sp)
   243a4:	00d12a23          	sw	a3,20(sp)
   243a8:	00c12023          	sw	a2,0(sp)
   243ac:	0117d693          	srli	a3,a5,0x11
   243b0:	00c12823          	sw	a2,16(sp)
   243b4:	ffe70793          	addi	a5,a4,-2 # 3ffe <register_fini-0xc076>
   243b8:	00000513          	li	a0,0
   243bc:	00d7dc63          	bge	a5,a3,243d4 <__fixtfsi+0x64>
   243c0:	01d70793          	addi	a5,a4,29
   243c4:	00d7dc63          	bge	a5,a3,243dc <__fixtfsi+0x6c>
   243c8:	80000537          	lui	a0,0x80000
   243cc:	fff54513          	not	a0,a0
   243d0:	00a80533          	add	a0,a6,a0
   243d4:	02010113          	addi	sp,sp,32
   243d8:	00008067          	ret
   243dc:	000107b7          	lui	a5,0x10
   243e0:	0105d593          	srli	a1,a1,0x10
   243e4:	00f5e5b3          	or	a1,a1,a5
   243e8:	06f70793          	addi	a5,a4,111
   243ec:	40d787b3          	sub	a5,a5,a3
   243f0:	4057d713          	srai	a4,a5,0x5
   243f4:	00b12e23          	sw	a1,28(sp)
   243f8:	01f7f793          	andi	a5,a5,31
   243fc:	08079863          	bnez	a5,2448c <__fixtfsi+0x11c>
   24400:	00271793          	slli	a5,a4,0x2
   24404:	02010693          	addi	a3,sp,32
   24408:	00f687b3          	add	a5,a3,a5
   2440c:	ff07a783          	lw	a5,-16(a5) # fff0 <register_fini-0x84>
   24410:	00200613          	li	a2,2
   24414:	00f12823          	sw	a5,16(sp)
   24418:	00200793          	li	a5,2
   2441c:	00e78463          	beq	a5,a4,24424 <__fixtfsi+0xb4>
   24420:	00100613          	li	a2,1
   24424:	00400713          	li	a4,4
   24428:	00261793          	slli	a5,a2,0x2
   2442c:	01010693          	addi	a3,sp,16
   24430:	00f687b3          	add	a5,a3,a5
   24434:	0007a023          	sw	zero,0(a5)
   24438:	00160613          	addi	a2,a2,1
   2443c:	fee616e3          	bne	a2,a4,24428 <__fixtfsi+0xb8>
   24440:	01012503          	lw	a0,16(sp)
   24444:	f80808e3          	beqz	a6,243d4 <__fixtfsi+0x64>
   24448:	40a00533          	neg	a0,a0
   2444c:	f89ff06f          	j	243d4 <__fixtfsi+0x64>
   24450:	ff062683          	lw	a3,-16(a2)
   24454:	ff072303          	lw	t1,-16(a4)
   24458:	011696b3          	sll	a3,a3,a7
   2445c:	00f35333          	srl	t1,t1,a5
   24460:	0066e6b3          	or	a3,a3,t1
   24464:	00d12823          	sw	a3,16(sp)
   24468:	00100693          	li	a3,1
   2446c:	fea6c2e3          	blt	a3,a0,24450 <__fixtfsi+0xe0>
   24470:	00168613          	addi	a2,a3,1
   24474:	02010713          	addi	a4,sp,32
   24478:	00269693          	slli	a3,a3,0x2
   2447c:	00d706b3          	add	a3,a4,a3
   24480:	00f5d7b3          	srl	a5,a1,a5
   24484:	fef6a823          	sw	a5,-16(a3)
   24488:	f9dff06f          	j	24424 <__fixtfsi+0xb4>
   2448c:	00170613          	addi	a2,a4,1
   24490:	02010893          	addi	a7,sp,32
   24494:	00300513          	li	a0,3
   24498:	00261613          	slli	a2,a2,0x2
   2449c:	40e50533          	sub	a0,a0,a4
   244a0:	00c88633          	add	a2,a7,a2
   244a4:	00271713          	slli	a4,a4,0x2
   244a8:	02000893          	li	a7,32
   244ac:	02010313          	addi	t1,sp,32
   244b0:	00000693          	li	a3,0
   244b4:	40f888b3          	sub	a7,a7,a5
   244b8:	00e30733          	add	a4,t1,a4
   244bc:	fb1ff06f          	j	2446c <__fixtfsi+0xfc>

000244c0 <__floatsitf>:
   244c0:	fd010113          	addi	sp,sp,-48
   244c4:	02912223          	sw	s1,36(sp)
   244c8:	02112623          	sw	ra,44(sp)
   244cc:	02812423          	sw	s0,40(sp)
   244d0:	03212023          	sw	s2,32(sp)
   244d4:	00050493          	mv	s1,a0
   244d8:	14058c63          	beqz	a1,24630 <__floatsitf+0x170>
   244dc:	41f5d793          	srai	a5,a1,0x1f
   244e0:	00b7c433          	xor	s0,a5,a1
   244e4:	40f40433          	sub	s0,s0,a5
   244e8:	00040513          	mv	a0,s0
   244ec:	01f5d913          	srli	s2,a1,0x1f
   244f0:	694000ef          	jal	ra,24b84 <__clzsi2>
   244f4:	000045b7          	lui	a1,0x4
   244f8:	01e58593          	addi	a1,a1,30 # 401e <register_fini-0xc056>
   244fc:	40a585b3          	sub	a1,a1,a0
   24500:	05150513          	addi	a0,a0,81 # 80000051 <__BSS_END__+0x7ffd9569>
   24504:	00812823          	sw	s0,16(sp)
   24508:	00012a23          	sw	zero,20(sp)
   2450c:	00012c23          	sw	zero,24(sp)
   24510:	00012e23          	sw	zero,28(sp)
   24514:	01f57693          	andi	a3,a0,31
   24518:	04068063          	beqz	a3,24558 <__floatsitf+0x98>
   2451c:	05f00713          	li	a4,95
   24520:	00300793          	li	a5,3
   24524:	00a74c63          	blt	a4,a0,2453c <__floatsitf+0x7c>
   24528:	02000793          	li	a5,32
   2452c:	40d787b3          	sub	a5,a5,a3
   24530:	00f457b3          	srl	a5,s0,a5
   24534:	00f12e23          	sw	a5,28(sp)
   24538:	00200793          	li	a5,2
   2453c:	fff78713          	addi	a4,a5,-1
   24540:	02010613          	addi	a2,sp,32
   24544:	00279793          	slli	a5,a5,0x2
   24548:	00f607b3          	add	a5,a2,a5
   2454c:	00d41433          	sll	s0,s0,a3
   24550:	fe87a823          	sw	s0,-16(a5)
   24554:	0500006f          	j	245a4 <__floatsitf+0xe4>
   24558:	40555693          	srai	a3,a0,0x5
   2455c:	00300713          	li	a4,3
   24560:	40d70733          	sub	a4,a4,a3
   24564:	02010793          	addi	a5,sp,32
   24568:	00271713          	slli	a4,a4,0x2
   2456c:	00e78733          	add	a4,a5,a4
   24570:	ff072783          	lw	a5,-16(a4)
   24574:	00200713          	li	a4,2
   24578:	00f12e23          	sw	a5,28(sp)
   2457c:	05f00793          	li	a5,95
   24580:	02a7c263          	blt	a5,a0,245a4 <__floatsitf+0xe4>
   24584:	00200793          	li	a5,2
   24588:	40d787b3          	sub	a5,a5,a3
   2458c:	02010713          	addi	a4,sp,32
   24590:	00279793          	slli	a5,a5,0x2
   24594:	00f707b3          	add	a5,a4,a5
   24598:	ff07a783          	lw	a5,-16(a5)
   2459c:	00100713          	li	a4,1
   245a0:	00f12c23          	sw	a5,24(sp)
   245a4:	fff00693          	li	a3,-1
   245a8:	00271793          	slli	a5,a4,0x2
   245ac:	01010613          	addi	a2,sp,16
   245b0:	00f607b3          	add	a5,a2,a5
   245b4:	0007a023          	sw	zero,0(a5)
   245b8:	fff70713          	addi	a4,a4,-1
   245bc:	fed716e3          	bne	a4,a3,245a8 <__floatsitf+0xe8>
   245c0:	01c12783          	lw	a5,28(sp)
   245c4:	01159593          	slli	a1,a1,0x11
   245c8:	80010737          	lui	a4,0x80010
   245cc:	00f11623          	sh	a5,12(sp)
   245d0:	00c12783          	lw	a5,12(sp)
   245d4:	0115d593          	srli	a1,a1,0x11
   245d8:	fff70713          	addi	a4,a4,-1 # 8000ffff <__BSS_END__+0x7ffe9517>
   245dc:	00e7f7b3          	and	a5,a5,a4
   245e0:	01059593          	slli	a1,a1,0x10
   245e4:	00b7e5b3          	or	a1,a5,a1
   245e8:	01012783          	lw	a5,16(sp)
   245ec:	00159593          	slli	a1,a1,0x1
   245f0:	01f91913          	slli	s2,s2,0x1f
   245f4:	00f4a023          	sw	a5,0(s1)
   245f8:	01412783          	lw	a5,20(sp)
   245fc:	02c12083          	lw	ra,44(sp)
   24600:	02812403          	lw	s0,40(sp)
   24604:	00f4a223          	sw	a5,4(s1)
   24608:	01812783          	lw	a5,24(sp)
   2460c:	0015d593          	srli	a1,a1,0x1
   24610:	0125e5b3          	or	a1,a1,s2
   24614:	00f4a423          	sw	a5,8(s1)
   24618:	00b4a623          	sw	a1,12(s1)
   2461c:	00048513          	mv	a0,s1
   24620:	02012903          	lw	s2,32(sp)
   24624:	02412483          	lw	s1,36(sp)
   24628:	03010113          	addi	sp,sp,48
   2462c:	00008067          	ret
   24630:	00012e23          	sw	zero,28(sp)
   24634:	00012c23          	sw	zero,24(sp)
   24638:	00012a23          	sw	zero,20(sp)
   2463c:	00012823          	sw	zero,16(sp)
   24640:	00000913          	li	s2,0
   24644:	f7dff06f          	j	245c0 <__floatsitf+0x100>

00024648 <__extenddftf2>:
   24648:	01465793          	srli	a5,a2,0x14
   2464c:	00c61713          	slli	a4,a2,0xc
   24650:	7ff7f793          	andi	a5,a5,2047
   24654:	fd010113          	addi	sp,sp,-48
   24658:	00c75713          	srli	a4,a4,0xc
   2465c:	00178693          	addi	a3,a5,1
   24660:	02812423          	sw	s0,40(sp)
   24664:	02912223          	sw	s1,36(sp)
   24668:	02112623          	sw	ra,44(sp)
   2466c:	00b12823          	sw	a1,16(sp)
   24670:	00e12a23          	sw	a4,20(sp)
   24674:	00012e23          	sw	zero,28(sp)
   24678:	00012c23          	sw	zero,24(sp)
   2467c:	7fe6f693          	andi	a3,a3,2046
   24680:	00050493          	mv	s1,a0
   24684:	01f65413          	srli	s0,a2,0x1f
   24688:	0a068063          	beqz	a3,24728 <__extenddftf2+0xe0>
   2468c:	000046b7          	lui	a3,0x4
   24690:	c0068693          	addi	a3,a3,-1024 # 3c00 <register_fini-0xc474>
   24694:	0045d513          	srli	a0,a1,0x4
   24698:	00d787b3          	add	a5,a5,a3
   2469c:	00475693          	srli	a3,a4,0x4
   246a0:	01c71713          	slli	a4,a4,0x1c
   246a4:	00a76733          	or	a4,a4,a0
   246a8:	01c59593          	slli	a1,a1,0x1c
   246ac:	00d12e23          	sw	a3,28(sp)
   246b0:	00e12c23          	sw	a4,24(sp)
   246b4:	00b12a23          	sw	a1,20(sp)
   246b8:	00012823          	sw	zero,16(sp)
   246bc:	01c12703          	lw	a4,28(sp)
   246c0:	01179793          	slli	a5,a5,0x11
   246c4:	800106b7          	lui	a3,0x80010
   246c8:	00e11623          	sh	a4,12(sp)
   246cc:	00c12703          	lw	a4,12(sp)
   246d0:	0117d793          	srli	a5,a5,0x11
   246d4:	fff68693          	addi	a3,a3,-1 # 8000ffff <__BSS_END__+0x7ffe9517>
   246d8:	00d77733          	and	a4,a4,a3
   246dc:	01079793          	slli	a5,a5,0x10
   246e0:	00f767b3          	or	a5,a4,a5
   246e4:	01012703          	lw	a4,16(sp)
   246e8:	00179793          	slli	a5,a5,0x1
   246ec:	01f41413          	slli	s0,s0,0x1f
   246f0:	00e4a023          	sw	a4,0(s1)
   246f4:	01412703          	lw	a4,20(sp)
   246f8:	0017d793          	srli	a5,a5,0x1
   246fc:	0087e7b3          	or	a5,a5,s0
   24700:	00e4a223          	sw	a4,4(s1)
   24704:	01812703          	lw	a4,24(sp)
   24708:	02c12083          	lw	ra,44(sp)
   2470c:	02812403          	lw	s0,40(sp)
   24710:	00e4a423          	sw	a4,8(s1)
   24714:	00f4a623          	sw	a5,12(s1)
   24718:	00048513          	mv	a0,s1
   2471c:	02412483          	lw	s1,36(sp)
   24720:	03010113          	addi	sp,sp,48
   24724:	00008067          	ret
   24728:	00b76533          	or	a0,a4,a1
   2472c:	0e079463          	bnez	a5,24814 <__extenddftf2+0x1cc>
   24730:	f80506e3          	beqz	a0,246bc <__extenddftf2+0x74>
   24734:	04070e63          	beqz	a4,24790 <__extenddftf2+0x148>
   24738:	00070513          	mv	a0,a4
   2473c:	448000ef          	jal	ra,24b84 <__clzsi2>
   24740:	03150613          	addi	a2,a0,49
   24744:	40565693          	srai	a3,a2,0x5
   24748:	01f67613          	andi	a2,a2,31
   2474c:	40d00733          	neg	a4,a3
   24750:	04060663          	beqz	a2,2479c <__extenddftf2+0x154>
   24754:	00271713          	slli	a4,a4,0x2
   24758:	01010313          	addi	t1,sp,16
   2475c:	00c70713          	addi	a4,a4,12
   24760:	02000793          	li	a5,32
   24764:	00e30733          	add	a4,t1,a4
   24768:	00269813          	slli	a6,a3,0x2
   2476c:	40c787b3          	sub	a5,a5,a2
   24770:	08e31063          	bne	t1,a4,247f0 <__extenddftf2+0x1a8>
   24774:	02010793          	addi	a5,sp,32
   24778:	01078833          	add	a6,a5,a6
   2477c:	01012783          	lw	a5,16(sp)
   24780:	fff68713          	addi	a4,a3,-1
   24784:	00c79633          	sll	a2,a5,a2
   24788:	fec82823          	sw	a2,-16(a6)
   2478c:	0380006f          	j	247c4 <__extenddftf2+0x17c>
   24790:	3f4000ef          	jal	ra,24b84 <__clzsi2>
   24794:	02050513          	addi	a0,a0,32
   24798:	fa9ff06f          	j	24740 <__extenddftf2+0xf8>
   2479c:	01c10613          	addi	a2,sp,28
   247a0:	00271713          	slli	a4,a4,0x2
   247a4:	00300793          	li	a5,3
   247a8:	00e605b3          	add	a1,a2,a4
   247ac:	0005a583          	lw	a1,0(a1)
   247b0:	fff78793          	addi	a5,a5,-1
   247b4:	ffc60613          	addi	a2,a2,-4
   247b8:	00b62223          	sw	a1,4(a2)
   247bc:	fed7d6e3          	bge	a5,a3,247a8 <__extenddftf2+0x160>
   247c0:	fff68713          	addi	a4,a3,-1
   247c4:	fff00693          	li	a3,-1
   247c8:	00271793          	slli	a5,a4,0x2
   247cc:	01010613          	addi	a2,sp,16
   247d0:	00f607b3          	add	a5,a2,a5
   247d4:	0007a023          	sw	zero,0(a5)
   247d8:	fff70713          	addi	a4,a4,-1
   247dc:	fed716e3          	bne	a4,a3,247c8 <__extenddftf2+0x180>
   247e0:	000047b7          	lui	a5,0x4
   247e4:	c0c78793          	addi	a5,a5,-1012 # 3c0c <register_fini-0xc468>
   247e8:	40a787b3          	sub	a5,a5,a0
   247ec:	ed1ff06f          	j	246bc <__extenddftf2+0x74>
   247f0:	ffc72583          	lw	a1,-4(a4)
   247f4:	00072883          	lw	a7,0(a4)
   247f8:	01070e33          	add	t3,a4,a6
   247fc:	00f5d5b3          	srl	a1,a1,a5
   24800:	00c898b3          	sll	a7,a7,a2
   24804:	0115e5b3          	or	a1,a1,a7
   24808:	00be2023          	sw	a1,0(t3)
   2480c:	ffc70713          	addi	a4,a4,-4
   24810:	f61ff06f          	j	24770 <__extenddftf2+0x128>
   24814:	000087b7          	lui	a5,0x8
   24818:	02050863          	beqz	a0,24848 <__extenddftf2+0x200>
   2481c:	01c71793          	slli	a5,a4,0x1c
   24820:	0045d693          	srli	a3,a1,0x4
   24824:	00d7e7b3          	or	a5,a5,a3
   24828:	00f12c23          	sw	a5,24(sp)
   2482c:	00475713          	srli	a4,a4,0x4
   24830:	000087b7          	lui	a5,0x8
   24834:	01c59593          	slli	a1,a1,0x1c
   24838:	00f76733          	or	a4,a4,a5
   2483c:	00b12a23          	sw	a1,20(sp)
   24840:	00012823          	sw	zero,16(sp)
   24844:	00e12e23          	sw	a4,28(sp)
   24848:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   2484c:	e71ff06f          	j	246bc <__extenddftf2+0x74>

00024850 <__trunctfdf2>:
   24850:	00c52583          	lw	a1,12(a0)
   24854:	00852783          	lw	a5,8(a0)
   24858:	00452703          	lw	a4,4(a0)
   2485c:	fe010113          	addi	sp,sp,-32
   24860:	00052683          	lw	a3,0(a0)
   24864:	00f12423          	sw	a5,8(sp)
   24868:	00f12c23          	sw	a5,24(sp)
   2486c:	01059793          	slli	a5,a1,0x10
   24870:	00e12223          	sw	a4,4(sp)
   24874:	00e12a23          	sw	a4,20(sp)
   24878:	0107d793          	srli	a5,a5,0x10
   2487c:	00159713          	slli	a4,a1,0x1
   24880:	00b12623          	sw	a1,12(sp)
   24884:	00d12023          	sw	a3,0(sp)
   24888:	00d12823          	sw	a3,16(sp)
   2488c:	00f12e23          	sw	a5,28(sp)
   24890:	01175713          	srli	a4,a4,0x11
   24894:	01f5d593          	srli	a1,a1,0x1f
   24898:	01010313          	addi	t1,sp,16
   2489c:	01c10613          	addi	a2,sp,28
   248a0:	00062783          	lw	a5,0(a2)
   248a4:	ffc62683          	lw	a3,-4(a2)
   248a8:	ffc60613          	addi	a2,a2,-4
   248ac:	00379793          	slli	a5,a5,0x3
   248b0:	01d6d693          	srli	a3,a3,0x1d
   248b4:	00d7e7b3          	or	a5,a5,a3
   248b8:	00f62223          	sw	a5,4(a2)
   248bc:	fec312e3          	bne	t1,a2,248a0 <__trunctfdf2+0x50>
   248c0:	01012683          	lw	a3,16(sp)
   248c4:	00170793          	addi	a5,a4,1
   248c8:	00369513          	slli	a0,a3,0x3
   248cc:	000086b7          	lui	a3,0x8
   248d0:	ffe68693          	addi	a3,a3,-2 # 7ffe <register_fini-0x8076>
   248d4:	00a12823          	sw	a0,16(sp)
   248d8:	00d7f7b3          	and	a5,a5,a3
   248dc:	1a078a63          	beqz	a5,24a90 <__trunctfdf2+0x240>
   248e0:	ffffc7b7          	lui	a5,0xffffc
   248e4:	40078793          	addi	a5,a5,1024 # ffffc400 <__BSS_END__+0xfffd5918>
   248e8:	00f70733          	add	a4,a4,a5
   248ec:	7fe00793          	li	a5,2046
   248f0:	1ee7cc63          	blt	a5,a4,24ae8 <__trunctfdf2+0x298>
   248f4:	06e05863          	blez	a4,24964 <__trunctfdf2+0x114>
   248f8:	01812803          	lw	a6,24(sp)
   248fc:	01c12603          	lw	a2,28(sp)
   24900:	01412783          	lw	a5,20(sp)
   24904:	01c85693          	srli	a3,a6,0x1c
   24908:	00461613          	slli	a2,a2,0x4
   2490c:	00d66633          	or	a2,a2,a3
   24910:	00479693          	slli	a3,a5,0x4
   24914:	00a6e6b3          	or	a3,a3,a0
   24918:	01c7d793          	srli	a5,a5,0x1c
   2491c:	00481813          	slli	a6,a6,0x4
   24920:	00d036b3          	snez	a3,a3
   24924:	0107e7b3          	or	a5,a5,a6
   24928:	00f6e6b3          	or	a3,a3,a5
   2492c:	00c12a23          	sw	a2,20(sp)
   24930:	00d12823          	sw	a3,16(sp)
   24934:	01012683          	lw	a3,16(sp)
   24938:	01412783          	lw	a5,20(sp)
   2493c:	0076f613          	andi	a2,a3,7
   24940:	1a060a63          	beqz	a2,24af4 <__trunctfdf2+0x2a4>
   24944:	00f6f613          	andi	a2,a3,15
   24948:	00400513          	li	a0,4
   2494c:	1aa60463          	beq	a2,a0,24af4 <__trunctfdf2+0x2a4>
   24950:	00468613          	addi	a2,a3,4
   24954:	00d636b3          	sltu	a3,a2,a3
   24958:	00d787b3          	add	a5,a5,a3
   2495c:	00060693          	mv	a3,a2
   24960:	1940006f          	j	24af4 <__trunctfdf2+0x2a4>
   24964:	fcc00793          	li	a5,-52
   24968:	00f75c63          	bge	a4,a5,24980 <__trunctfdf2+0x130>
   2496c:	00012a23          	sw	zero,20(sp)
   24970:	00100793          	li	a5,1
   24974:	00f12823          	sw	a5,16(sp)
   24978:	00000713          	li	a4,0
   2497c:	fb9ff06f          	j	24934 <__trunctfdf2+0xe4>
   24980:	01c12783          	lw	a5,28(sp)
   24984:	000806b7          	lui	a3,0x80
   24988:	00000e13          	li	t3,0
   2498c:	00d7e7b3          	or	a5,a5,a3
   24990:	00f12e23          	sw	a5,28(sp)
   24994:	03d00793          	li	a5,61
   24998:	40e78733          	sub	a4,a5,a4
   2499c:	40575513          	srai	a0,a4,0x5
   249a0:	00030693          	mv	a3,t1
   249a4:	01f77713          	andi	a4,a4,31
   249a8:	00000793          	li	a5,0
   249ac:	0006a803          	lw	a6,0(a3) # 80000 <__BSS_END__+0x59518>
   249b0:	00178793          	addi	a5,a5,1
   249b4:	00468693          	addi	a3,a3,4
   249b8:	010e6e33          	or	t3,t3,a6
   249bc:	fef518e3          	bne	a0,a5,249ac <__trunctfdf2+0x15c>
   249c0:	00251693          	slli	a3,a0,0x2
   249c4:	04071663          	bnez	a4,24a10 <__trunctfdf2+0x1c0>
   249c8:	00300793          	li	a5,3
   249cc:	40a78533          	sub	a0,a5,a0
   249d0:	00d607b3          	add	a5,a2,a3
   249d4:	0007a783          	lw	a5,0(a5)
   249d8:	00170713          	addi	a4,a4,1
   249dc:	00460613          	addi	a2,a2,4
   249e0:	fef62e23          	sw	a5,-4(a2)
   249e4:	fee556e3          	bge	a0,a4,249d0 <__trunctfdf2+0x180>
   249e8:	00400693          	li	a3,4
   249ec:	00271793          	slli	a5,a4,0x2
   249f0:	00f307b3          	add	a5,t1,a5
   249f4:	0007a023          	sw	zero,0(a5)
   249f8:	00170713          	addi	a4,a4,1
   249fc:	fed718e3          	bne	a4,a3,249ec <__trunctfdf2+0x19c>
   24a00:	01012703          	lw	a4,16(sp)
   24a04:	01c037b3          	snez	a5,t3
   24a08:	00f767b3          	or	a5,a4,a5
   24a0c:	f69ff06f          	j	24974 <__trunctfdf2+0x124>
   24a10:	02010793          	addi	a5,sp,32
   24a14:	00d787b3          	add	a5,a5,a3
   24a18:	ff07a783          	lw	a5,-16(a5)
   24a1c:	02000893          	li	a7,32
   24a20:	40e888b3          	sub	a7,a7,a4
   24a24:	011797b3          	sll	a5,a5,a7
   24a28:	00fe6e33          	or	t3,t3,a5
   24a2c:	00300793          	li	a5,3
   24a30:	00d306b3          	add	a3,t1,a3
   24a34:	00000813          	li	a6,0
   24a38:	40a787b3          	sub	a5,a5,a0
   24a3c:	00468693          	addi	a3,a3,4
   24a40:	02f84463          	blt	a6,a5,24a68 <__trunctfdf2+0x218>
   24a44:	02010693          	addi	a3,sp,32
   24a48:	00279793          	slli	a5,a5,0x2
   24a4c:	00f687b3          	add	a5,a3,a5
   24a50:	01c12683          	lw	a3,28(sp)
   24a54:	00e6d733          	srl	a4,a3,a4
   24a58:	fee7a823          	sw	a4,-16(a5)
   24a5c:	00400713          	li	a4,4
   24a60:	40a70733          	sub	a4,a4,a0
   24a64:	f85ff06f          	j	249e8 <__trunctfdf2+0x198>
   24a68:	ffc6a603          	lw	a2,-4(a3)
   24a6c:	0006af03          	lw	t5,0(a3)
   24a70:	00281e93          	slli	t4,a6,0x2
   24a74:	00e65633          	srl	a2,a2,a4
   24a78:	011f1f33          	sll	t5,t5,a7
   24a7c:	01d30eb3          	add	t4,t1,t4
   24a80:	01e66633          	or	a2,a2,t5
   24a84:	00cea023          	sw	a2,0(t4)
   24a88:	00180813          	addi	a6,a6,1
   24a8c:	fb1ff06f          	j	24a3c <__trunctfdf2+0x1ec>
   24a90:	01412603          	lw	a2,20(sp)
   24a94:	01812783          	lw	a5,24(sp)
   24a98:	01c12803          	lw	a6,28(sp)
   24a9c:	00f666b3          	or	a3,a2,a5
   24aa0:	0106e6b3          	or	a3,a3,a6
   24aa4:	00a6e6b3          	or	a3,a3,a0
   24aa8:	00071863          	bnez	a4,24ab8 <__trunctfdf2+0x268>
   24aac:	00d036b3          	snez	a3,a3
   24ab0:	00000793          	li	a5,0
   24ab4:	e89ff06f          	j	2493c <__trunctfdf2+0xec>
   24ab8:	0a068c63          	beqz	a3,24b70 <__trunctfdf2+0x320>
   24abc:	01c65693          	srli	a3,a2,0x1c
   24ac0:	00481813          	slli	a6,a6,0x4
   24ac4:	00479613          	slli	a2,a5,0x4
   24ac8:	01c7d793          	srli	a5,a5,0x1c
   24acc:	00400737          	lui	a4,0x400
   24ad0:	00c6e6b3          	or	a3,a3,a2
   24ad4:	0107e7b3          	or	a5,a5,a6
   24ad8:	00e7e7b3          	or	a5,a5,a4
   24adc:	ff86f693          	andi	a3,a3,-8
   24ae0:	7ff00713          	li	a4,2047
   24ae4:	e59ff06f          	j	2493c <__trunctfdf2+0xec>
   24ae8:	00000793          	li	a5,0
   24aec:	00000693          	li	a3,0
   24af0:	7ff00713          	li	a4,2047
   24af4:	00879613          	slli	a2,a5,0x8
   24af8:	00065e63          	bgez	a2,24b14 <__trunctfdf2+0x2c4>
   24afc:	00170713          	addi	a4,a4,1 # 400001 <__BSS_END__+0x3d9519>
   24b00:	7ff00613          	li	a2,2047
   24b04:	06c70a63          	beq	a4,a2,24b78 <__trunctfdf2+0x328>
   24b08:	ff800637          	lui	a2,0xff800
   24b0c:	fff60613          	addi	a2,a2,-1 # ff7fffff <__BSS_END__+0xff7d9517>
   24b10:	00c7f7b3          	and	a5,a5,a2
   24b14:	01d79613          	slli	a2,a5,0x1d
   24b18:	0036d693          	srli	a3,a3,0x3
   24b1c:	00d666b3          	or	a3,a2,a3
   24b20:	7ff00613          	li	a2,2047
   24b24:	0037d793          	srli	a5,a5,0x3
   24b28:	00c71e63          	bne	a4,a2,24b44 <__trunctfdf2+0x2f4>
   24b2c:	00f6e6b3          	or	a3,a3,a5
   24b30:	00000793          	li	a5,0
   24b34:	00068863          	beqz	a3,24b44 <__trunctfdf2+0x2f4>
   24b38:	000807b7          	lui	a5,0x80
   24b3c:	00000693          	li	a3,0
   24b40:	00000593          	li	a1,0
   24b44:	00c79793          	slli	a5,a5,0xc
   24b48:	7ff77713          	andi	a4,a4,2047
   24b4c:	01471713          	slli	a4,a4,0x14
   24b50:	00c7d793          	srli	a5,a5,0xc
   24b54:	01f59593          	slli	a1,a1,0x1f
   24b58:	00e7e7b3          	or	a5,a5,a4
   24b5c:	00b7e733          	or	a4,a5,a1
   24b60:	00068513          	mv	a0,a3
   24b64:	00070593          	mv	a1,a4
   24b68:	02010113          	addi	sp,sp,32
   24b6c:	00008067          	ret
   24b70:	00000793          	li	a5,0
   24b74:	f7dff06f          	j	24af0 <__trunctfdf2+0x2a0>
   24b78:	00000793          	li	a5,0
   24b7c:	00000693          	li	a3,0
   24b80:	f95ff06f          	j	24b14 <__trunctfdf2+0x2c4>

00024b84 <__clzsi2>:
   24b84:	000107b7          	lui	a5,0x10
   24b88:	02f57a63          	bgeu	a0,a5,24bbc <__clzsi2+0x38>
   24b8c:	0ff00793          	li	a5,255
   24b90:	00a7b7b3          	sltu	a5,a5,a0
   24b94:	00379793          	slli	a5,a5,0x3
   24b98:	02000713          	li	a4,32
   24b9c:	40f70733          	sub	a4,a4,a5
   24ba0:	00f557b3          	srl	a5,a0,a5
   24ba4:	00001517          	auipc	a0,0x1
   24ba8:	c6850513          	addi	a0,a0,-920 # 2580c <__clz_tab>
   24bac:	00f507b3          	add	a5,a0,a5
   24bb0:	0007c503          	lbu	a0,0(a5) # 10000 <register_fini-0x74>
   24bb4:	40a70533          	sub	a0,a4,a0
   24bb8:	00008067          	ret
   24bbc:	01000737          	lui	a4,0x1000
   24bc0:	01000793          	li	a5,16
   24bc4:	fce56ae3          	bltu	a0,a4,24b98 <__clzsi2+0x14>
   24bc8:	01800793          	li	a5,24
   24bcc:	fcdff06f          	j	24b98 <__clzsi2+0x14>
