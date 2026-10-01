.include "macros.inc"
.file "auto_fn_803F0F04_text"

# 0x8000951C..0x80009524 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000951C | size: 0x8
.obj "@etb_8000951C", local
.hidden "@etb_8000951C"
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
.endobj "@etb_8000951C"

# 0x8000C514..0x8000C520 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C514 | size: 0xC
.obj "@eti_8000C514", local
.hidden "@eti_8000C514"
	.4byte fn_803F0F04
	.4byte 0x00000040
	.4byte "@etb_8000951C"
.endobj "@eti_8000C514"

# 0x803F0F04..0x803F0F44 | size: 0x40
.text
.balign 4

# .text:0x0 | 0x803F0F04 | size: 0x40
.fn fn_803F0F04, global
/* 803F0F04 003E6C84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F0F08 003E6C88  7C 08 02 A6 */	mflr r0
/* 803F0F0C 003E6C8C  2C 03 00 00 */	cmpwi r3, 0x0
/* 803F0F10 003E6C90  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F0F14 003E6C94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F0F18 003E6C98  7C 7F 1B 78 */	mr r31, r3
/* 803F0F1C 003E6C9C  41 82 00 10 */	beq .L_803F0F2C
/* 803F0F20 003E6CA0  2C 04 00 00 */	cmpwi r4, 0x0
/* 803F0F24 003E6CA4  40 81 00 08 */	ble .L_803F0F2C
/* 803F0F28 003E6CA8  4B C1 B9 A1 */	bl fn_8000C8C8
.L_803F0F2C:
/* 803F0F2C 003E6CAC  7F E3 FB 78 */	mr r3, r31
/* 803F0F30 003E6CB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F0F34 003E6CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F0F38 003E6CB8  7C 08 03 A6 */	mtlr r0
/* 803F0F3C 003E6CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 803F0F40 003E6CC0  4E 80 00 20 */	blr
.endfn fn_803F0F04
