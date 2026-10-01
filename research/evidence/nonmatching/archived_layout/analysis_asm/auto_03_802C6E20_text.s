.include "macros.inc"
.file "auto_03_802C6E20_text"

# 0x802C6E20..0x802C6E34 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x802C6E20 | size: 0x14
.fn fn_802C6E20, global
/* 802C6E20 002BCBA0  7C 83 23 78 */	mr r3, r4
/* 802C6E24 002BCBA4  7C A4 2B 78 */	mr r4, r5
/* 802C6E28 002BCBA8  7C C5 33 78 */	mr r5, r6
/* 802C6E2C 002BCBAC  7C E6 3B 78 */	mr r6, r7
/* 802C6E30 002BCBB0  48 00 00 04 */	b fn_802C6E34
.endfn fn_802C6E20
