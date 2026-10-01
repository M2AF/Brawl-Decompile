.include "macros.inc"
.file "auto_03_803233AC_text"

# 0x803233AC..0x803233B4 | size: 0x8
.text
.balign 4

# .text:0x0 | 0x803233AC | size: 0x8
.fn fn_803233AC, global
/* 803233AC 0031912C  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 803233B0 00319130  4E 80 00 20 */	blr
.endfn fn_803233AC
