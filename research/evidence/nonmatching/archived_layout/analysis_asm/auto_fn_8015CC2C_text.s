.include "macros.inc"
.file "auto_fn_8015CC2C_text"

# 0x8015CC2C..0x8015CC38 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x8015CC2C | size: 0xC
.fn fn_8015CC2C, global
/* 8015CC2C 001529AC  38 00 00 00 */	li r0, 0x0
/* 8015CC30 001529B0  90 0D C0 58 */	stw r0, lbl_805A0478@sda21(r0)
/* 8015CC34 001529B4  4E 80 00 20 */	blr
.endfn fn_8015CC2C

# 0x8040657C..0x80406580 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8015CC2C
