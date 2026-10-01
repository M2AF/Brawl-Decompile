.include "macros.inc"
.file "auto_fn_803020E0_text"

# 0x80008794..0x8000879C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008794 | size: 0x8
.obj "@etb_80008794", local
.hidden "@etb_80008794"
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
.endobj "@etb_80008794"

# 0x8000B6B0..0x8000B6BC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B6B0 | size: 0xC
.obj "@eti_8000B6B0", local
.hidden "@eti_8000B6B0"
	.4byte fn_803020E0
	.4byte 0x000000E0
	.4byte "@etb_80008794"
.endobj "@eti_8000B6B0"

# 0x803020E0..0x803021C0 | size: 0xE0
.text
.balign 4

# .text:0x0 | 0x803020E0 | size: 0xE0
.fn fn_803020E0, global
/* 803020E0 002F7E60  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803020E4 002F7E64  7C 08 02 A6 */	mflr r0
/* 803020E8 002F7E68  3D 80 80 30 */	lis r12, fn_803009A4@ha
/* 803020EC 002F7E6C  3D 60 80 30 */	lis r11, fn_80300B30@ha
/* 803020F0 002F7E70  90 01 00 54 */	stw r0, 0x54(r1)
/* 803020F4 002F7E74  3D 40 80 30 */	lis r10, fn_80300BAC@ha
/* 803020F8 002F7E78  3D 20 80 30 */	lis r9, fn_80300BE8@ha
/* 803020FC 002F7E7C  3D 00 80 30 */	lis r8, fn_80300C30@ha
/* 80302100 002F7E80  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80302104 002F7E84  3F E0 80 30 */	lis r31, fn_80302270@ha
/* 80302108 002F7E88  3C E0 80 30 */	lis r7, fn_80300C6C@ha
/* 8030210C 002F7E8C  38 00 00 01 */	li r0, 0x1
/* 80302110 002F7E90  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80302114 002F7E94  3F C0 80 30 */	lis r30, fn_803021C0@ha
/* 80302118 002F7E98  3B DE 21 C0 */	addi r30, r30, fn_803021C0@l
/* 8030211C 002F7E9C  3B FF 22 70 */	addi r31, r31, fn_80302270@l
/* 80302120 002F7EA0  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80302124 002F7EA4  3B A0 00 00 */	li r29, 0x0
/* 80302128 002F7EA8  39 8C 09 A4 */	addi r12, r12, fn_803009A4@l
/* 8030212C 002F7EAC  39 6B 0B 30 */	addi r11, r11, fn_80300B30@l
/* 80302130 002F7EB0  93 81 00 40 */	stw r28, 0x40(r1)
/* 80302134 002F7EB4  39 4A 0B AC */	addi r10, r10, fn_80300BAC@l
/* 80302138 002F7EB8  39 29 0B E8 */	addi r9, r9, fn_80300BE8@l
/* 8030213C 002F7EBC  39 08 0C 30 */	addi r8, r8, fn_80300C30@l
/* 80302140 002F7EC0  38 E7 0C 6C */	addi r7, r7, fn_80300C6C@l
/* 80302144 002F7EC4  93 A1 00 20 */	stw r29, 0x20(r1)
/* 80302148 002F7EC8  7C 7C 1B 78 */	mr r28, r3
/* 8030214C 002F7ECC  38 81 00 08 */	addi r4, r1, 0x8
/* 80302150 002F7ED0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80302154 002F7ED4  38 A0 00 05 */	li r5, 0x5
/* 80302158 002F7ED8  38 C0 00 01 */	li r6, 0x1
/* 8030215C 002F7EDC  93 A1 00 28 */	stw r29, 0x28(r1)
/* 80302160 002F7EE0  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80302164 002F7EE4  93 E1 00 30 */	stw r31, 0x30(r1)
/* 80302168 002F7EE8  91 81 00 2C */	stw r12, 0x2c(r1)
/* 8030216C 002F7EEC  91 61 00 10 */	stw r11, 0x10(r1)
/* 80302170 002F7EF0  91 41 00 14 */	stw r10, 0x14(r1)
/* 80302174 002F7EF4  91 21 00 18 */	stw r9, 0x18(r1)
/* 80302178 002F7EF8  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8030217C 002F7EFC  90 E1 00 0C */	stw r7, 0xc(r1)
/* 80302180 002F7F00  98 01 00 34 */	stb r0, 0x34(r1)
/* 80302184 002F7F04  98 01 00 35 */	stb r0, 0x35(r1)
/* 80302188 002F7F08  4B FC A0 8D */	bl fn_802CC214
/* 8030218C 002F7F0C  7F 83 E3 78 */	mr r3, r28
/* 80302190 002F7F10  38 81 00 08 */	addi r4, r1, 0x8
/* 80302194 002F7F14  38 A0 00 01 */	li r5, 0x1
/* 80302198 002F7F18  38 C0 00 05 */	li r6, 0x5
/* 8030219C 002F7F1C  4B FC A0 79 */	bl fn_802CC214
/* 803021A0 002F7F20  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803021A4 002F7F24  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 803021A8 002F7F28  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 803021AC 002F7F2C  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 803021B0 002F7F30  83 81 00 40 */	lwz r28, 0x40(r1)
/* 803021B4 002F7F34  7C 08 03 A6 */	mtlr r0
/* 803021B8 002F7F38  38 21 00 50 */	addi r1, r1, 0x50
/* 803021BC 002F7F3C  4E 80 00 20 */	blr
.endfn fn_803020E0
