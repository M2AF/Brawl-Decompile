
build/RSBE01_01/main.elf:     file format elf32-powerpc


Disassembly of section .text:

8003e918 <fn_8003E918>:
8003e918:	94 21 ff d0 	stwu    r1,-48(r1)
8003e91c:	7c 08 02 a6 	mflr    r0
8003e920:	90 01 00 34 	stw     r0,52(r1)
8003e924:	db e1 00 20 	stfd    f31,32(r1)
8003e928:	f3 e1 00 28 	psq_st  f31,40(r1),0,0
8003e92c:	db c1 00 10 	stfd    f30,16(r1)
8003e930:	f3 c1 00 18 	xscmpeqdp vs30,vs1,vs0
8003e934:	ff c0 08 90 	fmr     f30,f1
8003e938:	93 e1 00 0c 	stw     r31,12(r1)
8003e93c:	7c 7f 1b 78 	mr      r31,r3
8003e940:	48 3c 20 a1 	bl      804009e0 <sin>
8003e944:	ff e0 08 18 	frsp    f31,f1
8003e948:	fc 20 f0 90 	fmr     f1,f30
8003e94c:	48 3c 1b 8d 	bl      804004d8 <cos>
8003e950:	c0 42 84 08 	lfs     f2,-31736(r2)
8003e954:	fc 60 08 18 	frsp    f3,f1
8003e958:	c0 02 84 0c 	lfs     f0,-31732(r2)
8003e95c:	10 20 14 20 	vmhaddshs v1,v0,v2,v16
8003e960:	10 02 04 20 	vmhaddshs v0,v2,v0,v16
8003e964:	f0 3f 00 00 	xsaddsp vs1,vs31,vs0
8003e968:	f0 5f 00 08 	xsmaddasp vs2,vs31,vs0
8003e96c:	f0 1f 00 10 	xxsldwi vs0,vs31,vs0,0
8003e970:	f0 5f 00 18 	xscmpeqdp vs2,vs31,vs0
8003e974:	f0 5f 00 20 	psq_st  f2,32(r31),0,0
8003e978:	f0 3f 00 28 	psq_st  f1,40(r31),0,0
8003e97c:	fc 00 f8 50 	fneg    f0,f31
8003e980:	d0 7f 00 00 	stfs    f3,0(r31)
8003e984:	d3 ff 00 08 	stfs    f31,8(r31)
8003e988:	d0 1f 00 20 	stfs    f0,32(r31)
8003e98c:	d0 7f 00 28 	stfs    f3,40(r31)
8003e990:	e3 e1 00 28 	psq_l   f31,40(r1),0,0
8003e994:	cb e1 00 20 	lfd     f31,32(r1)
8003e998:	e3 c1 00 18 	lq      r30,16(r1)
8003e99c:	cb c1 00 10 	lfd     f30,16(r1)
8003e9a0:	83 e1 00 0c 	lwz     r31,12(r1)
8003e9a4:	80 01 00 34 	lwz     r0,52(r1)
8003e9a8:	7c 08 03 a6 	mtlr    r0
8003e9ac:	38 21 00 30 	addi    r1,r1,48
8003e9b0:	4e 80 00 20 	blr

8003e9b4 <fn_8003E9B4>:
8003e9b4:	94 21 ff d0 	stwu    r1,-48(r1)
8003e9b8:	7c 08 02 a6 	mflr    r0
8003e9bc:	90 01 00 34 	stw     r0,52(r1)
8003e9c0:	db e1 00 20 	stfd    f31,32(r1)
8003e9c4:	f3 e1 00 28 	psq_st  f31,40(r1),0,0
8003e9c8:	db c1 00 10 	stfd    f30,16(r1)
8003e9cc:	f3 c1 00 18 	xscmpeqdp vs30,vs1,vs0
8003e9d0:	ff c0 08 90 	fmr     f30,f1
8003e9d4:	93 e1 00 0c 	stw     r31,12(r1)
8003e9d8:	7c 7f 1b 78 	mr      r31,r3
8003e9dc:	48 3c 20 05 	bl      804009e0 <sin>
8003e9e0:	ff e0 08 18 	frsp    f31,f1
8003e9e4:	fc 20 f0 90 	fmr     f1,f30
8003e9e8:	48 3c 1a f1 	bl      804004d8 <cos>
8003e9ec:	c0 42 84 08 	lfs     f2,-31736(r2)
8003e9f0:	fc 60 08 18 	frsp    f3,f1
8003e9f4:	c0 02 84 0c 	lfs     f0,-31732(r2)
8003e9f8:	10 20 14 20 	vmhaddshs v1,v0,v2,v16
8003e9fc:	10 02 04 20 	vmhaddshs v0,v2,v0,v16
8003ea00:	f0 3f 00 00 	xsaddsp vs1,vs31,vs0
8003ea04:	f0 5f 00 08 	xsmaddasp vs2,vs31,vs0
8003ea08:	f0 1f 00 10 	xxsldwi vs0,vs31,vs0,0
8003ea0c:	f0 5f 00 18 	xscmpeqdp vs2,vs31,vs0
8003ea10:	f0 5f 00 20 	psq_st  f2,32(r31),0,0
8003ea14:	f0 3f 00 28 	psq_st  f1,40(r31),0,0
8003ea18:	fc 00 f8 50 	fneg    f0,f31
8003ea1c:	d0 7f 00 00 	stfs    f3,0(r31)
8003ea20:	d0 1f 00 04 	stfs    f0,4(r31)
8003ea24:	d3 ff 00 10 	stfs    f31,16(r31)
8003ea28:	d0 7f 00 14 	stfs    f3,20(r31)
8003ea2c:	e3 e1 00 28 	psq_l   f31,40(r1),0,0
8003ea30:	cb e1 00 20 	lfd     f31,32(r1)
8003ea34:	e3 c1 00 18 	lq      r30,16(r1)
8003ea38:	cb c1 00 10 	lfd     f30,16(r1)
8003ea3c:	83 e1 00 0c 	lwz     r31,12(r1)
8003ea40:	80 01 00 34 	lwz     r0,52(r1)
8003ea44:	7c 08 03 a6 	mtlr    r0
8003ea48:	38 21 00 30 	addi    r1,r1,48
8003ea4c:	4e 80 00 20 	blr

