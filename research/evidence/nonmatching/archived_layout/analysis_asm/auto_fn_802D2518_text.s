.include "macros.inc"
.file "auto_fn_802D2518_text"

# 0x80008498..0x800084A0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008498 | size: 0x8
.obj "@etb_80008498", local
.hidden "@etb_80008498"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008498"

# 0x8000B254..0x8000B260 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B254 | size: 0xC
.obj "@eti_8000B254", local
.hidden "@eti_8000B254"
	.4byte fn_802D2518
	.4byte 0x00000054
	.4byte "@etb_80008498"
.endobj "@eti_8000B254"

# 0x802D2518..0x802D256C | size: 0x54
.text
.balign 4

# .text:0x0 | 0x802D2518 | size: 0x54
.fn fn_802D2518, global
/* 802D2518 002C8298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D251C 002C829C  7C 08 02 A6 */	mflr r0
/* 802D2520 002C82A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D2524 002C82A4  4B FF F1 5D */	bl fn_802D1680
/* 802D2528 002C82A8  3D 00 80 41 */	lis r8, lbl_80410618@ha
/* 802D252C 002C82AC  3C E0 80 53 */	lis r7, lbl_80532790@ha
/* 802D2530 002C82B0  39 08 06 18 */	addi r8, r8, lbl_80410618@l
/* 802D2534 002C82B4  3C C0 80 2D */	lis r6, fn_802D1588@ha
/* 802D2538 002C82B8  3C 80 80 2D */	lis r4, fn_802D15A8@ha
/* 802D253C 002C82BC  38 A7 27 90 */	addi r5, r7, lbl_80532790@l
/* 802D2540 002C82C0  38 08 00 21 */	addi r0, r8, 0x21
/* 802D2544 002C82C4  38 C6 15 88 */	addi r6, r6, fn_802D1588@l
/* 802D2548 002C82C8  38 84 15 A8 */	addi r4, r4, fn_802D15A8@l
/* 802D254C 002C82CC  90 07 27 90 */	stw r0, lbl_80532790@l(r7)
/* 802D2550 002C82D0  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802D2554 002C82D4  90 85 00 08 */	stw r4, 0x8(r5)
/* 802D2558 002C82D8  90 65 00 0C */	stw r3, 0xc(r5)
/* 802D255C 002C82DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D2560 002C82E0  7C 08 03 A6 */	mtlr r0
/* 802D2564 002C82E4  38 21 00 10 */	addi r1, r1, 0x10
/* 802D2568 002C82E8  4E 80 00 20 */	blr
.endfn fn_802D2518

# 0x80406670..0x80406674 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D2518
