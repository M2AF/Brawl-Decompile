.include "macros.inc"
.file "auto_fn_802D2628_text"

# 0x800084A8..0x800084B0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800084A8 | size: 0x8
.obj "@etb_800084A8", local
.hidden "@etb_800084A8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800084A8"

# 0x8000B26C..0x8000B278 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B26C | size: 0xC
.obj "@eti_8000B26C", local
.hidden "@eti_8000B26C"
	.4byte fn_802D2628
	.4byte 0x00000034
	.4byte "@etb_800084A8"
.endobj "@eti_8000B26C"

# 0x802D2628..0x802D265C | size: 0x34
.text
.balign 4

# .text:0x0 | 0x802D2628 | size: 0x34
.fn fn_802D2628, global
/* 802D2628 002C83A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D262C 002C83AC  7C 08 02 A6 */	mflr r0
/* 802D2630 002C83B0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D2634 002C83B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D2638 002C83B8  38 00 00 01 */	li r0, 0x1
/* 802D263C 002C83BC  41 82 00 10 */	beq .L_802D264C
/* 802D2640 002C83C0  90 01 00 08 */	stw r0, 0x8(r1)
/* 802D2644 002C83C4  38 81 00 08 */	addi r4, r1, 0x8
/* 802D2648 002C83C8  48 00 01 55 */	bl fn_802D279C
.L_802D264C:
/* 802D264C 002C83CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D2650 002C83D0  7C 08 03 A6 */	mtlr r0
/* 802D2654 002C83D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802D2658 002C83D8  4E 80 00 20 */	blr
.endfn fn_802D2628