8003ea50 <fn_8003EA50>:
8003ea50:	94 21 ff c0 	stwu    r1,-64(r1)
8003ea54:	7c 08 02 a6 	mflr    r0
8003ea58:	c0 24 00 00 	lfs     f1,0(r4)
8003ea5c:	90 01 00 44 	stw     r0,68(r1)
8003ea60:	c0 44 00 04 	lfs     f2,4(r4)
8003ea64:	93 e1 00 3c 	stw     r31,60(r1)
8003ea68:	7c 7f 1b 78 	mr      r31,r3
8003ea6c:	c0 64 00 08 	lfs     f3,8(r4)
8003ea70:	38 61 00 08 	addi    r3,r1,8
8003ea74:	48 00 02 2d 	bl      8003eca0 <fn_8003ECA0>
8003ea78:	7f e3 fb 78 	mr      r3,r31
8003ea7c:	7f e5 fb 78 	mr      r5,r31
8003ea80:	38 81 00 08 	addi    r4,r1,8
8003ea84:	48 00 0a 75 	bl      8003f4f8 <mul__6MatrixCFPC6MatrixP6Matrix>
8003ea88:	80 01 00 44 	lwz     r0,68(r1)
8003ea8c:	83 e1 00 3c 	lwz     r31,60(r1)
8003ea90:	7c 08 03 a6 	mtlr    r0
8003ea94:	38 21 00 40 	addi    r1,r1,64
8003ea98:	4e 80 00 20 	blr

8003ea9c <fn_8003EA9C>:
8003ea9c:	94 21 ff a0 	stwu    r1,-96(r1)
8003eaa0:	7c 08 02 a6 	mflr    r0
8003eaa4:	90 01 00 64 	stw     r0,100(r1)
8003eaa8:	db e1 00 50 	stfd    f31,80(r1)
8003eaac:	f3 e1 00 58 	xscmpgtdp vs31,vs1,vs0
8003eab0:	db c1 00 40 	stfd    f30,64(r1)
8003eab4:	f3 c1 00 48 	xsmaddmsp vs30,vs1,vs0
8003eab8:	ff e0 08 90 	fmr     f31,f1
8003eabc:	93 e1 00 3c 	stw     r31,60(r1)
8003eac0:	7c 7f 1b 78 	mr      r31,r3
8003eac4:	48 3c 1f 1d 	bl      804009e0 <sin>
8003eac8:	ff c0 08 18 	frsp    f30,f1
8003eacc:	fc 20 f8 90 	fmr     f1,f31
8003ead0:	48 3c 1a 09 	bl      804004d8 <cos>
8003ead4:	fc 60 08 18 	frsp    f3,f1
8003ead8:	c0 02 84 08 	lfs     f0,-31736(r2)
8003eadc:	c0 22 84 0c 	lfs     f1,-31732(r2)
8003eae0:	38 81 00 08 	addi    r4,r1,8
8003eae4:	10 41 04 20 	vmhaddshs v2,v1,v0,v16
8003eae8:	10 20 0c 20 	vmhaddshs v1,v0,v1,v16
8003eaec:	f0 44 00 00 	xsaddsp vs2,vs4,vs0
8003eaf0:	f0 04 00 08 	xsmaddasp vs0,vs4,vs0
8003eaf4:	f0 24 00 10 	xxsldwi vs1,vs4,vs0,0
8003eaf8:	f0 04 00 18 	xscmpeqdp vs0,vs4,vs0
8003eafc:	f0 04 00 20 	psq_st  f0,32(r4),0,0
8003eb00:	f0 44 00 28 	psq_st  f2,40(r4),0,0
8003eb04:	fc 00 f0 50 	fneg    f0,f30
8003eb08:	7f e3 fb 78 	mr      r3,r31
8003eb0c:	7f e5 fb 78 	mr      r5,r31
8003eb10:	d0 61 00 1c 	stfs    f3,28(r1)
8003eb14:	d0 01 00 20 	stfs    f0,32(r1)
8003eb18:	d3 c1 00 2c 	stfs    f30,44(r1)
8003eb1c:	d0 61 00 30 	stfs    f3,48(r1)
8003eb20:	48 00 09 d9 	bl      8003f4f8 <mul__6MatrixCFPC6MatrixP6Matrix>
8003eb24:	e3 e1 00 58 	psq_l   f31,88(r1),0,0
8003eb28:	cb e1 00 50 	lfd     f31,80(r1)
8003eb2c:	e3 c1 00 48 	lq      r30,64(r1)
8003eb30:	cb c1 00 40 	lfd     f30,64(r1)
8003eb34:	80 01 00 64 	lwz     r0,100(r1)
8003eb38:	83 e1 00 3c 	lwz     r31,60(r1)
8003eb3c:	7c 08 03 a6 	mtlr    r0
8003eb40:	38 21 00 60 	addi    r1,r1,96
8003eb44:	4e 80 00 20 	blr

