.include "macros.inc"
.file "auto_fn_8014CBF8_text"

# 0x8014CBF8..0x8014CC40 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x8014CBF8 | size: 0x48
.fn fn_8014CBF8, global
/* 8014CBF8 00142978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014CBFC 0014297C  7C 08 02 A6 */	mflr r0
/* 8014CC00 00142980  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014CC04 00142984  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014CC08 00142988  3F E0 80 4A */	lis r31, lbl_8049ECA0@ha
/* 8014CC0C 0014298C  38 7F EC A0 */	addi r3, r31, lbl_8049ECA0@l
/* 8014CC10 00142990  48 09 1F 6D */	bl fn_801DEB7C
/* 8014CC14 00142994  3C 80 80 02 */	lis r4, fn_80020AF8@ha
/* 8014CC18 00142998  3C A0 80 4A */	lis r5, lbl_8049EC90@ha
/* 8014CC1C 0014299C  38 7F EC A0 */	addi r3, r31, lbl_8049ECA0@l
/* 8014CC20 001429A0  38 84 0A F8 */	addi r4, r4, fn_80020AF8@l
/* 8014CC24 001429A4  38 A5 EC 90 */	addi r5, r5, lbl_8049EC90@l
/* 8014CC28 001429A8  48 2A 3A FD */	bl __register_global_object
/* 8014CC2C 001429AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014CC30 001429B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014CC34 001429B4  7C 08 03 A6 */	mtlr r0
/* 8014CC38 001429B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8014CC3C 001429BC  4E 80 00 20 */	blr
.endfn fn_8014CBF8

# 0x80406568..0x8040656C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8014CBF8
