.include "macros.inc"
.file "auto_dtor_8030F90C_text"

# 0x800089EC..0x800089F4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800089EC | size: 0x8
.obj "@etb_800089EC", local
.hidden "@etb_800089EC"
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
.endobj "@etb_800089EC"

# 0x8000B914..0x8000B920 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B914 | size: 0xC
.obj "@eti_8000B914", local
.hidden "@eti_8000B914"
	.4byte dtor_8030F90C
	.4byte 0x0000008C
	.4byte "@etb_800089EC"
.endobj "@eti_8000B914"

# 0x8030F90C..0x8030F998 | size: 0x8C
.text
.balign 4

# .text:0x0 | 0x8030F90C | size: 0x8C
.fn dtor_8030F90C, global
/* 8030F90C 0030568C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030F910 00305690  7C 08 02 A6 */	mflr r0
/* 8030F914 00305694  2C 03 00 00 */	cmpwi r3, 0x0
/* 8030F918 00305698  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030F91C 0030569C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030F920 003056A0  7C 9F 23 78 */	mr r31, r4
/* 8030F924 003056A4  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8030F928 003056A8  7C 7E 1B 78 */	mr r30, r3
/* 8030F92C 003056AC  41 82 00 50 */	beq .L_8030F97C
/* 8030F930 003056B0  80 03 00 08 */	lwz r0, 0x8(r3)
/* 8030F934 003056B4  54 00 00 01 */	clrrwi. r0, r0, 31
/* 8030F938 003056B8  40 82 00 1C */	bne .L_8030F954
/* 8030F93C 003056BC  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 8030F940 003056C0  38 C0 00 15 */	li r6, 0x15
/* 8030F944 003056C4  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 8030F948 003056C8  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8030F94C 003056CC  54 05 10 3A */	slwi r5, r0, 2
/* 8030F950 003056D0  4B F6 F1 6D */	bl fn_8027EABC
.L_8030F954:
/* 8030F954 003056D4  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8030F958 003056D8  40 81 00 24 */	ble .L_8030F97C
/* 8030F95C 003056DC  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 8030F960 003056E0  7F C4 F3 78 */	mr r4, r30
/* 8030F964 003056E4  38 A0 00 0C */	li r5, 0xc
/* 8030F968 003056E8  38 C0 00 15 */	li r6, 0x15
/* 8030F96C 003056EC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8030F970 003056F0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8030F974 003056F4  7D 89 03 A6 */	mtctr r12
/* 8030F978 003056F8  4E 80 04 21 */	bctrl
.L_8030F97C:
/* 8030F97C 003056FC  7F C3 F3 78 */	mr r3, r30
/* 8030F980 00305700  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030F984 00305704  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8030F988 00305708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030F98C 0030570C  7C 08 03 A6 */	mtlr r0
/* 8030F990 00305710  38 21 00 10 */	addi r1, r1, 0x10
/* 8030F994 00305714  4E 80 00 20 */	blr
.endfn dtor_8030F90C
