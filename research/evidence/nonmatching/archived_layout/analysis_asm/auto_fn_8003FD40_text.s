.include "macros.inc"
.file "auto_fn_8003FD40_text"

# 0x8003FD40..0x8003FD5C | size: 0x1C
.text
.balign 4

# .text:0x0 | 0x8003FD40 | size: 0x1C
.fn fn_8003FD40, global
/* 8003FD40 00035AC0  3C 80 80 43 */	lis r4, lbl_8042AE50@ha
/* 8003FD44 00035AC4  38 00 00 00 */	li r0, 0x0
/* 8003FD48 00035AC8  38 84 AE 50 */	addi r4, r4, lbl_8042AE50@l
/* 8003FD4C 00035ACC  38 6D BC 98 */	li r3, lbl_805A00B8@sda21
/* 8003FD50 00035AD0  90 8D BC 98 */	stw r4, lbl_805A00B8@sda21(r0)
/* 8003FD54 00035AD4  90 03 00 04 */	stw r0, 0x4(r3)
/* 8003FD58 00035AD8  4E 80 00 20 */	blr
.endfn fn_8003FD40

# 0x80406510..0x80406514 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8003FD40
