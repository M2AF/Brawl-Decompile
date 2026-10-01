.include "macros.inc"
.file "auto_fn_802D4D10_text"

# 0x8000855C..0x80008564 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000855C | size: 0x8
.obj "@etb_8000855C", local
.hidden "@etb_8000855C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000855C"

# 0x8000B35C..0x8000B368 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B35C | size: 0xC
.obj "@eti_8000B35C", local
.hidden "@eti_8000B35C"
	.4byte fn_802D4D10
	.4byte 0x00000034
	.4byte "@etb_8000855C"
.endobj "@eti_8000B35C"

# 0x802D4D10..0x802D4D44 | size: 0x34
.text
.balign 4

# .text:0x0 | 0x802D4D10 | size: 0x34
.fn fn_802D4D10, global
/* 802D4D10 002CAA90  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802D4D14 002CAA94  7C 2C 0B 78 */	mr r12, r1
/* 802D4D18 002CAA98  21 6B FF E0 */	subfic r11, r11, -0x20
/* 802D4D1C 002CAA9C  7C 21 59 6E */	stwux r1, r1, r11
/* 802D4D20 002CAAA0  34 01 00 10 */	addic. r0, r1, 0x10
/* 802D4D24 002CAAA4  41 82 00 10 */	beq .L_802D4D34
/* 802D4D28 002CAAA8  3C 60 80 48 */	lis r3, lbl_804873E8@ha
/* 802D4D2C 002CAAAC  38 63 73 E8 */	addi r3, r3, lbl_804873E8@l
/* 802D4D30 002CAAB0  90 61 00 10 */	stw r3, 0x10(r1)
.L_802D4D34:
/* 802D4D34 002CAAB4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802D4D38 002CAAB8  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802D4D3C 002CAABC  7D 41 53 78 */	mr r1, r10
/* 802D4D40 002CAAC0  4E 80 00 20 */	blr
.endfn fn_802D4D10
