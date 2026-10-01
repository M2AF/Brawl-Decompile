.include "macros.inc"
.file "auto_fn_802D1358_text"

# 0x80008440..0x80008448 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008440 | size: 0x8
.obj "@etb_80008440", local
.hidden "@etb_80008440"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 */
	.4byte 0x200A0000
	.4byte 0x00000000
.endobj "@etb_80008440"

# 0x8000B1D0..0x8000B1DC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B1D0 | size: 0xC
.obj "@eti_8000B1D0", local
.hidden "@eti_8000B1D0"
	.4byte fn_802D1358
	.4byte 0x000000DC
	.4byte "@etb_80008440"
.endobj "@eti_8000B1D0"

# 0x802D1358..0x802D1434 | size: 0xDC
.text
.balign 4

# .text:0x0 | 0x802D1358 | size: 0xDC
.fn fn_802D1358, global
/* 802D1358 002C70D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D135C 002C70DC  7C 08 02 A6 */	mflr r0
/* 802D1360 002C70E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D1364 002C70E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D1368 002C70E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D136C 002C70EC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D1370 002C70F0  7C 9D 23 78 */	mr r29, r4
/* 802D1374 002C70F4  93 81 00 10 */	stw r28, 0x10(r1)
/* 802D1378 002C70F8  7C 7C 1B 78 */	mr r28, r3
/* 802D137C 002C70FC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802D1380 002C7100  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D1384 002C7104  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802D1388 002C7108  7D 89 03 A6 */	mtctr r12
/* 802D138C 002C710C  4E 80 04 21 */	bctrl
/* 802D1390 002C7110  7C 7F 1B 78 */	mr r31, r3
/* 802D1394 002C7114  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 802D1398 002C7118  7F BE EB 78 */	mr r30, r29
/* 802D139C 002C711C  38 81 00 08 */	addi r4, r1, 0x8
/* 802D13A0 002C7120  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D13A4 002C7124  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802D13A8 002C7128  7D 89 03 A6 */	mtctr r12
/* 802D13AC 002C712C  4E 80 04 21 */	bctrl
/* 802D13B0 002C7130  38 60 00 00 */	li r3, 0x0
/* 802D13B4 002C7134  48 00 00 50 */	b .L_802D1404
.L_802D13B8:
/* 802D13B8 002C7138  C0 3F 00 00 */	lfs f1, 0x0(r31)
/* 802D13BC 002C713C  38 63 00 01 */	addi r3, r3, 0x1
/* 802D13C0 002C7140  C0 1C 00 20 */	lfs f0, 0x20(r28)
/* 802D13C4 002C7144  EC 01 00 2A */	fadds f0, f1, f0
/* 802D13C8 002C7148  D0 1E 00 00 */	stfs f0, 0x0(r30)
/* 802D13CC 002C714C  C0 3F 00 04 */	lfs f1, 0x4(r31)
/* 802D13D0 002C7150  C0 1C 00 24 */	lfs f0, 0x24(r28)
/* 802D13D4 002C7154  EC 01 00 2A */	fadds f0, f1, f0
/* 802D13D8 002C7158  D0 1E 00 04 */	stfs f0, 0x4(r30)
/* 802D13DC 002C715C  C0 3F 00 08 */	lfs f1, 0x8(r31)
/* 802D13E0 002C7160  C0 1C 00 28 */	lfs f0, 0x28(r28)
/* 802D13E4 002C7164  EC 01 00 2A */	fadds f0, f1, f0
/* 802D13E8 002C7168  D0 1E 00 08 */	stfs f0, 0x8(r30)
/* 802D13EC 002C716C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 802D13F0 002C7170  3B FF 00 10 */	addi r31, r31, 0x10
/* 802D13F4 002C7174  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 802D13F8 002C7178  EC 01 00 2A */	fadds f0, f1, f0
/* 802D13FC 002C717C  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 802D1400 002C7180  3B DE 00 10 */	addi r30, r30, 0x10
.L_802D1404:
/* 802D1404 002C7184  80 01 00 08 */	lwz r0, 0x8(r1)
/* 802D1408 002C7188  7C 03 00 00 */	cmpw r3, r0
/* 802D140C 002C718C  41 80 FF AC */	blt .L_802D13B8
/* 802D1410 002C7190  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D1414 002C7194  7F A3 EB 78 */	mr r3, r29
/* 802D1418 002C7198  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D141C 002C719C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D1420 002C71A0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802D1424 002C71A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D1428 002C71A8  7C 08 03 A6 */	mtlr r0
/* 802D142C 002C71AC  38 21 00 20 */	addi r1, r1, 0x20
/* 802D1430 002C71B0  4E 80 00 20 */	blr
.endfn fn_802D1358
