.include "macros.inc"
.file "auto_fn_802FB894_text"

# 0x80008684..0x8000868C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008684 | size: 0x8
.obj "@etb_80008684", local
.hidden "@etb_80008684"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80008684"

# 0x8000B518..0x8000B524 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B518 | size: 0xC
.obj "@eti_8000B518", local
.hidden "@eti_8000B518"
	.4byte fn_802FB894
	.4byte 0x000000B4
	.4byte "@etb_80008684"
.endobj "@eti_8000B518"

# 0x802FB894..0x802FB948 | size: 0xB4
.text
.balign 4

# .text:0x0 | 0x802FB894 | size: 0xB4
.fn fn_802FB894, global
/* 802FB894 002F1614  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802FB898 002F1618  7C 08 02 A6 */	mflr r0
/* 802FB89C 002F161C  3D 80 80 30 */	lis r12, fn_802FB9A4@ha
/* 802FB8A0 002F1620  3D 60 80 30 */	lis r11, fn_802FBE84@ha
/* 802FB8A4 002F1624  90 01 00 44 */	stw r0, 0x44(r1)
/* 802FB8A8 002F1628  3D 40 80 30 */	lis r10, fn_802FBEF8@ha
/* 802FB8AC 002F162C  3D 20 80 30 */	lis r9, fn_802FBF38@ha
/* 802FB8B0 002F1630  3D 00 80 30 */	lis r8, fn_802FBF70@ha
/* 802FB8B4 002F1634  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802FB8B8 002F1638  3F E0 80 30 */	lis r31, fn_802FBF78@ha
/* 802FB8BC 002F163C  3C E0 80 30 */	lis r7, fn_802FBF74@ha
/* 802FB8C0 002F1640  38 00 00 00 */	li r0, 0x0
/* 802FB8C4 002F1644  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802FB8C8 002F1648  3F C0 80 30 */	lis r30, fn_802FB948@ha
/* 802FB8CC 002F164C  3B DE B9 48 */	addi r30, r30, fn_802FB948@l
/* 802FB8D0 002F1650  3B FF BF 78 */	addi r31, r31, fn_802FBF78@l
/* 802FB8D4 002F1654  39 8C B9 A4 */	addi r12, r12, fn_802FB9A4@l
/* 802FB8D8 002F1658  39 6B BE 84 */	addi r11, r11, fn_802FBE84@l
/* 802FB8DC 002F165C  39 4A BE F8 */	addi r10, r10, fn_802FBEF8@l
/* 802FB8E0 002F1660  39 29 BF 38 */	addi r9, r9, fn_802FBF38@l
/* 802FB8E4 002F1664  39 08 BF 70 */	addi r8, r8, fn_802FBF70@l
/* 802FB8E8 002F1668  38 E7 BF 74 */	addi r7, r7, fn_802FBF74@l
/* 802FB8EC 002F166C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FB8F0 002F1670  38 81 00 08 */	addi r4, r1, 0x8
/* 802FB8F4 002F1674  38 A0 00 08 */	li r5, 0x8
/* 802FB8F8 002F1678  38 C0 00 06 */	li r6, 0x6
/* 802FB8FC 002F167C  90 01 00 28 */	stw r0, 0x28(r1)
/* 802FB900 002F1680  98 01 00 35 */	stb r0, 0x35(r1)
/* 802FB904 002F1684  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802FB908 002F1688  93 E1 00 30 */	stw r31, 0x30(r1)
/* 802FB90C 002F168C  91 81 00 2C */	stw r12, 0x2c(r1)
/* 802FB910 002F1690  91 61 00 10 */	stw r11, 0x10(r1)
/* 802FB914 002F1694  91 41 00 14 */	stw r10, 0x14(r1)
/* 802FB918 002F1698  91 21 00 18 */	stw r9, 0x18(r1)
/* 802FB91C 002F169C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 802FB920 002F16A0  90 01 00 20 */	stw r0, 0x20(r1)
/* 802FB924 002F16A4  90 E1 00 0C */	stw r7, 0xc(r1)
/* 802FB928 002F16A8  98 01 00 34 */	stb r0, 0x34(r1)
/* 802FB92C 002F16AC  4B FD 08 E9 */	bl fn_802CC214
/* 802FB930 002F16B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802FB934 002F16B4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802FB938 002F16B8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802FB93C 002F16BC  7C 08 03 A6 */	mtlr r0
/* 802FB940 002F16C0  38 21 00 40 */	addi r1, r1, 0x40
/* 802FB944 002F16C4  4E 80 00 20 */	blr
.endfn fn_802FB894
