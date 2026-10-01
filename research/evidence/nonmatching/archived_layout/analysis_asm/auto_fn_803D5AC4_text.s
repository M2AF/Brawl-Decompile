.include "macros.inc"
.file "auto_fn_803D5AC4_text"

# 0x800094A4..0x800094AC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800094A4 | size: 0x8
.obj "@etb_800094A4", local
.hidden "@etb_800094A4"
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
.endobj "@etb_800094A4"

# 0x8000C490..0x8000C49C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C490 | size: 0xC
.obj "@eti_8000C490", local
.hidden "@eti_8000C490"
	.4byte fn_803D5AC4
	.4byte 0x00000090
	.4byte "@etb_800094A4"
.endobj "@eti_8000C490"

# 0x803D5AC4..0x803D5B54 | size: 0x90
.text
.balign 4

# .text:0x0 | 0x803D5AC4 | size: 0x90
.fn fn_803D5AC4, global
/* 803D5AC4 003CB844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D5AC8 003CB848  7C 08 02 A6 */	mflr r0
/* 803D5ACC 003CB84C  2C 03 00 00 */	cmpwi r3, 0x0
/* 803D5AD0 003CB850  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D5AD4 003CB854  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D5AD8 003CB858  7C 9F 23 78 */	mr r31, r4
/* 803D5ADC 003CB85C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803D5AE0 003CB860  7C 7E 1B 78 */	mr r30, r3
/* 803D5AE4 003CB864  40 82 00 0C */	bne .L_803D5AF0
/* 803D5AE8 003CB868  38 60 00 0F */	li r3, 0xf
/* 803D5AEC 003CB86C  48 00 00 50 */	b .L_803D5B3C
.L_803D5AF0:
/* 803D5AF0 003CB870  2C 04 00 00 */	cmpwi r4, 0x0
/* 803D5AF4 003CB874  40 82 00 0C */	bne .L_803D5B00
/* 803D5AF8 003CB878  38 60 00 0F */	li r3, 0xf
/* 803D5AFC 003CB87C  48 00 00 40 */	b .L_803D5B3C
.L_803D5B00:
/* 803D5B00 003CB880  4B FF 77 71 */	bl fn_803CD270
/* 803D5B04 003CB884  2C 03 00 00 */	cmpwi r3, 0x0
/* 803D5B08 003CB888  40 82 00 0C */	bne .L_803D5B14
/* 803D5B0C 003CB88C  38 60 00 01 */	li r3, 0x1
/* 803D5B10 003CB890  48 00 00 2C */	b .L_803D5B3C
.L_803D5B14:
/* 803D5B14 003CB894  7F E3 FB 78 */	mr r3, r31
/* 803D5B18 003CB898  38 80 00 4C */	li r4, 0x4c
/* 803D5B1C 003CB89C  4B FF F7 39 */	bl fn_803D5254
/* 803D5B20 003CB8A0  54 60 04 3F */	clrlwi. r0, r3, 16
/* 803D5B24 003CB8A4  41 82 00 0C */	beq .L_803D5B30
/* 803D5B28 003CB8A8  38 60 00 07 */	li r3, 0x7
/* 803D5B2C 003CB8AC  48 00 00 10 */	b .L_803D5B3C
.L_803D5B30:
/* 803D5B30 003CB8B0  7F C3 F3 78 */	mr r3, r30
/* 803D5B34 003CB8B4  7F E4 FB 78 */	mr r4, r31
/* 803D5B38 003CB8B8  4B FF FE 89 */	bl fn_803D59C0
.L_803D5B3C:
/* 803D5B3C 003CB8BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D5B40 003CB8C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D5B44 003CB8C4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803D5B48 003CB8C8  7C 08 03 A6 */	mtlr r0
/* 803D5B4C 003CB8CC  38 21 00 10 */	addi r1, r1, 0x10
/* 803D5B50 003CB8D0  4E 80 00 20 */	blr
.endfn fn_803D5AC4
