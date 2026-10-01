.include "macros.inc"
.file "auto_fn_802BD738_text"

# 0x80007A54..0x80007A5C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007A54 | size: 0x8
.obj "@etb_80007A54", local
.hidden "@etb_80007A54"
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
.endobj "@etb_80007A54"

# 0x8000A840..0x8000A84C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A840 | size: 0xC
.obj "@eti_8000A840", local
.hidden "@eti_8000A840"
	.4byte fn_802BD738
	.4byte 0x000000CC
	.4byte "@etb_80007A54"
.endobj "@eti_8000A840"

# 0x802BD738..0x802BD804 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x802BD738 | size: 0xCC
.fn fn_802BD738, global
/* 802BD738 002B34B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802BD73C 002B34BC  7C 08 02 A6 */	mflr r0
/* 802BD740 002B34C0  3C 80 80 2C */	lis r4, fn_802BD804@ha
/* 802BD744 002B34C4  3C C0 80 2C */	lis r6, fn_802BFA78@ha
/* 802BD748 002B34C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 802BD74C 002B34CC  3D 00 80 2C */	lis r8, fn_802BFB08@ha
/* 802BD750 002B34D0  3C E0 80 2C */	lis r7, fn_802BFB50@ha
/* 802BD754 002B34D4  38 84 D8 04 */	addi r4, r4, fn_802BD804@l
/* 802BD758 002B34D8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802BD75C 002B34DC  38 C6 FA 78 */	addi r6, r6, fn_802BFA78@l
/* 802BD760 002B34E0  39 08 FB 08 */	addi r8, r8, fn_802BFB08@l
/* 802BD764 002B34E4  38 E7 FB 50 */	addi r7, r7, fn_802BFB50@l
/* 802BD768 002B34E8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802BD76C 002B34EC  3B E0 00 00 */	li r31, 0x0
/* 802BD770 002B34F0  38 00 00 01 */	li r0, 0x1
/* 802BD774 002B34F4  7C 7E 1B 78 */	mr r30, r3
/* 802BD778 002B34F8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802BD77C 002B34FC  38 81 00 1C */	addi r4, r1, 0x1c
/* 802BD780 002B3500  38 A0 00 06 */	li r5, 0x6
/* 802BD784 002B3504  90 C1 00 20 */	stw r6, 0x20(r1)
/* 802BD788 002B3508  38 C0 00 0B */	li r6, 0xb
/* 802BD78C 002B350C  91 01 00 24 */	stw r8, 0x24(r1)
/* 802BD790 002B3510  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802BD794 002B3514  98 01 00 2C */	stb r0, 0x2c(r1)
/* 802BD798 002B3518  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802BD79C 002B351C  48 00 E9 51 */	bl fn_802CC0EC
/* 802BD7A0 002B3520  3C 60 80 2C */	lis r3, fn_802BD934@ha
/* 802BD7A4 002B3524  3C A0 80 2C */	lis r5, fn_802BED5C@ha
/* 802BD7A8 002B3528  3D 00 80 2C */	lis r8, fn_802BE124@ha
/* 802BD7AC 002B352C  3C E0 80 2B */	lis r7, fn_802B7FD0@ha
/* 802BD7B0 002B3530  38 63 D9 34 */	addi r3, r3, fn_802BD934@l
/* 802BD7B4 002B3534  38 A5 ED 5C */	addi r5, r5, fn_802BED5C@l
/* 802BD7B8 002B3538  39 08 E1 24 */	addi r8, r8, fn_802BE124@l
/* 802BD7BC 002B353C  38 E7 7F D0 */	addi r7, r7, fn_802B7FD0@l
/* 802BD7C0 002B3540  90 61 00 08 */	stw r3, 0x8(r1)
/* 802BD7C4 002B3544  7F C3 F3 78 */	mr r3, r30
/* 802BD7C8 002B3548  38 81 00 08 */	addi r4, r1, 0x8
/* 802BD7CC 002B354C  38 C0 00 06 */	li r6, 0x6
/* 802BD7D0 002B3550  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802BD7D4 002B3554  38 A0 00 0B */	li r5, 0xb
/* 802BD7D8 002B3558  91 01 00 10 */	stw r8, 0x10(r1)
/* 802BD7DC 002B355C  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802BD7E0 002B3560  9B E1 00 18 */	stb r31, 0x18(r1)
/* 802BD7E4 002B3564  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802BD7E8 002B3568  48 00 E9 05 */	bl fn_802CC0EC
/* 802BD7EC 002B356C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802BD7F0 002B3570  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802BD7F4 002B3574  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802BD7F8 002B3578  7C 08 03 A6 */	mtlr r0
/* 802BD7FC 002B357C  38 21 00 40 */	addi r1, r1, 0x40
/* 802BD800 002B3580  4E 80 00 20 */	blr
.endfn fn_802BD738
