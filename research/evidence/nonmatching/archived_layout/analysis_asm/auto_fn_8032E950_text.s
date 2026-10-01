.include "macros.inc"
.file "auto_fn_8032E950_text"

# 0x800091A0..0x800091A8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800091A0 | size: 0x8
.obj "@etb_800091A0", local
.hidden "@etb_800091A0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800091A0"

# 0x8000C040..0x8000C04C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C040 | size: 0xC
.obj "@eti_8000C040", local
.hidden "@eti_8000C040"
	.4byte fn_8032E950
	.4byte 0x00000064
	.4byte "@etb_800091A0"
.endobj "@eti_8000C040"

# 0x8032E950..0x8032E9B4 | size: 0x64
.text
.balign 4

# .text:0x0 | 0x8032E950 | size: 0x64
.fn fn_8032E950, global
/* 8032E950 003246D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032E954 003246D4  7C 08 02 A6 */	mflr r0
/* 8032E958 003246D8  3C A0 80 41 */	lis r5, lbl_80414E50@ha
/* 8032E95C 003246DC  3C 60 80 53 */	lis r3, lbl_80533528@ha
/* 8032E960 003246E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032E964 003246E4  38 A5 4E 50 */	addi r5, r5, lbl_80414E50@l
/* 8032E968 003246E8  3C 80 80 41 */	lis r4, lbl_80414E78@ha
/* 8032E96C 003246EC  38 00 00 00 */	li r0, 0x0
/* 8032E970 003246F0  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8032E974 003246F4  38 A0 00 02 */	li r5, 0x2
/* 8032E978 003246F8  38 63 35 28 */	addi r3, r3, lbl_80533528@l
/* 8032E97C 003246FC  38 84 4E 78 */	addi r4, r4, lbl_80414E78@l
/* 8032E980 00324700  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8032E984 00324704  38 A0 00 00 */	li r5, 0x0
/* 8032E988 00324708  38 C0 00 08 */	li r6, 0x8
/* 8032E98C 0032470C  38 E0 00 00 */	li r7, 0x0
/* 8032E990 00324710  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032E994 00324714  39 00 00 00 */	li r8, 0x0
/* 8032E998 00324718  39 20 00 00 */	li r9, 0x0
/* 8032E99C 0032471C  39 40 00 00 */	li r10, 0x0
/* 8032E9A0 00324720  4B F4 DE 69 */	bl fn_8027C808
/* 8032E9A4 00324724  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032E9A8 00324728  7C 08 03 A6 */	mtlr r0
/* 8032E9AC 0032472C  38 21 00 20 */	addi r1, r1, 0x20
/* 8032E9B0 00324730  4E 80 00 20 */	blr
.endfn fn_8032E950

# 0x80406790..0x80406794 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032E950