8003eb48 <rotY__6MatrixFf>:
8003eb48:	94 21 ff a0 	stwu    r1,-96(r1)
8003eb4c:	7c 08 02 a6 	mflr    r0
8003eb50:	90 01 00 64 	stw     r0,100(r1)
8003eb54:	db e1 00 50 	stfd    f31,80(r1)
8003eb58:	f3 e1 00 58 	xscmpgtdp vs31,vs1,vs0
8003eb5c:	db c1 00 40 	stfd    f30,64(r1)
8003eb60:	f3 c1 00 48 	xsmaddmsp vs30,vs1,vs0
8003eb64:	ff e0 08 90 	fmr     f31,f1
8003eb68:	93 e1 00 3c 	stw     r31,60(r1)
8003eb6c:	7c 7f 1b 78 	mr      r31,r3
8003eb70:	48 3c 1e 71 	bl      804009e0 <sin>
8003eb74:	ff c0 08 18 	frsp    f30,f1
8003eb78:	fc 20 f8 90 	fmr     f1,f31
8003eb7c:	48 3c 19 5d 	bl      804004d8 <cos>
8003eb80:	fc 60 08 18 	frsp    f3,f1
8003eb84:	c0 02 84 08 	lfs     f0,-31736(r2)
8003eb88:	c0 22 84 0c 	lfs     f1,-31732(r2)
8003eb8c:	38 81 00 08 	addi    r4,r1,8
8003eb90:	10 41 04 20 	vmhaddshs v2,v1,v0,v16
8003eb94:	10 20 0c 20 	vmhaddshs v1,v0,v1,v16
8003eb98:	f0 44 00 00 	xsaddsp vs2,vs4,vs0
8003eb9c:	f0 04 00 08 	xsmaddasp vs0,vs4,vs0
8003eba0:	f0 24 00 10 	xxsldwi vs1,vs4,vs0,0
8003eba4:	f0 04 00 18 	xscmpeqdp vs0,vs4,vs0
8003eba8:	f0 04 00 20 	psq_st  f0,32(r4),0,0
8003ebac:	f0 44 00 28 	psq_st  f2,40(r4),0,0
8003ebb0:	fc 00 f0 50 	fneg    f0,f30
8003ebb4:	7f e3 fb 78 	mr      r3,r31
8003ebb8:	7f e5 fb 78 	mr      r5,r31
8003ebbc:	d0 61 00 08 	stfs    f3,8(r1)
8003ebc0:	d3 c1 00 10 	stfs    f30,16(r1)
8003ebc4:	d0 01 00 28 	stfs    f0,40(r1)
8003ebc8:	d0 61 00 30 	stfs    f3,48(r1)
8003ebcc:	48 00 09 2d 	bl      8003f4f8 <mul__6MatrixCFPC6MatrixP6Matrix>
8003ebd0:	e3 e1 00 58 	psq_l   f31,88(r1),0,0
8003ebd4:	cb e1 00 50 	lfd     f31,80(r1)
8003ebd8:	e3 c1 00 48 	lq      r30,64(r1)
8003ebdc:	cb c1 00 40 	lfd     f30,64(r1)
8003ebe0:	80 01 00 64 	lwz     r0,100(r1)
8003ebe4:	83 e1 00 3c 	lwz     r31,60(r1)
8003ebe8:	7c 08 03 a6 	mtlr    r0
8003ebec:	38 21 00 60 	addi    r1,r1,96
8003ebf0:	4e 80 00 20 	blr

