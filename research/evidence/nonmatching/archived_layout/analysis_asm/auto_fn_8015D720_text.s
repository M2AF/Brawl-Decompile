.include "macros.inc"
.file "auto_fn_8015D720_text"

# 0x8015D720..0x8015D72C | size: 0xC
.text
.balign 4

# .text:0x0 | 0x8015D720 | size: 0xC
.fn fn_8015D720, global
/* 8015D720 001534A0  38 0D C0 68 */	li r0, lbl_805A0488@sda21
/* 8015D724 001534A4  90 0D C0 70 */	stw r0, lbl_805A0490@sda21(r0)
/* 8015D728 001534A8  4E 80 00 20 */	blr
.endfn fn_8015D720

# 0x80406588..0x8040658C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8015D720
