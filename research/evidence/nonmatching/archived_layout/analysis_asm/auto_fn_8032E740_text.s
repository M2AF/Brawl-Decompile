.include "macros.inc"
.file "auto_fn_8032E740_text"

# 0x80009180..0x80009188 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009180 | size: 0x8
.obj "@etb_80009180", local
.hidden "@etb_80009180"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80009180"

# 0x8000C010..0x8000C01C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C010 | size: 0xC
.obj "@eti_8000C010", local
.hidden "@eti_8000C010"
	.4byte fn_8032E740
	.4byte 0x0000006C
	.4byte "@etb_80009180"
.endobj "@eti_8000C010"

# 0x8032E740..0x8032E7AC | size: 0x6C
.text
.balign 4

# .text:0x0 | 0x8032E740 | size: 0x6C
.fn fn_8032E740, global
/* 8032E740 003244C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032E744 003244C4  7C 08 02 A6 */	mflr r0
/* 8032E748 003244C8  3C A0 80 41 */	lis r5, lbl_80414B10@ha
/* 8032E74C 003244CC  3C 60 80 53 */	lis r3, lbl_80533440@ha
/* 8032E750 003244D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032E754 003244D4  38 A5 4B 10 */	addi r5, r5, lbl_80414B10@l
/* 8032E758 003244D8  3C 80 80 41 */	lis r4, lbl_80414B24@ha
/* 8032E75C 003244DC  3D 20 80 41 */	lis r9, lbl_80414B04@ha
/* 8032E760 003244E0  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8032E764 003244E4  38 00 00 01 */	li r0, 0x1
/* 8032E768 003244E8  3C A0 80 53 */	lis r5, lbl_80532340@ha
/* 8032E76C 003244EC  38 63 34 40 */	addi r3, r3, lbl_80533440@l
/* 8032E770 003244F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032E774 003244F4  38 00 00 00 */	li r0, 0x0
/* 8032E778 003244F8  38 84 4B 24 */	addi r4, r4, lbl_80414B24@l
/* 8032E77C 003244FC  38 A5 23 40 */	addi r5, r5, lbl_80532340@l
/* 8032E780 00324500  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032E784 00324504  39 29 4B 04 */	addi r9, r9, lbl_80414B04@l
/* 8032E788 00324508  38 C0 00 38 */	li r6, 0x38
/* 8032E78C 0032450C  38 E0 00 00 */	li r7, 0x0
/* 8032E790 00324510  39 00 00 00 */	li r8, 0x0
/* 8032E794 00324514  39 40 00 01 */	li r10, 0x1
/* 8032E798 00324518  4B F4 E0 71 */	bl fn_8027C808
/* 8032E79C 0032451C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032E7A0 00324520  7C 08 03 A6 */	mtlr r0
/* 8032E7A4 00324524  38 21 00 20 */	addi r1, r1, 0x20
/* 8032E7A8 00324528  4E 80 00 20 */	blr
.endfn fn_8032E740

# 0x80406780..0x80406784 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032E740
