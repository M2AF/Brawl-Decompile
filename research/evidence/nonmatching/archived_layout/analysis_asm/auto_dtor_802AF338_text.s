.include "macros.inc"
.file "auto_dtor_802AF338_text"

# 0x800070E0..0x800070E8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800070E0 | size: 0x8
.obj "@etb_800070E0", local
.hidden "@etb_800070E0"
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
.endobj "@etb_800070E0"

# 0x8000A264..0x8000A270 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A264 | size: 0xC
.obj "@eti_8000A264", local
.hidden "@eti_8000A264"
	.4byte dtor_802AF338
	.4byte 0x0000005C
	.4byte "@etb_800070E0"
.endobj "@eti_8000A264"

# 0x802AF338..0x802AF394 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802AF338 | size: 0x5C
.fn dtor_802AF338, global
/* 802AF338 002A50B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AF33C 002A50BC  7C 08 02 A6 */	mflr r0
/* 802AF340 002A50C0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802AF344 002A50C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AF348 002A50C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AF34C 002A50CC  7C 7F 1B 78 */	mr r31, r3
/* 802AF350 002A50D0  41 82 00 2C */	beq .L_802AF37C
/* 802AF354 002A50D4  2C 04 00 00 */	cmpwi r4, 0x0
/* 802AF358 002A50D8  40 81 00 24 */	ble .L_802AF37C
/* 802AF35C 002A50DC  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802AF360 002A50E0  7F E4 FB 78 */	mr r4, r31
/* 802AF364 002A50E4  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802AF368 002A50E8  38 C0 00 1D */	li r6, 0x1d
/* 802AF36C 002A50EC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AF370 002A50F0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802AF374 002A50F4  7D 89 03 A6 */	mtctr r12
/* 802AF378 002A50F8  4E 80 04 21 */	bctrl
.L_802AF37C:
/* 802AF37C 002A50FC  7F E3 FB 78 */	mr r3, r31
/* 802AF380 002A5100  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AF384 002A5104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AF388 002A5108  7C 08 03 A6 */	mtlr r0
/* 802AF38C 002A510C  38 21 00 10 */	addi r1, r1, 0x10
/* 802AF390 002A5110  4E 80 00 20 */	blr
.endfn dtor_802AF338
