
build/RSBE01_01/main.elf:     file format elf32-powerpc


Disassembly of section .text:

800283bc <getFrameCount__16gfModelAnimationFd>:
800283bc:	80 83 00 0c 	lwz     r4,12(r3)
800283c0:	38 a0 00 00 	li      r5,0
800283c4:	2c 04 00 00 	cmpwi   r4,0
800283c8:	41 82 00 14 	beq     800283dc <getFrameCount__16gfModelAnimationFd+0x20>
800283cc:	80 84 00 2c 	lwz     r4,44(r4)
800283d0:	a0 84 00 1c 	lhz     r4,28(r4)
800283d4:	7c 80 fe 70 	srawi   r0,r4,31
800283d8:	7c 85 00 78 	andc    r5,r4,r0
800283dc:	80 83 00 08 	lwz     r4,8(r3)
800283e0:	2c 04 00 00 	cmpwi   r4,0
800283e4:	41 82 00 1c 	beq     80028400 <getFrameCount__16gfModelAnimationFd+0x44>
800283e8:	80 84 00 2c 	lwz     r4,44(r4)
800283ec:	a0 04 00 1c 	lhz     r0,28(r4)
800283f0:	7c 05 00 00 	cmpw    r5,r0
800283f4:	40 81 00 08 	ble     800283fc <getFrameCount__16gfModelAnimationFd+0x40>
800283f8:	7c a0 2b 78 	mr      r0,r5
800283fc:	7c 05 03 78 	mr      r5,r0
80028400:	80 83 00 10 	lwz     r4,16(r3)
80028404:	2c 04 00 00 	cmpwi   r4,0
80028408:	41 82 00 1c 	beq     80028424 <getFrameCount__16gfModelAnimationFd+0x68>
8002840c:	80 84 00 2c 	lwz     r4,44(r4)
80028410:	a0 04 00 2c 	lhz     r0,44(r4)
80028414:	7c 05 00 00 	cmpw    r5,r0
80028418:	40 81 00 08 	ble     80028420 <getFrameCount__16gfModelAnimationFd+0x64>
8002841c:	7c a0 2b 78 	mr      r0,r5
80028420:	7c 05 03 78 	mr      r5,r0
80028424:	80 83 00 14 	lwz     r4,20(r3)
80028428:	2c 04 00 00 	cmpwi   r4,0
8002842c:	41 82 00 1c 	beq     80028448 <getFrameCount__16gfModelAnimationFd+0x8c>
80028430:	80 84 00 2c 	lwz     r4,44(r4)
80028434:	a0 04 00 1c 	lhz     r0,28(r4)
80028438:	7c 05 00 00 	cmpw    r5,r0
8002843c:	40 81 00 08 	ble     80028444 <getFrameCount__16gfModelAnimationFd+0x88>
80028440:	7c a0 2b 78 	mr      r0,r5
80028444:	7c 05 03 78 	mr      r5,r0
80028448:	80 83 00 18 	lwz     r4,24(r3)
8002844c:	2c 04 00 00 	cmpwi   r4,0
80028450:	41 82 00 1c 	beq     8002846c <getFrameCount__16gfModelAnimationFd+0xb0>
80028454:	80 84 00 2c 	lwz     r4,44(r4)
80028458:	a0 04 00 1c 	lhz     r0,28(r4)
8002845c:	7c 05 00 00 	cmpw    r5,r0
80028460:	40 81 00 08 	ble     80028468 <getFrameCount__16gfModelAnimationFd+0xac>
80028464:	7c a0 2b 78 	mr      r0,r5
80028468:	7c 05 03 78 	mr      r5,r0
8002846c:	80 63 00 1c 	lwz     r3,28(r3)
80028470:	2c 03 00 00 	cmpwi   r3,0
80028474:	41 82 00 1c 	beq     80028490 <getFrameCount__16gfModelAnimationFd+0xd4>
80028478:	80 63 00 2c 	lwz     r3,44(r3)
8002847c:	a0 03 00 20 	lhz     r0,32(r3)
80028480:	7c 05 00 00 	cmpw    r5,r0
80028484:	40 81 00 08 	ble     8002848c <getFrameCount__16gfModelAnimationFd+0xd0>
80028488:	7c a0 2b 78 	mr      r0,r5
8002848c:	7c 05 03 78 	mr      r5,r0
80028490:	7c a3 2b 78 	mr      r3,r5
80028494:	4e 80 00 20 	blr

