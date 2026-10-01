.include "macros.inc"
.file "auto_fn_802C2124_text"

# 0x80007CD8..0x80007CF0 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007CD8 | size: 0x18
.obj "@etb_80007CD8", local
.hidden "@etb_80007CD8"
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
.endobj "@etb_80007CD8"

# 0x8000AA44..0x8000AA50 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AA44 | size: 0xC
.obj "@eti_8000AA44", local
.hidden "@eti_8000AA44"
	.4byte fn_802C2124
	.4byte 0x00000048
	.4byte "@etb_80007CD8"
.endobj "@eti_8000AA44"

# 0x802C2124..0x802C216C | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802C2124 | size: 0x48
.fn fn_802C2124, global
/* 802C2124 002B7EA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C2128 002B7EA8  7C 08 02 A6 */	mflr r0
/* 802C212C 002B7EAC  3D 00 80 48 */	lis r8, lbl_80487198@ha
/* 802C2130 002B7EB0  C0 02 AC 80 */	lfs f0, lbl_805A3FA0@sda21(r0)
/* 802C2134 002B7EB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C2138 002B7EB8  39 08 71 98 */	addi r8, r8, lbl_80487198@l
/* 802C213C 002B7EBC  7C 80 23 78 */	mr r0, r4
/* 802C2140 002B7EC0  7C A4 2B 78 */	mr r4, r5
/* 802C2144 002B7EC4  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802C2148 002B7EC8  7C 05 03 78 */	mr r5, r0
/* 802C214C 002B7ECC  38 E1 00 08 */	addi r7, r1, 0x8
/* 802C2150 002B7ED0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802C2154 002B7ED4  91 01 00 08 */	stw r8, 0x8(r1)
/* 802C2158 002B7ED8  4B FF F1 19 */	bl fn_802C1270
/* 802C215C 002B7EDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C2160 002B7EE0  7C 08 03 A6 */	mtlr r0
/* 802C2164 002B7EE4  38 21 00 20 */	addi r1, r1, 0x20
/* 802C2168 002B7EE8  4E 80 00 20 */	blr
.endfn fn_802C2124
