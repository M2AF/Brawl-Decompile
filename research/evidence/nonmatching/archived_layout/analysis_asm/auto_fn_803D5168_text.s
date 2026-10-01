.include "macros.inc"
.file "auto_fn_803D5168_text"

# 0x80009464..0x8000946C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009464 | size: 0x8
.obj "@etb_80009464", local
.hidden "@etb_80009464"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80009464"

# 0x8000C430..0x8000C43C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C430 | size: 0xC
.obj "@eti_8000C430", local
.hidden "@eti_8000C430"
	.4byte fn_803D5168
	.4byte 0x0000003C
	.4byte "@etb_80009464"
.endobj "@eti_8000C430"

# 0x803D5168..0x803D51A4 | size: 0x3C
.text
.balign 4

# .text:0x0 | 0x803D5168 | size: 0x3C
.fn fn_803D5168, global
/* 803D5168 003CAEE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D516C 003CAEEC  7C 08 02 A6 */	mflr r0
/* 803D5170 003CAEF0  28 03 00 64 */	cmplwi r3, 0x64
/* 803D5174 003CAEF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D5178 003CAEF8  41 80 00 0C */	blt .L_803D5184
/* 803D517C 003CAEFC  38 60 00 00 */	li r3, 0x0
/* 803D5180 003CAF00  48 00 00 14 */	b .L_803D5194
.L_803D5184:
/* 803D5184 003CAF04  4B FF FB 35 */	bl fn_803D4CB8
/* 803D5188 003CAF08  7C 03 00 D0 */	neg r0, r3
/* 803D518C 003CAF0C  7C 00 1B 78 */	or r0, r0, r3
/* 803D5190 003CAF10  54 03 0F FE */	srwi r3, r0, 31
.L_803D5194:
/* 803D5194 003CAF14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D5198 003CAF18  7C 08 03 A6 */	mtlr r0
/* 803D519C 003CAF1C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D51A0 003CAF20  4E 80 00 20 */	blr
.endfn fn_803D5168
