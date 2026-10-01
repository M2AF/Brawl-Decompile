.include "macros.inc"
.file "auto_fn_8028AD28_text"

# 0x80006560..0x80006568 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006560 | size: 0x8
.obj "@etb_80006560", local
.hidden "@etb_80006560"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r24-r31
 */
	.4byte 0x400A0000
	.4byte 0x00000000
.endobj "@etb_80006560"

# 0x80009820..0x8000982C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009820 | size: 0xC
.obj "@eti_80009820", local
.hidden "@eti_80009820"
	.4byte fn_8028AD28
	.4byte 0x0000010C
	.4byte "@etb_80006560"
.endobj "@eti_80009820"

# 0x8028AD28..0x8028AE34 | size: 0x10C
.text
.balign 4

# .text:0x0 | 0x8028AD28 | size: 0x10C
.fn fn_8028AD28, global
/* 8028AD28 00280AA8  54 2B 07 3E */	clrlwi r11, r1, 28
/* 8028AD2C 00280AAC  7C 2C 0B 78 */	mr r12, r1
/* 8028AD30 00280AB0  21 6B FF A0 */	subfic r11, r11, -0x60
/* 8028AD34 00280AB4  7C 21 59 6E */	stwux r1, r1, r11
/* 8028AD38 00280AB8  7C 08 02 A6 */	mflr r0
/* 8028AD3C 00280ABC  7D 8B 63 78 */	mr r11, r12
/* 8028AD40 00280AC0  90 0C 00 04 */	stw r0, 0x4(r12)
/* 8028AD44 00280AC4  48 16 65 D1 */	bl _savegpr_24
/* 8028AD48 00280AC8  3F 00 80 41 */	lis r24, lbl_8040F958@ha
/* 8028AD4C 00280ACC  8B E3 00 02 */	lbz r31, 0x2(r3)
/* 8028AD50 00280AD0  3B 18 F9 58 */	addi r24, r24, lbl_8040F958@l
/* 8028AD54 00280AD4  7C 7A 1B 78 */	mr r26, r3
/* 8028AD58 00280AD8  7C 9B 23 78 */	mr r27, r4
/* 8028AD5C 00280ADC  7C BC 2B 78 */	mr r28, r5
/* 8028AD60 00280AE0  7C DD 33 78 */	mr r29, r6
/* 8028AD64 00280AE4  7C FE 3B 78 */	mr r30, r7
/* 8028AD68 00280AE8  7F 38 FA 14 */	add r25, r24, r31
/* 8028AD6C 00280AEC  48 00 00 98 */	b .L_8028AE04
.L_8028AD70:
/* 8028AD70 00280AF0  7C 7F C2 14 */	add r3, r31, r24
/* 8028AD74 00280AF4  88 19 00 00 */	lbz r0, 0x0(r25)
/* 8028AD78 00280AF8  88 A3 00 01 */	lbz r5, 0x1(r3)
/* 8028AD7C 00280AFC  7F 64 DB 78 */	mr r4, r27
/* 8028AD80 00280B00  88 63 00 02 */	lbz r3, 0x2(r3)
/* 8028AD84 00280B04  7C DC 02 14 */	add r6, r28, r0
/* 8028AD88 00280B08  7C FC 2A 14 */	add r7, r28, r5
/* 8028AD8C 00280B0C  7D 7C 04 2E */	lfsx f11, r28, r0
/* 8028AD90 00280B10  7D 1D 1A 14 */	add r8, r29, r3
/* 8028AD94 00280B14  C1 46 00 04 */	lfs f10, 0x4(r6)
/* 8028AD98 00280B18  C1 26 00 08 */	lfs f9, 0x8(r6)
/* 8028AD9C 00280B1C  7F C5 F3 78 */	mr r5, r30
/* 8028ADA0 00280B20  C1 06 00 0C */	lfs f8, 0xc(r6)
/* 8028ADA4 00280B24  38 61 00 10 */	addi r3, r1, 0x10
/* 8028ADA8 00280B28  C0 E7 00 00 */	lfs f7, 0x0(r7)
/* 8028ADAC 00280B2C  C0 C7 00 04 */	lfs f6, 0x4(r7)
/* 8028ADB0 00280B30  C0 A7 00 08 */	lfs f5, 0x8(r7)
/* 8028ADB4 00280B34  C0 87 00 0C */	lfs f4, 0xc(r7)
/* 8028ADB8 00280B38  C0 68 00 00 */	lfs f3, 0x0(r8)
/* 8028ADBC 00280B3C  C0 48 00 04 */	lfs f2, 0x4(r8)
/* 8028ADC0 00280B40  C0 28 00 08 */	lfs f1, 0x8(r8)
/* 8028ADC4 00280B44  C0 08 00 0C */	lfs f0, 0xc(r8)
/* 8028ADC8 00280B48  D1 61 00 20 */	stfs f11, 0x20(r1)
/* 8028ADCC 00280B4C  D1 41 00 24 */	stfs f10, 0x24(r1)
/* 8028ADD0 00280B50  D1 21 00 28 */	stfs f9, 0x28(r1)
/* 8028ADD4 00280B54  D1 01 00 2C */	stfs f8, 0x2c(r1)
/* 8028ADD8 00280B58  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 8028ADDC 00280B5C  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 8028ADE0 00280B60  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 8028ADE4 00280B64  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 8028ADE8 00280B68  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 8028ADEC 00280B6C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8028ADF0 00280B70  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8028ADF4 00280B74  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8028ADF8 00280B78  48 00 2A C9 */	bl fn_8028D8C0
/* 8028ADFC 00280B7C  3B FF 00 01 */	addi r31, r31, 0x1
/* 8028AE00 00280B80  3B 39 00 01 */	addi r25, r25, 0x1
.L_8028AE04:
/* 8028AE04 00280B84  88 7A 00 02 */	lbz r3, 0x2(r26)
/* 8028AE08 00280B88  88 1A 00 03 */	lbz r0, 0x3(r26)
/* 8028AE0C 00280B8C  7C 03 02 14 */	add r0, r3, r0
/* 8028AE10 00280B90  7C 1F 00 00 */	cmpw r31, r0
/* 8028AE14 00280B94  41 80 FF 5C */	blt .L_8028AD70
/* 8028AE18 00280B98  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8028AE1C 00280B9C  7D 4B 53 78 */	mr r11, r10
/* 8028AE20 00280BA0  48 16 65 41 */	bl _restgpr_24
/* 8028AE24 00280BA4  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8028AE28 00280BA8  7C 08 03 A6 */	mtlr r0
/* 8028AE2C 00280BAC  7D 41 53 78 */	mr r1, r10
/* 8028AE30 00280BB0  4E 80 00 20 */	blr
.endfn fn_8028AD28
