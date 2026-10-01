.include "macros.inc"
.file "auto_03_802B8CA8_text"

# 0x802B8CA8..0x802B8CC0 | size: 0x18
.text
.balign 4

# .text:0x0 | 0x802B8CA8 | size: 0x18
.fn fn_802B8CA8, global
/* 802B8CA8 002AEA28  7C 83 23 78 */	mr r3, r4
/* 802B8CAC 002AEA2C  7C A4 2B 78 */	mr r4, r5
/* 802B8CB0 002AEA30  7C C5 33 78 */	mr r5, r6
/* 802B8CB4 002AEA34  7C E6 3B 78 */	mr r6, r7
/* 802B8CB8 002AEA38  7D 07 43 78 */	mr r7, r8
/* 802B8CBC 002AEA3C  48 00 00 04 */	b fn_802B8CC0
.endfn fn_802B8CA8
