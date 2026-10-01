.include "macros.inc"
.file "auto_fn_803F89FC_text"

# 0x800096B4..0x800096BC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800096B4 | size: 0x8
.obj "@etb_800096B4", local
.hidden "@etb_800096B4"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 */
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_800096B4"

# 0x8000C754..0x8000C760 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C754 | size: 0xC
.obj "@eti_8000C754", local
.hidden "@eti_8000C754"
	.4byte fn_803F89FC
	.4byte 0x000000D0
	.4byte "@etb_800096B4"
.endobj "@eti_8000C754"

# 0x803F89FC..0x803F8ACC | size: 0xD0
.text
.balign 4

# .text:0x0 | 0x803F89FC | size: 0xD0
.fn fn_803F89FC, global
/* 803F89FC 003EE77C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 803F8A00 003EE780  7C 08 02 A6 */	mflr r0
/* 803F8A04 003EE784  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 803F8A08 003EE788  BF 61 00 8C */	stmw r27, 0x8c(r1)
/* 803F8A0C 003EE78C  7C 7B 1B 78 */	mr r27, r3
/* 803F8A10 003EE790  40 86 00 24 */	bne cr1, .L_803F8A34
/* 803F8A14 003EE794  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 803F8A18 003EE798  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 803F8A1C 003EE79C  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 803F8A20 003EE7A0  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 803F8A24 003EE7A4  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 803F8A28 003EE7A8  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 803F8A2C 003EE7AC  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 803F8A30 003EE7B0  D9 01 00 60 */	stfd f8, 0x60(r1)
.L_803F8A34:
/* 803F8A34 003EE7B4  39 81 00 A8 */	addi r12, r1, 0xa8
/* 803F8A38 003EE7B8  38 01 00 08 */	addi r0, r1, 0x8
/* 803F8A3C 003EE7BC  3F A0 02 00 */	lis r29, 0x200
/* 803F8A40 003EE7C0  3B C0 FF FF */	li r30, -0x1
/* 803F8A44 003EE7C4  3B E0 00 00 */	li r31, 0x0
/* 803F8A48 003EE7C8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803F8A4C 003EE7CC  3B 81 00 74 */	addi r28, r1, 0x74
/* 803F8A50 003EE7D0  3D 60 80 40 */	lis r11, fn_803F85B0@ha
/* 803F8A54 003EE7D4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803F8A58 003EE7D8  7C 85 23 78 */	mr r5, r4
/* 803F8A5C 003EE7DC  7F 86 E3 78 */	mr r6, r28
/* 803F8A60 003EE7E0  90 81 00 0C */	stw r4, 0xc(r1)
/* 803F8A64 003EE7E4  38 81 00 68 */	addi r4, r1, 0x68
/* 803F8A68 003EE7E8  90 61 00 08 */	stw r3, 0x8(r1)
/* 803F8A6C 003EE7EC  90 61 00 68 */	stw r3, 0x68(r1)
/* 803F8A70 003EE7F0  38 6B 85 B0 */	addi r3, r11, fn_803F85B0@l
/* 803F8A74 003EE7F4  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803F8A78 003EE7F8  91 01 00 1C */	stw r8, 0x1c(r1)
/* 803F8A7C 003EE7FC  91 21 00 20 */	stw r9, 0x20(r1)
/* 803F8A80 003EE800  91 41 00 24 */	stw r10, 0x24(r1)
/* 803F8A84 003EE804  93 A1 00 74 */	stw r29, 0x74(r1)
/* 803F8A88 003EE808  91 81 00 78 */	stw r12, 0x78(r1)
/* 803F8A8C 003EE80C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 803F8A90 003EE810  93 C1 00 6C */	stw r30, 0x6c(r1)
/* 803F8A94 003EE814  93 E1 00 70 */	stw r31, 0x70(r1)
/* 803F8A98 003EE818  4B FF F2 65 */	bl __pformatter_803F7CFC
/* 803F8A9C 003EE81C  2C 1B 00 00 */	cmpwi r27, 0x0
/* 803F8AA0 003EE820  41 82 00 18 */	beq .L_803F8AB8
/* 803F8AA4 003EE824  7C 03 F0 40 */	cmplw r3, r30
/* 803F8AA8 003EE828  40 80 00 0C */	bge .L_803F8AB4
/* 803F8AAC 003EE82C  7F FB 19 AE */	stbx r31, r27, r3
/* 803F8AB0 003EE830  48 00 00 08 */	b .L_803F8AB8
.L_803F8AB4:
/* 803F8AB4 003EE834  9B FB FF FE */	stb r31, -0x2(r27)
.L_803F8AB8:
/* 803F8AB8 003EE838  BB 61 00 8C */	lmw r27, 0x8c(r1)
/* 803F8ABC 003EE83C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 803F8AC0 003EE840  7C 08 03 A6 */	mtlr r0
/* 803F8AC4 003EE844  38 21 00 A0 */	addi r1, r1, 0xa0
/* 803F8AC8 003EE848  4E 80 00 20 */	blr
.endfn fn_803F89FC
