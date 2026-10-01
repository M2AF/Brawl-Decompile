.include "macros.inc"
.file "auto_03_802B4B08_text"

# 0x802B4B08..0x802B4B1C | size: 0x14
.text
.balign 4

# .text:0x0 | 0x802B4B08 | size: 0x14
.fn fn_802B4B08, global
/* 802B4B08 002AA888  7C 83 23 78 */	mr r3, r4
/* 802B4B0C 002AA88C  7C A4 2B 78 */	mr r4, r5
/* 802B4B10 002AA890  7C C5 33 78 */	mr r5, r6
/* 802B4B14 002AA894  7C E6 3B 78 */	mr r6, r7
/* 802B4B18 002AA898  48 00 00 04 */	b fn_802B4B1C
.endfn fn_802B4B08
