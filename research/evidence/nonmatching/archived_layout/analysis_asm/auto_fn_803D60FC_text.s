.include "macros.inc"
.file "auto_fn_803D60FC_text"

# 0x800094BC..0x800094C4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800094BC | size: 0x8
.obj "@etb_800094BC", local
.hidden "@etb_800094BC"
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
.endobj "@etb_800094BC"

# 0x8000C4B4..0x8000C4C0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C4B4 | size: 0xC
.obj "@eti_8000C4B4", local
.hidden "@eti_8000C4B4"
	.4byte fn_803D60FC
	.4byte 0x00000054
	.4byte "@etb_800094BC"
.endobj "@eti_8000C4B4"

# 0x803D60FC..0x803D6150 | size: 0x54
.text
.balign 4

# .text:0x0 | 0x803D60FC | size: 0x54
.fn fn_803D60FC, global
/* 803D60FC 003CBE7C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803D6100 003CBE80  7C 08 02 A6 */	mflr r0
/* 803D6104 003CBE84  90 01 00 64 */	stw r0, 0x64(r1)
/* 803D6108 003CBE88  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 803D610C 003CBE8C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 803D6110 003CBE90  7C 7E 1B 78 */	mr r30, r3
/* 803D6114 003CBE94  38 61 00 08 */	addi r3, r1, 0x8
/* 803D6118 003CBE98  4B FF FD B1 */	bl fn_803D5EC8
/* 803D611C 003CBE9C  2C 03 00 00 */	cmpwi r3, 0x0
/* 803D6120 003CBEA0  7C 7F 1B 78 */	mr r31, r3
/* 803D6124 003CBEA4  40 82 00 10 */	bne .L_803D6134
/* 803D6128 003CBEA8  7F C3 F3 78 */	mr r3, r30
/* 803D612C 003CBEAC  38 81 00 08 */	addi r4, r1, 0x8
/* 803D6130 003CBEB0  4B FF FE D9 */	bl fn_803D6008
.L_803D6134:
/* 803D6134 003CBEB4  7F E3 FB 78 */	mr r3, r31
/* 803D6138 003CBEB8  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 803D613C 003CBEBC  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 803D6140 003CBEC0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803D6144 003CBEC4  7C 08 03 A6 */	mtlr r0
/* 803D6148 003CBEC8  38 21 00 60 */	addi r1, r1, 0x60
/* 803D614C 003CBECC  4E 80 00 20 */	blr
.endfn fn_803D60FC
