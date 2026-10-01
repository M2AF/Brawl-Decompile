.include "macros.inc"
.file "auto_fn_8013D050_text"

# 0x8013D050..0x8013D078 | size: 0x28
.text
.balign 4

# .text:0x0 | 0x8013D050 | size: 0x28
.fn fn_8013D050, global
/* 8013D050 00132DD0  38 00 00 00 */	li r0, 0x0
/* 8013D054 00132DD4  38 CD BF 60 */	li r6, lbl_805A0380@sda21
/* 8013D058 00132DD8  3C 80 80 14 */	lis r4, fn_8013D004@ha
/* 8013D05C 00132DDC  3C A0 80 4A */	lis r5, lbl_8049EA20@ha
/* 8013D060 00132DE0  90 0D BF 60 */	stw r0, lbl_805A0380@sda21(r0)
/* 8013D064 00132DE4  38 84 D0 04 */	addi r4, r4, fn_8013D004@l
/* 8013D068 00132DE8  38 A5 EA 20 */	addi r5, r5, lbl_8049EA20@l
/* 8013D06C 00132DEC  38 6D BF 60 */	li r3, lbl_805A0380@sda21
/* 8013D070 00132DF0  90 06 00 04 */	stw r0, 0x4(r6)
/* 8013D074 00132DF4  48 2B 36 B0 */	b __register_global_object
.endfn fn_8013D050

# 0x80406558..0x8040655C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8013D050