80028498 <setFrame__16gfModelAnimationFd>:
80028498:	94 21 ff e0 	stwu    r1,-32(r1)
8002849c:	7c 08 02 a6 	mflr    r0
800284a0:	90 01 00 24 	stw     r0,36(r1)
800284a4:	db e1 00 18 	stfd    f31,24(r1)
800284a8:	ff e0 08 90 	fmr     f31,f1
800284ac:	93 e1 00 14 	stw     r31,20(r1)
800284b0:	7c 7f 1b 78 	mr      r31,r3
800284b4:	80 03 00 0c 	lwz     r0,12(r3)
800284b8:	2c 00 00 00 	cmpwi   r0,0
800284bc:	41 82 00 18 	beq     800284d4 <setFrame__16gfModelAnimationFd+0x3c>
800284c0:	7c 03 03 78 	mr      r3,r0
800284c4:	81 83 00 00 	lwz     r12,0(r3)
800284c8:	81 8c 00 1c 	lwz     r12,28(r12)
800284cc:	7d 89 03 a6 	mtctr   r12
800284d0:	4e 80 04 21 	bctrl
800284d4:	80 7f 00 08 	lwz     r3,8(r31)
800284d8:	2c 03 00 00 	cmpwi   r3,0
800284dc:	41 82 00 18 	beq     800284f4 <setFrame__16gfModelAnimationFd+0x5c>
800284e0:	81 83 00 00 	lwz     r12,0(r3)
800284e4:	fc 20 f8 90 	fmr     f1,f31
800284e8:	81 8c 00 1c 	lwz     r12,28(r12)
800284ec:	7d 89 03 a6 	mtctr   r12
800284f0:	4e 80 04 21 	bctrl
800284f4:	80 7f 00 10 	lwz     r3,16(r31)
800284f8:	2c 03 00 00 	cmpwi   r3,0
800284fc:	41 82 00 18 	beq     80028514 <setFrame__16gfModelAnimationFd+0x7c>
80028500:	81 83 00 00 	lwz     r12,0(r3)
80028504:	fc 20 f8 90 	fmr     f1,f31
80028508:	81 8c 00 1c 	lwz     r12,28(r12)
8002850c:	7d 89 03 a6 	mtctr   r12
80028510:	4e 80 04 21 	bctrl
80028514:	80 7f 00 14 	lwz     r3,20(r31)
80028518:	2c 03 00 00 	cmpwi   r3,0
8002851c:	41 82 00 18 	beq     80028534 <setFrame__16gfModelAnimationFd+0x9c>
80028520:	81 83 00 00 	lwz     r12,0(r3)
80028524:	fc 20 f8 90 	fmr     f1,f31
80028528:	81 8c 00 1c 	lwz     r12,28(r12)
8002852c:	7d 89 03 a6 	mtctr   r12
80028530:	4e 80 04 21 	bctrl
80028534:	80 7f 00 18 	lwz     r3,24(r31)
80028538:	2c 03 00 00 	cmpwi   r3,0
8002853c:	41 82 00 18 	beq     80028554 <setFrame__16gfModelAnimationFd+0xbc>
80028540:	81 83 00 00 	lwz     r12,0(r3)
80028544:	fc 20 f8 90 	fmr     f1,f31
80028548:	81 8c 00 1c 	lwz     r12,28(r12)
8002854c:	7d 89 03 a6 	mtctr   r12
80028550:	4e 80 04 21 	bctrl
80028554:	80 7f 00 1c 	lwz     r3,28(r31)
80028558:	2c 03 00 00 	cmpwi   r3,0
8002855c:	41 82 00 18 	beq     80028574 <setFrame__16gfModelAnimationFd+0xdc>
80028560:	81 83 00 00 	lwz     r12,0(r3)
80028564:	fc 20 f8 90 	fmr     f1,f31
80028568:	81 8c 00 1c 	lwz     r12,28(r12)
8002856c:	7d 89 03 a6 	mtctr   r12
80028570:	4e 80 04 21 	bctrl
80028574:	80 01 00 24 	lwz     r0,36(r1)
80028578:	cb e1 00 18 	lfd     f31,24(r1)
8002857c:	83 e1 00 14 	lwz     r31,20(r1)
80028580:	7c 08 03 a6 	mtlr    r0
80028584:	38 21 00 20 	addi    r1,r1,32
80028588:	4e 80 00 20 	blr

