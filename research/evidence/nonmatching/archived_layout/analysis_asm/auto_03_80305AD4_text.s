.include "macros.inc"
.file "auto_03_80305AD4_text"

# 0x80305AD4..0x80305AE0 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x80305AD4 | size: 0xC
.fn fn_80305AD4, global
/* 80305AD4 002FB854  88 04 00 00 */	lbz r0, 0x0(r4)
/* 80305AD8 002FB858  98 03 00 00 */	stb r0, 0x0(r3)
/* 80305ADC 002FB85C  4E 80 00 20 */	blr
.endfn fn_80305AD4
