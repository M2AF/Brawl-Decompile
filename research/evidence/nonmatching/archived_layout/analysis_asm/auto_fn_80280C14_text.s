.include "macros.inc"
.file "auto_fn_80280C14_text"

# 0x80280C14..0x80280C20 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x80280C14 | size: 0xC
.fn fn_80280C14, global
/* 80280C14 00276994  38 00 00 00 */	li r0, 0x0
/* 80280C18 00276998  98 0D CA C4 */	stb r0, lbl_805A0EE4@sda21(r0)
/* 80280C1C 0027699C  4E 80 00 20 */	blr
.endfn fn_80280C14

# 0x804065FC..0x80406600 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80280C14
