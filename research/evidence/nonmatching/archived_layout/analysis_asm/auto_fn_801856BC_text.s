.include "macros.inc"
.file "auto_fn_801856BC_text"

# 0x801856BC..0x801856C8 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x801856BC | size: 0xC
.fn fn_801856BC, global
/* 801856BC 0017B43C  38 0D C0 E0 */	li r0, lbl_805A0500@sda21
/* 801856C0 0017B440  90 0D C0 F8 */	stw r0, lbl_805A0518@sda21(r0)
/* 801856C4 0017B444  4E 80 00 20 */	blr
.endfn fn_801856BC

# 0x804065B0..0x804065B4 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_801856BC