8002858c <getFrame__16gfModelAnimationFd>:
8002858c:	80 03 00 0c 	lwz     r0,12(r3)
80028590:	c0 22 82 00 	lfs     f1,-32256(r2)
80028594:	2c 00 00 00 	cmpwi   r0,0
80028598:	41 82 00 18 	beq     800285b0 <getFrame__16gfModelAnimationFd+0x24>
8002859c:	7c 03 03 78 	mr      r3,r0
800285a0:	81 83 00 00 	lwz     r12,0(r3)
800285a4:	81 8c 00 20 	lwz     r12,32(r12)
800285a8:	7d 89 03 a6 	mtctr   r12
800285ac:	4e 80 04 20 	bctr
800285b0:	80 03 00 08 	lwz     r0,8(r3)
800285b4:	2c 00 00 00 	cmpwi   r0,0
800285b8:	41 82 00 18 	beq     800285d0 <getFrame__16gfModelAnimationFd+0x44>
800285bc:	7c 03 03 78 	mr      r3,r0
800285c0:	81 83 00 00 	lwz     r12,0(r3)
800285c4:	81 8c 00 20 	lwz     r12,32(r12)
800285c8:	7d 89 03 a6 	mtctr   r12
800285cc:	4e 80 04 20 	bctr
800285d0:	80 03 00 10 	lwz     r0,16(r3)
800285d4:	2c 00 00 00 	cmpwi   r0,0
800285d8:	41 82 00 18 	beq     800285f0 <getFrame__16gfModelAnimationFd+0x64>
800285dc:	7c 03 03 78 	mr      r3,r0
800285e0:	81 83 00 00 	lwz     r12,0(r3)
800285e4:	81 8c 00 20 	lwz     r12,32(r12)
800285e8:	7d 89 03 a6 	mtctr   r12
800285ec:	4e 80 04 20 	bctr
800285f0:	80 03 00 14 	lwz     r0,20(r3)
800285f4:	2c 00 00 00 	cmpwi   r0,0
800285f8:	41 82 00 18 	beq     80028610 <getFrame__16gfModelAnimationFd+0x84>
800285fc:	7c 03 03 78 	mr      r3,r0
80028600:	81 83 00 00 	lwz     r12,0(r3)
80028604:	81 8c 00 20 	lwz     r12,32(r12)
80028608:	7d 89 03 a6 	mtctr   r12
8002860c:	4e 80 04 20 	bctr
80028610:	80 03 00 18 	lwz     r0,24(r3)
80028614:	2c 00 00 00 	cmpwi   r0,0
80028618:	41 82 00 18 	beq     80028630 <getFrame__16gfModelAnimationFd+0xa4>
8002861c:	7c 03 03 78 	mr      r3,r0
80028620:	81 83 00 00 	lwz     r12,0(r3)
80028624:	81 8c 00 20 	lwz     r12,32(r12)
80028628:	7d 89 03 a6 	mtctr   r12
8002862c:	4e 80 04 20 	bctr
80028630:	80 63 00 1c 	lwz     r3,28(r3)
80028634:	2c 03 00 00 	cmpwi   r3,0
80028638:	4d 82 00 20 	beqlr
8002863c:	81 83 00 00 	lwz     r12,0(r3)
80028640:	81 8c 00 20 	lwz     r12,32(r12)
80028644:	7d 89 03 a6 	mtctr   r12
80028648:	4e 80 04 20 	bctr
8002864c:	4e 80 00 20 	blr
