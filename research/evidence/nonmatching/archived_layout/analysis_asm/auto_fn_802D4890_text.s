.include "macros.inc"
.file "auto_fn_802D4890_text"

# 0x8000853C..0x80008544 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000853C | size: 0x8
.obj "@etb_8000853C", local
.hidden "@etb_8000853C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000853C"

# 0x8000B32C..0x8000B338 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B32C | size: 0xC
.obj "@eti_8000B32C", local
.hidden "@eti_8000B32C"
	.4byte fn_802D4890
	.4byte 0x0000005C
	.4byte "@etb_8000853C"
.endobj "@eti_8000B32C"

# 0x802D4890..0x802D48EC | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802D4890 | size: 0x5C
.fn fn_802D4890, global
/* 802D4890 002CA610  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802D4894 002CA614  7C 2C 0B 78 */	mr r12, r1
/* 802D4898 002CA618  21 6B FF 90 */	subfic r11, r11, -0x70
/* 802D489C 002CA61C  7C 21 59 6E */	stwux r1, r1, r11
/* 802D48A0 002CA620  7C 08 02 A6 */	mflr r0
/* 802D48A4 002CA624  34 61 00 20 */	addic. r3, r1, 0x20
/* 802D48A8 002CA628  90 0C 00 04 */	stw r0, 0x4(r12)
/* 802D48AC 002CA62C  38 00 00 00 */	li r0, 0x0
/* 802D48B0 002CA630  41 82 00 24 */	beq .L_802D48D4
/* 802D48B4 002CA634  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D48B8 002CA638  38 81 00 10 */	addi r4, r1, 0x10
/* 802D48BC 002CA63C  48 00 09 C9 */	bl fn_802D5284
/* 802D48C0 002CA640  3C 60 80 48 */	lis r3, lbl_80487588@ha
/* 802D48C4 002CA644  38 63 75 88 */	addi r3, r3, lbl_80487588@l
/* 802D48C8 002CA648  38 03 00 28 */	addi r0, r3, 0x28
/* 802D48CC 002CA64C  90 61 00 20 */	stw r3, 0x20(r1)
/* 802D48D0 002CA650  90 01 00 2C */	stw r0, 0x2c(r1)
.L_802D48D4:
/* 802D48D4 002CA654  80 61 00 20 */	lwz r3, 0x20(r1)
/* 802D48D8 002CA658  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802D48DC 002CA65C  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802D48E0 002CA660  7C 08 03 A6 */	mtlr r0
/* 802D48E4 002CA664  7D 41 53 78 */	mr r1, r10
/* 802D48E8 002CA668  4E 80 00 20 */	blr
.endfn fn_802D4890
