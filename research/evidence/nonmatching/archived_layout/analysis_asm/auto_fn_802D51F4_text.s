.include "macros.inc"
.file "auto_fn_802D51F4_text"

# 0x80008584..0x8000858C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008584 | size: 0x8
.obj "@etb_80008584", local
.hidden "@etb_80008584"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008584"

# 0x8000B398..0x8000B3A4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B398 | size: 0xC
.obj "@eti_8000B398", local
.hidden "@eti_8000B398"
	.4byte fn_802D51F4
	.4byte 0x00000034
	.4byte "@etb_80008584"
.endobj "@eti_8000B398"

# 0x802D51F4..0x802D5228 | size: 0x34
.text
.balign 4

# .text:0x0 | 0x802D51F4 | size: 0x34
.fn fn_802D51F4, global
/* 802D51F4 002CAF74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D51F8 002CAF78  7C 08 02 A6 */	mflr r0
/* 802D51FC 002CAF7C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D5200 002CAF80  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5204 002CAF84  38 00 00 01 */	li r0, 0x1
/* 802D5208 002CAF88  41 82 00 10 */	beq .L_802D5218
/* 802D520C 002CAF8C  90 01 00 08 */	stw r0, 0x8(r1)
/* 802D5210 002CAF90  38 81 00 08 */	addi r4, r1, 0x8
/* 802D5214 002CAF94  48 00 00 71 */	bl fn_802D5284
.L_802D5218:
/* 802D5218 002CAF98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D521C 002CAF9C  7C 08 03 A6 */	mtlr r0
/* 802D5220 002CAFA0  38 21 00 10 */	addi r1, r1, 0x10
/* 802D5224 002CAFA4  4E 80 00 20 */	blr
.endfn fn_802D51F4
