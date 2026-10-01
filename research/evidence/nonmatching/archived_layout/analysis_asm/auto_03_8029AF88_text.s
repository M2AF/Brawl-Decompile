.include "macros.inc"
.file "auto_03_8029AF88_text"

# 0x8029AF88..0x8029AF94 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x8029AF88 | size: 0xC
.fn fn_8029AF88, global
/* 8029AF88 00290D08  54 80 28 34 */	slwi r0, r4, 5
/* 8029AF8C 00290D0C  7C 63 02 14 */	add r3, r3, r0
/* 8029AF90 00290D10  4E 80 00 20 */	blr
.endfn fn_8029AF88
