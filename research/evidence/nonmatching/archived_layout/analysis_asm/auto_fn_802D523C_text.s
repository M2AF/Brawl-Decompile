.include "macros.inc"
.file "auto_fn_802D523C_text"

# 0x8000858C..0x80008594 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000858C | size: 0x8
.obj "@etb_8000858C", local
.hidden "@etb_8000858C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000858C"

# 0x8000B3A4..0x8000B3B0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B3A4 | size: 0xC
.obj "@eti_8000B3A4", local
.hidden "@eti_8000B3A4"
	.4byte fn_802D523C
	.4byte 0x00000048
	.4byte "@etb_8000858C"
.endobj "@eti_8000B3A4"

# 0x802D523C..0x802D5284 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802D523C | size: 0x48
.fn fn_802D523C, global
/* 802D523C 002CAFBC  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802D5240 002CAFC0  7C 2C 0B 78 */	mr r12, r1
/* 802D5244 002CAFC4  21 6B FF 90 */	subfic r11, r11, -0x70
/* 802D5248 002CAFC8  7C 21 59 6E */	stwux r1, r1, r11
/* 802D524C 002CAFCC  7C 08 02 A6 */	mflr r0
/* 802D5250 002CAFD0  34 61 00 20 */	addic. r3, r1, 0x20
/* 802D5254 002CAFD4  90 0C 00 04 */	stw r0, 0x4(r12)
/* 802D5258 002CAFD8  38 00 00 00 */	li r0, 0x0
/* 802D525C 002CAFDC  41 82 00 10 */	beq .L_802D526C
/* 802D5260 002CAFE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D5264 002CAFE4  38 81 00 10 */	addi r4, r1, 0x10
/* 802D5268 002CAFE8  48 00 00 1D */	bl fn_802D5284
.L_802D526C:
/* 802D526C 002CAFEC  80 61 00 20 */	lwz r3, 0x20(r1)
/* 802D5270 002CAFF0  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802D5274 002CAFF4  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802D5278 002CAFF8  7C 08 03 A6 */	mtlr r0
/* 802D527C 002CAFFC  7D 41 53 78 */	mr r1, r10
/* 802D5280 002CB000  4E 80 00 20 */	blr
.endfn fn_802D523C
