.include "macros.inc"
.file "auto_fn_8031D2B0_text"

# 0x80008C74..0x80008C7C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008C74 | size: 0x8
.obj "@etb_80008C74", local
.hidden "@etb_80008C74"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved FPR range: fp31
 * Saved GPR range: r30-r31
 */
	.4byte 0x104A0000
	.4byte 0x00000000
.endobj "@etb_80008C74"

# 0x8000BBE4..0x8000BBF0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BBE4 | size: 0xC
.obj "@eti_8000BBE4", local
.hidden "@eti_8000BBE4"
	.4byte fn_8031D2B0
	.4byte 0x0000016C
	.4byte "@etb_80008C74"
.endobj "@eti_8000BBE4"

# 0x8031D2B0..0x8031D41C | size: 0x16C
.text
.balign 4

# .text:0x0 | 0x8031D2B0 | size: 0x16C
.fn fn_8031D2B0, global
/* 8031D2B0 00313030  54 2B 07 3E */	clrlwi r11, r1, 28
/* 8031D2B4 00313034  7C 2C 0B 78 */	mr r12, r1
/* 8031D2B8 00313038  21 6B FF 20 */	subfic r11, r11, -0xe0
/* 8031D2BC 0031303C  7C 21 59 6E */	stwux r1, r1, r11
/* 8031D2C0 00313040  7C 08 02 A6 */	mflr r0
/* 8031D2C4 00313044  90 0C 00 04 */	stw r0, 0x4(r12)
/* 8031D2C8 00313048  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 8031D2CC 0031304C  F3 EC 0F F8 */	psq_st f31, -0x8(r12), 0, qr0
/* 8031D2D0 00313050  38 A1 00 80 */	addi r5, r1, 0x80
/* 8031D2D4 00313054  93 EC FF EC */	stw r31, -0x14(r12)
/* 8031D2D8 00313058  93 CC FF E8 */	stw r30, -0x18(r12)
/* 8031D2DC 0031305C  7C 7E 1B 78 */	mr r30, r3
/* 8031D2E0 00313060  83 E3 00 68 */	lwz r31, 0x68(r3)
/* 8031D2E4 00313064  7F E4 FB 78 */	mr r4, r31
/* 8031D2E8 00313068  48 00 04 49 */	bl fn_8031D730
/* 8031D2EC 0031306C  C0 1F 00 00 */	lfs f0, 0x0(r31)
/* 8031D2F0 00313070  7F C3 F3 78 */	mr r3, r30
/* 8031D2F4 00313074  80 DE 00 68 */	lwz r6, 0x68(r30)
/* 8031D2F8 00313078  38 81 00 20 */	addi r4, r1, 0x20
/* 8031D2FC 0031307C  FC 00 00 50 */	fneg f0, f0
/* 8031D300 00313080  C0 61 00 84 */	lfs f3, 0x84(r1)
/* 8031D304 00313084  C0 26 00 04 */	lfs f1, 0x4(r6)
/* 8031D308 00313088  38 A1 00 40 */	addi r5, r1, 0x40
/* 8031D30C 0031308C  C0 A6 00 00 */	lfs f5, 0x0(r6)
/* 8031D310 00313090  C0 86 00 08 */	lfs f4, 0x8(r6)
/* 8031D314 00313094  C0 46 00 0C */	lfs f2, 0xc(r6)
/* 8031D318 00313098  EC C3 08 28 */	fsubs f6, f3, f1
/* 8031D31C 0031309C  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 8031D320 003130A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8031D324 003130A4  EC E1 28 28 */	fsubs f7, f1, f5
/* 8031D328 003130A8  C0 A1 00 88 */	lfs f5, 0x88(r1)
/* 8031D32C 003130AC  C0 1F 00 04 */	lfs f0, 0x4(r31)
/* 8031D330 003130B0  EC 26 01 B2 */	fmuls f1, f6, f6
/* 8031D334 003130B4  C0 61 00 8C */	lfs f3, 0x8c(r1)
/* 8031D338 003130B8  EC 85 20 28 */	fsubs f4, f5, f4
/* 8031D33C 003130BC  FC 00 00 50 */	fneg f0, f0
/* 8031D340 003130C0  D0 E1 00 30 */	stfs f7, 0x30(r1)
/* 8031D344 003130C4  EC 27 09 FA */	fmadds f1, f7, f7, f1
/* 8031D348 003130C8  EC 43 10 28 */	fsubs f2, f3, f2
/* 8031D34C 003130CC  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 8031D350 003130D0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8031D354 003130D4  EF E4 09 3A */	fmadds f31, f4, f4, f1
/* 8031D358 003130D8  C0 1F 00 08 */	lfs f0, 0x8(r31)
/* 8031D35C 003130DC  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 8031D360 003130E0  FC 00 00 50 */	fneg f0, f0
/* 8031D364 003130E4  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8031D368 003130E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8031D36C 003130EC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8031D370 003130F0  FC 00 00 50 */	fneg f0, f0
/* 8031D374 003130F4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8031D378 003130F8  48 00 03 B9 */	bl fn_8031D730
/* 8031D37C 003130FC  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8031D380 00313100  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8031D384 00313104  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 8031D388 00313108  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 8031D38C 0031310C  EC 81 00 28 */	fsubs f4, f1, f0
/* 8031D390 00313110  C0 03 00 00 */	lfs f0, 0x0(r3)
/* 8031D394 00313114  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 8031D398 00313118  EC A3 00 28 */	fsubs f5, f3, f0
/* 8031D39C 0031311C  C0 23 00 08 */	lfs f1, 0x8(r3)
/* 8031D3A0 00313120  EC 04 01 32 */	fmuls f0, f4, f4
/* 8031D3A4 00313124  EC 62 08 28 */	fsubs f3, f2, f1
/* 8031D3A8 00313128  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 8031D3AC 0031312C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8031D3B0 00313130  EC 05 01 7A */	fmadds f0, f5, f5, f0
/* 8031D3B4 00313134  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 8031D3B8 00313138  EC 22 08 28 */	fsubs f1, f2, f1
/* 8031D3BC 0031313C  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8031D3C0 00313140  EC 03 00 FA */	fmadds f0, f3, f3, f0
/* 8031D3C4 00313144  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8031D3C8 00313148  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8031D3CC 0031314C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8031D3D0 00313150  4C 41 13 82 */	cror eq, gt, eq
/* 8031D3D4 00313154  40 82 00 14 */	bne .L_8031D3E8
/* 8031D3D8 00313158  7F C3 F3 78 */	mr r3, r30
/* 8031D3DC 0031315C  38 81 00 80 */	addi r4, r1, 0x80
/* 8031D3E0 00313160  48 00 05 1D */	bl fn_8031D8FC
/* 8031D3E4 00313164  48 00 00 10 */	b .L_8031D3F4
.L_8031D3E8:
/* 8031D3E8 00313168  7F C3 F3 78 */	mr r3, r30
/* 8031D3EC 0031316C  38 81 00 40 */	addi r4, r1, 0x40
/* 8031D3F0 00313170  48 00 05 0D */	bl fn_8031D8FC
.L_8031D3F4:
/* 8031D3F4 00313174  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8031D3F8 00313178  38 00 FF F8 */	li r0, -0x8
/* 8031D3FC 0031317C  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 8031D400 00313180  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8031D404 00313184  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 8031D408 00313188  83 EA FF EC */	lwz r31, -0x14(r10)
/* 8031D40C 0031318C  83 CA FF E8 */	lwz r30, -0x18(r10)
/* 8031D410 00313190  7C 08 03 A6 */	mtlr r0
/* 8031D414 00313194  7D 41 53 78 */	mr r1, r10
/* 8031D418 00313198  4E 80 00 20 */	blr
.endfn fn_8031D2B0
