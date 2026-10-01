.include "macros.inc"
.file "auto_dtor_802AF280_text"

# 0x800070D0..0x800070D8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800070D0 | size: 0x8
.obj "@etb_800070D0", local
.hidden "@etb_800070D0"
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
.endobj "@etb_800070D0"

# 0x8000A24C..0x8000A258 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A24C | size: 0xC
.obj "@eti_8000A24C", local
.hidden "@eti_8000A24C"
	.4byte dtor_802AF280
	.4byte 0x0000005C
	.4byte "@etb_800070D0"
.endobj "@eti_8000A24C"

# 0x802AF280..0x802AF2DC | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802AF280 | size: 0x5C
.fn dtor_802AF280, global
/* 802AF280 002A5000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AF284 002A5004  7C 08 02 A6 */	mflr r0
/* 802AF288 002A5008  2C 03 00 00 */	cmpwi r3, 0x0
/* 802AF28C 002A500C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AF290 002A5010  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AF294 002A5014  7C 7F 1B 78 */	mr r31, r3
/* 802AF298 002A5018  41 82 00 2C */	beq .L_802AF2C4
/* 802AF29C 002A501C  2C 04 00 00 */	cmpwi r4, 0x0
/* 802AF2A0 002A5020  40 81 00 24 */	ble .L_802AF2C4
/* 802AF2A4 002A5024  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802AF2A8 002A5028  7F E4 FB 78 */	mr r4, r31
/* 802AF2AC 002A502C  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802AF2B0 002A5030  38 C0 00 25 */	li r6, 0x25
/* 802AF2B4 002A5034  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AF2B8 002A5038  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802AF2BC 002A503C  7D 89 03 A6 */	mtctr r12
/* 802AF2C0 002A5040  4E 80 04 21 */	bctrl
.L_802AF2C4:
/* 802AF2C4 002A5044  7F E3 FB 78 */	mr r3, r31
/* 802AF2C8 002A5048  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AF2CC 002A504C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AF2D0 002A5050  7C 08 03 A6 */	mtlr r0
/* 802AF2D4 002A5054  38 21 00 10 */	addi r1, r1, 0x10
/* 802AF2D8 002A5058  4E 80 00 20 */	blr
.endfn dtor_802AF280