8003ebf4 <fn_8003EBF4>:
8003ebf4:	94 21 ff a0 	stwu    r1,-96(r1)
8003ebf8:	7c 08 02 a6 	mflr    r0
8003ebfc:	90 01 00 64 	stw     r0,100(r1)
8003ec00:	db e1 00 50 	stfd    f31,80(r1)
8003ec04:	f3 e1 00 58 	xscmpgtdp vs31,vs1,vs0
8003ec08:	db c1 00 40 	stfd    f30,64(r1)
8003ec0c:	f3 c1 00 48 	xsmaddmsp vs30,vs1,vs0
8003ec10:	ff e0 08 90 	fmr     f31,f1
8003ec14:	93 e1 00 3c 	stw     r31,60(r1)
8003ec18:	7c 7f 1b 78 	mr      r31,r3
8003ec1c:	48 3c 1d c5 	bl      804009e0 <sin>
8003ec20:	ff c0 08 18 	frsp    f30,f1
8003ec24:	fc 20 f8 90 	fmr     f1,f31
8003ec28:	48 3c 18 b1 	bl      804004d8 <cos>
8003ec2c:	fc 60 08 18 	frsp    f3,f1
8003ec30:	c0 02 84 08 	lfs     f0,-31736(r2)
8003ec34:	c0 22 84 0c 	lfs     f1,-31732(r2)
8003ec38:	38 81 00 08 	addi    r4,r1,8
8003ec3c:	10 41 04 20 	vmhaddshs v2,v1,v0,v16
8003ec40:	10 20 0c 20 	vmhaddshs v1,v0,v1,v16
8003ec44:	f0 44 00 00 	xsaddsp vs2,vs4,vs0
8003ec48:	f0 04 00 08 	xsmaddasp vs0,vs4,vs0
8003ec4c:	f0 24 00 10 	xxsldwi vs1,vs4,vs0,0
8003ec50:	f0 04 00 18 	xscmpeqdp vs0,vs4,vs0
8003ec54:	f0 04 00 20 	psq_st  f0,32(r4),0,0
8003ec58:	f0 44 00 28 	psq_st  f2,40(r4),0,0
8003ec5c:	fc 00 f0 50 	fneg    f0,f30
8003ec60:	7f e3 fb 78 	mr      r3,r31
8003ec64:	7f e5 fb 78 	mr      r5,r31
8003ec68:	d0 61 00 08 	stfs    f3,8(r1)
8003ec6c:	d0 01 00 0c 	stfs    f0,12(r1)
8003ec70:	d3 c1 00 18 	stfs    f30,24(r1)
8003ec74:	d0 61 00 1c 	stfs    f3,28(r1)
8003ec78:	48 00 08 81 	bl      8003f4f8 <mul__6MatrixCFPC6MatrixP6Matrix>
8003ec7c:	e3 e1 00 58 	psq_l   f31,88(r1),0,0
8003ec80:	cb e1 00 50 	lfd     f31,80(r1)
8003ec84:	e3 c1 00 48 	lq      r30,64(r1)
8003ec88:	cb c1 00 40 	lfd     f30,64(r1)
8003ec8c:	80 01 00 64 	lwz     r0,100(r1)
8003ec90:	83 e1 00 3c 	lwz     r31,60(r1)
8003ec94:	7c 08 03 a6 	mtlr    r0
8003ec98:	38 21 00 60 	addi    r1,r1,96
8003ec9c:	4e 80 00 20 	blr

