.include "macros.inc"
.file "auto_fn_80334BCC_text"

# 0x80334BCC..0x80334BF8 | size: 0x2C
.text
.balign 4

# .text:0x0 | 0x80334BCC | size: 0x2C
.fn fn_80334BCC, global
/* 80334BCC 0032A94C  3C C0 80 33 */	lis r6, fn_80334B4C@ha
/* 80334BD0 0032A950  3C A0 80 53 */	lis r5, lbl_80533708@ha
/* 80334BD4 0032A954  38 C6 4B 4C */	addi r6, r6, fn_80334B4C@l
/* 80334BD8 0032A958  80 0D CA B0 */	lwz r0, lbl_805A0ED0@sda21(r0)
/* 80334BDC 0032A95C  38 65 37 08 */	addi r3, r5, lbl_80533708@l
/* 80334BE0 0032A960  38 8D CB 20 */	li r4, lbl_805A0F40@sda21
/* 80334BE4 0032A964  90 C5 37 08 */	stw r6, lbl_80533708@l(r5)
/* 80334BE8 0032A968  90 83 00 08 */	stw r4, 0x8(r3)
/* 80334BEC 0032A96C  90 03 00 04 */	stw r0, 0x4(r3)
/* 80334BF0 0032A970  90 6D CA B0 */	stw r3, lbl_805A0ED0@sda21(r0)
/* 80334BF4 0032A974  4E 80 00 20 */	blr
.endfn fn_80334BCC

# 0x804067C0..0x804067C4 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80334BCC
