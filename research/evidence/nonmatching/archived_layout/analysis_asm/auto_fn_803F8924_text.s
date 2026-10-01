.include "macros.inc"
.file "auto_fn_803F8924_text"

# 0x800096AC..0x800096B4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800096AC | size: 0x8
.obj "@etb_800096AC", local
.hidden "@etb_800096AC"
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
.endobj "@etb_800096AC"

# 0x8000C748..0x8000C754 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C748 | size: 0xC
.obj "@eti_8000C748", local
.hidden "@eti_8000C748"
	.4byte fn_803F8924
	.4byte 0x000000D8
	.4byte "@etb_800096AC"
.endobj "@eti_8000C748"

# 0x803F8924..0x803F89FC | size: 0xD8
.text
.balign 4

# .text:0x0 | 0x803F8924 | size: 0xD8
.fn fn_803F8924, global
/* 803F8924 003EE6A4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 803F8928 003EE6A8  7C 08 02 A6 */	mflr r0
/* 803F892C 003EE6AC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 803F8930 003EE6B0  BF 61 00 8C */	stmw r27, 0x8c(r1)
/* 803F8934 003EE6B4  7C 7B 1B 78 */	mr r27, r3
/* 803F8938 003EE6B8  7C 9C 23 78 */	mr r28, r4
/* 803F893C 003EE6BC  40 86 00 24 */	bne cr1, .L_803F8960
/* 803F8940 003EE6C0  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 803F8944 003EE6C4  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 803F8948 003EE6C8  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 803F894C 003EE6CC  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 803F8950 003EE6D0  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 803F8954 003EE6D4  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 803F8958 003EE6D8  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 803F895C 003EE6DC  D9 01 00 60 */	stfd f8, 0x60(r1)
.L_803F8960:
/* 803F8960 003EE6E0  39 81 00 A8 */	addi r12, r1, 0xa8
/* 803F8964 003EE6E4  38 01 00 08 */	addi r0, r1, 0x8
/* 803F8968 003EE6E8  3F C0 03 00 */	lis r30, 0x300
/* 803F896C 003EE6EC  3B E0 00 00 */	li r31, 0x0
/* 803F8970 003EE6F0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803F8974 003EE6F4  3B A1 00 74 */	addi r29, r1, 0x74
/* 803F8978 003EE6F8  3D 60 80 40 */	lis r11, fn_803F85B0@ha
/* 803F897C 003EE6FC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803F8980 003EE700  7F A6 EB 78 */	mr r6, r29
/* 803F8984 003EE704  90 61 00 08 */	stw r3, 0x8(r1)
/* 803F8988 003EE708  90 61 00 68 */	stw r3, 0x68(r1)
/* 803F898C 003EE70C  38 6B 85 B0 */	addi r3, r11, fn_803F85B0@l
/* 803F8990 003EE710  90 81 00 0C */	stw r4, 0xc(r1)
/* 803F8994 003EE714  90 81 00 6C */	stw r4, 0x6c(r1)
/* 803F8998 003EE718  38 81 00 68 */	addi r4, r1, 0x68
/* 803F899C 003EE71C  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803F89A0 003EE720  91 01 00 1C */	stw r8, 0x1c(r1)
/* 803F89A4 003EE724  91 21 00 20 */	stw r9, 0x20(r1)
/* 803F89A8 003EE728  91 41 00 24 */	stw r10, 0x24(r1)
/* 803F89AC 003EE72C  93 C1 00 74 */	stw r30, 0x74(r1)
/* 803F89B0 003EE730  91 81 00 78 */	stw r12, 0x78(r1)
/* 803F89B4 003EE734  90 01 00 7C */	stw r0, 0x7c(r1)
/* 803F89B8 003EE738  93 E1 00 70 */	stw r31, 0x70(r1)
/* 803F89BC 003EE73C  4B FF F3 41 */	bl __pformatter_803F7CFC
/* 803F89C0 003EE740  2C 1B 00 00 */	cmpwi r27, 0x0
/* 803F89C4 003EE744  41 82 00 24 */	beq .L_803F89E8
/* 803F89C8 003EE748  7C 03 E0 40 */	cmplw r3, r28
/* 803F89CC 003EE74C  40 80 00 0C */	bge .L_803F89D8
/* 803F89D0 003EE750  7F FB 19 AE */	stbx r31, r27, r3
/* 803F89D4 003EE754  48 00 00 14 */	b .L_803F89E8
.L_803F89D8:
/* 803F89D8 003EE758  2C 1C 00 00 */	cmpwi r28, 0x0
/* 803F89DC 003EE75C  41 82 00 0C */	beq .L_803F89E8
/* 803F89E0 003EE760  7C 9B E2 14 */	add r4, r27, r28
/* 803F89E4 003EE764  9B E4 FF FF */	stb r31, -0x1(r4)
.L_803F89E8:
/* 803F89E8 003EE768  BB 61 00 8C */	lmw r27, 0x8c(r1)
/* 803F89EC 003EE76C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 803F89F0 003EE770  7C 08 03 A6 */	mtlr r0
/* 803F89F4 003EE774  38 21 00 A0 */	addi r1, r1, 0xa0
/* 803F89F8 003EE778  4E 80 00 20 */	blr
.endfn fn_803F8924
