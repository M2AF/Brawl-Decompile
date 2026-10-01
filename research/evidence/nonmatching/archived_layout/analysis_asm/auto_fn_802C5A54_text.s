.include "macros.inc"
.file "auto_fn_802C5A54_text"

# 0x80007E70..0x80007E88 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007E70 | size: 0x18
.obj "@etb_80007E70", local
.hidden "@etb_80007E70"
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
.endobj "@etb_80007E70"

# 0x8000ABB8..0x8000ABC4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000ABB8 | size: 0xC
.obj "@eti_8000ABB8", local
.hidden "@eti_8000ABB8"
	.4byte fn_802C5A54
	.4byte 0x00000048
	.4byte "@etb_80007E70"
.endobj "@eti_8000ABB8"

# 0x802C5A54..0x802C5A9C | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802C5A54 | size: 0x48
.fn fn_802C5A54, global
/* 802C5A54 002BB7D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C5A58 002BB7D8  7C 08 02 A6 */	mflr r0
/* 802C5A5C 002BB7DC  3C E0 80 48 */	lis r7, lbl_80487198@ha
/* 802C5A60 002BB7E0  C0 02 AC B0 */	lfs f0, lbl_805A3FD0@sda21(r0)
/* 802C5A64 002BB7E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C5A68 002BB7E8  38 E7 71 98 */	addi r7, r7, lbl_80487198@l
/* 802C5A6C 002BB7EC  7C 60 1B 78 */	mr r0, r3
/* 802C5A70 002BB7F0  7C 83 23 78 */	mr r3, r4
/* 802C5A74 002BB7F4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802C5A78 002BB7F8  7C 04 03 78 */	mr r4, r0
/* 802C5A7C 002BB7FC  38 C1 00 08 */	addi r6, r1, 0x8
/* 802C5A80 002BB800  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802C5A84 002BB804  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802C5A88 002BB808  4B FF ED 45 */	bl fn_802C47CC
/* 802C5A8C 002BB80C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C5A90 002BB810  7C 08 03 A6 */	mtlr r0
/* 802C5A94 002BB814  38 21 00 20 */	addi r1, r1, 0x20
/* 802C5A98 002BB818  4E 80 00 20 */	blr
.endfn fn_802C5A54
