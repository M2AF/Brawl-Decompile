.include "macros.inc"
.file "auto_03_802A9EF0_text"

# 0x802A9EF0..0x802A9F30 | size: 0x40
.text
.balign 4

# .text:0x0 | 0x802A9EF0 | size: 0x14
.fn fn_802A9EF0, global
/* 802A9EF0 0029FC70  7C 83 23 78 */	mr r3, r4
/* 802A9EF4 0029FC74  7C A4 2B 78 */	mr r4, r5
/* 802A9EF8 0029FC78  7C C5 33 78 */	mr r5, r6
/* 802A9EFC 0029FC7C  7C E6 3B 78 */	mr r6, r7
/* 802A9F00 0029FC80  4B FF E4 F8 */	b fn_802A83F8
.endfn fn_802A9EF0

# .text:0x14 | 0x802A9F04 | size: 0x14
.fn fn_802A9F04, global
/* 802A9F04 0029FC84  7C 83 23 78 */	mr r3, r4
/* 802A9F08 0029FC88  7C A4 2B 78 */	mr r4, r5
/* 802A9F0C 0029FC8C  7C C5 33 78 */	mr r5, r6
/* 802A9F10 0029FC90  7C E6 3B 78 */	mr r6, r7
/* 802A9F14 0029FC94  4B FF E0 1C */	b fn_802A7F30
.endfn fn_802A9F04

# .text:0x28 | 0x802A9F18 | size: 0x18
.fn fn_802A9F18, global
/* 802A9F18 0029FC98  7C 83 23 78 */	mr r3, r4
/* 802A9F1C 0029FC9C  7C A4 2B 78 */	mr r4, r5
/* 802A9F20 0029FCA0  7C C5 33 78 */	mr r5, r6
/* 802A9F24 0029FCA4  7C E6 3B 78 */	mr r6, r7
/* 802A9F28 0029FCA8  7D 07 43 78 */	mr r7, r8
/* 802A9F2C 0029FCAC  4B FF D9 CC */	b fn_802A78F8
.endfn fn_802A9F18
