.include "macros.inc"
.file "auto_03_80305A54_text"

# 0x80305A54..0x80305A68 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x80305A54 | size: 0x14
.fn fn_80305A54, global
/* 80305A54 002FB7D4  D0 23 00 00 */	stfs f1, 0x0(r3)
/* 80305A58 002FB7D8  D0 23 00 04 */	stfs f1, 0x4(r3)
/* 80305A5C 002FB7DC  D0 23 00 08 */	stfs f1, 0x8(r3)
/* 80305A60 002FB7E0  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 80305A64 002FB7E4  4E 80 00 20 */	blr
.endfn fn_80305A54