8003eca0 <fn_8003ECA0>:
8003eca0:	94 21 ff b0 	stwu    r1,-80(r1)
8003eca4:	7c 08 02 a6 	mflr    r0
8003eca8:	90 01 00 54 	stw     r0,84(r1)
8003ecac:	db e1 00 40 	stfd    f31,64(r1)
8003ecb0:	f3 e1 00 48 	xsmaddmsp vs31,vs1,vs0
8003ecb4:	db c1 00 30 	stfd    f30,48(r1)
8003ecb8:	f3 c1 00 38 	xxsel   vs30,vs1,vs0,vs32
8003ecbc:	ff c0 10 90 	fmr     f30,f2
8003ecc0:	ff e0 18 90 	fmr     f31,f3
8003ecc4:	38 81 00 10 	addi    r4,r1,16
8003ecc8:	93 e1 00 2c 	stw     r31,44(r1)
8003eccc:	7c 7f 1b 78 	mr      r31,r3
8003ecd0:	38 61 00 1c 	addi    r3,r1,28
8003ecd4:	48 00 11 d1 	bl      8003fea4 <mtSinCosf__FfPfPf>
8003ecd8:	fc 20 f0 90 	fmr     f1,f30
8003ecdc:	38 61 00 18 	addi    r3,r1,24
8003ece0:	38 81 00 0c 	addi    r4,r1,12
8003ece4:	48 00 11 c1 	bl      8003fea4 <mtSinCosf__FfPfPf>
8003ece8:	fc 20 f8 90 	fmr     f1,f31
8003ecec:	38 61 00 14 	addi    r3,r1,20
8003ecf0:	38 81 00 08 	addi    r4,r1,8
8003ecf4:	48 00 11 b1 	bl      8003fea4 <mtSinCosf__FfPfPf>
8003ecf8:	c0 41 00 0c 	lfs     f2,12(r1)
8003ecfc:	c0 21 00 08 	lfs     f1,8(r1)
8003ed00:	c0 02 84 08 	lfs     f0,-31736(r2)
8003ed04:	ec 22 00 72 	fmuls   f1,f2,f1
8003ed08:	d0 3f 00 00 	stfs    f1,0(r31)
8003ed0c:	c0 41 00 0c 	lfs     f2,12(r1)
8003ed10:	c0 21 00 14 	lfs     f1,20(r1)
8003ed14:	ec 22 00 72 	fmuls   f1,f2,f1
8003ed18:	d0 3f 00 10 	stfs    f1,16(r31)
8003ed1c:	c0 21 00 18 	lfs     f1,24(r1)
8003ed20:	fc 20 08 50 	fneg    f1,f1
8003ed24:	d0 3f 00 20 	stfs    f1,32(r31)
8003ed28:	c0 41 00 1c 	lfs     f2,28(r1)
8003ed2c:	c0 21 00 18 	lfs     f1,24(r1)
8003ed30:	c0 61 00 08 	lfs     f3,8(r1)
8003ed34:	ec 82 00 72 	fmuls   f4,f2,f1
8003ed38:	c0 41 00 10 	lfs     f2,16(r1)
8003ed3c:	c0 21 00 14 	lfs     f1,20(r1)
8003ed40:	ec 63 01 32 	fmuls   f3,f3,f4
8003ed44:	ec 22 00 72 	fmuls   f1,f2,f1
8003ed48:	ec 23 08 28 	fsubs   f1,f3,f1
8003ed4c:	d0 3f 00 04 	stfs    f1,4(r31)
8003ed50:	c0 41 00 1c 	lfs     f2,28(r1)
8003ed54:	c0 21 00 18 	lfs     f1,24(r1)
8003ed58:	c0 61 00 14 	lfs     f3,20(r1)
8003ed5c:	ec 82 00 72 	fmuls   f4,f2,f1
8003ed60:	c0 41 00 10 	lfs     f2,16(r1)
8003ed64:	c0 21 00 08 	lfs     f1,8(r1)
8003ed68:	ec 63 01 32 	fmuls   f3,f3,f4
8003ed6c:	ec 22 00 72 	fmuls   f1,f2,f1
8003ed70:	ec 23 08 2a 	fadds   f1,f3,f1
8003ed74:	d0 3f 00 14 	stfs    f1,20(r31)
8003ed78:	c0 41 00 1c 	lfs     f2,28(r1)
8003ed7c:	c0 21 00 0c 	lfs     f1,12(r1)
8003ed80:	ec 22 00 72 	fmuls   f1,f2,f1
8003ed84:	d0 3f 00 24 	stfs    f1,36(r31)
8003ed88:	c0 41 00 10 	lfs     f2,16(r1)
8003ed8c:	c0 21 00 18 	lfs     f1,24(r1)
8003ed90:	c0 61 00 08 	lfs     f3,8(r1)
8003ed94:	ec 82 00 72 	fmuls   f4,f2,f1
8003ed98:	c0 41 00 1c 	lfs     f2,28(r1)
8003ed9c:	c0 21 00 14 	lfs     f1,20(r1)
8003eda0:	ec 63 01 32 	fmuls   f3,f3,f4
8003eda4:	ec 22 00 72 	fmuls   f1,f2,f1
8003eda8:	ec 23 08 2a 	fadds   f1,f3,f1
8003edac:	d0 3f 00 08 	stfs    f1,8(r31)
8003edb0:	c0 41 00 10 	lfs     f2,16(r1)
8003edb4:	c0 21 00 18 	lfs     f1,24(r1)
8003edb8:	c0 61 00 14 	lfs     f3,20(r1)
8003edbc:	ec 82 00 72 	fmuls   f4,f2,f1
8003edc0:	c0 41 00 1c 	lfs     f2,28(r1)
8003edc4:	c0 21 00 08 	lfs     f1,8(r1)
8003edc8:	ec 63 01 32 	fmuls   f3,f3,f4
8003edcc:	ec 22 00 72 	fmuls   f1,f2,f1
8003edd0:	ec 23 08 28 	fsubs   f1,f3,f1
8003edd4:	d0 3f 00 18 	stfs    f1,24(r31)
8003edd8:	c0 41 00 10 	lfs     f2,16(r1)
8003eddc:	c0 21 00 0c 	lfs     f1,12(r1)
8003ede0:	ec 22 00 72 	fmuls   f1,f2,f1
8003ede4:	d0 1f 00 0c 	stfs    f0,12(r31)
8003ede8:	d0 1f 00 1c 	stfs    f0,28(r31)
8003edec:	d0 3f 00 28 	stfs    f1,40(r31)
8003edf0:	d0 1f 00 2c 	stfs    f0,44(r31)
8003edf4:	e3 e1 00 48 	psq_l   f31,72(r1),0,0
8003edf8:	cb e1 00 40 	lfd     f31,64(r1)
8003edfc:	e3 c1 00 38 	lq      r30,48(r1)
8003ee00:	cb c1 00 30 	lfd     f30,48(r1)
8003ee04:	83 e1 00 2c 	lwz     r31,44(r1)
8003ee08:	80 01 00 54 	lwz     r0,84(r1)
8003ee0c:	7c 08 03 a6 	mtlr    r0
8003ee10:	38 21 00 50 	addi    r1,r1,80
8003ee14:	4e 80 00 20 	blr

