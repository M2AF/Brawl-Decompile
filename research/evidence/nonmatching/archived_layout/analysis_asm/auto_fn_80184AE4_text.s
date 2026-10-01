.include "macros.inc"
.file "auto_fn_80184AE4_text"

# 0x80184AE4..0x80184AF0 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x80184AE4 | size: 0xC
.fn fn_80184AE4, global
/* 80184AE4 0017A864  38 0D C0 E0 */	li r0, lbl_805A0500@sda21
/* 80184AE8 0017A868  90 0D C0 F0 */	stw r0, lbl_805A0510@sda21(r0)
/* 80184AEC 0017A86C  4E 80 00 20 */	blr
.endfn fn_80184AE4

# 0x804065AC..0x804065B0 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80184AE4
