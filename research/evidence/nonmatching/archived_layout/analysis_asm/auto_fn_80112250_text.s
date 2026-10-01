.include "macros.inc"
.file "auto_fn_80112250_text"

# 0x80112250..0x80112288 | size: 0x38
.text
.balign 4

# .text:0x0 | 0x80112250 | size: 0x38
.fn fn_80112250, global
/* 80112250 00107FD0  3C C0 80 4A */	lis r6, lbl_8049E57C@ha
/* 80112254 00107FD4  38 00 00 00 */	li r0, 0x0
/* 80112258 00107FD8  38 66 E5 7C */	addi r3, r6, lbl_8049E57C@l
/* 8011225C 00107FDC  3C 80 80 11 */	lis r4, fn_80112288@ha
/* 80112260 00107FE0  90 03 00 04 */	stw r0, 0x4(r3)
/* 80112264 00107FE4  38 E3 00 04 */	addi r7, r3, 0x4
/* 80112268 00107FE8  3C A0 80 4A */	lis r5, lbl_8049E570@ha
/* 8011226C 00107FEC  38 84 22 88 */	addi r4, r4, fn_80112288@l
/* 80112270 00107FF0  90 03 00 08 */	stw r0, 0x8(r3)
/* 80112274 00107FF4  38 A5 E5 70 */	addi r5, r5, lbl_8049E570@l
/* 80112278 00107FF8  90 06 E5 7C */	stw r0, lbl_8049E57C@l(r6)
/* 8011227C 00107FFC  90 E3 00 04 */	stw r7, 0x4(r3)
/* 80112280 00108000  90 E3 00 08 */	stw r7, 0x8(r3)
/* 80112284 00108004  48 2D E4 A0 */	b __register_global_object
.endfn fn_80112250

# 0x8040654C..0x80406550 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80112250
