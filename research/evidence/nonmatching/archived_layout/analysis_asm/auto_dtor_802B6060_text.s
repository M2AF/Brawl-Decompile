.include "macros.inc"
.file "auto_dtor_802B6060_text"

# 0x8000751C..0x80007524 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000751C | size: 0x8
.obj "@etb_8000751C", local
.hidden "@etb_8000751C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000751C"

# 0x8000A51C..0x8000A528 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A51C | size: 0xC
.obj "@eti_8000A51C", local
.hidden "@eti_8000A51C"
	.4byte dtor_802B6060
	.4byte 0x00000040
	.4byte "@etb_8000751C"
.endobj "@eti_8000A51C"

# 0x802B6060..0x802B60A0 | size: 0x40
.text
.balign 4

# .text:0x0 | 0x802B6060 | size: 0x40
.fn dtor_802B6060, global
/* 802B6060 002ABDE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B6064 002ABDE4  7C 08 02 A6 */	mflr r0
/* 802B6068 002ABDE8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B606C 002ABDEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B6070 002ABDF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B6074 002ABDF4  7C 7F 1B 78 */	mr r31, r3
/* 802B6078 002ABDF8  41 82 00 10 */	beq .L_802B6088
/* 802B607C 002ABDFC  2C 04 00 00 */	cmpwi r4, 0x0
/* 802B6080 002ABE00  40 81 00 08 */	ble .L_802B6088
/* 802B6084 002ABE04  4B D5 68 45 */	bl fn_8000C8C8
.L_802B6088:
/* 802B6088 002ABE08  7F E3 FB 78 */	mr r3, r31
/* 802B608C 002ABE0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B6090 002ABE10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B6094 002ABE14  7C 08 03 A6 */	mtlr r0
/* 802B6098 002ABE18  38 21 00 10 */	addi r1, r1, 0x10
/* 802B609C 002ABE1C  4E 80 00 20 */	blr
.endfn dtor_802B6060
