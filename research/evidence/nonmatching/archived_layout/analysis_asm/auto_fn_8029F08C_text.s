.include "macros.inc"
.file "auto_fn_8029F08C_text"

# 0x8029F08C..0x8029F098 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x8029F08C | size: 0xC
.fn fn_8029F08C, global
/* 8029F08C 00294E0C  38 00 00 00 */	li r0, 0x0
/* 8029F090 00294E10  98 0D CA D8 */	stb r0, lbl_805A0EF8@sda21(r0)
/* 8029F094 00294E14  4E 80 00 20 */	blr
.endfn fn_8029F08C

# 0x80406618..0x8040661C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8029F08C
