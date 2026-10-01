.include "macros.inc"
.file "auto_fn_8027FFBC_text"

# 0x8027FFBC..0x8027FFC0 | size: 0x4
.text
.balign 4

# .text:0x0 | 0x8027FFBC | size: 0x4
.fn fn_8027FFBC, global
/* 8027FFBC 00275D3C  4E 80 00 20 */	blr
.endfn fn_8027FFBC

# 0x804065F4..0x804065F8 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8027FFBC
