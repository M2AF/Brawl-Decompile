.include "macros.inc"
.file "auto_fn_800238A4_text"

# 0x800238A4..0x800238B4 | size: 0x10
.text
.balign 4

# .text:0x0 | 0x800238A4 | size: 0x10
.fn fn_800238A4, global
/* 800238A4 00019624  3C 60 80 42 */	lis r3, lbl_80421720@ha
/* 800238A8 00019628  38 63 17 20 */	addi r3, r3, lbl_80421720@l
/* 800238AC 0001962C  90 6D BB D0 */	stw r3, lbl_8059FFF0@sda21(r0)
/* 800238B0 00019630  4E 80 00 20 */	blr
.endfn fn_800238A4

# 0x804064F4..0x804064F8 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_800238A4
