.include "macros.inc"
.file "auto_03_802A1D64_text"

# 0x802A1D64..0x802A1D7C | size: 0x18
.text
.balign 4

# .text:0x0 | 0x802A1D64 | size: 0x14
.fn fn_802A1D64, global
/* 802A1D64 00297AE4  7C 83 23 78 */	mr r3, r4
/* 802A1D68 00297AE8  7C A4 2B 78 */	mr r4, r5
/* 802A1D6C 00297AEC  7C C5 33 78 */	mr r5, r6
/* 802A1D70 00297AF0  7C E6 3B 78 */	mr r6, r7
/* 802A1D74 00297AF4  4B FF FA E4 */	b fn_802A1858
.endfn fn_802A1D64

# .text:0x14 | 0x802A1D78 | size: 0x4
.fn fn_802A1D78, global
/* 802A1D78 00297AF8  4E 80 00 20 */	blr
.endfn fn_802A1D78
