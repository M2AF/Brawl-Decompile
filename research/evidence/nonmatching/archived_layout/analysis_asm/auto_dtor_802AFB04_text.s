.include "macros.inc"
.file "auto_dtor_802AFB04_text"

# 0x80007188..0x80007190 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007188 | size: 0x8
.obj "@etb_80007188", local
.hidden "@etb_80007188"
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
.endobj "@etb_80007188"

# 0x8000A2C4..0x8000A2D0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A2C4 | size: 0xC
.obj "@eti_8000A2C4", local
.hidden "@eti_8000A2C4"
	.4byte dtor_802AFB04
	.4byte 0x0000005C
	.4byte "@etb_80007188"
.endobj "@eti_8000A2C4"

# 0x802AFB04..0x802AFB60 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802AFB04 | size: 0x5C
.fn dtor_802AFB04, global
/* 802AFB04 002A5884  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AFB08 002A5888  7C 08 02 A6 */	mflr r0
/* 802AFB0C 002A588C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802AFB10 002A5890  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AFB14 002A5894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AFB18 002A5898  7C 7F 1B 78 */	mr r31, r3
/* 802AFB1C 002A589C  41 82 00 2C */	beq .L_802AFB48
/* 802AFB20 002A58A0  2C 04 00 00 */	cmpwi r4, 0x0
/* 802AFB24 002A58A4  40 81 00 24 */	ble .L_802AFB48
/* 802AFB28 002A58A8  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802AFB2C 002A58AC  7F E4 FB 78 */	mr r4, r31
/* 802AFB30 002A58B0  38 A0 00 40 */	li r5, 0x40
/* 802AFB34 002A58B4  38 C0 00 1D */	li r6, 0x1d
/* 802AFB38 002A58B8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AFB3C 002A58BC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802AFB40 002A58C0  7D 89 03 A6 */	mtctr r12
/* 802AFB44 002A58C4  4E 80 04 21 */	bctrl
.L_802AFB48:
/* 802AFB48 002A58C8  7F E3 FB 78 */	mr r3, r31
/* 802AFB4C 002A58CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AFB50 002A58D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AFB54 002A58D4  7C 08 03 A6 */	mtlr r0
/* 802AFB58 002A58D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802AFB5C 002A58DC  4E 80 00 20 */	blr
.endfn dtor_802AFB04
