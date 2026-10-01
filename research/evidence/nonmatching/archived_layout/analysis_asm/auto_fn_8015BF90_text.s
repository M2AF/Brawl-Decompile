.include "macros.inc"
.file "auto_fn_8015BF90_text"

# 0x8015BF90..0x8015BF9C | size: 0xC
.text
.balign 4

# .text:0x0 | 0x8015BF90 | size: 0xC
.fn fn_8015BF90, global
/* 8015BF90 00151D10  80 0D A4 40 */	lwz r0, lbl_8059E860@sda21(r0)
/* 8015BF94 00151D14  90 0D C0 50 */	stw r0, lbl_805A0470@sda21(r0)
/* 8015BF98 00151D18  4E 80 00 20 */	blr
.endfn fn_8015BF90

# 0x80406578..0x8040657C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8015BF90
