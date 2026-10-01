.include "macros.inc"
.file "auto_fn_802CAD00_text"

# 0x800081B8..0x800081C0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800081B8 | size: 0x8
.obj "@etb_800081B8", local
.hidden "@etb_800081B8"
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
.endobj "@etb_800081B8"

# 0x8000AE64..0x8000AE70 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AE64 | size: 0xC
.obj "@eti_8000AE64", local
.hidden "@eti_8000AE64"
	.4byte fn_802CAD00
	.4byte 0x0000005C
	.4byte "@etb_800081B8"
.endobj "@eti_8000AE64"

# 0x802CAD00..0x802CAD5C | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802CAD00 | size: 0x5C
.fn fn_802CAD00, global
/* 802CAD00 002C0A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CAD04 002C0A84  7C 08 02 A6 */	mflr r0
/* 802CAD08 002C0A88  2C 03 00 00 */	cmpwi r3, 0x0
/* 802CAD0C 002C0A8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CAD10 002C0A90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CAD14 002C0A94  7C 7F 1B 78 */	mr r31, r3
/* 802CAD18 002C0A98  41 82 00 2C */	beq .L_802CAD44
/* 802CAD1C 002C0A9C  2C 04 00 00 */	cmpwi r4, 0x0
/* 802CAD20 002C0AA0  40 81 00 24 */	ble .L_802CAD44
/* 802CAD24 002C0AA4  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802CAD28 002C0AA8  7F E4 FB 78 */	mr r4, r31
/* 802CAD2C 002C0AAC  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802CAD30 002C0AB0  38 C0 00 1F */	li r6, 0x1f
/* 802CAD34 002C0AB4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CAD38 002C0AB8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802CAD3C 002C0ABC  7D 89 03 A6 */	mtctr r12
/* 802CAD40 002C0AC0  4E 80 04 21 */	bctrl
.L_802CAD44:
/* 802CAD44 002C0AC4  7F E3 FB 78 */	mr r3, r31
/* 802CAD48 002C0AC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CAD4C 002C0ACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CAD50 002C0AD0  7C 08 03 A6 */	mtlr r0
/* 802CAD54 002C0AD4  38 21 00 10 */	addi r1, r1, 0x10
/* 802CAD58 002C0AD8  4E 80 00 20 */	blr
.endfn fn_802CAD00
