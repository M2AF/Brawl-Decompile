.include "macros.inc"
.file "auto_fn_802A0C5C_text"

# 0x802A0C5C..0x802A0C68 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x802A0C5C | size: 0xC
.fn fn_802A0C5C, global
/* 802A0C5C 002969DC  38 00 00 00 */	li r0, 0x0
/* 802A0C60 002969E0  98 0D CA E0 */	stb r0, lbl_805A0F00@sda21(r0)
/* 802A0C64 002969E4  4E 80 00 20 */	blr
.endfn fn_802A0C5C

# 0x8040661C..0x80406620 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802A0C5C
