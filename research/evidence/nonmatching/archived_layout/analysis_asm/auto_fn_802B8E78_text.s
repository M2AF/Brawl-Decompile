.include "macros.inc"
.file "auto_fn_802B8E78_text"

# 0x80007704..0x8000770C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007704 | size: 0x8
.obj "@etb_80007704", local
.hidden "@etb_80007704"
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
.endobj "@etb_80007704"

# 0x8000A648..0x8000A654 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A648 | size: 0xC
.obj "@eti_8000A648", local
.hidden "@eti_8000A648"
	.4byte fn_802B8E78
	.4byte 0x000000CC
	.4byte "@etb_80007704"
.endobj "@eti_8000A648"

# 0x802B8E78..0x802B8F44 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x802B8E78 | size: 0xCC
.fn fn_802B8E78, global
/* 802B8E78 002AEBF8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802B8E7C 002AEBFC  7C 08 02 A6 */	mflr r0
/* 802B8E80 002AEC00  3C 80 80 2C */	lis r4, fn_802B9168@ha
/* 802B8E84 002AEC04  3C A0 80 2C */	lis r5, fn_802BA3AC@ha
/* 802B8E88 002AEC08  90 01 00 44 */	stw r0, 0x44(r1)
/* 802B8E8C 002AEC0C  3D 00 80 2C */	lis r8, fn_802BA43C@ha
/* 802B8E90 002AEC10  3C E0 80 2C */	lis r7, fn_802BA484@ha
/* 802B8E94 002AEC14  38 84 91 68 */	addi r4, r4, fn_802B9168@l
/* 802B8E98 002AEC18  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802B8E9C 002AEC1C  3B E0 00 01 */	li r31, 0x1
/* 802B8EA0 002AEC20  38 A5 A3 AC */	addi r5, r5, fn_802BA3AC@l
/* 802B8EA4 002AEC24  39 08 A4 3C */	addi r8, r8, fn_802BA43C@l
/* 802B8EA8 002AEC28  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802B8EAC 002AEC2C  38 E7 A4 84 */	addi r7, r7, fn_802BA484@l
/* 802B8EB0 002AEC30  7C 7E 1B 78 */	mr r30, r3
/* 802B8EB4 002AEC34  38 C0 00 11 */	li r6, 0x11
/* 802B8EB8 002AEC38  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802B8EBC 002AEC3C  38 81 00 1C */	addi r4, r1, 0x1c
/* 802B8EC0 002AEC40  90 A1 00 20 */	stw r5, 0x20(r1)
/* 802B8EC4 002AEC44  38 A0 00 01 */	li r5, 0x1
/* 802B8EC8 002AEC48  91 01 00 24 */	stw r8, 0x24(r1)
/* 802B8ECC 002AEC4C  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802B8ED0 002AEC50  9B E1 00 2C */	stb r31, 0x2c(r1)
/* 802B8ED4 002AEC54  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802B8ED8 002AEC58  48 01 32 15 */	bl fn_802CC0EC
/* 802B8EDC 002AEC5C  3C 60 80 2C */	lis r3, fn_802B9284@ha
/* 802B8EE0 002AEC60  3C 80 80 2C */	lis r4, fn_802B9BA0@ha
/* 802B8EE4 002AEC64  3D 00 80 2C */	lis r8, fn_802B9798@ha
/* 802B8EE8 002AEC68  3C E0 80 2B */	lis r7, fn_802B7FD0@ha
/* 802B8EEC 002AEC6C  38 63 92 84 */	addi r3, r3, fn_802B9284@l
/* 802B8EF0 002AEC70  38 84 9B A0 */	addi r4, r4, fn_802B9BA0@l
/* 802B8EF4 002AEC74  39 08 97 98 */	addi r8, r8, fn_802B9798@l
/* 802B8EF8 002AEC78  38 E7 7F D0 */	addi r7, r7, fn_802B7FD0@l
/* 802B8EFC 002AEC7C  38 00 00 00 */	li r0, 0x0
/* 802B8F00 002AEC80  90 61 00 08 */	stw r3, 0x8(r1)
/* 802B8F04 002AEC84  7F C3 F3 78 */	mr r3, r30
/* 802B8F08 002AEC88  38 A0 00 11 */	li r5, 0x11
/* 802B8F0C 002AEC8C  90 81 00 0C */	stw r4, 0xc(r1)
/* 802B8F10 002AEC90  38 81 00 08 */	addi r4, r1, 0x8
/* 802B8F14 002AEC94  38 C0 00 01 */	li r6, 0x1
/* 802B8F18 002AEC98  91 01 00 10 */	stw r8, 0x10(r1)
/* 802B8F1C 002AEC9C  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802B8F20 002AECA0  98 01 00 18 */	stb r0, 0x18(r1)
/* 802B8F24 002AECA4  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802B8F28 002AECA8  48 01 31 C5 */	bl fn_802CC0EC
/* 802B8F2C 002AECAC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802B8F30 002AECB0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802B8F34 002AECB4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802B8F38 002AECB8  7C 08 03 A6 */	mtlr r0
/* 802B8F3C 002AECBC  38 21 00 40 */	addi r1, r1, 0x40
/* 802B8F40 002AECC0  4E 80 00 20 */	blr
.endfn fn_802B8E78
