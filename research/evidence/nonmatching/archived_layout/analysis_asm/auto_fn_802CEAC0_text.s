.include "macros.inc"
.file "auto_fn_802CEAC0_text"

# 0x80008350..0x80008358 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008350 | size: 0x8
.obj "@etb_80008350", local
.hidden "@etb_80008350"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008350"

# 0x8000B080..0x8000B08C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B080 | size: 0xC
.obj "@eti_8000B080", local
.hidden "@eti_8000B080"
	.4byte fn_802CEAC0
	.4byte 0x00000054
	.4byte "@etb_80008350"
.endobj "@eti_8000B080"

# 0x802CEAC0..0x802CEB14 | size: 0x54
.text
.balign 4

# .text:0x0 | 0x802CEAC0 | size: 0x54
.fn fn_802CEAC0, global
/* 802CEAC0 002C4840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CEAC4 002C4844  7C 08 02 A6 */	mflr r0
/* 802CEAC8 002C4848  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CEACC 002C484C  4B FF FC F5 */	bl fn_802CE7C0
/* 802CEAD0 002C4850  3D 00 80 41 */	lis r8, lbl_804103D0@ha
/* 802CEAD4 002C4854  3C E0 80 53 */	lis r7, lbl_805326C0@ha
/* 802CEAD8 002C4858  39 08 03 D0 */	addi r8, r8, lbl_804103D0@l
/* 802CEADC 002C485C  3C C0 80 2D */	lis r6, fn_802CE5F0@ha
/* 802CEAE0 002C4860  3C 80 80 2D */	lis r4, fn_802CE6A0@ha
/* 802CEAE4 002C4864  38 A7 26 C0 */	addi r5, r7, lbl_805326C0@l
/* 802CEAE8 002C4868  38 08 00 1D */	addi r0, r8, 0x1d
/* 802CEAEC 002C486C  38 C6 E5 F0 */	addi r6, r6, fn_802CE5F0@l
/* 802CEAF0 002C4870  38 84 E6 A0 */	addi r4, r4, fn_802CE6A0@l
/* 802CEAF4 002C4874  90 07 26 C0 */	stw r0, lbl_805326C0@l(r7)
/* 802CEAF8 002C4878  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802CEAFC 002C487C  90 85 00 08 */	stw r4, 0x8(r5)
/* 802CEB00 002C4880  90 65 00 0C */	stw r3, 0xc(r5)
/* 802CEB04 002C4884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CEB08 002C4888  7C 08 03 A6 */	mtlr r0
/* 802CEB0C 002C488C  38 21 00 10 */	addi r1, r1, 0x10
/* 802CEB10 002C4890  4E 80 00 20 */	blr
.endfn fn_802CEAC0

# 0x80406654..0x80406658 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802CEAC0
