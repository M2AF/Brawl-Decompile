.include "macros.inc"
.file "auto_fn_803CD920_text"

# 0x80009294..0x8000929C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009294 | size: 0x8
.obj "@etb_80009294", local
.hidden "@etb_80009294"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80009294"

# 0x8000C178..0x8000C184 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C178 | size: 0xC
.obj "@eti_8000C178", local
.hidden "@eti_8000C178"
	.4byte fn_803CD920
	.4byte 0x000000A4
	.4byte "@etb_80009294"
.endobj "@eti_8000C178"

# 0x803CD920..0x803CD9C4 | size: 0xA4
.text
.balign 4

# .text:0x0 | 0x803CD920 | size: 0xA4
.fn fn_803CD920, global
/* 803CD920 003C36A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CD924 003C36A4  7C 08 02 A6 */	mflr r0
/* 803CD928 003C36A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CD92C 003C36AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CD930 003C36B0  4B FF F9 B1 */	bl fn_803CD2E0
/* 803CD934 003C36B4  7C 7F 1B 78 */	mr r31, r3
/* 803CD938 003C36B8  4B FF F9 F5 */	bl fn_803CD32C
/* 803CD93C 003C36BC  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CD940 003C36C0  40 82 00 60 */	bne .L_803CD9A0
/* 803CD944 003C36C4  38 60 01 00 */	li r3, 0x100
/* 803CD948 003C36C8  4B FF F9 3D */	bl fn_803CD284
/* 803CD94C 003C36CC  3C C0 80 3D */	lis r6, fn_803CD834@ha
/* 803CD950 003C36D0  90 7F 00 A0 */	stw r3, 0xa0(r31)
/* 803CD954 003C36D4  7C 64 1B 78 */	mr r4, r3
/* 803CD958 003C36D8  38 60 00 01 */	li r3, 0x1
/* 803CD95C 003C36DC  38 A0 01 00 */	li r5, 0x100
/* 803CD960 003C36E0  38 C6 D8 34 */	addi r6, r6, fn_803CD834@l
/* 803CD964 003C36E4  38 E0 00 00 */	li r7, 0x0
/* 803CD968 003C36E8  48 00 1F 09 */	bl fn_803CF870
/* 803CD96C 003C36EC  2C 03 00 06 */	cmpwi r3, 0x6
/* 803CD970 003C36F0  41 82 00 40 */	beq .L_803CD9B0
/* 803CD974 003C36F4  40 80 00 0C */	bge .L_803CD980
/* 803CD978 003C36F8  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CD97C 003C36FC  41 82 00 34 */	beq .L_803CD9B0
.L_803CD980:
/* 803CD980 003C3700  80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 803CD984 003C3704  4B FF F9 15 */	bl fn_803CD298
/* 803CD988 003C3708  38 00 00 00 */	li r0, 0x0
/* 803CD98C 003C370C  38 60 00 01 */	li r3, 0x1
/* 803CD990 003C3710  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 803CD994 003C3714  38 80 00 00 */	li r4, 0x0
/* 803CD998 003C3718  48 00 22 4D */	bl fn_803CFBE4
/* 803CD99C 003C371C  48 00 00 14 */	b .L_803CD9B0
.L_803CD9A0:
/* 803CD9A0 003C3720  3C 80 80 3D */	lis r4, fn_803CD830@ha
/* 803CD9A4 003C3724  38 60 00 01 */	li r3, 0x1
/* 803CD9A8 003C3728  38 84 D8 30 */	addi r4, r4, fn_803CD830@l
/* 803CD9AC 003C372C  48 00 22 39 */	bl fn_803CFBE4
.L_803CD9B0:
/* 803CD9B0 003C3730  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CD9B4 003C3734  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CD9B8 003C3738  7C 08 03 A6 */	mtlr r0
/* 803CD9BC 003C373C  38 21 00 10 */	addi r1, r1, 0x10
/* 803CD9C0 003C3740  4E 80 00 20 */	blr
.endfn fn_803CD920
