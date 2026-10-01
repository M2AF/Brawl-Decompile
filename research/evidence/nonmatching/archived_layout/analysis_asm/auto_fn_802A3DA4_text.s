.include "macros.inc"
.file "auto_fn_802A3DA4_text"

# 0x80006A58..0x80006A60 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A58 | size: 0x8
.obj "@etb_80006A58", local
.hidden "@etb_80006A58"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_80006A58"

# 0x80009DE4..0x80009DF0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009DE4 | size: 0xC
.obj "@eti_80009DE4", local
.hidden "@eti_80009DE4"
	.4byte fn_802A3DA4
	.4byte 0x000000D0
	.4byte "@etb_80006A58"
.endobj "@eti_80009DE4"

# 0x802A3DA4..0x802A3E74 | size: 0xD0
.text
.balign 4

# .text:0x0 | 0x802A3DA4 | size: 0xD0
.fn fn_802A3DA4, global
/* 802A3DA4 00299B24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A3DA8 00299B28  7C 08 02 A6 */	mflr r0
/* 802A3DAC 00299B2C  80 A3 00 08 */	lwz r5, 0x8(r3)
/* 802A3DB0 00299B30  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A3DB4 00299B34  80 64 00 08 */	lwz r3, 0x8(r4)
/* 802A3DB8 00299B38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A3DBC 00299B3C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A3DC0 00299B40  7C DE 33 78 */	mr r30, r6
/* 802A3DC4 00299B44  C0 05 00 A0 */	lfs f0, 0xa0(r5)
/* 802A3DC8 00299B48  C0 23 00 A0 */	lfs f1, 0xa0(r3)
/* 802A3DCC 00299B4C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802A3DD0 00299B50  40 80 00 44 */	bge .L_802A3E14
/* 802A3DD4 00299B54  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A3DD8 00299B58  38 80 00 40 */	li r4, 0x40
/* 802A3DDC 00299B5C  38 A0 00 1D */	li r5, 0x1d
/* 802A3DE0 00299B60  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A3DE4 00299B64  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802A3DE8 00299B68  7D 89 03 A6 */	mtctr r12
/* 802A3DEC 00299B6C  4E 80 04 21 */	bctrl
/* 802A3DF0 00299B70  38 00 00 40 */	li r0, 0x40
/* 802A3DF4 00299B74  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A3DF8 00299B78  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802A3DFC 00299B7C  7C 7F 1B 78 */	mr r31, r3
/* 802A3E00 00299B80  41 82 00 0C */	beq .L_802A3E0C
/* 802A3E04 00299B84  7F C4 F3 78 */	mr r4, r30
/* 802A3E08 00299B88  4B FF FC 45 */	bl fn_802A3A4C
.L_802A3E0C:
/* 802A3E0C 00299B8C  7F E3 FB 78 */	mr r3, r31
/* 802A3E10 00299B90  48 00 00 4C */	b .L_802A3E5C
.L_802A3E14:
/* 802A3E14 00299B94  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A3E18 00299B98  38 80 00 40 */	li r4, 0x40
/* 802A3E1C 00299B9C  38 A0 00 1D */	li r5, 0x1d
/* 802A3E20 00299BA0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A3E24 00299BA4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802A3E28 00299BA8  7D 89 03 A6 */	mtctr r12
/* 802A3E2C 00299BAC  4E 80 04 21 */	bctrl
/* 802A3E30 00299BB0  38 00 00 40 */	li r0, 0x40
/* 802A3E34 00299BB4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A3E38 00299BB8  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802A3E3C 00299BBC  7C 7F 1B 78 */	mr r31, r3
/* 802A3E40 00299BC0  41 82 00 18 */	beq .L_802A3E58
/* 802A3E44 00299BC4  7F C4 F3 78 */	mr r4, r30
/* 802A3E48 00299BC8  4B FF FC 05 */	bl fn_802A3A4C
/* 802A3E4C 00299BCC  3C 60 80 48 */	lis r3, lbl_804867F8@ha
/* 802A3E50 00299BD0  38 63 67 F8 */	addi r3, r3, lbl_804867F8@l
/* 802A3E54 00299BD4  90 7F 00 00 */	stw r3, 0x0(r31)
.L_802A3E58:
/* 802A3E58 00299BD8  7F E3 FB 78 */	mr r3, r31
.L_802A3E5C:
/* 802A3E5C 00299BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A3E60 00299BE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A3E64 00299BE4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A3E68 00299BE8  7C 08 03 A6 */	mtlr r0
/* 802A3E6C 00299BEC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A3E70 00299BF0  4E 80 00 20 */	blr
.endfn fn_802A3DA4
