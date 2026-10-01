.include "macros.inc"
.file "auto_fn_80025978_text"

# 0x80025978..0x800259A0 | size: 0x28
.text
.balign 4

# .text:0x0 | 0x80025978 | size: 0x28
.fn fn_80025978, global
/* 80025978 0001B6F8  38 00 00 00 */	li r0, 0x0
/* 8002597C 0001B6FC  3C 60 80 49 */	lis r3, lbl_80494EE8@ha
/* 80025980 0001B700  3C 80 80 02 */	lis r4, fn_800259A0@ha
/* 80025984 0001B704  90 0D BC 00 */	stw r0, lbl_805A0020@sda21(r0)
/* 80025988 0001B708  38 63 4E E8 */	addi r3, r3, lbl_80494EE8@l
/* 8002598C 0001B70C  38 A0 00 00 */	li r5, 0x0
/* 80025990 0001B710  38 84 59 A0 */	addi r4, r4, fn_800259A0@l
/* 80025994 0001B714  38 C0 00 68 */	li r6, 0x68
/* 80025998 0001B718  38 E0 00 07 */	li r7, 0x7
/* 8002599C 0001B71C  48 3C B2 40 */	b fn_803F0BDC
.endfn fn_80025978

# 0x804064F8..0x804064FC | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80025978
