.include "macros.inc"
.file "auto_03_80303F78_text"

# 0x80303F78..0x80303F84 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x80303F78 | size: 0xC
.fn fn_80303F78, global
/* 80303F78 002F9CF8  38 00 00 00 */	li r0, 0x0
/* 80303F7C 002F9CFC  B0 03 00 02 */	sth r0, 0x2(r3)
/* 80303F80 002F9D00  4E 80 00 20 */	blr
.endfn fn_80303F78
