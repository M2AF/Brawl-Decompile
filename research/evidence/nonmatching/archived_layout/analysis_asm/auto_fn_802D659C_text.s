.include "macros.inc"
.file "auto_fn_802D659C_text"

# 0x80008624..0x8000862C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008624 | size: 0x8
.obj "@etb_80008624", local
.hidden "@etb_80008624"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008624"

# 0x8000B488..0x8000B494 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B488 | size: 0xC
.obj "@eti_8000B488", local
.hidden "@eti_8000B488"
	.4byte fn_802D659C
	.4byte 0x0000003C
	.4byte "@etb_80008624"
.endobj "@eti_8000B488"

# 0x802D659C..0x802D65D8 | size: 0x3C
.text
.balign 4

# .text:0x0 | 0x802D659C | size: 0x3C
.fn fn_802D659C, global
/* 802D659C 002CC31C  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802D65A0 002CC320  7C 2C 0B 78 */	mr r12, r1
/* 802D65A4 002CC324  21 6B FF B0 */	subfic r11, r11, -0x50
/* 802D65A8 002CC328  7C 21 59 6E */	stwux r1, r1, r11
/* 802D65AC 002CC32C  34 01 00 10 */	addic. r0, r1, 0x10
/* 802D65B0 002CC330  41 82 00 18 */	beq .L_802D65C8
/* 802D65B4 002CC334  3C 60 80 48 */	lis r3, lbl_80487828@ha
/* 802D65B8 002CC338  38 00 00 01 */	li r0, 0x1
/* 802D65BC 002CC33C  38 63 78 28 */	addi r3, r3, lbl_80487828@l
/* 802D65C0 002CC340  B0 01 00 16 */	sth r0, 0x16(r1)
/* 802D65C4 002CC344  90 61 00 10 */	stw r3, 0x10(r1)
.L_802D65C8:
/* 802D65C8 002CC348  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802D65CC 002CC34C  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802D65D0 002CC350  7D 41 53 78 */	mr r1, r10
/* 802D65D4 002CC354  4E 80 00 20 */	blr
.endfn fn_802D659C
