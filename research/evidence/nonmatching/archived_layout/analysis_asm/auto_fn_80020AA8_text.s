.include "macros.inc"
.file "auto_fn_80020AA8_text"

# 0x80020AA8..0x80020AF8 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x80020AA8 | size: 0x50
.fn fn_80020AA8, global
/* 80020AA8 00016828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020AAC 0001682C  7C 08 02 A6 */	mflr r0
/* 80020AB0 00016830  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020AB4 00016834  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80020AB8 00016838  3F E0 80 49 */	lis r31, lbl_80494910@ha
/* 80020ABC 0001683C  38 7F 49 10 */	addi r3, r31, lbl_80494910@l
/* 80020AC0 00016840  48 1B E0 BD */	bl fn_801DEB7C
/* 80020AC4 00016844  3C 80 80 02 */	lis r4, fn_80020AF8@ha
/* 80020AC8 00016848  3C A0 80 49 */	lis r5, lbl_80494900@ha
/* 80020ACC 0001684C  38 7F 49 10 */	addi r3, r31, lbl_80494910@l
/* 80020AD0 00016850  38 84 0A F8 */	addi r4, r4, fn_80020AF8@l
/* 80020AD4 00016854  38 A5 49 00 */	addi r5, r5, lbl_80494900@l
/* 80020AD8 00016858  48 3C FC 4D */	bl __register_global_object
/* 80020ADC 0001685C  38 00 00 00 */	li r0, 0x0
/* 80020AE0 00016860  90 0D BB CC */	stw r0, lbl_8059FFEC@sda21(r0)
/* 80020AE4 00016864  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80020AE8 00016868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020AEC 0001686C  7C 08 03 A6 */	mtlr r0
/* 80020AF0 00016870  38 21 00 10 */	addi r1, r1, 0x10
/* 80020AF4 00016874  4E 80 00 20 */	blr
.endfn fn_80020AA8

# 0x804064F0..0x804064F4 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80020AA8
