.include "macros.inc"
.file "auto_fn_802CEBA4_text"

# 0x80008360..0x80008368 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008360 | size: 0x8
.obj "@etb_80008360", local
.hidden "@etb_80008360"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008360"

# 0x8000B098..0x8000B0A4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B098 | size: 0xC
.obj "@eti_8000B098", local
.hidden "@eti_8000B098"
	.4byte fn_802CEBA4
	.4byte 0x0000003C
	.4byte "@etb_80008360"
.endobj "@eti_8000B098"

# 0x802CEBA4..0x802CEBE0 | size: 0x3C
.text
.balign 4

# .text:0x0 | 0x802CEBA4 | size: 0x3C
.fn fn_802CEBA4, global
/* 802CEBA4 002C4924  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802CEBA8 002C4928  7C 2C 0B 78 */	mr r12, r1
/* 802CEBAC 002C492C  21 6B FF C0 */	subfic r11, r11, -0x40
/* 802CEBB0 002C4930  7C 21 59 6E */	stwux r1, r1, r11
/* 802CEBB4 002C4934  34 01 00 10 */	addic. r0, r1, 0x10
/* 802CEBB8 002C4938  41 82 00 18 */	beq .L_802CEBD0
/* 802CEBBC 002C493C  3C 60 80 48 */	lis r3, lbl_80487408@ha
/* 802CEBC0 002C4940  38 00 00 01 */	li r0, 0x1
/* 802CEBC4 002C4944  38 63 74 08 */	addi r3, r3, lbl_80487408@l
/* 802CEBC8 002C4948  B0 01 00 16 */	sth r0, 0x16(r1)
/* 802CEBCC 002C494C  90 61 00 10 */	stw r3, 0x10(r1)
.L_802CEBD0:
/* 802CEBD0 002C4950  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802CEBD4 002C4954  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802CEBD8 002C4958  7D 41 53 78 */	mr r1, r10
/* 802CEBDC 002C495C  4E 80 00 20 */	blr
.endfn fn_802CEBA4
