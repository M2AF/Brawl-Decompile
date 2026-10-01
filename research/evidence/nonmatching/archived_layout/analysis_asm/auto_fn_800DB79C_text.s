.include "macros.inc"
.file "auto_fn_800DB79C_text"

# 0x800DB79C..0x800DB7A8 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x800DB79C | size: 0xC
.fn fn_800DB79C, global
/* 800DB79C 000D151C  38 6D BE 90 */	li r3, lbl_805A02B0@sda21
/* 800DB7A0 000D1520  38 80 00 00 */	li r4, 0x0
/* 800DB7A4 000D1524  48 0C BD AC */	b fn_801A7550
.endfn fn_800DB79C

# 0x80406540..0x80406544 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_800DB79C
