.include "macros.inc"
.file "auto_03_8032BD5C_text"

# 0x8032BD5C..0x8032BD74 | size: 0x18
.text
.balign 4

# .text:0x0 | 0x8032BD5C | size: 0x8
.fn fn_8032BD5C, global
/* 8032BD5C 00321ADC  3C 60 01 00 */	lis r3, 0x100
/* 8032BD60 00321AE0  4E 80 00 20 */	blr
.endfn fn_8032BD5C

# .text:0x8 | 0x8032BD64 | size: 0x8
.fn fn_8032BD64, global
/* 8032BD64 00321AE4  38 60 00 01 */	li r3, 0x1
/* 8032BD68 00321AE8  4E 80 00 20 */	blr
.endfn fn_8032BD64

# .text:0x10 | 0x8032BD6C | size: 0x8
.fn fn_8032BD6C, global
/* 8032BD6C 00321AEC  38 60 00 00 */	li r3, 0x0
/* 8032BD70 00321AF0  4E 80 00 20 */	blr
.endfn fn_8032BD6C
