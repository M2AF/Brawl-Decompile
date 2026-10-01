.include "macros.inc"
.file "auto_fn_80137FB8_text"

# 0x80137FB8..0x80137FF0 | size: 0x38
.text
.balign 4

# .text:0x0 | 0x80137FB8 | size: 0x38
.fn fn_80137FB8, global
/* 80137FB8 0012DD38  3C C0 80 4A */	lis r6, lbl_8049E594@ha
/* 80137FBC 0012DD3C  38 00 00 00 */	li r0, 0x0
/* 80137FC0 0012DD40  38 66 E5 94 */	addi r3, r6, lbl_8049E594@l
/* 80137FC4 0012DD44  3C 80 80 13 */	lis r4, fn_80137FF0@ha
/* 80137FC8 0012DD48  90 03 00 04 */	stw r0, 0x4(r3)
/* 80137FCC 0012DD4C  38 E3 00 04 */	addi r7, r3, 0x4
/* 80137FD0 0012DD50  3C A0 80 4A */	lis r5, lbl_8049E588@ha
/* 80137FD4 0012DD54  38 84 7F F0 */	addi r4, r4, fn_80137FF0@l
/* 80137FD8 0012DD58  90 03 00 08 */	stw r0, 0x8(r3)
/* 80137FDC 0012DD5C  38 A5 E5 88 */	addi r5, r5, lbl_8049E588@l
/* 80137FE0 0012DD60  90 06 E5 94 */	stw r0, lbl_8049E594@l(r6)
/* 80137FE4 0012DD64  90 E3 00 04 */	stw r7, 0x4(r3)
/* 80137FE8 0012DD68  90 E3 00 08 */	stw r7, 0x8(r3)
/* 80137FEC 0012DD6C  48 2B 87 38 */	b __register_global_object
.endfn fn_80137FB8

# 0x80406550..0x80406554 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80137FB8
