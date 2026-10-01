.include "macros.inc"
.file "auto_fn_802C8E9C_text"

# 0x80008038..0x80008040 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008038 | size: 0x8
.obj "@etb_80008038", local
.hidden "@etb_80008038"
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
.endobj "@etb_80008038"

# 0x8000AD38..0x8000AD44 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AD38 | size: 0xC
.obj "@eti_8000AD38", local
.hidden "@eti_8000AD38"
	.4byte fn_802C8E9C
	.4byte 0x000000CC
	.4byte "@etb_80008038"
.endobj "@eti_8000AD38"

# 0x802C8E9C..0x802C8F68 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x802C8E9C | size: 0xCC
.fn fn_802C8E9C, global
/* 802C8E9C 002BEC1C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802C8EA0 002BEC20  7C 08 02 A6 */	mflr r0
/* 802C8EA4 002BEC24  3C 80 80 2D */	lis r4, fn_802C9360@ha
/* 802C8EA8 002BEC28  3C A0 80 2D */	lis r5, fn_802CA4D4@ha
/* 802C8EAC 002BEC2C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C8EB0 002BEC30  3D 00 80 2D */	lis r8, fn_802CA564@ha
/* 802C8EB4 002BEC34  3C E0 80 2D */	lis r7, fn_802CA5AC@ha
/* 802C8EB8 002BEC38  38 84 93 60 */	addi r4, r4, fn_802C9360@l
/* 802C8EBC 002BEC3C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802C8EC0 002BEC40  3B E0 00 01 */	li r31, 0x1
/* 802C8EC4 002BEC44  38 A5 A4 D4 */	addi r5, r5, fn_802CA4D4@l
/* 802C8EC8 002BEC48  39 08 A5 64 */	addi r8, r8, fn_802CA564@l
/* 802C8ECC 002BEC4C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802C8ED0 002BEC50  38 E7 A5 AC */	addi r7, r7, fn_802CA5AC@l
/* 802C8ED4 002BEC54  7C 7E 1B 78 */	mr r30, r3
/* 802C8ED8 002BEC58  38 C0 00 19 */	li r6, 0x19
/* 802C8EDC 002BEC5C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802C8EE0 002BEC60  38 81 00 1C */	addi r4, r1, 0x1c
/* 802C8EE4 002BEC64  90 A1 00 20 */	stw r5, 0x20(r1)
/* 802C8EE8 002BEC68  38 A0 FF FF */	li r5, -0x1
/* 802C8EEC 002BEC6C  91 01 00 24 */	stw r8, 0x24(r1)
/* 802C8EF0 002BEC70  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802C8EF4 002BEC74  9B E1 00 2C */	stb r31, 0x2c(r1)
/* 802C8EF8 002BEC78  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802C8EFC 002BEC7C  48 00 31 F1 */	bl fn_802CC0EC
/* 802C8F00 002BEC80  3C 60 80 2D */	lis r3, fn_802C9020@ha
/* 802C8F04 002BEC84  3C 80 80 2D */	lis r4, fn_802CA0D4@ha
/* 802C8F08 002BEC88  3D 00 80 2D */	lis r8, fn_802C9E4C@ha
/* 802C8F0C 002BEC8C  3C E0 80 2D */	lis r7, fn_802C9BBC@ha
/* 802C8F10 002BEC90  38 63 90 20 */	addi r3, r3, fn_802C9020@l
/* 802C8F14 002BEC94  38 84 A0 D4 */	addi r4, r4, fn_802CA0D4@l
/* 802C8F18 002BEC98  39 08 9E 4C */	addi r8, r8, fn_802C9E4C@l
/* 802C8F1C 002BEC9C  38 E7 9B BC */	addi r7, r7, fn_802C9BBC@l
/* 802C8F20 002BECA0  38 00 00 00 */	li r0, 0x0
/* 802C8F24 002BECA4  90 61 00 08 */	stw r3, 0x8(r1)
/* 802C8F28 002BECA8  7F C3 F3 78 */	mr r3, r30
/* 802C8F2C 002BECAC  38 A0 00 19 */	li r5, 0x19
/* 802C8F30 002BECB0  90 81 00 0C */	stw r4, 0xc(r1)
/* 802C8F34 002BECB4  38 81 00 08 */	addi r4, r1, 0x8
/* 802C8F38 002BECB8  38 C0 FF FF */	li r6, -0x1
/* 802C8F3C 002BECBC  91 01 00 10 */	stw r8, 0x10(r1)
/* 802C8F40 002BECC0  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802C8F44 002BECC4  98 01 00 18 */	stb r0, 0x18(r1)
/* 802C8F48 002BECC8  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802C8F4C 002BECCC  48 00 31 A1 */	bl fn_802CC0EC
/* 802C8F50 002BECD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802C8F54 002BECD4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802C8F58 002BECD8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802C8F5C 002BECDC  7C 08 03 A6 */	mtlr r0
/* 802C8F60 002BECE0  38 21 00 40 */	addi r1, r1, 0x40
/* 802C8F64 002BECE4  4E 80 00 20 */	blr
.endfn fn_802C8E9C
