.include "macros.inc"
.file "auto_fn_803F88A4_text"

# 0x800096A4..0x800096AC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800096A4 | size: 0x8
.obj "@etb_800096A4", local
.hidden "@etb_800096A4"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_800096A4"

# 0x8000C73C..0x8000C748 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C73C | size: 0xC
.obj "@eti_8000C73C", local
.hidden "@eti_8000C73C"
	.4byte fn_803F88A4
	.4byte 0x00000080
	.4byte "@etb_800096A4"
.endobj "@eti_8000C73C"

# 0x803F88A4..0x803F8924 | size: 0x80
.text
.balign 4

# .text:0x0 | 0x803F88A4 | size: 0x80
.fn fn_803F88A4, global
/* 803F88A4 003EE624  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F88A8 003EE628  7C 08 02 A6 */	mflr r0
/* 803F88AC 003EE62C  7C A6 2B 78 */	mr r6, r5
/* 803F88B0 003EE630  7C 85 23 78 */	mr r5, r4
/* 803F88B4 003EE634  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F88B8 003EE638  3C E0 80 40 */	lis r7, fn_803F85B0@ha
/* 803F88BC 003EE63C  38 81 00 08 */	addi r4, r1, 0x8
/* 803F88C0 003EE640  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803F88C4 003EE644  3B E0 00 00 */	li r31, 0x0
/* 803F88C8 003EE648  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803F88CC 003EE64C  3B C0 FF FF */	li r30, -0x1
/* 803F88D0 003EE650  93 A1 00 24 */	stw r29, 0x24(r1)
/* 803F88D4 003EE654  7C 7D 1B 78 */	mr r29, r3
/* 803F88D8 003EE658  90 61 00 08 */	stw r3, 0x8(r1)
/* 803F88DC 003EE65C  38 67 85 B0 */	addi r3, r7, fn_803F85B0@l
/* 803F88E0 003EE660  93 C1 00 0C */	stw r30, 0xc(r1)
/* 803F88E4 003EE664  93 E1 00 10 */	stw r31, 0x10(r1)
/* 803F88E8 003EE668  4B FF F4 15 */	bl __pformatter_803F7CFC
/* 803F88EC 003EE66C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 803F88F0 003EE670  41 82 00 18 */	beq .L_803F8908
/* 803F88F4 003EE674  7C 03 F0 40 */	cmplw r3, r30
/* 803F88F8 003EE678  40 80 00 0C */	bge .L_803F8904
/* 803F88FC 003EE67C  7F FD 19 AE */	stbx r31, r29, r3
/* 803F8900 003EE680  48 00 00 08 */	b .L_803F8908
.L_803F8904:
/* 803F8904 003EE684  9B FD FF FE */	stb r31, -0x2(r29)
.L_803F8908:
/* 803F8908 003EE688  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F890C 003EE68C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803F8910 003EE690  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803F8914 003EE694  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803F8918 003EE698  7C 08 03 A6 */	mtlr r0
/* 803F891C 003EE69C  38 21 00 30 */	addi r1, r1, 0x30
/* 803F8920 003EE6A0  4E 80 00 20 */	blr
.endfn fn_803F88A4
