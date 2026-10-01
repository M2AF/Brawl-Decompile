.include "macros.inc"
.file "auto_fn_802CD518_text"

# 0x800082A8..0x800082B0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800082A8 | size: 0x8
.obj "@etb_800082A8", local
.hidden "@etb_800082A8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800082A8"

# 0x8000AF84..0x8000AF90 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AF84 | size: 0xC
.obj "@eti_8000AF84", local
.hidden "@eti_8000AF84"
	.4byte fn_802CD518
	.4byte 0x00000050
	.4byte "@etb_800082A8"
.endobj "@eti_8000AF84"

# 0x802CD518..0x802CD568 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802CD518 | size: 0x50
.fn fn_802CD518, global
/* 802CD518 002C3298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CD51C 002C329C  7C 08 02 A6 */	mflr r0
/* 802CD520 002C32A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CD524 002C32A4  4B FF FB 31 */	bl fn_802CD054
/* 802CD528 002C32A8  3D 00 80 41 */	lis r8, lbl_804101A8@ha
/* 802CD52C 002C32AC  3C E0 80 53 */	lis r7, lbl_805325F0@ha
/* 802CD530 002C32B0  3C C0 80 2D */	lis r6, fn_802CD000@ha
/* 802CD534 002C32B4  3C 80 80 2D */	lis r4, fn_802CD040@ha
/* 802CD538 002C32B8  39 08 01 A8 */	addi r8, r8, lbl_804101A8@l
/* 802CD53C 002C32BC  38 A7 25 F0 */	addi r5, r7, lbl_805325F0@l
/* 802CD540 002C32C0  38 C6 D0 00 */	addi r6, r6, fn_802CD000@l
/* 802CD544 002C32C4  38 84 D0 40 */	addi r4, r4, fn_802CD040@l
/* 802CD548 002C32C8  91 07 25 F0 */	stw r8, lbl_805325F0@l(r7)
/* 802CD54C 002C32CC  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802CD550 002C32D0  90 85 00 08 */	stw r4, 0x8(r5)
/* 802CD554 002C32D4  90 65 00 0C */	stw r3, 0xc(r5)
/* 802CD558 002C32D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CD55C 002C32DC  7C 08 03 A6 */	mtlr r0
/* 802CD560 002C32E0  38 21 00 10 */	addi r1, r1, 0x10
/* 802CD564 002C32E4  4E 80 00 20 */	blr
.endfn fn_802CD518

# 0x80406638..0x8040663C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802CD518
