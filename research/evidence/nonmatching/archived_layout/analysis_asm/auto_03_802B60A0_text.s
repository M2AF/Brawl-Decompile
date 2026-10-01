.include "macros.inc"
.file "auto_03_802B60A0_text"

# 0x802B60A0..0x802B60B8 | size: 0x18
.text
.balign 4

# .text:0x0 | 0x802B60A0 | size: 0x18
.fn fn_802B60A0, global
/* 802B60A0 002ABE20  7C 83 23 78 */	mr r3, r4
/* 802B60A4 002ABE24  7C A4 2B 78 */	mr r4, r5
/* 802B60A8 002ABE28  7C C5 33 78 */	mr r5, r6
/* 802B60AC 002ABE2C  7C E6 3B 78 */	mr r6, r7
/* 802B60B0 002ABE30  7D 07 43 78 */	mr r7, r8
/* 802B60B4 002ABE34  4B FF FA 9C */	b fn_802B5B50
.endfn fn_802B60A0
