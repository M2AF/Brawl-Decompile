.include "macros.inc"
.file "auto_fn_80061510_text"

# 0x80061510..0x80061514 | size: 0x4
.text
.balign 4

# .text:0x0 | 0x80061510 | size: 0x4
.fn fn_80061510, global
/* 80061510 00057290  4E 80 00 20 */	blr
.endfn fn_80061510

# 0x80406524..0x80406528 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80061510
