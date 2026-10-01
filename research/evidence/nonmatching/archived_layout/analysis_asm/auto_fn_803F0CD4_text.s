.include "macros.inc"
.file "auto_fn_803F0CD4_text"

# 0x80009504..0x8000950C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009504 | size: 0x8
.obj "@etb_80009504", local
.hidden "@etb_80009504"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 */
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_80009504"

# 0x8000C4F0..0x8000C4FC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C4F0 | size: 0xC
.obj "@eti_8000C4F0", local
.hidden "@eti_8000C4F0"
	.4byte fn_803F0CD4
	.4byte 0x00000078
	.4byte "@etb_80009504"
.endobj "@eti_8000C4F0"

# 0x803F0CD4..0x803F0D4C | size: 0x78
.text
.balign 4

# .text:0x0 | 0x803F0CD4 | size: 0x78
.fn fn_803F0CD4, global
/* 803F0CD4 003E6A54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F0CD8 003E6A58  7C 08 02 A6 */	mflr r0
/* 803F0CDC 003E6A5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F0CE0 003E6A60  7C 05 31 D6 */	mullw r0, r5, r6
/* 803F0CE4 003E6A64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F0CE8 003E6A68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F0CEC 003E6A6C  7C DE 33 78 */	mr r30, r6
/* 803F0CF0 003E6A70  7F E3 02 14 */	add r31, r3, r0
/* 803F0CF4 003E6A74  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803F0CF8 003E6A78  7C BD 2B 78 */	mr r29, r5
/* 803F0CFC 003E6A7C  93 81 00 10 */	stw r28, 0x10(r1)
/* 803F0D00 003E6A80  7C 9C 23 78 */	mr r28, r4
/* 803F0D04 003E6A84  48 00 00 20 */	b .L_803F0D24
.L_803F0D08:
/* 803F0D08 003E6A88  7F FD F8 50 */	subf r31, r29, r31
/* 803F0D0C 003E6A8C  7F 8C E3 78 */	mr r12, r28
/* 803F0D10 003E6A90  7F E3 FB 78 */	mr r3, r31
/* 803F0D14 003E6A94  38 80 FF FF */	li r4, -0x1
/* 803F0D18 003E6A98  7D 89 03 A6 */	mtctr r12
/* 803F0D1C 003E6A9C  4E 80 04 21 */	bctrl
/* 803F0D20 003E6AA0  3B DE FF FF */	subi r30, r30, 0x1
.L_803F0D24:
/* 803F0D24 003E6AA4  2C 1E 00 00 */	cmpwi r30, 0x0
/* 803F0D28 003E6AA8  40 82 FF E0 */	bne .L_803F0D08
/* 803F0D2C 003E6AAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F0D30 003E6AB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F0D34 003E6AB4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F0D38 003E6AB8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803F0D3C 003E6ABC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803F0D40 003E6AC0  7C 08 03 A6 */	mtlr r0
/* 803F0D44 003E6AC4  38 21 00 20 */	addi r1, r1, 0x20
/* 803F0D48 003E6AC8  4E 80 00 20 */	blr
.endfn fn_803F0CD4
