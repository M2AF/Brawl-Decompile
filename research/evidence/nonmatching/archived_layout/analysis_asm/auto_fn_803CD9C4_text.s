.include "macros.inc"
.file "auto_fn_803CD9C4_text"

# 0x8000929C..0x800092A4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000929C | size: 0x8
.obj "@etb_8000929C", local
.hidden "@etb_8000929C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000929C"

# 0x8000C184..0x8000C190 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C184 | size: 0xC
.obj "@eti_8000C184", local
.hidden "@eti_8000C184"
	.4byte fn_803CD9C4
	.4byte 0x00000070
	.4byte "@etb_8000929C"
.endobj "@eti_8000C184"

# 0x803CD9C4..0x803CDA34 | size: 0x70
.text
.balign 4

# .text:0x0 | 0x803CD9C4 | size: 0x70
.fn fn_803CD9C4, global
/* 803CD9C4 003C3744  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CD9C8 003C3748  7C 08 02 A6 */	mflr r0
/* 803CD9CC 003C374C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CD9D0 003C3750  4B FF F9 5D */	bl fn_803CD32C
/* 803CD9D4 003C3754  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CD9D8 003C3758  40 82 00 48 */	bne .L_803CDA20
/* 803CD9DC 003C375C  4B FF F9 05 */	bl fn_803CD2E0
/* 803CD9E0 003C3760  38 00 00 00 */	li r0, 0x0
/* 803CD9E4 003C3764  3C A0 80 3D */	lis r5, fn_803CD920@ha
/* 803CD9E8 003C3768  90 03 00 90 */	stw r0, 0x90(r3)
/* 803CD9EC 003C376C  38 83 00 90 */	addi r4, r3, 0x90
/* 803CD9F0 003C3770  38 60 00 01 */	li r3, 0x1
/* 803CD9F4 003C3774  38 A5 D9 20 */	addi r5, r5, fn_803CD920@l
/* 803CD9F8 003C3778  48 00 25 59 */	bl fn_803CFF50
/* 803CD9FC 003C377C  2C 03 00 06 */	cmpwi r3, 0x6
/* 803CDA00 003C3780  41 82 00 24 */	beq .L_803CDA24
/* 803CDA04 003C3784  40 80 00 0C */	bge .L_803CDA10
/* 803CDA08 003C3788  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CDA0C 003C378C  41 82 00 18 */	beq .L_803CDA24
.L_803CDA10:
/* 803CDA10 003C3790  38 60 00 01 */	li r3, 0x1
/* 803CDA14 003C3794  38 80 00 00 */	li r4, 0x0
/* 803CDA18 003C3798  48 00 21 CD */	bl fn_803CFBE4
/* 803CDA1C 003C379C  48 00 00 08 */	b .L_803CDA24
.L_803CDA20:
/* 803CDA20 003C37A0  4B FF F4 9D */	bl fn_803CCEBC
.L_803CDA24:
/* 803CDA24 003C37A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CDA28 003C37A8  7C 08 03 A6 */	mtlr r0
/* 803CDA2C 003C37AC  38 21 00 10 */	addi r1, r1, 0x10
/* 803CDA30 003C37B0  4E 80 00 20 */	blr
.endfn fn_803CD9C4
