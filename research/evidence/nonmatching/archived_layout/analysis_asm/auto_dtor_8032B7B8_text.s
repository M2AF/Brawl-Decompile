.include "macros.inc"
.file "auto_dtor_8032B7B8_text"

# 0x800090E8..0x800090F0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800090E8 | size: 0x8
.obj "@etb_800090E8", local
.hidden "@etb_800090E8"
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
.endobj "@etb_800090E8"

# 0x8000BF44..0x8000BF50 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BF44 | size: 0xC
.obj "@eti_8000BF44", local
.hidden "@eti_8000BF44"
	.4byte dtor_8032B7B8
	.4byte 0x00000090
	.4byte "@etb_800090E8"
.endobj "@eti_8000BF44"

# 0x8032B7B8..0x8032B848 | size: 0x90
.text
.balign 4

# .text:0x0 | 0x8032B7B8 | size: 0x90
.fn dtor_8032B7B8, global
/* 8032B7B8 00321538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032B7BC 0032153C  7C 08 02 A6 */	mflr r0
/* 8032B7C0 00321540  2C 03 00 00 */	cmpwi r3, 0x0
/* 8032B7C4 00321544  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032B7C8 00321548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032B7CC 0032154C  7C 9F 23 78 */	mr r31, r4
/* 8032B7D0 00321550  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8032B7D4 00321554  7C 7E 1B 78 */	mr r30, r3
/* 8032B7D8 00321558  41 82 00 54 */	beq .L_8032B82C
/* 8032B7DC 0032155C  41 82 00 28 */	beq .L_8032B804
/* 8032B7E0 00321560  80 03 00 08 */	lwz r0, 0x8(r3)
/* 8032B7E4 00321564  54 00 00 01 */	clrrwi. r0, r0, 31
/* 8032B7E8 00321568  40 82 00 1C */	bne .L_8032B804
/* 8032B7EC 0032156C  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 8032B7F0 00321570  38 C0 00 15 */	li r6, 0x15
/* 8032B7F4 00321574  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 8032B7F8 00321578  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8032B7FC 0032157C  54 05 10 3A */	slwi r5, r0, 2
/* 8032B800 00321580  4B F5 32 BD */	bl fn_8027EABC
.L_8032B804:
/* 8032B804 00321584  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8032B808 00321588  40 81 00 24 */	ble .L_8032B82C
/* 8032B80C 0032158C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 8032B810 00321590  7F C4 F3 78 */	mr r4, r30
/* 8032B814 00321594  38 A0 01 0C */	li r5, 0x10c
/* 8032B818 00321598  38 C0 00 15 */	li r6, 0x15
/* 8032B81C 0032159C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8032B820 003215A0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8032B824 003215A4  7D 89 03 A6 */	mtctr r12
/* 8032B828 003215A8  4E 80 04 21 */	bctrl
.L_8032B82C:
/* 8032B82C 003215AC  7F C3 F3 78 */	mr r3, r30
/* 8032B830 003215B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032B834 003215B4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8032B838 003215B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032B83C 003215BC  7C 08 03 A6 */	mtlr r0
/* 8032B840 003215C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8032B844 003215C4  4E 80 00 20 */	blr
.endfn dtor_8032B7B8
