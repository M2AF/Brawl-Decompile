.include "macros.inc"
.file "auto_fn_802A3CA0_text"

# 0x80006A48..0x80006A50 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A48 | size: 0x8
.obj "@etb_80006A48", local
.hidden "@etb_80006A48"
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
.endobj "@etb_80006A48"

# 0x80009DCC..0x80009DD8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009DCC | size: 0xC
.obj "@eti_80009DCC", local
.hidden "@eti_80009DCC"
	.4byte fn_802A3CA0
	.4byte 0x00000098
	.4byte "@etb_80006A48"
.endobj "@eti_80009DCC"

# 0x802A3CA0..0x802A3D38 | size: 0x98
.text
.balign 4

# .text:0x0 | 0x802A3CA0 | size: 0x98
.fn fn_802A3CA0, global
/* 802A3CA0 00299A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A3CA4 00299A24  7C 08 02 A6 */	mflr r0
/* 802A3CA8 00299A28  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A3CAC 00299A2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A3CB0 00299A30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A3CB4 00299A34  7C 9F 23 78 */	mr r31, r4
/* 802A3CB8 00299A38  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A3CBC 00299A3C  7C 7E 1B 78 */	mr r30, r3
/* 802A3CC0 00299A40  41 82 00 5C */	beq .L_802A3D1C
/* 802A3CC4 00299A44  34 03 00 0C */	addic. r0, r3, 0xc
/* 802A3CC8 00299A48  41 82 00 2C */	beq .L_802A3CF4
/* 802A3CCC 00299A4C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802A3CD0 00299A50  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802A3CD4 00299A54  40 82 00 20 */	bne .L_802A3CF4
/* 802A3CD8 00299A58  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802A3CDC 00299A5C  38 C0 00 15 */	li r6, 0x15
/* 802A3CE0 00299A60  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802A3CE4 00299A64  54 00 00 BE */	clrlwi r0, r0, 2
/* 802A3CE8 00299A68  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802A3CEC 00299A6C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 802A3CF0 00299A70  4B FD AD CD */	bl fn_8027EABC
.L_802A3CF4:
/* 802A3CF4 00299A74  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802A3CF8 00299A78  40 81 00 24 */	ble .L_802A3D1C
/* 802A3CFC 00299A7C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A3D00 00299A80  7F C4 F3 78 */	mr r4, r30
/* 802A3D04 00299A84  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802A3D08 00299A88  38 C0 00 1D */	li r6, 0x1d
/* 802A3D0C 00299A8C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A3D10 00299A90  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A3D14 00299A94  7D 89 03 A6 */	mtctr r12
/* 802A3D18 00299A98  4E 80 04 21 */	bctrl
.L_802A3D1C:
/* 802A3D1C 00299A9C  7F C3 F3 78 */	mr r3, r30
/* 802A3D20 00299AA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A3D24 00299AA4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A3D28 00299AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A3D2C 00299AAC  7C 08 03 A6 */	mtlr r0
/* 802A3D30 00299AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A3D34 00299AB4  4E 80 00 20 */	blr
.endfn fn_802A3CA0
