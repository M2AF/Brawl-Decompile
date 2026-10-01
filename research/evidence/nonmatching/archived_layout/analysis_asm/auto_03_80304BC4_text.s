.include "macros.inc"
.file "auto_03_80304BC4_text"

# 0x80304BC4..0x80304C08 | size: 0x44
.text
.balign 4

# .text:0x0 | 0x80304BC4 | size: 0x44
.fn fn_80304BC4, global
/* 80304BC4 002FA944  C0 64 00 00 */	lfs f3, 0x0(r4)
/* 80304BC8 002FA948  C0 45 00 00 */	lfs f2, 0x0(r5)
/* 80304BCC 002FA94C  C0 24 00 04 */	lfs f1, 0x4(r4)
/* 80304BD0 002FA950  EC A3 10 2A */	fadds f5, f3, f2
/* 80304BD4 002FA954  C0 05 00 04 */	lfs f0, 0x4(r5)
/* 80304BD8 002FA958  C0 64 00 08 */	lfs f3, 0x8(r4)
/* 80304BDC 002FA95C  EC 81 00 2A */	fadds f4, f1, f0
/* 80304BE0 002FA960  C0 45 00 08 */	lfs f2, 0x8(r5)
/* 80304BE4 002FA964  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80304BE8 002FA968  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80304BEC 002FA96C  EC 43 10 2A */	fadds f2, f3, f2
/* 80304BF0 002FA970  D0 A3 00 00 */	stfs f5, 0x0(r3)
/* 80304BF4 002FA974  EC 01 00 2A */	fadds f0, f1, f0
/* 80304BF8 002FA978  D0 83 00 04 */	stfs f4, 0x4(r3)
/* 80304BFC 002FA97C  D0 43 00 08 */	stfs f2, 0x8(r3)
/* 80304C00 002FA980  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80304C04 002FA984  4E 80 00 20 */	blr
.endfn fn_80304BC4
