.include "macros.inc"
.file "auto_03_802CEA98_text"

# 0x802CEA98..0x802CEAC0 | size: 0x28
.text
.balign 4

# .text:0x0 | 0x802CEA98 | size: 0x8
.fn fn_802CEA98, global
/* 802CEA98 002C4818  38 63 00 10 */	addi r3, r3, 0x10
/* 802CEA9C 002C481C  4E 80 00 20 */	blr
.endfn fn_802CEA98

# .text:0x8 | 0x802CEAA0 | size: 0x8
.fn fn_802CEAA0, global
/* 802CEAA0 002C4820  80 63 00 04 */	lwz r3, 0x4(r3)
/* 802CEAA4 002C4824  4E 80 00 20 */	blr
.endfn fn_802CEAA0

# .text:0x10 | 0x802CEAA8 | size: 0x8
.fn fn_802CEAA8, global
/* 802CEAA8 002C4828  38 60 FF FF */	li r3, -0x1
/* 802CEAAC 002C482C  4E 80 00 20 */	blr
.endfn fn_802CEAA8

# .text:0x18 | 0x802CEAB0 | size: 0x8
.fn fn_802CEAB0, global
/* 802CEAB0 002C4830  38 60 00 00 */	li r3, 0x0
/* 802CEAB4 002C4834  4E 80 00 20 */	blr
.endfn fn_802CEAB0

# .text:0x20 | 0x802CEAB8 | size: 0x8
.fn fn_802CEAB8, global
/* 802CEAB8 002C4838  38 60 00 01 */	li r3, 0x1
/* 802CEABC 002C483C  4E 80 00 20 */	blr
.endfn fn_802CEAB8
