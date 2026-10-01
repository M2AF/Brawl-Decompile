.include "macros.inc"
.file "auto_fn_80327B5C_text"

# 0x80008EC4..0x80008ECC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008EC4 | size: 0x8
.obj "@etb_80008EC4", local
.hidden "@etb_80008EC4"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008EC4"

# 0x8000BE3C..0x8000BE48 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BE3C | size: 0xC
.obj "@eti_8000BE3C", local
.hidden "@eti_8000BE3C"
	.4byte fn_80327B5C
	.4byte 0x00000044
	.4byte "@etb_80008EC4"
.endobj "@eti_8000BE3C"

# 0x80327B5C..0x80327BA0 | size: 0x44
.text
.balign 4

# .text:0x0 | 0x80327B5C | size: 0x44
.fn fn_80327B5C, global
/* 80327B5C 0031D8DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80327B60 0031D8E0  7C 08 02 A6 */	mflr r0
/* 80327B64 0031D8E4  3D 60 80 49 */	lis r11, lbl_80488CE8@ha
/* 80327B68 0031D8E8  39 00 00 00 */	li r8, 0x0
/* 80327B6C 0031D8EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80327B70 0031D8F0  38 E1 00 08 */	addi r7, r1, 0x8
/* 80327B74 0031D8F4  85 4B 8C E8 */	lwzu r10, lbl_80488CE8@l(r11)
/* 80327B78 0031D8F8  81 2B 00 04 */	lwz r9, 0x4(r11)
/* 80327B7C 0031D8FC  80 0B 00 08 */	lwz r0, 0x8(r11)
/* 80327B80 0031D900  91 41 00 08 */	stw r10, 0x8(r1)
/* 80327B84 0031D904  91 21 00 0C */	stw r9, 0xc(r1)
/* 80327B88 0031D908  90 01 00 10 */	stw r0, 0x10(r1)
/* 80327B8C 0031D90C  4B FC AD 91 */	bl fn_802F291C
/* 80327B90 0031D910  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80327B94 0031D914  7C 08 03 A6 */	mtlr r0
/* 80327B98 0031D918  38 21 00 20 */	addi r1, r1, 0x20
/* 80327B9C 0031D91C  4E 80 00 20 */	blr
.endfn fn_80327B5C
