.include "macros.inc"
.file "auto_dtor_8032B848_text"

# 0x800090F0..0x800090F8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800090F0 | size: 0x8
.obj "@etb_800090F0", local
.hidden "@etb_800090F0"
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
.endobj "@etb_800090F0"

# 0x8000BF50..0x8000BF5C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BF50 | size: 0xC
.obj "@eti_8000BF50", local
.hidden "@eti_8000BF50"
	.4byte dtor_8032B848
	.4byte 0x00000094
	.4byte "@etb_800090F0"
.endobj "@eti_8000BF50"

# 0x8032B848..0x8032B8DC | size: 0x94
.text
.balign 4

# .text:0x0 | 0x8032B848 | size: 0x94
.fn dtor_8032B848, global
/* 8032B848 003215C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032B84C 003215CC  7C 08 02 A6 */	mflr r0
/* 8032B850 003215D0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8032B854 003215D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032B858 003215D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032B85C 003215DC  7C 9F 23 78 */	mr r31, r4
/* 8032B860 003215E0  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8032B864 003215E4  7C 7E 1B 78 */	mr r30, r3
/* 8032B868 003215E8  41 82 00 58 */	beq .L_8032B8C0
/* 8032B86C 003215EC  41 82 00 2C */	beq .L_8032B898
/* 8032B870 003215F0  80 03 00 08 */	lwz r0, 0x8(r3)
/* 8032B874 003215F4  54 00 00 01 */	clrrwi. r0, r0, 31
/* 8032B878 003215F8  40 82 00 20 */	bne .L_8032B898
/* 8032B87C 003215FC  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 8032B880 00321600  38 C0 00 15 */	li r6, 0x15
/* 8032B884 00321604  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 8032B888 00321608  54 00 00 BE */	clrlwi r0, r0, 2
/* 8032B88C 0032160C  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8032B890 00321610  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8032B894 00321614  4B F5 32 29 */	bl fn_8027EABC
.L_8032B898:
/* 8032B898 00321618  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8032B89C 0032161C  40 81 00 24 */	ble .L_8032B8C0
/* 8032B8A0 00321620  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 8032B8A4 00321624  7F C4 F3 78 */	mr r4, r30
/* 8032B8A8 00321628  38 A0 01 8C */	li r5, 0x18c
/* 8032B8AC 0032162C  38 C0 00 15 */	li r6, 0x15
/* 8032B8B0 00321630  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8032B8B4 00321634  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8032B8B8 00321638  7D 89 03 A6 */	mtctr r12
/* 8032B8BC 0032163C  4E 80 04 21 */	bctrl
.L_8032B8C0:
/* 8032B8C0 00321640  7F C3 F3 78 */	mr r3, r30
/* 8032B8C4 00321644  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032B8C8 00321648  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8032B8CC 0032164C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032B8D0 00321650  7C 08 03 A6 */	mtlr r0
/* 8032B8D4 00321654  38 21 00 10 */	addi r1, r1, 0x10
/* 8032B8D8 00321658  4E 80 00 20 */	blr
.endfn dtor_8032B848
