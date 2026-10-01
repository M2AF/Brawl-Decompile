.include "macros.inc"
.file "auto_03_802B1828_text"

# 0x802B1828..0x802B1838 | size: 0x10
.text
.balign 4

# .text:0x0 | 0x802B1828 | size: 0x10
.fn fn_802B1828, global
/* 802B1828 002A75A8  7C 80 23 78 */	mr r0, r4
/* 802B182C 002A75AC  7C A4 2B 78 */	mr r4, r5
/* 802B1830 002A75B0  7C 05 03 78 */	mr r5, r0
/* 802B1834 002A75B4  4B FF E7 10 */	b fn_802AFF44
.endfn fn_802B1828
