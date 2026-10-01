.include "macros.inc"
.file "auto_fn_802A8E1C_text"

# 0x80006CD4..0x80006CDC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006CD4 | size: 0x8
.obj "@etb_80006CD4", local
.hidden "@etb_80006CD4"
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
.endobj "@etb_80006CD4"

# 0x80009F64..0x80009F70 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009F64 | size: 0xC
.obj "@eti_80009F64", local
.hidden "@eti_80009F64"
	.4byte fn_802A8E1C
	.4byte 0x0000003C
	.4byte "@etb_80006CD4"
.endobj "@eti_80009F64"

# 0x802A8E1C..0x802A8E58 | size: 0x3C
.text
.balign 4

# .text:0x0 | 0x802A8E1C | size: 0x3C
.fn fn_802A8E1C, global
/* 802A8E1C 0029EB9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8E20 0029EBA0  7C 08 02 A6 */	mflr r0
/* 802A8E24 0029EBA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8E28 0029EBA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A8E2C 0029EBAC  7C 7F 1B 78 */	mr r31, r3
/* 802A8E30 0029EBB0  4B FF AC 1D */	bl fn_802A3A4C
/* 802A8E34 0029EBB4  3C 80 80 48 */	lis r4, lbl_804868AC@ha
/* 802A8E38 0029EBB8  7F E3 FB 78 */	mr r3, r31
/* 802A8E3C 0029EBBC  38 84 68 AC */	addi r4, r4, lbl_804868AC@l
/* 802A8E40 0029EBC0  90 9F 00 00 */	stw r4, 0x0(r31)
/* 802A8E44 0029EBC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A8E48 0029EBC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8E4C 0029EBCC  7C 08 03 A6 */	mtlr r0
/* 802A8E50 0029EBD0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8E54 0029EBD4  4E 80 00 20 */	blr
.endfn fn_802A8E1C
