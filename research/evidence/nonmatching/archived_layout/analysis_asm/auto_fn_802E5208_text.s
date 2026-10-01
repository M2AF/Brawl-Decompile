.include "macros.inc"
.file "auto_fn_802E5208_text"

# 0x802E5208..0x802E5258 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802E5208 | size: 0x50
.fn fn_802E5208, global
/* 802E5208 002DAF88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E520C 002DAF8C  7C 08 02 A6 */	mflr r0
/* 802E5210 002DAF90  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E5214 002DAF94  4B FF F6 49 */	bl fn_802E485C
/* 802E5218 002DAF98  3D 00 80 41 */	lis r8, lbl_80413120@ha
/* 802E521C 002DAF9C  3C E0 80 53 */	lis r7, lbl_805330E8@ha
/* 802E5220 002DAFA0  3C C0 80 2E */	lis r6, fn_802E4828@ha
/* 802E5224 002DAFA4  3C 80 80 2E */	lis r4, fn_802E4848@ha
/* 802E5228 002DAFA8  39 08 31 20 */	addi r8, r8, lbl_80413120@l
/* 802E522C 002DAFAC  38 A7 30 E8 */	addi r5, r7, lbl_805330E8@l
/* 802E5230 002DAFB0  38 C6 48 28 */	addi r6, r6, fn_802E4828@l
/* 802E5234 002DAFB4  38 84 48 48 */	addi r4, r4, fn_802E4848@l
/* 802E5238 002DAFB8  91 07 30 E8 */	stw r8, lbl_805330E8@l(r7)
/* 802E523C 002DAFBC  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802E5240 002DAFC0  90 85 00 08 */	stw r4, 0x8(r5)
/* 802E5244 002DAFC4  90 65 00 0C */	stw r3, 0xc(r5)
/* 802E5248 002DAFC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E524C 002DAFCC  7C 08 03 A6 */	mtlr r0
/* 802E5250 002DAFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E5254 002DAFD4  4E 80 00 20 */	blr
.endfn fn_802E5208

# 0x80406710..0x80406714 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802E5208