8003ee18 <getRotate__6MatrixFP5Vec3f>:
8003ee18:	94 21 ff a0 	stwu    r1,-96(r1)
8003ee1c:	7c 08 02 a6 	mflr    r0
8003ee20:	90 01 00 64 	stw     r0,100(r1)
8003ee24:	db e1 00 50 	stfd    f31,80(r1)
8003ee28:	f3 e1 00 58 	xscmpgtdp vs31,vs1,vs0
8003ee2c:	db c1 00 40 	stfd    f30,64(r1)
8003ee30:	f3 c1 00 48 	xsmaddmsp vs30,vs1,vs0
8003ee34:	80 03 00 00 	lwz     r0,0(r3)
8003ee38:	93 e1 00 3c 	stw     r31,60(r1)
8003ee3c:	7c 9f 23 78 	mr      r31,r4
8003ee40:	80 83 00 10 	lwz     r4,16(r3)
8003ee44:	90 01 00 08 	stw     r0,8(r1)
8003ee48:	80 03 00 20 	lwz     r0,32(r3)
8003ee4c:	90 81 00 18 	stw     r4,24(r1)
8003ee50:	c0 21 00 08 	lfs     f1,8(r1)
8003ee54:	90 01 00 28 	stw     r0,40(r1)
8003ee58:	c0 01 00 18 	lfs     f0,24(r1)
8003ee5c:	ec 21 00 72 	fmuls   f1,f1,f1
8003ee60:	c0 41 00 28 	lfs     f2,40(r1)
8003ee64:	ec 00 00 32 	fmuls   f0,f0,f0
8003ee68:	81 63 00 04 	lwz     r11,4(r3)
8003ee6c:	ec 42 00 b2 	fmuls   f2,f2,f2
8003ee70:	81 43 00 08 	lwz     r10,8(r3)
8003ee74:	81 23 00 0c 	lwz     r9,12(r3)
8003ee78:	ec 01 00 2a 	fadds   f0,f1,f0
8003ee7c:	81 03 00 14 	lwz     r8,20(r3)
8003ee80:	80 e3 00 18 	lwz     r7,24(r3)
8003ee84:	80 c3 00 1c 	lwz     r6,28(r3)
8003ee88:	ec 22 00 2a 	fadds   f1,f2,f0
8003ee8c:	80 a3 00 24 	lwz     r5,36(r3)
8003ee90:	80 83 00 28 	lwz     r4,40(r3)
8003ee94:	80 03 00 2c 	lwz     r0,44(r3)
8003ee98:	91 61 00 0c 	stw     r11,12(r1)
8003ee9c:	91 41 00 10 	stw     r10,16(r1)
8003eea0:	91 21 00 14 	stw     r9,20(r1)
8003eea4:	91 01 00 1c 	stw     r8,28(r1)
8003eea8:	90 e1 00 20 	stw     r7,32(r1)
8003eeac:	90 c1 00 24 	stw     r6,36(r1)
8003eeb0:	90 a1 00 2c 	stw     r5,44(r1)
8003eeb4:	90 81 00 30 	stw     r4,48(r1)
8003eeb8:	90 01 00 34 	stw     r0,52(r1)
8003eebc:	4b ff ec 9d 	bl      8003db58 <rsqrtf__Ff>
8003eec0:	c0 01 00 1c 	lfs     f0,28(r1)
8003eec4:	ff c0 08 90 	fmr     f30,f1
8003eec8:	c0 41 00 0c 	lfs     f2,12(r1)
8003eecc:	ec 00 00 32 	fmuls   f0,f0,f0
8003eed0:	ec 22 00 b2 	fmuls   f1,f2,f2
8003eed4:	c0 41 00 2c 	lfs     f2,44(r1)
8003eed8:	ec 42 00 b2 	fmuls   f2,f2,f2
8003eedc:	ec 01 00 2a 	fadds   f0,f1,f0
8003eee0:	ec 22 00 2a 	fadds   f1,f2,f0
8003eee4:	4b ff ec 75 	bl      8003db58 <rsqrtf__Ff>
8003eee8:	c0 01 00 20 	lfs     f0,32(r1)
8003eeec:	ff e0 08 90 	fmr     f31,f1
8003eef0:	c0 41 00 10 	lfs     f2,16(r1)
8003eef4:	ec 00 00 32 	fmuls   f0,f0,f0
8003eef8:	ec 22 00 b2 	fmuls   f1,f2,f2
8003eefc:	c0 41 00 30 	lfs     f2,48(r1)
8003ef00:	ec 42 00 b2 	fmuls   f2,f2,f2
8003ef04:	ec 01 00 2a 	fadds   f0,f1,f0
8003ef08:	ec 22 00 2a 	fadds   f1,f2,f0
8003ef0c:	4b ff ec 4d 	bl      8003db58 <rsqrtf__Ff>
8003ef10:	c0 01 00 08 	lfs     f0,8(r1)
8003ef14:	c0 41 00 18 	lfs     f2,24(r1)
8003ef18:	ed 40 07 b2 	fmuls   f10,f0,f30
8003ef1c:	c0 01 00 28 	lfs     f0,40(r1)
8003ef20:	ed 22 07 b2 	fmuls   f9,f2,f30
8003ef24:	c0 61 00 0c 	lfs     f3,12(r1)
8003ef28:	ed 00 07 b2 	fmuls   f8,f0,f30
8003ef2c:	c0 41 00 1c 	lfs     f2,28(r1)
8003ef30:	ec e3 07 f2 	fmuls   f7,f3,f31
8003ef34:	c0 01 00 2c 	lfs     f0,44(r1)
8003ef38:	ec c2 07 f2 	fmuls   f6,f2,f31
8003ef3c:	c0 61 00 10 	lfs     f3,16(r1)
8003ef40:	ec a0 07 f2 	fmuls   f5,f0,f31
8003ef44:	c0 41 00 20 	lfs     f2,32(r1)
8003ef48:	ec 83 00 72 	fmuls   f4,f3,f1
8003ef4c:	c0 01 00 30 	lfs     f0,48(r1)
8003ef50:	ec 62 00 72 	fmuls   f3,f2,f1
8003ef54:	d1 41 00 08 	stfs    f10,8(r1)
8003ef58:	ec 40 00 72 	fmuls   f2,f0,f1
8003ef5c:	ec 2a 02 b2 	fmuls   f1,f10,f10
8003ef60:	ec 09 02 72 	fmuls   f0,f9,f9
8003ef64:	d1 21 00 18 	stfs    f9,24(r1)
8003ef68:	d1 01 00 28 	stfs    f8,40(r1)
8003ef6c:	ec 21 00 2a 	fadds   f1,f1,f0
8003ef70:	d0 e1 00 0c 	stfs    f7,12(r1)
8003ef74:	d0 c1 00 1c 	stfs    f6,28(r1)
8003ef78:	d0 a1 00 2c 	stfs    f5,44(r1)
8003ef7c:	d0 81 00 10 	stfs    f4,16(r1)
8003ef80:	d0 61 00 20 	stfs    f3,32(r1)
8003ef84:	d0 41 00 30 	stfs    f2,48(r1)
8003ef88:	4b ff eb 81 	bl      8003db08 <mtSqrtf__Ff>
8003ef8c:	c0 02 84 14 	lfs     f0,-31724(r2)
8003ef90:	ff c0 08 90 	fmr     f30,f1
8003ef94:	fc 01 00 40 	fcmpo   cr0,f1,f0
8003ef98:	40 81 00 48 	ble     8003efe0 <getRotate__6MatrixFP5Vec3f+0x1c8>
8003ef9c:	c0 41 00 30 	lfs     f2,48(r1)
8003efa0:	c0 21 00 2c 	lfs     f1,44(r1)
8003efa4:	48 3c 1b 95 	bl      80400b38 <atan2>
8003efa8:	fc 60 08 18 	frsp    f3,f1
8003efac:	c0 01 00 28 	lfs     f0,40(r1)
8003efb0:	fc 40 f0 90 	fmr     f2,f30
8003efb4:	fc 20 00 50 	fneg    f1,f0
8003efb8:	d0 7f 00 00 	stfs    f3,0(r31)
8003efbc:	48 3c 1b 7d 	bl      80400b38 <atan2>
8003efc0:	fc 00 08 18 	frsp    f0,f1
8003efc4:	c0 41 00 08 	lfs     f2,8(r1)
8003efc8:	c0 21 00 18 	lfs     f1,24(r1)
8003efcc:	d0 1f 00 04 	stfs    f0,4(r31)
8003efd0:	48 3c 1b 69 	bl      80400b38 <atan2>
8003efd4:	fc 00 08 18 	frsp    f0,f1
8003efd8:	d0 1f 00 08 	stfs    f0,8(r31)
8003efdc:	48 00 00 3c 	b       8003f018 <getRotate__6MatrixFP5Vec3f+0x200>
8003efe0:	c0 01 00 20 	lfs     f0,32(r1)
8003efe4:	c0 41 00 1c 	lfs     f2,28(r1)
8003efe8:	fc 20 00 50 	fneg    f1,f0
8003efec:	48 3c 1b 4d 	bl      80400b38 <atan2>
8003eff0:	fc 60 08 18 	frsp    f3,f1
8003eff4:	c0 01 00 28 	lfs     f0,40(r1)
8003eff8:	fc 40 f0 90 	fmr     f2,f30
8003effc:	fc 20 00 50 	fneg    f1,f0
8003f000:	d0 7f 00 00 	stfs    f3,0(r31)
8003f004:	48 3c 1b 35 	bl      80400b38 <atan2>
8003f008:	fc 20 08 18 	frsp    f1,f1
8003f00c:	c0 02 84 08 	lfs     f0,-31736(r2)
8003f010:	d0 1f 00 08 	stfs    f0,8(r31)
8003f014:	d0 3f 00 04 	stfs    f1,4(r31)
8003f018:	e3 e1 00 58 	psq_l   f31,88(r1),0,0
8003f01c:	cb e1 00 50 	lfd     f31,80(r1)
8003f020:	e3 c1 00 48 	lq      r30,64(r1)
8003f024:	cb c1 00 40 	lfd     f30,64(r1)
8003f028:	80 01 00 64 	lwz     r0,100(r1)
8003f02c:	83 e1 00 3c 	lwz     r31,60(r1)
8003f030:	7c 08 03 a6 	mtlr    r0
8003f034:	38 21 00 60 	addi    r1,r1,96
8003f038:	4e 80 00 20 	blr

