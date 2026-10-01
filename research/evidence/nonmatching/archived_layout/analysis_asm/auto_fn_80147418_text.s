.include "macros.inc"
.file "auto_fn_80147418_text"

# 0x80147418..0x80147434 | size: 0x1C
.text
.balign 4

# .text:0x0 | 0x80147418 | size: 0x1C
.fn fn_80147418, global
/* 80147418 0013D198  3C 80 80 43 */	lis r4, lbl_8042AE50@ha
/* 8014741C 0013D19C  38 00 00 00 */	li r0, 0x0
/* 80147420 0013D1A0  38 84 AE 50 */	addi r4, r4, lbl_8042AE50@l
/* 80147424 0013D1A4  38 6D C0 00 */	li r3, lbl_805A0420@sda21
/* 80147428 0013D1A8  90 8D C0 00 */	stw r4, lbl_805A0420@sda21(r0)
/* 8014742C 0013D1AC  90 03 00 04 */	stw r0, 0x4(r3)
/* 80147430 0013D1B0  4E 80 00 20 */	blr
.endfn fn_80147418

# 0x80406564..0x80406568 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80147418
