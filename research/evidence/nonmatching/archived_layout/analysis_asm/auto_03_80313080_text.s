.include "macros.inc"
.file "auto_03_80313080_text"

# 0x80313080..0x80313088 | size: 0x8
.text
.balign 4

# .text:0x0 | 0x80313080 | size: 0x4
.fn fn_80313080, global
/* 80313080 00308E00  4E 80 00 20 */	blr
.endfn fn_80313080

# .text:0x4 | 0x80313084 | size: 0x4
.fn fn_80313084, global
/* 80313084 00308E04  4E 80 00 20 */	blr
.endfn fn_80313084
