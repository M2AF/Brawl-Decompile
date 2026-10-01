.include "macros.inc"
.file "auto_03_80291DD8_text"

# 0x80291DD8..0x80291DE8 | size: 0x10
.text
.balign 4

# .text:0x0 | 0x80291DD8 | size: 0x10
.fn fn_80291DD8, global
/* 80291DD8 00287B58  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80291DDC 00287B5C  4D 81 00 20 */	bgtlr
/* 80291DE0 00287B60  FC 20 10 90 */	fmr f1, f2
/* 80291DE4 00287B64  4E 80 00 20 */	blr
.endfn fn_80291DD8
