.include "macros.inc"
.file "auto_fn_80187CF4_text"

# 0x80187CF4..0x80187D00 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x80187CF4 | size: 0xC
.fn fn_80187CF4, global
/* 80187CF4 0017DA74  38 0D C0 E0 */	li r0, lbl_805A0500@sda21
/* 80187CF8 0017DA78  90 0D C1 00 */	stw r0, lbl_805A0520@sda21(r0)
/* 80187CFC 0017DA7C  4E 80 00 20 */	blr
.endfn fn_80187CF4

# 0x804065B4..0x804065B8 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80187CF4
