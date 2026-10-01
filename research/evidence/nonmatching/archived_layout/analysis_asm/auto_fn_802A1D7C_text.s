.include "macros.inc"
.file "auto_fn_802A1D7C_text"

# 0x802A1D7C..0x802A1D88 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x802A1D7C | size: 0xC
.fn fn_802A1D7C, global
/* 802A1D7C 00297AFC  38 00 00 00 */	li r0, 0x0
/* 802A1D80 00297B00  98 0D CA E8 */	stb r0, lbl_805A0F08@sda21(r0)
/* 802A1D84 00297B04  4E 80 00 20 */	blr
.endfn fn_802A1D7C

# 0x80406620..0x80406624 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802A1D7C
