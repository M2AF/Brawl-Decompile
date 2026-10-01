.include "macros.inc"
.file "auto_03_80301778_text"

# 0x80301778..0x80301780 | size: 0x8
.text
.balign 4

# .text:0x0 | 0x80301778 | size: 0x8
.fn fn_80301778, global
/* 80301778 002F74F8  C0 23 00 08 */	lfs f1, 0x8(r3)
/* 8030177C 002F74FC  4E 80 00 20 */	blr
.endfn fn_80301778
