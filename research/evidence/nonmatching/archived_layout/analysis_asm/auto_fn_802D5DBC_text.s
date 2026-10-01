.include "macros.inc"
.file "auto_fn_802D5DBC_text"

# 0x800085DC..0x800085E4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800085DC | size: 0x8
.obj "@etb_800085DC", local
.hidden "@etb_800085DC"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800085DC"

# 0x8000B41C..0x8000B428 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B41C | size: 0xC
.obj "@eti_8000B41C", local
.hidden "@eti_8000B41C"
	.4byte fn_802D5DBC
	.4byte 0x0000003C
	.4byte "@etb_800085DC"
.endobj "@eti_8000B41C"

# 0x802D5DBC..0x802D5DF8 | size: 0x3C
.text
.balign 4

# .text:0x0 | 0x802D5DBC | size: 0x3C
.fn fn_802D5DBC, global
/* 802D5DBC 002CBB3C  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802D5DC0 002CBB40  7C 2C 0B 78 */	mr r12, r1
/* 802D5DC4 002CBB44  21 6B FF E0 */	subfic r11, r11, -0x20
/* 802D5DC8 002CBB48  7C 21 59 6E */	stwux r1, r1, r11
/* 802D5DCC 002CBB4C  34 01 00 10 */	addic. r0, r1, 0x10
/* 802D5DD0 002CBB50  41 82 00 18 */	beq .L_802D5DE8
/* 802D5DD4 002CBB54  3C 60 80 48 */	lis r3, lbl_804877E8@ha
/* 802D5DD8 002CBB58  38 00 00 01 */	li r0, 0x1
/* 802D5DDC 002CBB5C  38 63 77 E8 */	addi r3, r3, lbl_804877E8@l
/* 802D5DE0 002CBB60  B0 01 00 16 */	sth r0, 0x16(r1)
/* 802D5DE4 002CBB64  90 61 00 10 */	stw r3, 0x10(r1)
.L_802D5DE8:
/* 802D5DE8 002CBB68  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802D5DEC 002CBB6C  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802D5DF0 002CBB70  7D 41 53 78 */	mr r1, r10
/* 802D5DF4 002CBB74  4E 80 00 20 */	blr
.endfn fn_802D5DBC
