.include "macros.inc"
.file "auto_fn_802D5C58_text"

# 0x800085CC..0x800085D4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800085CC | size: 0x8
.obj "@etb_800085CC", local
.hidden "@etb_800085CC"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800085CC"

# 0x8000B404..0x8000B410 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B404 | size: 0xC
.obj "@eti_8000B404", local
.hidden "@eti_8000B404"
	.4byte fn_802D5C58
	.4byte 0x00000054
	.4byte "@etb_800085CC"
.endobj "@eti_8000B404"

# 0x802D5C58..0x802D5CAC | size: 0x54
.text
.balign 4

# .text:0x0 | 0x802D5C58 | size: 0x54
.fn fn_802D5C58, global
/* 802D5C58 002CB9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5C5C 002CB9DC  7C 08 02 A6 */	mflr r0
/* 802D5C60 002CB9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5C64 002CB9E4  4B FF F5 D9 */	bl fn_802D523C
/* 802D5C68 002CB9E8  3D 00 80 41 */	lis r8, lbl_80410C88@ha
/* 802D5C6C 002CB9EC  3C E0 80 53 */	lis r7, lbl_805328B0@ha
/* 802D5C70 002CB9F0  39 08 0C 88 */	addi r8, r8, lbl_80410C88@l
/* 802D5C74 002CB9F4  3C C0 80 2D */	lis r6, fn_802D51F4@ha
/* 802D5C78 002CB9F8  3C 80 80 2D */	lis r4, fn_802D5228@ha
/* 802D5C7C 002CB9FC  38 A7 28 B0 */	addi r5, r7, lbl_805328B0@l
/* 802D5C80 002CBA00  38 08 00 13 */	addi r0, r8, 0x13
/* 802D5C84 002CBA04  38 C6 51 F4 */	addi r6, r6, fn_802D51F4@l
/* 802D5C88 002CBA08  38 84 52 28 */	addi r4, r4, fn_802D5228@l
/* 802D5C8C 002CBA0C  90 07 28 B0 */	stw r0, lbl_805328B0@l(r7)
/* 802D5C90 002CBA10  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802D5C94 002CBA14  90 85 00 08 */	stw r4, 0x8(r5)
/* 802D5C98 002CBA18  90 65 00 0C */	stw r3, 0xc(r5)
/* 802D5C9C 002CBA1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5CA0 002CBA20  7C 08 03 A6 */	mtlr r0
/* 802D5CA4 002CBA24  38 21 00 10 */	addi r1, r1, 0x10
/* 802D5CA8 002CBA28  4E 80 00 20 */	blr
.endfn fn_802D5C58

# 0x80406690..0x80406694 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D5C58
