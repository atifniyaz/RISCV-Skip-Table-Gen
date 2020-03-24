
sparse_matrix.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <main>:
   0:	df010113          	addi	sp,sp,-528
   4:	20112623          	sw	ra,524(sp)
   8:	20812423          	sw	s0,520(sp)
   c:	20912223          	sw	s1,516(sp)
  10:	21010413          	addi	s0,sp,528
  14:	dea42e23          	sw	a0,-516(s0)
  18:	deb42c23          	sw	a1,-520(s0)
  1c:	000007b7          	lui	a5,0x0
  20:	00078793          	mv	a5,a5
  24:	0007ae03          	lw	t3,0(a5) # 0 <main>
  28:	0047a303          	lw	t1,4(a5)
  2c:	0087a883          	lw	a7,8(a5)
  30:	00c7a803          	lw	a6,12(a5)
  34:	0107a503          	lw	a0,16(a5)
  38:	0147a583          	lw	a1,20(a5)
  3c:	0187a603          	lw	a2,24(a5)
  40:	01c7a683          	lw	a3,28(a5)
  44:	0207a703          	lw	a4,32(a5)
  48:	0247a783          	lw	a5,36(a5)
  4c:	fdc42023          	sw	t3,-64(s0)
  50:	fc642223          	sw	t1,-60(s0)
  54:	fd142423          	sw	a7,-56(s0)
  58:	fd042623          	sw	a6,-52(s0)
  5c:	fca42823          	sw	a0,-48(s0)
  60:	fcb42a23          	sw	a1,-44(s0)
  64:	fcc42c23          	sw	a2,-40(s0)
  68:	fcd42e23          	sw	a3,-36(s0)
  6c:	fee42023          	sw	a4,-32(s0)
  70:	fef42223          	sw	a5,-28(s0)
  74:	000007b7          	lui	a5,0x0
  78:	00078793          	mv	a5,a5
  7c:	0007ae03          	lw	t3,0(a5) # 0 <main>
  80:	0047a303          	lw	t1,4(a5)
  84:	0087a883          	lw	a7,8(a5)
  88:	00c7a803          	lw	a6,12(a5)
  8c:	0107a503          	lw	a0,16(a5)
  90:	0147a583          	lw	a1,20(a5)
  94:	0187a603          	lw	a2,24(a5)
  98:	01c7a683          	lw	a3,28(a5)
  9c:	0207a703          	lw	a4,32(a5)
  a0:	0247a783          	lw	a5,36(a5)
  a4:	f9c42c23          	sw	t3,-104(s0)
  a8:	f8642e23          	sw	t1,-100(s0)
  ac:	fb142023          	sw	a7,-96(s0)
  b0:	fb042223          	sw	a6,-92(s0)
  b4:	faa42423          	sw	a0,-88(s0)
  b8:	fab42623          	sw	a1,-84(s0)
  bc:	fac42823          	sw	a2,-80(s0)
  c0:	fad42a23          	sw	a3,-76(s0)
  c4:	fae42c23          	sw	a4,-72(s0)
  c8:	faf42e23          	sw	a5,-68(s0)
  cc:	e0840793          	addi	a5,s0,-504
  d0:	19000713          	li	a4,400
  d4:	00070613          	mv	a2,a4
  d8:	00000593          	li	a1,0
  dc:	00078513          	mv	a0,a5
  e0:	00000097          	auipc	ra,0x0
  e4:	000080e7          	jalr	ra # e0 <main+0xe0>
  e8:	fe042623          	sw	zero,-20(s0)
  ec:	0a00006f          	j	18c <.L2>

000000f0 <.L5>:
  f0:	fe042423          	sw	zero,-24(s0)
  f4:	0800006f          	j	174 <.L3>

