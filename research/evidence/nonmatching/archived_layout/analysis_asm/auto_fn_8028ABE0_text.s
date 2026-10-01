.include "macros.inc"
.file "auto_fn_8028ABE0_text"

# 0x80006558..0x80006560 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006558 | size: 0x8
.obj "@etb_80006558", local
.hidden "@etb_80006558"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 */
	.4byte 0x280A0000
	.4byte 0x00000000
.endobj "@etb_80006558"

# 0x80009814..0x80009820 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009814 | size: 0xC
.obj "@eti_80009814", local
.hidden "@eti_80009814"
	.4byte fn_8028ABE0
	.4byte 0x00000140
	.4byte "@etb_80006558"
.endobj "@eti_80009814"

# 0x8028ABE0..0x8028AD20 | size: 0x140
.text
.balign 4

# .text:0x0 | 0x8028ABE0 | size: 0x140
.fn fn_8028ABE0, global
/* 8028ABE0 00280960  54 2B 07 3E */	clrlwi r11, r1, 28
/* 8028ABE4 00280964  7C 2C 0B 78 */	mr r12, r1
/* 8028ABE8 00280968  21 6B FF A0 */	subfic r11, r11, -0x60
/* 8028ABEC 0028096C  7C 21 59 6E */	stwux r1, r1, r11
/* 8028ABF0 00280970  7C 08 02 A6 */	mflr r0
/* 8028ABF4 00280974  7D 8B 63 78 */	mr r11, r12
/* 8028ABF8 00280978  90 0C 00 04 */	stw r0, 0x4(r12)
/* 8028ABFC 0028097C  48 16 67 25 */	bl _savegpr_27
/* 8028AC00 00280980  88 03 00 02 */	lbz r0, 0x2(r3)
/* 8028AC04 00280984  3C 60 80 41 */	lis r3, lbl_8040F958@ha
/* 8028AC08 00280988  38 63 F9 58 */	addi r3, r3, lbl_8040F958@l
/* 8028AC0C 0028098C  7C FD 3B 78 */	mr r29, r7
/* 8028AC10 00280990  7C 60 1A 14 */	add r3, r0, r3
/* 8028AC14 00280994  54 00 20 36 */	slwi r0, r0, 4
/* 8028AC18 00280998  8B E3 00 01 */	lbz r31, 0x1(r3)
/* 8028AC1C 0028099C  7C 9B 23 78 */	mr r27, r4
/* 8028AC20 002809A0  7D 65 04 6E */	lfsux f11, r5, r0
/* 8028AC24 002809A4  7C DC 33 78 */	mr r28, r6
/* 8028AC28 002809A8  8B C3 00 02 */	lbz r30, 0x2(r3)
/* 8028AC2C 002809AC  7C E6 FA 14 */	add r7, r6, r31
/* 8028AC30 002809B0  C1 45 00 04 */	lfs f10, 0x4(r5)
/* 8028AC34 002809B4  38 61 00 10 */	addi r3, r1, 0x10
/* 8028AC38 002809B8  7D 06 F2 14 */	add r8, r6, r30
/* 8028AC3C 002809BC  C1 25 00 08 */	lfs f9, 0x8(r5)
/* 8028AC40 002809C0  C1 05 00 0C */	lfs f8, 0xc(r5)
/* 8028AC44 002809C4  7F A5 EB 78 */	mr r5, r29
/* 8028AC48 002809C8  7C E6 FC 2E */	lfsx f7, r6, r31
/* 8028AC4C 002809CC  C0 C7 00 04 */	lfs f6, 0x4(r7)
/* 8028AC50 002809D0  C0 A7 00 08 */	lfs f5, 0x8(r7)
/* 8028AC54 002809D4  C0 87 00 0C */	lfs f4, 0xc(r7)
/* 8028AC58 002809D8  7C 66 F4 2E */	lfsx f3, r6, r30
/* 8028AC5C 002809DC  C0 48 00 04 */	lfs f2, 0x4(r8)
/* 8028AC60 002809E0  C0 28 00 08 */	lfs f1, 0x8(r8)
/* 8028AC64 002809E4  C0 08 00 0C */	lfs f0, 0xc(r8)
/* 8028AC68 002809E8  D1 61 00 10 */	stfs f11, 0x10(r1)
/* 8028AC6C 002809EC  D1 41 00 14 */	stfs f10, 0x14(r1)
/* 8028AC70 002809F0  D1 21 00 18 */	stfs f9, 0x18(r1)
/* 8028AC74 002809F4  D1 01 00 1C */	stfs f8, 0x1c(r1)
/* 8028AC78 002809F8  D0 E1 00 30 */	stfs f7, 0x30(r1)
/* 8028AC7C 002809FC  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 8028AC80 00280A00  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 8028AC84 00280A04  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8028AC88 00280A08  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8028AC8C 00280A0C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8028AC90 00280A10  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8028AC94 00280A14  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8028AC98 00280A18  48 00 2C 29 */	bl fn_8028D8C0
/* 8028AC9C 00280A1C  7C 1C FC 2E */	lfsx f0, r28, r31
/* 8028ACA0 00280A20  7C DC F2 14 */	add r6, r28, r30
/* 8028ACA4 00280A24  7C 7C FA 14 */	add r3, r28, r31
/* 8028ACA8 00280A28  7C FC F4 2E */	lfsx f7, r28, r30
/* 8028ACAC 00280A2C  FC 60 00 50 */	fneg f3, f0
/* 8028ACB0 00280A30  C0 43 00 04 */	lfs f2, 0x4(r3)
/* 8028ACB4 00280A34  C0 23 00 08 */	lfs f1, 0x8(r3)
/* 8028ACB8 00280A38  7F 64 DB 78 */	mr r4, r27
/* 8028ACBC 00280A3C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8028ACC0 00280A40  FC 40 10 50 */	fneg f2, f2
/* 8028ACC4 00280A44  FC 20 08 50 */	fneg f1, f1
/* 8028ACC8 00280A48  C0 C6 00 04 */	lfs f6, 0x4(r6)
/* 8028ACCC 00280A4C  FC 00 00 50 */	fneg f0, f0
/* 8028ACD0 00280A50  C0 A6 00 08 */	lfs f5, 0x8(r6)
/* 8028ACD4 00280A54  C0 86 00 0C */	lfs f4, 0xc(r6)
/* 8028ACD8 00280A58  7F A5 EB 78 */	mr r5, r29
/* 8028ACDC 00280A5C  D0 E1 00 30 */	stfs f7, 0x30(r1)
/* 8028ACE0 00280A60  38 61 00 10 */	addi r3, r1, 0x10
/* 8028ACE4 00280A64  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 8028ACE8 00280A68  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 8028ACEC 00280A6C  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8028ACF0 00280A70  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8028ACF4 00280A74  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8028ACF8 00280A78  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8028ACFC 00280A7C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8028AD00 00280A80  48 00 2B C1 */	bl fn_8028D8C0
/* 8028AD04 00280A84  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8028AD08 00280A88  7D 4B 53 78 */	mr r11, r10
/* 8028AD0C 00280A8C  48 16 66 61 */	bl _restgpr_27
/* 8028AD10 00280A90  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8028AD14 00280A94  7C 08 03 A6 */	mtlr r0
/* 8028AD18 00280A98  7D 41 53 78 */	mr r1, r10
/* 8028AD1C 00280A9C  4E 80 00 20 */	blr
.endfn fn_8028ABE0
