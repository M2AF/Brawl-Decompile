.include "macros.inc"
.file "auto_fn_802A95B8_text"

# 0x80006DA4..0x80006DBC | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006DA4 | size: 0x18
.obj "@etb_80006DA4", local
.hidden "@etb_80006DA4"
/*
 * Flag values:
 * Has Elf Vector: Yes
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
 * Dtor: "dtor_802A38DC"
 * Has end bit
 */
	.4byte 0x000A0000
	.4byte 0x00000038
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte dtor_802A38DC
.endobj "@etb_80006DA4"

# 0x80009FDC..0x80009FE8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009FDC | size: 0xC
.obj "@eti_80009FDC", local
.hidden "@eti_80009FDC"
	.4byte fn_802A95B8
	.4byte 0x00000048
	.4byte "@etb_80006DA4"
.endobj "@eti_80009FDC"

# 0x802A95B8..0x802A9600 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802A95B8 | size: 0x48
.fn fn_802A95B8, global
/* 802A95B8 0029F338  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A95BC 0029F33C  7C 08 02 A6 */	mflr r0
/* 802A95C0 0029F340  3C E0 80 48 */	lis r7, lbl_80487198@ha
/* 802A95C4 0029F344  C0 02 AB D8 */	lfs f0, lbl_805A3EF8@sda21(r0)
/* 802A95C8 0029F348  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A95CC 0029F34C  38 E7 71 98 */	addi r7, r7, lbl_80487198@l
/* 802A95D0 0029F350  7C 60 1B 78 */	mr r0, r3
/* 802A95D4 0029F354  7C 83 23 78 */	mr r3, r4
/* 802A95D8 0029F358  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802A95DC 0029F35C  7C 04 03 78 */	mr r4, r0
/* 802A95E0 0029F360  38 C1 00 08 */	addi r6, r1, 0x8
/* 802A95E4 0029F364  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802A95E8 0029F368  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802A95EC 0029F36C  4B FF E9 45 */	bl fn_802A7F30
/* 802A95F0 0029F370  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A95F4 0029F374  7C 08 03 A6 */	mtlr r0
/* 802A95F8 0029F378  38 21 00 20 */	addi r1, r1, 0x20
/* 802A95FC 0029F37C  4E 80 00 20 */	blr
.endfn fn_802A95B8
