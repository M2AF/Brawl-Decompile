.include "macros.inc"
.file "auto_fn_80183628_text"

# 0x80183628..0x80183634 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x80183628 | size: 0xC
.fn fn_80183628, global
/* 80183628 001793A8  38 00 00 00 */	li r0, 0x0
/* 8018362C 001793AC  90 0D C0 E0 */	stw r0, lbl_805A0500@sda21(r0)
/* 80183630 001793B0  4E 80 00 20 */	blr
.endfn fn_80183628

# 0x804065A8..0x804065AC | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80183628
