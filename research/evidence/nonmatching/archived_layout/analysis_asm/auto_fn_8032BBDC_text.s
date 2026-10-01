.include "macros.inc"
.file "auto_fn_8032BBDC_text"

# 0x8032BBDC..0x8032BBE8 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x8032BBDC | size: 0xC
.fn fn_8032BBDC, global
/* 8032BBDC 0032195C  38 00 00 00 */	li r0, 0x0
/* 8032BBE0 00321960  98 0D CB 10 */	stb r0, lbl_805A0F30@sda21(r0)
/* 8032BBE4 00321964  4E 80 00 20 */	blr
.endfn fn_8032BBDC

# 0x80406760..0x80406764 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032BBDC
