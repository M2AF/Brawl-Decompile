.include "macros.inc"
.file "auto_fn_803D6150_text"

# 0x800094C4..0x800094CC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800094C4 | size: 0x8
.obj "@etb_800094C4", local
.hidden "@etb_800094C4"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_800094C4"

# 0x8000C4C0..0x8000C4CC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C4C0 | size: 0xC
.obj "@eti_8000C4C0", local
.hidden "@eti_8000C4C0"
	.4byte fn_803D6150
	.4byte 0x000000BC
	.4byte "@etb_800094C4"
.endobj "@eti_8000C4C0"

# 0x803D6150..0x803D620C | size: 0xBC
.text
.balign 4

# .text:0x0 | 0x803D6150 | size: 0xBC
.fn fn_803D6150, global
/* 803D6150 003CBED0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D6154 003CBED4  7C 08 02 A6 */	mflr r0
/* 803D6158 003CBED8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D615C 003CBEDC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803D6160 003CBEE0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803D6164 003CBEE4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803D6168 003CBEE8  4B FF 71 41 */	bl fn_803CD2A8
/* 803D616C 003CBEEC  83 C3 00 00 */	lwz r30, 0x0(r3)
/* 803D6170 003CBEF0  3C 60 00 02 */	lis r3, 0x2
/* 803D6174 003CBEF4  38 A3 F1 E0 */	subi r5, r3, 0xe20
/* 803D6178 003CBEF8  38 80 00 00 */	li r4, 0x0
/* 803D617C 003CBEFC  38 7E 00 04 */	addi r3, r30, 0x4
/* 803D6180 003CBF00  4B C2 E2 BD */	bl memset
/* 803D6184 003CBF04  3C 60 52 4E */	lis r3, 0x524e
/* 803D6188 003CBF08  38 00 FF FF */	li r0, -0x1
/* 803D618C 003CBF0C  38 83 4F 44 */	addi r4, r3, 0x4f44
/* 803D6190 003CBF10  3B FE 1D 08 */	addi r31, r30, 0x1d08
/* 803D6194 003CBF14  90 9E 00 00 */	stw r4, 0x0(r30)
/* 803D6198 003CBF18  38 63 48 44 */	addi r3, r3, 0x4844
/* 803D619C 003CBF1C  3B A0 00 00 */	li r29, 0x0
/* 803D61A0 003CBF20  80 9E 1C EC */	lwz r4, 0x1cec(r30)
/* 803D61A4 003CBF24  64 84 80 00 */	oris r4, r4, 0x8000
/* 803D61A8 003CBF28  90 9E 1C EC */	stw r4, 0x1cec(r30)
/* 803D61AC 003CBF2C  90 7E 1D 00 */	stw r3, 0x1d00(r30)
/* 803D61B0 003CBF30  B0 1E 1D 04 */	sth r0, 0x1d04(r30)
/* 803D61B4 003CBF34  B0 1E 1D 06 */	sth r0, 0x1d06(r30)
.L_803D61B8:
/* 803D61B8 003CBF38  7F E3 FB 78 */	mr r3, r31
/* 803D61BC 003CBF3C  38 80 00 00 */	li r4, 0x0
/* 803D61C0 003CBF40  38 A0 00 0C */	li r5, 0xc
/* 803D61C4 003CBF44  4B C2 E2 79 */	bl memset
/* 803D61C8 003CBF48  A8 1F 00 08 */	lha r0, 0x8(r31)
/* 803D61CC 003CBF4C  3B BD 00 01 */	addi r29, r29, 0x1
/* 803D61D0 003CBF50  2C 1D 27 10 */	cmpwi r29, 0x2710
/* 803D61D4 003CBF54  60 00 7F FF */	ori r0, r0, 0x7fff
/* 803D61D8 003CBF58  B0 1F 00 08 */	sth r0, 0x8(r31)
/* 803D61DC 003CBF5C  A8 1F 00 0A */	lha r0, 0xa(r31)
/* 803D61E0 003CBF60  60 00 7F FF */	ori r0, r0, 0x7fff
/* 803D61E4 003CBF64  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 803D61E8 003CBF68  3B FF 00 0C */	addi r31, r31, 0xc
/* 803D61EC 003CBF6C  41 80 FF CC */	blt .L_803D61B8
/* 803D61F0 003CBF70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D61F4 003CBF74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803D61F8 003CBF78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803D61FC 003CBF7C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803D6200 003CBF80  7C 08 03 A6 */	mtlr r0
/* 803D6204 003CBF84  38 21 00 20 */	addi r1, r1, 0x20
/* 803D6208 003CBF88  4E 80 00 20 */	blr
.endfn fn_803D6150
