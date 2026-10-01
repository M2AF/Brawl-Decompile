.include "macros.inc"
.file "auto_03_802D5FAC_text"

# 0x802D5FAC..0x802D5FBC | size: 0x10
.text
.balign 4

# .text:0x0 | 0x802D5FAC | size: 0x10
.fn fn_802D5FAC, global
/* 802D5FAC 002CBD2C  38 00 00 01 */	li r0, 0x1
/* 802D5FB0 002CBD30  90 04 00 00 */	stw r0, 0x0(r4)
/* 802D5FB4 002CBD34  98 04 00 04 */	stb r0, 0x4(r4)
/* 802D5FB8 002CBD38  4E 80 00 20 */	blr
.endfn fn_802D5FAC
