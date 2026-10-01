.include "macros.inc"
.file "auto_fn_8015B05C_text"

# 0x8015B05C..0x8015B09C | size: 0x40
.text
.balign 4

# .text:0x0 | 0x8015B05C | size: 0x40
.fn fn_8015B05C, global
/* 8015B05C 00150DDC  3C C0 80 4A */	lis r6, lbl_8049ED30@ha
/* 8015B060 00150DE0  38 E0 00 00 */	li r7, 0x0
/* 8015B064 00150DE4  38 66 ED 30 */	addi r3, r6, lbl_8049ED30@l
/* 8015B068 00150DE8  3C 80 80 16 */	lis r4, fn_80158BEC@ha
/* 8015B06C 00150DEC  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8015B070 00150DF0  3C A0 80 4A */	lis r5, lbl_8049ED20@ha
/* 8015B074 00150DF4  90 E6 ED 30 */	stw r7, lbl_8049ED30@l(r6)
/* 8015B078 00150DF8  38 84 8B EC */	addi r4, r4, fn_80158BEC@l
/* 8015B07C 00150DFC  64 00 80 00 */	oris r0, r0, 0x8000
/* 8015B080 00150E00  38 A5 ED 20 */	addi r5, r5, lbl_8049ED20@l
/* 8015B084 00150E04  90 E3 00 04 */	stw r7, 0x4(r3)
/* 8015B088 00150E08  90 E3 00 08 */	stw r7, 0x8(r3)
/* 8015B08C 00150E0C  90 E3 00 0C */	stw r7, 0xc(r3)
/* 8015B090 00150E10  90 E3 00 10 */	stw r7, 0x10(r3)
/* 8015B094 00150E14  90 03 00 24 */	stw r0, 0x24(r3)
/* 8015B098 00150E18  48 29 56 8C */	b __register_global_object
.endfn fn_8015B05C

# 0x80406574..0x80406578 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8015B05C
