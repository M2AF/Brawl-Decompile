.include "macros.inc"
.file "auto_fn_802A8E08_text"

# 0x802A8E08..0x802A8E1C | size: 0x14
.text
.balign 4

# .text:0x0 | 0x802A8E08 | size: 0x14
.fn fn_802A8E08, global
/* 802A8E08 0029EB88  38 60 00 00 */	li r3, 0x0
/* 802A8E0C 0029EB8C  38 00 00 01 */	li r0, 0x1
/* 802A8E10 0029EB90  98 6D CA F0 */	stb r3, lbl_805A0F10@sda21(r0)
/* 802A8E14 0029EB94  98 0D CA F4 */	stb r0, lbl_805A0F14@sda21(r0)
/* 802A8E18 0029EB98  4E 80 00 20 */	blr
.endfn fn_802A8E08

# 0x80406624..0x80406628 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802A8E08
