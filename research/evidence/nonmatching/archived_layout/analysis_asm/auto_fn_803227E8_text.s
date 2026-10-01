.include "macros.inc"
.file "auto_fn_803227E8_text"

# 0x803227E8..0x803227F4 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x803227E8 | size: 0xC
.fn fn_803227E8, global
/* 803227E8 00318568  38 00 00 00 */	li r0, 0x0
/* 803227EC 0031856C  98 0D CB 08 */	stb r0, lbl_805A0F28@sda21(r0)
/* 803227F0 00318570  4E 80 00 20 */	blr
.endfn fn_803227E8

# 0x80406758..0x8040675C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_803227E8
