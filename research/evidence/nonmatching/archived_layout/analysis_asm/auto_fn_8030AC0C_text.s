.include "macros.inc"
.file "auto_fn_8030AC0C_text"

# 0x800088F0..0x800088F8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800088F0 | size: 0x8
.obj "@etb_800088F0", local
.hidden "@etb_800088F0"
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
.endobj "@etb_800088F0"

# 0x8000B848..0x8000B854 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B848 | size: 0xC
.obj "@eti_8000B848", local
.hidden "@eti_8000B848"
	.4byte fn_8030AC0C
	.4byte 0x000000EC
	.4byte "@etb_800088F0"
.endobj "@eti_8000B848"

# 0x8030AC0C..0x8030ACF8 | size: 0xEC
.text
.balign 4

# .text:0x0 | 0x8030AC0C | size: 0xEC
.fn fn_8030AC0C, global
/* 8030AC0C 0030098C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030AC10 00300990  7C 08 02 A6 */	mflr r0
/* 8030AC14 00300994  3C E0 80 53 */	lis r7, lbl_805332B0@ha
/* 8030AC18 00300998  54 A5 18 38 */	slwi r5, r5, 3
/* 8030AC1C 0030099C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030AC20 003009A0  38 E7 32 B0 */	addi r7, r7, lbl_805332B0@l
/* 8030AC24 003009A4  7C E7 2A 14 */	add r7, r7, r5
/* 8030AC28 003009A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030AC2C 003009AC  7C 7F 1B 78 */	mr r31, r3
/* 8030AC30 003009B0  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8030AC34 003009B4  3B C0 00 00 */	li r30, 0x0
/* 8030AC38 003009B8  80 03 00 04 */	lwz r0, 0x4(r3)
/* 8030AC3C 003009BC  81 23 00 00 */	lwz r9, 0x0(r3)
/* 8030AC40 003009C0  54 00 10 3A */	slwi r0, r0, 2
/* 8030AC44 003009C4  7D 09 02 14 */	add r8, r9, r0
/* 8030AC48 003009C8  7D 2A 4B 78 */	mr r10, r9
/* 8030AC4C 003009CC  38 08 00 03 */	addi r0, r8, 0x3
/* 8030AC50 003009D0  7C 09 00 50 */	subf r0, r9, r0
/* 8030AC54 003009D4  54 00 F0 BE */	srwi r0, r0, 2
/* 8030AC58 003009D8  7C 09 03 A6 */	mtctr r0
/* 8030AC5C 003009DC  7C 09 40 40 */	cmplw r9, r8
/* 8030AC60 003009E0  40 80 00 4C */	bge .L_8030ACAC
.L_8030AC64:
/* 8030AC64 003009E4  A0 0A 00 02 */	lhz r0, 0x2(r10)
/* 8030AC68 003009E8  80 A6 00 00 */	lwz r5, 0x0(r6)
/* 8030AC6C 003009EC  54 00 10 3A */	slwi r0, r0, 2
/* 8030AC70 003009F0  7D 05 00 2E */	lwzx r8, r5, r0
/* 8030AC74 003009F4  2C 08 00 00 */	cmpwi r8, 0x0
/* 8030AC78 003009F8  41 80 00 2C */	blt .L_8030ACA4
/* 8030AC7C 003009FC  A0 AA 00 00 */	lhz r5, 0x0(r10)
/* 8030AC80 00300A00  55 00 20 36 */	slwi r0, r8, 4
/* 8030AC84 00300A04  7C 04 02 14 */	add r0, r4, r0
/* 8030AC88 00300A08  B0 A9 00 00 */	sth r5, 0x0(r9)
/* 8030AC8C 00300A0C  54 A5 17 7A */	clrlslwi r5, r5, 31, 2
/* 8030AC90 00300A10  7C A7 28 2E */	lwzx r5, r7, r5
/* 8030AC94 00300A14  B1 09 00 02 */	sth r8, 0x2(r9)
/* 8030AC98 00300A18  39 29 00 04 */	addi r9, r9, 0x4
/* 8030AC9C 00300A1C  7F C5 03 2E */	sthx r30, r5, r0
/* 8030ACA0 00300A20  3B DE 00 01 */	addi r30, r30, 0x1
.L_8030ACA4:
/* 8030ACA4 00300A24  39 4A 00 04 */	addi r10, r10, 0x4
/* 8030ACA8 00300A28  42 00 FF BC */	bdnz .L_8030AC64
.L_8030ACAC:
/* 8030ACAC 00300A2C  80 03 00 08 */	lwz r0, 0x8(r3)
/* 8030ACB0 00300A30  54 00 00 BE */	clrlwi r0, r0, 2
/* 8030ACB4 00300A34  7C 00 F0 00 */	cmpw r0, r30
/* 8030ACB8 00300A38  40 80 00 24 */	bge .L_8030ACDC
/* 8030ACBC 00300A3C  54 00 08 3C */	slwi r0, r0, 1
/* 8030ACC0 00300A40  7F E3 FB 78 */	mr r3, r31
/* 8030ACC4 00300A44  7C 1E 00 00 */	cmpw r30, r0
/* 8030ACC8 00300A48  7F C4 F3 78 */	mr r4, r30
/* 8030ACCC 00300A4C  40 80 00 08 */	bge .L_8030ACD4
/* 8030ACD0 00300A50  7C 04 03 78 */	mr r4, r0
.L_8030ACD4:
/* 8030ACD4 00300A54  38 A0 00 04 */	li r5, 0x4
/* 8030ACD8 00300A58  4B F7 20 BD */	bl fn_8027CD94
.L_8030ACDC:
/* 8030ACDC 00300A5C  93 DF 00 04 */	stw r30, 0x4(r31)
/* 8030ACE0 00300A60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030ACE4 00300A64  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8030ACE8 00300A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030ACEC 00300A6C  7C 08 03 A6 */	mtlr r0
/* 8030ACF0 00300A70  38 21 00 10 */	addi r1, r1, 0x10
/* 8030ACF4 00300A74  4E 80 00 20 */	blr
.endfn fn_8030AC0C
