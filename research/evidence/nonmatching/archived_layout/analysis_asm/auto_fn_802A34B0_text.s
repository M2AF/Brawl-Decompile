.include "macros.inc"
.file "auto_fn_802A34B0_text"

# 0x80006980..0x80006998 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006980 | size: 0x18
.obj "@etb_80006980", local
.hidden "@etb_80006980"
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
.endobj "@etb_80006980"

# 0x80009D30..0x80009D3C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009D30 | size: 0xC
.obj "@eti_80009D30", local
.hidden "@eti_80009D30"
	.4byte fn_802A34B0
	.4byte 0x00000048
	.4byte "@etb_80006980"
.endobj "@eti_80009D30"

# 0x802A34B0..0x802A34F8 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802A34B0 | size: 0x48
.fn fn_802A34B0, global
/* 802A34B0 00299230  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A34B4 00299234  7C 08 02 A6 */	mflr r0
/* 802A34B8 00299238  3D 00 80 48 */	lis r8, lbl_80487178@ha
/* 802A34BC 0029923C  7C 89 23 78 */	mr r9, r4
/* 802A34C0 00299240  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A34C4 00299244  38 00 00 00 */	li r0, 0x0
/* 802A34C8 00299248  39 08 71 78 */	addi r8, r8, lbl_80487178@l
/* 802A34CC 0029924C  7C A4 2B 78 */	mr r4, r5
/* 802A34D0 00299250  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802A34D4 00299254  7D 25 4B 78 */	mr r5, r9
/* 802A34D8 00299258  38 E1 00 08 */	addi r7, r1, 0x8
/* 802A34DC 0029925C  98 01 00 0C */	stb r0, 0xc(r1)
/* 802A34E0 00299260  91 01 00 08 */	stw r8, 0x8(r1)
/* 802A34E4 00299264  4B FF FB 71 */	bl fn_802A3054
/* 802A34E8 00299268  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A34EC 0029926C  7C 08 03 A6 */	mtlr r0
/* 802A34F0 00299270  38 21 00 20 */	addi r1, r1, 0x20
/* 802A34F4 00299274  4E 80 00 20 */	blr
.endfn fn_802A34B0
