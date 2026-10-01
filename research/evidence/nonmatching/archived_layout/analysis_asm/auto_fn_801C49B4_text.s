.include "macros.inc"
.file "auto_fn_801C49B4_text"

# 0x801C49B4..0x801C49C0 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x801C49B4 | size: 0xC
.fn fn_801C49B4, global
/* 801C49B4 001BA734  38 0D C1 58 */	li r0, lbl_805A0578@sda21
/* 801C49B8 001BA738  90 0D C1 88 */	stw r0, lbl_805A05A8@sda21(r0)
/* 801C49BC 001BA73C  4E 80 00 20 */	blr
.endfn fn_801C49B4

# 0x804065C4..0x804065C8 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_801C49B4
