.include "macros.inc"
.file "auto_fn_802A3C28_text"

# 0x80006A40..0x80006A48 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A40 | size: 0x8
.obj "@etb_80006A40", local
.hidden "@etb_80006A40"
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
.endobj "@etb_80006A40"

# 0x80009DC0..0x80009DCC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009DC0 | size: 0xC
.obj "@eti_80009DC0", local
.hidden "@eti_80009DC0"
	.4byte fn_802A3C28
	.4byte 0x00000078
	.4byte "@etb_80006A40"
.endobj "@eti_80009DC0"

# 0x802A3C28..0x802A3CA0 | size: 0x78
.text
.balign 4

# .text:0x0 | 0x802A3C28 | size: 0x78
.fn fn_802A3C28, global
/* 802A3C28 002999A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A3C2C 002999AC  7C 08 02 A6 */	mflr r0
/* 802A3C30 002999B0  38 80 00 40 */	li r4, 0x40
/* 802A3C34 002999B4  38 A0 00 1D */	li r5, 0x1d
/* 802A3C38 002999B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A3C3C 002999BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A3C40 002999C0  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A3C44 002999C4  7C DE 33 78 */	mr r30, r6
/* 802A3C48 002999C8  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A3C4C 002999CC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A3C50 002999D0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802A3C54 002999D4  7D 89 03 A6 */	mtctr r12
/* 802A3C58 002999D8  4E 80 04 21 */	bctrl
/* 802A3C5C 002999DC  38 00 00 40 */	li r0, 0x40
/* 802A3C60 002999E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A3C64 002999E4  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802A3C68 002999E8  7C 7F 1B 78 */	mr r31, r3
/* 802A3C6C 002999EC  41 82 00 18 */	beq .L_802A3C84
/* 802A3C70 002999F0  7F C4 F3 78 */	mr r4, r30
/* 802A3C74 002999F4  4B FF FD D9 */	bl fn_802A3A4C
/* 802A3C78 002999F8  3C 60 80 48 */	lis r3, lbl_804867F8@ha
/* 802A3C7C 002999FC  38 63 67 F8 */	addi r3, r3, lbl_804867F8@l
/* 802A3C80 00299A00  90 7F 00 00 */	stw r3, 0x0(r31)
.L_802A3C84:
/* 802A3C84 00299A04  7F E3 FB 78 */	mr r3, r31
/* 802A3C88 00299A08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A3C8C 00299A0C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A3C90 00299A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A3C94 00299A14  7C 08 03 A6 */	mtlr r0
/* 802A3C98 00299A18  38 21 00 10 */	addi r1, r1, 0x10
/* 802A3C9C 00299A1C  4E 80 00 20 */	blr
.endfn fn_802A3C28
