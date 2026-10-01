.include "macros.inc"
.file "auto_dtor_802BB34C_text"

# 0x800078DC..0x800078E4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800078DC | size: 0x8
.obj "@etb_800078DC", local
.hidden "@etb_800078DC"
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
.endobj "@etb_800078DC"

# 0x8000A774..0x8000A780 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A774 | size: 0xC
.obj "@eti_8000A774", local
.hidden "@eti_8000A774"
	.4byte dtor_802BB34C
	.4byte 0x0000005C
	.4byte "@etb_800078DC"
.endobj "@eti_8000A774"

# 0x802BB34C..0x802BB3A8 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802BB34C | size: 0x5C
.fn dtor_802BB34C, global
/* 802BB34C 002B10CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BB350 002B10D0  7C 08 02 A6 */	mflr r0
/* 802BB354 002B10D4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802BB358 002B10D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BB35C 002B10DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BB360 002B10E0  7C 7F 1B 78 */	mr r31, r3
/* 802BB364 002B10E4  41 82 00 2C */	beq .L_802BB390
/* 802BB368 002B10E8  2C 04 00 00 */	cmpwi r4, 0x0
/* 802BB36C 002B10EC  40 81 00 24 */	ble .L_802BB390
/* 802BB370 002B10F0  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802BB374 002B10F4  7F E4 FB 78 */	mr r4, r31
/* 802BB378 002B10F8  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802BB37C 002B10FC  38 C0 00 25 */	li r6, 0x25
/* 802BB380 002B1100  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802BB384 002B1104  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802BB388 002B1108  7D 89 03 A6 */	mtctr r12
/* 802BB38C 002B110C  4E 80 04 21 */	bctrl
.L_802BB390:
/* 802BB390 002B1110  7F E3 FB 78 */	mr r3, r31
/* 802BB394 002B1114  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BB398 002B1118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BB39C 002B111C  7C 08 03 A6 */	mtlr r0
/* 802BB3A0 002B1120  38 21 00 10 */	addi r1, r1, 0x10
/* 802BB3A4 002B1124  4E 80 00 20 */	blr
.endfn dtor_802BB34C
