.include "macros.inc"
.file "auto_fn_803D5924_text"

# 0x80009494..0x8000949C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009494 | size: 0x8
.obj "@etb_80009494", local
.hidden "@etb_80009494"
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
.endobj "@etb_80009494"

# 0x8000C478..0x8000C484 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C478 | size: 0xC
.obj "@eti_8000C478", local
.hidden "@eti_8000C478"
	.4byte fn_803D5924
	.4byte 0x0000009C
	.4byte "@etb_80009494"
.endobj "@eti_8000C478"

# 0x803D5924..0x803D59C0 | size: 0x9C
.text
.balign 4

# .text:0x0 | 0x803D5924 | size: 0x9C
.fn fn_803D5924, global
/* 803D5924 003CB6A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D5928 003CB6A8  7C 08 02 A6 */	mflr r0
/* 803D592C 003CB6AC  2C 04 00 00 */	cmpwi r4, 0x0
/* 803D5930 003CB6B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D5934 003CB6B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D5938 003CB6B8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803D593C 003CB6BC  7C 7E 1B 78 */	mr r30, r3
/* 803D5940 003CB6C0  40 82 00 0C */	bne .L_803D594C
/* 803D5944 003CB6C4  38 60 00 00 */	li r3, 0x0
/* 803D5948 003CB6C8  48 00 00 60 */	b .L_803D59A8
.L_803D594C:
/* 803D594C 003CB6CC  A0 04 00 0C */	lhz r0, 0xc(r4)
/* 803D5950 003CB6D0  7C 05 00 40 */	cmplw r5, r0
/* 803D5954 003CB6D4  41 80 00 0C */	blt .L_803D5960
/* 803D5958 003CB6D8  38 60 00 00 */	li r3, 0x0
/* 803D595C 003CB6DC  48 00 00 4C */	b .L_803D59A8
.L_803D5960:
/* 803D5960 003CB6E0  A0 04 00 0E */	lhz r0, 0xe(r4)
/* 803D5964 003CB6E4  2C 00 00 00 */	cmpwi r0, 0x0
/* 803D5968 003CB6E8  40 82 00 0C */	bne .L_803D5974
/* 803D596C 003CB6EC  38 60 00 00 */	li r3, 0x0
/* 803D5970 003CB6F0  48 00 00 38 */	b .L_803D59A8
.L_803D5974:
/* 803D5974 003CB6F4  80 64 00 08 */	lwz r3, 0x8(r4)
/* 803D5978 003CB6F8  54 A0 32 B2 */	clrlslwi r0, r5, 16, 6
/* 803D597C 003CB6FC  7F E3 02 14 */	add r31, r3, r0
/* 803D5980 003CB700  38 7F 00 18 */	addi r3, r31, 0x18
/* 803D5984 003CB704  4B FF F8 99 */	bl fn_803D521C
/* 803D5988 003CB708  2C 03 00 00 */	cmpwi r3, 0x0
/* 803D598C 003CB70C  40 82 00 0C */	bne .L_803D5998
/* 803D5990 003CB710  38 60 00 00 */	li r3, 0x0
/* 803D5994 003CB714  48 00 00 14 */	b .L_803D59A8
.L_803D5998:
/* 803D5998 003CB718  7F E3 FB 78 */	mr r3, r31
/* 803D599C 003CB71C  7F C4 F3 78 */	mr r4, r30
/* 803D59A0 003CB720  4B FF F6 75 */	bl fn_803D5014
/* 803D59A4 003CB724  38 60 00 01 */	li r3, 0x1
.L_803D59A8:
/* 803D59A8 003CB728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D59AC 003CB72C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D59B0 003CB730  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803D59B4 003CB734  7C 08 03 A6 */	mtlr r0
/* 803D59B8 003CB738  38 21 00 10 */	addi r1, r1, 0x10
/* 803D59BC 003CB73C  4E 80 00 20 */	blr
.endfn fn_803D5924
