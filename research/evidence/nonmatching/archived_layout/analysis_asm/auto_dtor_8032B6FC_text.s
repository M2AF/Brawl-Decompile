.include "macros.inc"
.file "auto_dtor_8032B6FC_text"

# 0x800090E0..0x800090E8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800090E0 | size: 0x8
.obj "@etb_800090E0", local
.hidden "@etb_800090E0"
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
.endobj "@etb_800090E0"

# 0x8000BF38..0x8000BF44 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BF38 | size: 0xC
.obj "@eti_8000BF38", local
.hidden "@eti_8000BF38"
	.4byte dtor_8032B6FC
	.4byte 0x000000BC
	.4byte "@etb_800090E0"
.endobj "@eti_8000BF38"

# 0x8032B6FC..0x8032B7B8 | size: 0xBC
.text
.balign 4

# .text:0x0 | 0x8032B6FC | size: 0xBC
.fn dtor_8032B6FC, global
/* 8032B6FC 0032147C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032B700 00321480  7C 08 02 A6 */	mflr r0
/* 8032B704 00321484  2C 03 00 00 */	cmpwi r3, 0x0
/* 8032B708 00321488  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032B70C 0032148C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032B710 00321490  7C 9F 23 78 */	mr r31, r4
/* 8032B714 00321494  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8032B718 00321498  7C 7E 1B 78 */	mr r30, r3
/* 8032B71C 0032149C  41 82 00 80 */	beq .L_8032B79C
/* 8032B720 003214A0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8032B724 003214A4  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 8032B728 003214A8  90 83 00 10 */	stw r4, 0x10(r3)
/* 8032B72C 003214AC  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8032B730 003214B0  7C 04 00 40 */	cmplw r4, r0
/* 8032B734 003214B4  40 82 00 14 */	bne .L_8032B748
/* 8032B738 003214B8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8032B73C 003214BC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8032B740 003214C0  7D 89 03 A6 */	mtctr r12
/* 8032B744 003214C4  4E 80 04 21 */	bctrl
.L_8032B748:
/* 8032B748 003214C8  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8032B74C 003214CC  41 82 00 28 */	beq .L_8032B774
/* 8032B750 003214D0  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 8032B754 003214D4  54 00 00 01 */	clrrwi. r0, r0, 31
/* 8032B758 003214D8  40 82 00 1C */	bne .L_8032B774
/* 8032B75C 003214DC  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 8032B760 003214E0  38 C0 00 15 */	li r6, 0x15
/* 8032B764 003214E4  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 8032B768 003214E8  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8032B76C 003214EC  54 05 10 3A */	slwi r5, r0, 2
/* 8032B770 003214F0  4B F5 33 4D */	bl fn_8027EABC
.L_8032B774:
/* 8032B774 003214F4  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8032B778 003214F8  40 81 00 24 */	ble .L_8032B79C
/* 8032B77C 003214FC  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 8032B780 00321500  7F C4 F3 78 */	mr r4, r30
/* 8032B784 00321504  38 A0 00 10 */	li r5, 0x10
/* 8032B788 00321508  38 C0 00 15 */	li r6, 0x15
/* 8032B78C 0032150C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8032B790 00321510  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8032B794 00321514  7D 89 03 A6 */	mtctr r12
/* 8032B798 00321518  4E 80 04 21 */	bctrl
.L_8032B79C:
/* 8032B79C 0032151C  7F C3 F3 78 */	mr r3, r30
/* 8032B7A0 00321520  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032B7A4 00321524  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8032B7A8 00321528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032B7AC 0032152C  7C 08 03 A6 */	mtlr r0
/* 8032B7B0 00321530  38 21 00 10 */	addi r1, r1, 0x10
/* 8032B7B4 00321534  4E 80 00 20 */	blr
.endfn dtor_8032B6FC
