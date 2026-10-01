.include "macros.inc"
.file "auto_fn_80312F7C_text"

# 0x80008B18..0x80008B34 | size: 0x1C
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008B18 | size: 0x1C
.obj "@etb_80008B18", local
.hidden "@etb_80008B18"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 * 
 * PC actions:
 * PC=00000044, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYBASE
 * Member: 0x0(r31)
 * Dtor: "dtor_8008080C"
 * Has end bit
 */
	.4byte 0x08080000
	.4byte 0x00000044
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001F
	.4byte 0x00000000
	.4byte dtor_8008080C
.endobj "@etb_80008B18"

# 0x8000B9F8..0x8000BA04 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B9F8 | size: 0xC
.obj "@eti_8000B9F8", local
.hidden "@eti_8000B9F8"
	.4byte fn_80312F7C
	.4byte 0x0000005C
	.4byte "@etb_80008B18"
.endobj "@eti_8000B9F8"

# 0x80312F7C..0x80312FD8 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x80312F7C | size: 0x5C
.fn fn_80312F7C, global
/* 80312F7C 00308CFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80312F80 00308D00  7C 08 02 A6 */	mflr r0
/* 80312F84 00308D04  3C A0 80 49 */	lis r5, lbl_80488988@ha
/* 80312F88 00308D08  38 C0 00 01 */	li r6, 0x1
/* 80312F8C 00308D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80312F90 00308D10  38 00 00 00 */	li r0, 0x0
/* 80312F94 00308D14  38 A5 89 88 */	addi r5, r5, lbl_80488988@l
/* 80312F98 00308D18  38 80 FF D1 */	li r4, -0x2f
/* 80312F9C 00308D1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80312FA0 00308D20  7C 7F 1B 78 */	mr r31, r3
/* 80312FA4 00308D24  B0 C3 00 06 */	sth r6, 0x6(r3)
/* 80312FA8 00308D28  90 A3 00 00 */	stw r5, 0x0(r3)
/* 80312FAC 00308D2C  90 83 00 08 */	stw r4, 0x8(r3)
/* 80312FB0 00308D30  B0 03 00 0C */	sth r0, 0xc(r3)
/* 80312FB4 00308D34  90 03 00 10 */	stw r0, 0x10(r3)
/* 80312FB8 00308D38  38 63 00 08 */	addi r3, r3, 0x8
/* 80312FBC 00308D3C  4B F6 EF 1D */	bl fn_80281ED8
/* 80312FC0 00308D40  7F E3 FB 78 */	mr r3, r31
/* 80312FC4 00308D44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80312FC8 00308D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80312FCC 00308D4C  7C 08 03 A6 */	mtlr r0
/* 80312FD0 00308D50  38 21 00 10 */	addi r1, r1, 0x10
/* 80312FD4 00308D54  4E 80 00 20 */	blr
.endfn fn_80312F7C
