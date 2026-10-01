.include "macros.inc"
.file "auto_03_802A8D58_text"

# 0x802A8D58..0x802A8D68 | size: 0x10
.text
.balign 4

# .text:0x0 | 0x802A8D58 | size: 0x10
.fn fn_802A8D58, global
/* 802A8D58 0029EAD8  7C 80 23 78 */	mr r0, r4
/* 802A8D5C 0029EADC  7C A4 2B 78 */	mr r4, r5
/* 802A8D60 0029EAE0  7C 05 03 78 */	mr r5, r0
/* 802A8D64 0029EAE4  4B FF D7 A4 */	b fn_802A6508
.endfn fn_802A8D58
