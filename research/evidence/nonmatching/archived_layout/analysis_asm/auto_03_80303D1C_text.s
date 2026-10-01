.include "macros.inc"
.file "auto_03_80303D1C_text"

# 0x80303D1C..0x80303D28 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x80303D1C | size: 0xC
.fn fn_80303D1C, global
/* 80303D1C 002F9A9C  54 80 20 36 */	slwi r0, r4, 4
/* 80303D20 002F9AA0  7C 63 02 14 */	add r3, r3, r0
/* 80303D24 002F9AA4  4E 80 00 20 */	blr
.endfn fn_80303D1C
