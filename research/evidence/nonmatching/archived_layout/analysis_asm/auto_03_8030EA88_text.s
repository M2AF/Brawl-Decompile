.include "macros.inc"
.file "auto_03_8030EA88_text"

# 0x8030EA88..0x8030EAA4 | size: 0x1C
.text
.balign 4

# .text:0x0 | 0x8030EA88 | size: 0x1C
.fn fn_8030EA88, global
/* 8030EA88 00304808  80 83 00 A0 */	lwz r4, 0xa0(r3)
/* 8030EA8C 0030480C  80 03 00 74 */	lwz r0, 0x74(r3)
/* 8030EA90 00304810  7C 04 00 50 */	subf r0, r4, r0
/* 8030EA94 00304814  54 00 08 3C */	slwi r0, r0, 1
/* 8030EA98 00304818  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8030EA9C 0030481C  38 63 00 24 */	addi r3, r3, 0x24
/* 8030EAA0 00304820  4E 80 00 20 */	blr
.endfn fn_8030EA88