8003f03c <fn_8003F03C>:
8003f03c:	c0 a2 84 08 	lfs     f5,-31736(r2)
8003f040:	c0 02 84 0c 	lfs     f0,-31732(r2)
8003f044:	10 80 2c 20 	vmhaddshs v4,v0,v5,v16
8003f048:	10 05 04 20 	vmhaddshs v0,v5,v0,v16
8003f04c:	f0 83 00 00 	xsaddsp vs4,vs3,vs0
8003f050:	f0 a3 00 08 	xsmaddasp vs5,vs3,vs0
8003f054:	f0 03 00 10 	xxsldwi vs0,vs3,vs0,0
8003f058:	f0 a3 00 18 	xscmpeqdp vs5,vs3,vs0
8003f05c:	f0 a3 00 20 	psq_st  f5,32(r3),0,0
8003f060:	f0 83 00 28 	psq_st  f4,40(r3),0,0
8003f064:	d0 23 00 0c 	stfs    f1,12(r3)
8003f068:	d0 43 00 1c 	stfs    f2,28(r3)
8003f06c:	d0 63 00 2c 	stfs    f3,44(r3)
8003f070:	4e 80 00 20 	blr

8003f074 <fn_8003F074>:
8003f074:	c0 a3 00 00 	lfs     f5,0(r3)
8003f078:	c0 83 00 04 	lfs     f4,4(r3)
8003f07c:	c0 03 00 10 	lfs     f0,16(r3)
8003f080:	ed 65 00 72 	fmuls   f11,f5,f1
8003f084:	ed 44 00 b2 	fmuls   f10,f4,f2
8003f088:	c0 a3 00 14 	lfs     f5,20(r3)
8003f08c:	c0 83 00 20 	lfs     f4,32(r3)
8003f090:	ec e0 00 72 	fmuls   f7,f0,f1
8003f094:	ec c5 00 b2 	fmuls   f6,f5,f2
8003f098:	c0 a3 00 08 	lfs     f5,8(r3)
8003f09c:	c1 03 00 18 	lfs     f8,24(r3)
8003f0a0:	ec 84 00 72 	fmuls   f4,f4,f1
8003f0a4:	c0 03 00 24 	lfs     f0,36(r3)
8003f0a8:	ed 85 00 f2 	fmuls   f12,f5,f3
8003f0ac:	ed 4b 50 2a 	fadds   f10,f11,f10
8003f0b0:	c1 23 00 0c 	lfs     f9,12(r3)
8003f0b4:	ec 20 00 b2 	fmuls   f1,f0,f2
8003f0b8:	c0 43 00 28 	lfs     f2,40(r3)
8003f0bc:	ec c7 30 2a 	fadds   f6,f7,f6
8003f0c0:	ed 08 00 f2 	fmuls   f8,f8,f3
8003f0c4:	ec 42 00 f2 	fmuls   f2,f2,f3
8003f0c8:	c0 a3 00 1c 	lfs     f5,28(r3)
8003f0cc:	ec 24 08 2a 	fadds   f1,f4,f1
8003f0d0:	c0 03 00 2c 	lfs     f0,44(r3)
8003f0d4:	ec ec 50 2a 	fadds   f7,f12,f10
8003f0d8:	ec 68 30 2a 	fadds   f3,f8,f6
8003f0dc:	ec 22 08 2a 	fadds   f1,f2,f1
8003f0e0:	ec 89 38 2a 	fadds   f4,f9,f7
8003f0e4:	ec 45 18 2a 	fadds   f2,f5,f3
8003f0e8:	ec 00 08 2a 	fadds   f0,f0,f1
8003f0ec:	d0 83 00 0c 	stfs    f4,12(r3)
8003f0f0:	d0 43 00 1c 	stfs    f2,28(r3)
8003f0f4:	d0 03 00 2c 	stfs    f0,44(r3)
8003f0f8:	4e 80 00 20 	blr
