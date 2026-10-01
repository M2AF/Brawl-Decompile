.include "macros.inc"
.file "auto_fn_80312F40_text"

# 0x80312F40..0x80312F7C | size: 0x3C
.text
.balign 4

# .text:0x0 | 0x80312F40 | size: 0x3C
.fn fn_80312F40, global
/* 80312F40 00308CC0  3D 00 80 53 */	lis r8, lbl_805332B0@ha
/* 80312F44 00308CC4  39 20 00 08 */	li r9, 0x8
/* 80312F48 00308CC8  38 C8 32 B0 */	addi r6, r8, lbl_805332B0@l
/* 80312F4C 00308CCC  38 E0 00 0A */	li r7, 0xa
/* 80312F50 00308CD0  38 A0 00 00 */	li r5, 0x0
/* 80312F54 00308CD4  38 80 00 04 */	li r4, 0x4
/* 80312F58 00308CD8  38 60 00 02 */	li r3, 0x2
/* 80312F5C 00308CDC  38 00 00 06 */	li r0, 0x6
/* 80312F60 00308CE0  91 28 32 B0 */	stw r9, lbl_805332B0@l(r8)
/* 80312F64 00308CE4  90 E6 00 04 */	stw r7, 0x4(r6)
/* 80312F68 00308CE8  90 A6 00 08 */	stw r5, 0x8(r6)
/* 80312F6C 00308CEC  90 86 00 0C */	stw r4, 0xc(r6)
/* 80312F70 00308CF0  90 66 00 10 */	stw r3, 0x10(r6)
/* 80312F74 00308CF4  90 06 00 14 */	stw r0, 0x14(r6)
/* 80312F78 00308CF8  4E 80 00 20 */	blr
.endfn fn_80312F40

# 0x80406750..0x80406754 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80312F40