000000f8 <.L4>:
  f8:	fec42783          	lw	a5,-20(s0)
  fc:	00279793          	slli	a5,a5,0x2
 100:	ff040713          	addi	a4,s0,-16
 104:	00f707b3          	add	a5,a4,a5
 108:	fd07a683          	lw	a3,-48(a5)
 10c:	fe842783          	lw	a5,-24(s0)
 110:	00279793          	slli	a5,a5,0x2
 114:	ff040713          	addi	a4,s0,-16
 118:	00f707b3          	add	a5,a4,a5
 11c:	fa87a603          	lw	a2,-88(a5)
 120:	fec42703          	lw	a4,-20(s0)
 124:	00070793          	mv	a5,a4
 128:	00279793          	slli	a5,a5,0x2
 12c:	00e787b3          	add	a5,a5,a4
 130:	00179793          	slli	a5,a5,0x1
 134:	00078713          	mv	a4,a5
 138:	fe842783          	lw	a5,-24(s0)
 13c:	00f704b3          	add	s1,a4,a5
 140:	00060593          	mv	a1,a2
 144:	00068513          	mv	a0,a3
 148:	00000097          	auipc	ra,0x0
 14c:	000080e7          	jalr	ra # 148 <.L4+0x50>
 150:	00050793          	mv	a5,a0
 154:	00078713          	mv	a4,a5
 158:	00249793          	slli	a5,s1,0x2
 15c:	ff040693          	addi	a3,s0,-16
 160:	00f687b3          	add	a5,a3,a5
 164:	e0e7ac23          	sw	a4,-488(a5)
 168:	fe842783          	lw	a5,-24(s0)
 16c:	00178793          	addi	a5,a5,1
 170:	fef42423          	sw	a5,-24(s0)

00000174 <.L3>:
 174:	fe842703          	lw	a4,-24(s0)
 178:	00900793          	li	a5,9
 17c:	f6e7dee3          	bge	a5,a4,f8 <.L4>
 180:	fec42783          	lw	a5,-20(s0)
 184:	00178793          	addi	a5,a5,1
 188:	fef42623          	sw	a5,-20(s0)

0000018c <.L2>:
 18c:	fec42703          	lw	a4,-20(s0)
 190:	00900793          	li	a5,9
 194:	f4e7dee3          	bge	a5,a4,f0 <.L5>
 198:	fe042623          	sw	zero,-20(s0)
 19c:	0680006f          	j	204 <.L6>

000001a0 <.L8>:
 1a0:	fec42783          	lw	a5,-20(s0)
 1a4:	00279793          	slli	a5,a5,0x2
 1a8:	ff040713          	addi	a4,s0,-16
 1ac:	00f707b3          	add	a5,a4,a5
 1b0:	e187a783          	lw	a5,-488(a5)
 1b4:	00078593          	mv	a1,a5
 1b8:	000007b7          	lui	a5,0x0
 1bc:	00078513          	mv	a0,a5
 1c0:	00000097          	auipc	ra,0x0
 1c4:	000080e7          	jalr	ra # 1c0 <.L8+0x20>
 1c8:	fec42783          	lw	a5,-20(s0)
 1cc:	00a00593          	li	a1,10
 1d0:	00078513          	mv	a0,a5
 1d4:	00000097          	auipc	ra,0x0
 1d8:	000080e7          	jalr	ra # 1d4 <.L8+0x34>
 1dc:	00050793          	mv	a5,a0
 1e0:	00078713          	mv	a4,a5
 1e4:	00900793          	li	a5,9
 1e8:	00f71863          	bne	a4,a5,1f8 <.L7>
 1ec:	00a00513          	li	a0,10
 1f0:	00000097          	auipc	ra,0x0
 1f4:	000080e7          	jalr	ra # 1f0 <.L8+0x50>

000001f8 <.L7>:
 1f8:	fec42783          	lw	a5,-20(s0)
 1fc:	00178793          	addi	a5,a5,1 # 1 <main+0x1>
 200:	fef42623          	sw	a5,-20(s0)

00000204 <.L6>:
 204:	fec42703          	lw	a4,-20(s0)
 208:	06300793          	li	a5,99
 20c:	f8e7dae3          	bge	a5,a4,1a0 <.L8>
 210:	00000793          	li	a5,0
 214:	00078513          	mv	a0,a5
 218:	20c12083          	lw	ra,524(sp)
 21c:	20812403          	lw	s0,520(sp)
 220:	20412483          	lw	s1,516(sp)
 224:	21010113          	addi	sp,sp,528
 228:	00008067          	ret
