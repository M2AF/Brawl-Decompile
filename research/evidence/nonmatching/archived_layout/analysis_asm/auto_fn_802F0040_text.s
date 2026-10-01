.include "macros.inc"
.file "auto_fn_802F0040_text"

# 0x802F0040..0x802F004C | size: 0xC
.text
.balign 4

# .text:0x0 | 0x802F0040 | size: 0xC
.fn fn_802F0040, global
/* 802F0040 002E5DC0  38 00 00 00 */	li r0, 0x0
/* 802F0044 002E5DC4  98 0D CB 00 */	stb r0, lbl_805A0F20@sda21(r0)
/* 802F0048 002E5DC8  4E 80 00 20 */	blr
.endfn fn_802F0040

# 0x80406738..0x8040673C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802F0040
