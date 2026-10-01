.include "macros.inc"
.file "auto_fn_802C3EE4_text"

# 0x80007DE0..0x80007DE8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007DE0 | size: 0x8
.obj "@etb_80007DE0", local
.hidden "@etb_80007DE0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80007DE0"

# 0x8000AB28..0x8000AB34 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AB28 | size: 0xC
.obj "@eti_8000AB28", local
.hidden "@eti_8000AB28"
	.4byte fn_802C3EE4
	.4byte 0x000000CC
	.4byte "@etb_80007DE0"
.endobj "@eti_8000AB28"

# 0x802C3EE4..0x802C3FB0 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x802C3EE4 | size: 0xCC
.fn fn_802C3EE4, global
/* 802C3EE4 002B9C64  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802C3EE8 002B9C68  7C 08 02 A6 */	mflr r0
/* 802C3EEC 002B9C6C  3C 80 80 2C */	lis r4, fn_802C3FB0@ha
/* 802C3EF0 002B9C70  3C C0 80 2C */	lis r6, fn_802C59C4@ha
/* 802C3EF4 002B9C74  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C3EF8 002B9C78  3D 00 80 2C */	lis r8, fn_802C5A54@ha
/* 802C3EFC 002B9C7C  3C E0 80 2C */	lis r7, fn_802C5A9C@ha
/* 802C3F00 002B9C80  38 84 3F B0 */	addi r4, r4, fn_802C3FB0@l
/* 802C3F04 002B9C84  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802C3F08 002B9C88  38 C6 59 C4 */	addi r6, r6, fn_802C59C4@l
/* 802C3F0C 002B9C8C  39 08 5A 54 */	addi r8, r8, fn_802C5A54@l
/* 802C3F10 002B9C90  38 E7 5A 9C */	addi r7, r7, fn_802C5A9C@l
/* 802C3F14 002B9C94  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802C3F18 002B9C98  3B E0 00 00 */	li r31, 0x0
/* 802C3F1C 002B9C9C  38 00 00 01 */	li r0, 0x1
/* 802C3F20 002B9CA0  7C 7E 1B 78 */	mr r30, r3
/* 802C3F24 002B9CA4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802C3F28 002B9CA8  38 81 00 1C */	addi r4, r1, 0x1c
/* 802C3F2C 002B9CAC  38 A0 00 08 */	li r5, 0x8
/* 802C3F30 002B9CB0  90 C1 00 20 */	stw r6, 0x20(r1)
/* 802C3F34 002B9CB4  38 C0 00 04 */	li r6, 0x4
/* 802C3F38 002B9CB8  91 01 00 24 */	stw r8, 0x24(r1)
/* 802C3F3C 002B9CBC  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802C3F40 002B9CC0  98 01 00 2C */	stb r0, 0x2c(r1)
/* 802C3F44 002B9CC4  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802C3F48 002B9CC8  48 00 81 A5 */	bl fn_802CC0EC
/* 802C3F4C 002B9CCC  3C 60 80 2C */	lis r3, fn_802C4084@ha
/* 802C3F50 002B9CD0  3C A0 80 2C */	lis r5, fn_802C4E34@ha
/* 802C3F54 002B9CD4  3D 00 80 2C */	lis r8, fn_802C47CC@ha
/* 802C3F58 002B9CD8  3C E0 80 2B */	lis r7, fn_802B7FD0@ha
/* 802C3F5C 002B9CDC  38 63 40 84 */	addi r3, r3, fn_802C4084@l
/* 802C3F60 002B9CE0  38 A5 4E 34 */	addi r5, r5, fn_802C4E34@l
/* 802C3F64 002B9CE4  39 08 47 CC */	addi r8, r8, fn_802C47CC@l
/* 802C3F68 002B9CE8  38 E7 7F D0 */	addi r7, r7, fn_802B7FD0@l
/* 802C3F6C 002B9CEC  90 61 00 08 */	stw r3, 0x8(r1)
/* 802C3F70 002B9CF0  7F C3 F3 78 */	mr r3, r30
/* 802C3F74 002B9CF4  38 81 00 08 */	addi r4, r1, 0x8
/* 802C3F78 002B9CF8  38 C0 00 08 */	li r6, 0x8
/* 802C3F7C 002B9CFC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802C3F80 002B9D00  38 A0 00 04 */	li r5, 0x4
/* 802C3F84 002B9D04  91 01 00 10 */	stw r8, 0x10(r1)
/* 802C3F88 002B9D08  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802C3F8C 002B9D0C  9B E1 00 18 */	stb r31, 0x18(r1)
/* 802C3F90 002B9D10  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802C3F94 002B9D14  48 00 81 59 */	bl fn_802CC0EC
/* 802C3F98 002B9D18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802C3F9C 002B9D1C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802C3FA0 002B9D20  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802C3FA4 002B9D24  7C 08 03 A6 */	mtlr r0
/* 802C3FA8 002B9D28  38 21 00 40 */	addi r1, r1, 0x40
/* 802C3FAC 002B9D2C  4E 80 00 20 */	blr
.endfn fn_802C3EE4
