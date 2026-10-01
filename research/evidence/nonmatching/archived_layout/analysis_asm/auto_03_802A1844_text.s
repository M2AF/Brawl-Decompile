.include "macros.inc"
.file "auto_03_802A1844_text"

# 0x802A1844..0x802A1858 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x802A1844 | size: 0x14
.fn fn_802A1844, global
/* 802A1844 002975C4  7C 83 23 78 */	mr r3, r4
/* 802A1848 002975C8  7C A4 2B 78 */	mr r4, r5
/* 802A184C 002975CC  7C C5 33 78 */	mr r5, r6
/* 802A1850 002975D0  7C E6 3B 78 */	mr r6, r7
/* 802A1854 002975D4  4B FF FB 60 */	b fn_802A13B4
.endfn fn_802A1844
