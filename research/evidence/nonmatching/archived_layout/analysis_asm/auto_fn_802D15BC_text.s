.include "macros.inc"
.file "auto_fn_802D15BC_text"

# 0x80008460..0x80008468 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008460 | size: 0x8
.obj "@etb_80008460", local
.hidden "@etb_80008460"
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
.endobj "@etb_80008460"

# 0x8000B200..0x8000B20C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B200 | size: 0xC
.obj "@eti_8000B200", local
.hidden "@eti_8000B200"
	.4byte fn_802D15BC
	.4byte 0x000000C4
	.4byte "@etb_80008460"
.endobj "@eti_8000B200"

# 0x802D15BC..0x802D1680 | size: 0xC4
.text
.balign 4

# .text:0x0 | 0x802D15BC | size: 0xC4
.fn fn_802D15BC, global
/* 802D15BC 002C733C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D15C0 002C7340  7C 08 02 A6 */	mflr r0
/* 802D15C4 002C7344  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D15C8 002C7348  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D15CC 002C734C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D15D0 002C7350  7C 9F 23 78 */	mr r31, r4
/* 802D15D4 002C7354  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802D15D8 002C7358  7C 7E 1B 78 */	mr r30, r3
/* 802D15DC 002C735C  41 82 00 88 */	beq .L_802D1664
/* 802D15E0 002C7360  34 03 00 40 */	addic. r0, r3, 0x40
/* 802D15E4 002C7364  41 82 00 28 */	beq .L_802D160C
/* 802D15E8 002C7368  80 03 00 48 */	lwz r0, 0x48(r3)
/* 802D15EC 002C736C  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802D15F0 002C7370  40 82 00 1C */	bne .L_802D160C
/* 802D15F4 002C7374  80 1E 00 48 */	lwz r0, 0x48(r30)
/* 802D15F8 002C7378  38 C0 00 15 */	li r6, 0x15
/* 802D15FC 002C737C  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802D1600 002C7380  80 9E 00 40 */	lwz r4, 0x40(r30)
/* 802D1604 002C7384  54 05 20 36 */	slwi r5, r0, 4
/* 802D1608 002C7388  4B FA D4 B5 */	bl fn_8027EABC
.L_802D160C:
/* 802D160C 002C738C  34 1E 00 30 */	addic. r0, r30, 0x30
/* 802D1610 002C7390  41 82 00 2C */	beq .L_802D163C
/* 802D1614 002C7394  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 802D1618 002C7398  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802D161C 002C739C  40 82 00 20 */	bne .L_802D163C
/* 802D1620 002C73A0  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 802D1624 002C73A4  38 C0 00 15 */	li r6, 0x15
/* 802D1628 002C73A8  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802D162C 002C73AC  54 00 00 BE */	clrlwi r0, r0, 2
/* 802D1630 002C73B0  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 802D1634 002C73B4  1C A0 00 30 */	mulli r5, r0, 0x30
/* 802D1638 002C73B8  4B FA D4 85 */	bl fn_8027EABC
.L_802D163C:
/* 802D163C 002C73BC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802D1640 002C73C0  40 81 00 24 */	ble .L_802D1664
/* 802D1644 002C73C4  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802D1648 002C73C8  7F C4 F3 78 */	mr r4, r30
/* 802D164C 002C73CC  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802D1650 002C73D0  38 C0 00 25 */	li r6, 0x25
/* 802D1654 002C73D4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D1658 002C73D8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802D165C 002C73DC  7D 89 03 A6 */	mtctr r12
/* 802D1660 002C73E0  4E 80 04 21 */	bctrl
.L_802D1664:
/* 802D1664 002C73E4  7F C3 F3 78 */	mr r3, r30
/* 802D1668 002C73E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D166C 002C73EC  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802D1670 002C73F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1674 002C73F4  7C 08 03 A6 */	mtlr r0
/* 802D1678 002C73F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D167C 002C73FC  4E 80 00 20 */	blr
.endfn fn_802D15BC
