.include "macros.inc"
.file "auto_fn_801CF990_text"

# 0x801CF990..0x801CF99C | size: 0xC
.text
.balign 4

# .text:0x0 | 0x801CF990 | size: 0xC
.fn fn_801CF990, global
/* 801CF990 001C5710  38 0D C1 58 */	li r0, lbl_805A0578@sda21
/* 801CF994 001C5714  90 0D C1 F0 */	stw r0, lbl_805A0610@sda21(r0)
/* 801CF998 001C5718  4E 80 00 20 */	blr
.endfn fn_801CF990

# 0x804065CC..0x804065D0 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_801CF990
