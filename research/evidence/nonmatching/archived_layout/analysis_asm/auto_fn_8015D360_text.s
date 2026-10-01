.include "macros.inc"
.file "auto_fn_8015D360_text"

# 0x8015D360..0x8015D36C | size: 0xC
.text
.balign 4

# .text:0x0 | 0x8015D360 | size: 0xC
.fn fn_8015D360, global
/* 8015D360 001530E0  38 0D C0 60 */	li r0, lbl_805A0480@sda21
/* 8015D364 001530E4  90 0D C0 68 */	stw r0, lbl_805A0488@sda21(r0)
/* 8015D368 001530E8  4E 80 00 20 */	blr
.endfn fn_8015D360

# 0x80406584..0x80406588 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8015D360
