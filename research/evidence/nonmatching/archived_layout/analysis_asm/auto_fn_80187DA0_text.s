.include "macros.inc"
.file "auto_fn_80187DA0_text"

# 0x80187DA0..0x80187DAC | size: 0xC
.text
.balign 4

# .text:0x0 | 0x80187DA0 | size: 0xC
.fn fn_80187DA0, global
/* 80187DA0 0017DB20  38 0D C0 E0 */	li r0, lbl_805A0500@sda21
/* 80187DA4 0017DB24  90 0D C1 08 */	stw r0, lbl_805A0528@sda21(r0)
/* 80187DA8 0017DB28  4E 80 00 20 */	blr
.endfn fn_80187DA0

# 0x804065B8..0x804065BC | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80187DA0
