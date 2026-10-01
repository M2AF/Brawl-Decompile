.include "macros.inc"
.file "auto_fn_80325F8C_text"

# 0x80008DDC..0x80008DE4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008DDC | size: 0x8
.obj "@etb_80008DDC", local
.hidden "@etb_80008DDC"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008DDC"

# 0x8000BDB8..0x8000BDC4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BDB8 | size: 0xC
.obj "@eti_8000BDB8", local
.hidden "@eti_8000BDB8"
	.4byte fn_80325F8C
	.4byte 0x00000050
	.4byte "@etb_80008DDC"
.endobj "@eti_8000BDB8"

# 0x80325F8C..0x80325FDC | size: 0x50
.text
.balign 4

# .text:0x0 | 0x80325F8C | size: 0x50
.fn fn_80325F8C, global
/* 80325F8C 0031BD0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80325F90 0031BD10  7C 08 02 A6 */	mflr r0
/* 80325F94 0031BD14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80325F98 0031BD18  4B FF FC 4D */	bl fn_80325BE4
/* 80325F9C 0031BD1C  3D 00 80 41 */	lis r8, lbl_80414568@ha
/* 80325FA0 0031BD20  3C E0 80 53 */	lis r7, lbl_805332F0@ha
/* 80325FA4 0031BD24  3C C0 80 32 */	lis r6, fn_80325BB0@ha
/* 80325FA8 0031BD28  3C 80 80 32 */	lis r4, fn_80325BD0@ha
/* 80325FAC 0031BD2C  39 08 45 68 */	addi r8, r8, lbl_80414568@l
/* 80325FB0 0031BD30  38 A7 32 F0 */	addi r5, r7, lbl_805332F0@l
/* 80325FB4 0031BD34  38 C6 5B B0 */	addi r6, r6, fn_80325BB0@l
/* 80325FB8 0031BD38  38 84 5B D0 */	addi r4, r4, fn_80325BD0@l
/* 80325FBC 0031BD3C  91 07 32 F0 */	stw r8, lbl_805332F0@l(r7)
/* 80325FC0 0031BD40  90 C5 00 04 */	stw r6, 0x4(r5)
/* 80325FC4 0031BD44  90 85 00 08 */	stw r4, 0x8(r5)
/* 80325FC8 0031BD48  90 65 00 0C */	stw r3, 0xc(r5)
/* 80325FCC 0031BD4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80325FD0 0031BD50  7C 08 03 A6 */	mtlr r0
/* 80325FD4 0031BD54  38 21 00 10 */	addi r1, r1, 0x10
/* 80325FD8 0031BD58  4E 80 00 20 */	blr
.endfn fn_80325F8C

# 0x8040675C..0x80406760 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80325F8C
