.include "macros.inc"
.file "auto_dtor_802AF394_text"

# 0x800070E8..0x800070F0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800070E8 | size: 0x8
.obj "@etb_800070E8", local
.hidden "@etb_800070E8"
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
.endobj "@etb_800070E8"

# 0x8000A270..0x8000A27C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A270 | size: 0xC
.obj "@eti_8000A270", local
.hidden "@eti_8000A270"
	.4byte dtor_802AF394
	.4byte 0x0000005C
	.4byte "@etb_800070E8"
.endobj "@eti_8000A270"

# 0x802AF394..0x802AF3F0 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802AF394 | size: 0x5C
.fn dtor_802AF394, global
/* 802AF394 002A5114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AF398 002A5118  7C 08 02 A6 */	mflr r0
/* 802AF39C 002A511C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802AF3A0 002A5120  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AF3A4 002A5124  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AF3A8 002A5128  7C 7F 1B 78 */	mr r31, r3
/* 802AF3AC 002A512C  41 82 00 2C */	beq .L_802AF3D8
/* 802AF3B0 002A5130  2C 04 00 00 */	cmpwi r4, 0x0
/* 802AF3B4 002A5134  40 81 00 24 */	ble .L_802AF3D8
/* 802AF3B8 002A5138  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802AF3BC 002A513C  7F E4 FB 78 */	mr r4, r31
/* 802AF3C0 002A5140  38 A0 00 28 */	li r5, 0x28
/* 802AF3C4 002A5144  38 C0 00 1D */	li r6, 0x1d
/* 802AF3C8 002A5148  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AF3CC 002A514C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802AF3D0 002A5150  7D 89 03 A6 */	mtctr r12
/* 802AF3D4 002A5154  4E 80 04 21 */	bctrl
.L_802AF3D8:
/* 802AF3D8 002A5158  7F E3 FB 78 */	mr r3, r31
/* 802AF3DC 002A515C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AF3E0 002A5160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AF3E4 002A5164  7C 08 03 A6 */	mtlr r0
/* 802AF3E8 002A5168  38 21 00 10 */	addi r1, r1, 0x10
/* 802AF3EC 002A516C  4E 80 00 20 */	blr
.endfn dtor_802AF394
