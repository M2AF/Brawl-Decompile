.include "macros.inc"
.file "auto_fn_801BD694_text"

# 0x801BD694..0x801BD6A0 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x801BD694 | size: 0xC
.fn fn_801BD694, global
/* 801BD694 001B3414  38 00 00 00 */	li r0, 0x0
/* 801BD698 001B3418  90 0D C1 58 */	stw r0, lbl_805A0578@sda21(r0)
/* 801BD69C 001B341C  4E 80 00 20 */	blr
.endfn fn_801BD694

# 0x804065C0..0x804065C4 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_801BD694
