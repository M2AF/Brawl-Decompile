.include "macros.inc"
.file "auto_fn_802C3A68_text"

# 0x80007D48..0x80007D60 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007D48 | size: 0x18
.obj "@etb_80007D48", local
.hidden "@etb_80007D48"
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
.endobj "@etb_80007D48"

# 0x8000AAD4..0x8000AAE0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AAD4 | size: 0xC
.obj "@eti_8000AAD4", local
.hidden "@eti_8000AAD4"
	.4byte fn_802C3A68
	.4byte 0x00000048
	.4byte "@etb_80007D48"
.endobj "@eti_8000AAD4"

# 0x802C3A68..0x802C3AB0 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802C3A68 | size: 0x48
.fn fn_802C3A68, global
/* 802C3A68 002B97E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C3A6C 002B97EC  7C 08 02 A6 */	mflr r0
/* 802C3A70 002B97F0  3D 00 80 48 */	lis r8, lbl_80487178@ha
/* 802C3A74 002B97F4  7C 89 23 78 */	mr r9, r4
/* 802C3A78 002B97F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C3A7C 002B97FC  38 00 00 00 */	li r0, 0x0
/* 802C3A80 002B9800  39 08 71 78 */	addi r8, r8, lbl_80487178@l
/* 802C3A84 002B9804  7C A4 2B 78 */	mr r4, r5
/* 802C3A88 002B9808  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802C3A8C 002B980C  7D 25 4B 78 */	mr r5, r9
/* 802C3A90 002B9810  38 E1 00 08 */	addi r7, r1, 0x8
/* 802C3A94 002B9814  98 01 00 0C */	stb r0, 0xc(r1)
/* 802C3A98 002B9818  91 01 00 08 */	stw r8, 0x8(r1)
/* 802C3A9C 002B981C  4B FF FF B9 */	bl fn_802C3A54
/* 802C3AA0 002B9820  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C3AA4 002B9824  7C 08 03 A6 */	mtlr r0
/* 802C3AA8 002B9828  38 21 00 20 */	addi r1, r1, 0x20
/* 802C3AAC 002B982C  4E 80 00 20 */	blr
.endfn fn_802C3A68
