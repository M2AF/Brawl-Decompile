.include "macros.inc"
.file "auto_fn_802AF2DC_text"

# 0x800070D8..0x800070E0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800070D8 | size: 0x8
.obj "@etb_800070D8", local
.hidden "@etb_800070D8"
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
.endobj "@etb_800070D8"

# 0x8000A258..0x8000A264 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A258 | size: 0xC
.obj "@eti_8000A258", local
.hidden "@eti_8000A258"
	.4byte fn_802AF2DC
	.4byte 0x0000005C
	.4byte "@etb_800070D8"
.endobj "@eti_8000A258"

# 0x802AF2DC..0x802AF338 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802AF2DC | size: 0x5C
.fn fn_802AF2DC, global
/* 802AF2DC 002A505C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AF2E0 002A5060  7C 08 02 A6 */	mflr r0
/* 802AF2E4 002A5064  2C 03 00 00 */	cmpwi r3, 0x0
/* 802AF2E8 002A5068  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AF2EC 002A506C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AF2F0 002A5070  7C 7F 1B 78 */	mr r31, r3
/* 802AF2F4 002A5074  41 82 00 2C */	beq .L_802AF320
/* 802AF2F8 002A5078  2C 04 00 00 */	cmpwi r4, 0x0
/* 802AF2FC 002A507C  40 81 00 24 */	ble .L_802AF320
/* 802AF300 002A5080  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802AF304 002A5084  7F E4 FB 78 */	mr r4, r31
/* 802AF308 002A5088  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802AF30C 002A508C  38 C0 00 1D */	li r6, 0x1d
/* 802AF310 002A5090  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AF314 002A5094  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802AF318 002A5098  7D 89 03 A6 */	mtctr r12
/* 802AF31C 002A509C  4E 80 04 21 */	bctrl
.L_802AF320:
/* 802AF320 002A50A0  7F E3 FB 78 */	mr r3, r31
/* 802AF324 002A50A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AF328 002A50A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AF32C 002A50AC  7C 08 03 A6 */	mtlr r0
/* 802AF330 002A50B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802AF334 002A50B4  4E 80 00 20 */	blr
.endfn fn_802AF2DC
