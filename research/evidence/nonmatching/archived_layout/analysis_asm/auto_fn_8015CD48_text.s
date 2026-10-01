.include "macros.inc"
.file "auto_fn_8015CD48_text"

# 0x8015CD48..0x8015CD54 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x8015CD48 | size: 0xC
.fn fn_8015CD48, global
/* 8015CD48 00152AC8  38 0D C0 58 */	li r0, lbl_805A0478@sda21
/* 8015CD4C 00152ACC  90 0D C0 60 */	stw r0, lbl_805A0480@sda21(r0)
/* 8015CD50 00152AD0  4E 80 00 20 */	blr
.endfn fn_8015CD48

# 0x80406580..0x80406584 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8015CD48
