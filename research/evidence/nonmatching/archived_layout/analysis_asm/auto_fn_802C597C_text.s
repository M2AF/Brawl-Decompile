.include "macros.inc"
.file "auto_fn_802C597C_text"

# 0x80007E28..0x80007E40 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007E28 | size: 0x18
.obj "@etb_80007E28", local
.hidden "@etb_80007E28"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * 
 * PC actions:
 * PC=00000038, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYLOCAL
 * Local: 0x8(SP)
 * Dtor: "dtor_802A3938"
 * Has end bit
 */
	.4byte 0x00080000
	.4byte 0x00000038
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte dtor_802A3938
.endobj "@etb_80007E28"

# 0x8000AB94..0x8000ABA0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AB94 | size: 0xC
.obj "@eti_8000AB94", local
.hidden "@eti_8000AB94"
	.4byte fn_802C597C
	.4byte 0x00000048
	.4byte "@etb_80007E28"
.endobj "@eti_8000AB94"

# 0x802C597C..0x802C59C4 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802C597C | size: 0x48
.fn fn_802C597C, global
/* 802C597C 002BB6FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C5980 002BB700  7C 08 02 A6 */	mflr r0
/* 802C5984 002BB704  3D 00 80 48 */	lis r8, lbl_80487178@ha
/* 802C5988 002BB708  7C 89 23 78 */	mr r9, r4
/* 802C598C 002BB70C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C5990 002BB710  38 00 00 00 */	li r0, 0x0
/* 802C5994 002BB714  39 08 71 78 */	addi r8, r8, lbl_80487178@l
/* 802C5998 002BB718  7C A4 2B 78 */	mr r4, r5
/* 802C599C 002BB71C  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802C59A0 002BB720  7D 25 4B 78 */	mr r5, r9
/* 802C59A4 002BB724  38 E1 00 08 */	addi r7, r1, 0x8
/* 802C59A8 002BB728  98 01 00 0C */	stb r0, 0xc(r1)
/* 802C59AC 002BB72C  91 01 00 08 */	stw r8, 0x8(r1)
/* 802C59B0 002BB730  4B FF F8 D1 */	bl fn_802C5280
/* 802C59B4 002BB734  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C59B8 002BB738  7C 08 03 A6 */	mtlr r0
/* 802C59BC 002BB73C  38 21 00 20 */	addi r1, r1, 0x20
/* 802C59C0 002BB740  4E 80 00 20 */	blr
.endfn fn_802C597C
