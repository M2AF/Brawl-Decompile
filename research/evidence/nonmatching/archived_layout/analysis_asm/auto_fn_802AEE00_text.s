.include "macros.inc"
.file "auto_fn_802AEE00_text"

# 0x80007074..0x8000707C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007074 | size: 0x8
.obj "@etb_80007074", local
.hidden "@etb_80007074"
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
.endobj "@etb_80007074"

# 0x8000A204..0x8000A210 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A204 | size: 0xC
.obj "@eti_8000A204", local
.hidden "@eti_8000A204"
	.4byte fn_802AEE00
	.4byte 0x0000005C
	.4byte "@etb_80007074"
.endobj "@eti_8000A204"

# 0x802AEE00..0x802AEE5C | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802AEE00 | size: 0x5C
.fn fn_802AEE00, global
/* 802AEE00 002A4B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AEE04 002A4B84  7C 08 02 A6 */	mflr r0
/* 802AEE08 002A4B88  2C 03 00 00 */	cmpwi r3, 0x0
/* 802AEE0C 002A4B8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AEE10 002A4B90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AEE14 002A4B94  7C 7F 1B 78 */	mr r31, r3
/* 802AEE18 002A4B98  41 82 00 2C */	beq .L_802AEE44
/* 802AEE1C 002A4B9C  2C 04 00 00 */	cmpwi r4, 0x0
/* 802AEE20 002A4BA0  40 81 00 24 */	ble .L_802AEE44
/* 802AEE24 002A4BA4  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802AEE28 002A4BA8  7F E4 FB 78 */	mr r4, r31
/* 802AEE2C 002A4BAC  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802AEE30 002A4BB0  38 C0 00 1D */	li r6, 0x1d
/* 802AEE34 002A4BB4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AEE38 002A4BB8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802AEE3C 002A4BBC  7D 89 03 A6 */	mtctr r12
/* 802AEE40 002A4BC0  4E 80 04 21 */	bctrl
.L_802AEE44:
/* 802AEE44 002A4BC4  7F E3 FB 78 */	mr r3, r31
/* 802AEE48 002A4BC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AEE4C 002A4BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AEE50 002A4BD0  7C 08 03 A6 */	mtlr r0
/* 802AEE54 002A4BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 802AEE58 002A4BD8  4E 80 00 20 */	blr
.endfn fn_802AEE00
