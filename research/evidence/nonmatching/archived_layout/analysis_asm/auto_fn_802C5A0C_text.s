.include "macros.inc"
.file "auto_fn_802C5A0C_text"

# 0x80007E58..0x80007E70 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007E58 | size: 0x18
.obj "@etb_80007E58", local
.hidden "@etb_80007E58"
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
.endobj "@etb_80007E58"

# 0x8000ABAC..0x8000ABB8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000ABAC | size: 0xC
.obj "@eti_8000ABAC", local
.hidden "@eti_8000ABAC"
	.4byte fn_802C5A0C
	.4byte 0x00000048
	.4byte "@etb_80007E58"
.endobj "@eti_8000ABAC"

# 0x802C5A0C..0x802C5A54 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802C5A0C | size: 0x48
.fn fn_802C5A0C, global
/* 802C5A0C 002BB78C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C5A10 002BB790  7C 08 02 A6 */	mflr r0
/* 802C5A14 002BB794  3D 00 80 48 */	lis r8, lbl_80487198@ha
/* 802C5A18 002BB798  C0 02 AC B0 */	lfs f0, lbl_805A3FD0@sda21(r0)
/* 802C5A1C 002BB79C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C5A20 002BB7A0  39 08 71 98 */	addi r8, r8, lbl_80487198@l
/* 802C5A24 002BB7A4  7C 80 23 78 */	mr r0, r4
/* 802C5A28 002BB7A8  7C A4 2B 78 */	mr r4, r5
/* 802C5A2C 002BB7AC  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802C5A30 002BB7B0  7C 05 03 78 */	mr r5, r0
/* 802C5A34 002BB7B4  38 E1 00 08 */	addi r7, r1, 0x8
/* 802C5A38 002BB7B8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802C5A3C 002BB7BC  91 01 00 08 */	stw r8, 0x8(r1)
/* 802C5A40 002BB7C0  4B FF E7 25 */	bl fn_802C4164
/* 802C5A44 002BB7C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C5A48 002BB7C8  7C 08 03 A6 */	mtlr r0
/* 802C5A4C 002BB7CC  38 21 00 20 */	addi r1, r1, 0x20
/* 802C5A50 002BB7D0  4E 80 00 20 */	blr
.endfn fn_802C5A0C
