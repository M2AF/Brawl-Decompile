.include "macros.inc"
.file "auto_dtor_802BAE28_text"

# 0x8000789C..0x800078A4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000789C | size: 0x8
.obj "@etb_8000789C", local
.hidden "@etb_8000789C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000789C"

# 0x8000A75C..0x8000A768 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A75C | size: 0xC
.obj "@eti_8000A75C", local
.hidden "@eti_8000A75C"
	.4byte dtor_802BAE28
	.4byte 0x00000090
	.4byte "@etb_8000789C"
.endobj "@eti_8000A75C"

# 0x802BAE28..0x802BAEB8 | size: 0x90
.text
.balign 4

# .text:0x0 | 0x802BAE28 | size: 0x90
.fn dtor_802BAE28, global
/* 802BAE28 002B0BA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BAE2C 002B0BAC  7C 08 02 A6 */	mflr r0
/* 802BAE30 002B0BB0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802BAE34 002B0BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BAE38 002B0BB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BAE3C 002B0BBC  7C 9F 23 78 */	mr r31, r4
/* 802BAE40 002B0BC0  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802BAE44 002B0BC4  7C 7E 1B 78 */	mr r30, r3
/* 802BAE48 002B0BC8  41 82 00 54 */	beq .L_802BAE9C
/* 802BAE4C 002B0BCC  41 82 00 28 */	beq .L_802BAE74
/* 802BAE50 002B0BD0  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802BAE54 002B0BD4  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802BAE58 002B0BD8  40 82 00 1C */	bne .L_802BAE74
/* 802BAE5C 002B0BDC  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 802BAE60 002B0BE0  38 C0 00 15 */	li r6, 0x15
/* 802BAE64 002B0BE4  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802BAE68 002B0BE8  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 802BAE6C 002B0BEC  54 05 18 38 */	slwi r5, r0, 3
/* 802BAE70 002B0BF0  4B FC 3C 4D */	bl fn_8027EABC
.L_802BAE74:
/* 802BAE74 002B0BF4  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802BAE78 002B0BF8  40 81 00 24 */	ble .L_802BAE9C
/* 802BAE7C 002B0BFC  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802BAE80 002B0C00  7F C4 F3 78 */	mr r4, r30
/* 802BAE84 002B0C04  38 A0 00 2C */	li r5, 0x2c
/* 802BAE88 002B0C08  38 C0 00 15 */	li r6, 0x15
/* 802BAE8C 002B0C0C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802BAE90 002B0C10  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802BAE94 002B0C14  7D 89 03 A6 */	mtctr r12
/* 802BAE98 002B0C18  4E 80 04 21 */	bctrl
.L_802BAE9C:
/* 802BAE9C 002B0C1C  7F C3 F3 78 */	mr r3, r30
/* 802BAEA0 002B0C20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BAEA4 002B0C24  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802BAEA8 002B0C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BAEAC 002B0C2C  7C 08 03 A6 */	mtlr r0
/* 802BAEB0 002B0C30  38 21 00 10 */	addi r1, r1, 0x10
/* 802BAEB4 002B0C34  4E 80 00 20 */	blr
.endfn dtor_802BAE28
