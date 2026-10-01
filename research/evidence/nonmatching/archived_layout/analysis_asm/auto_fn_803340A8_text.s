.include "macros.inc"
.file "auto_fn_803340A8_text"

# 0x803340A8..0x803340B8 | size: 0x10
.text
.balign 4

# .text:0x0 | 0x803340A8 | size: 0x10
.fn fn_803340A8, global
/* 803340A8 00329E28  38 00 00 00 */	li r0, 0x0
/* 803340AC 00329E2C  38 6D AC 28 */	li r3, lbl_8059F048@sda21
/* 803340B0 00329E30  98 03 00 01 */	stb r0, 0x1(r3)
/* 803340B4 00329E34  4E 80 00 20 */	blr
.endfn fn_803340A8

# 0x804067BC..0x804067C0 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_803340A8
