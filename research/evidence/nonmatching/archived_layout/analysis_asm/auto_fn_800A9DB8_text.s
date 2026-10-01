.include "macros.inc"
.file "auto_fn_800A9DB8_text"

# 0x800A9DB8..0x800A9DCC | size: 0x14
.text
.balign 4

# .text:0x0 | 0x800A9DB8 | size: 0x14
.fn fn_800A9DB8, global
/* 800A9DB8 0009FB38  C0 22 8E 28 */	lfs f1, lbl_805A2148@sda21(r0)
/* 800A9DBC 0009FB3C  C0 02 8E 2C */	lfs f0, lbl_805A214C@sda21(r0)
/* 800A9DC0 0009FB40  D0 2D BE 78 */	stfs f1, lbl_805A0298@sda21(r0)
/* 800A9DC4 0009FB44  D0 0D BE 7C */	stfs f0, lbl_805A029C@sda21(r0)
/* 800A9DC8 0009FB48  4E 80 00 20 */	blr
.endfn fn_800A9DB8

# 0x80406538..0x8040653C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_800A9DB8
