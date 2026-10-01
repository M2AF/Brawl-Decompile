.include "macros.inc"
.file "auto_03_8031AAA0_text"

# 0x8031AAA0..0x8031AAC4 | size: 0x24
.text
.balign 4

# .text:0x0 | 0x8031AAA0 | size: 0x24
.fn fn_8031AAA0, global
/* 8031AAA0 00310820  C0 64 00 00 */	lfs f3, 0x0(r4)
/* 8031AAA4 00310824  C0 44 00 04 */	lfs f2, 0x4(r4)
/* 8031AAA8 00310828  C0 24 00 08 */	lfs f1, 0x8(r4)
/* 8031AAAC 0031082C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8031AAB0 00310830  D0 63 00 00 */	stfs f3, 0x0(r3)
/* 8031AAB4 00310834  D0 43 00 04 */	stfs f2, 0x4(r3)
/* 8031AAB8 00310838  D0 23 00 08 */	stfs f1, 0x8(r3)
/* 8031AABC 0031083C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8031AAC0 00310840  4E 80 00 20 */	blr
.endfn fn_8031AAA0
