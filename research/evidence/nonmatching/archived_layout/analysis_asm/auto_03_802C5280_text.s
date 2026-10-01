.include "macros.inc"
.file "auto_03_802C5280_text"

# 0x802C5280..0x802C5294 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x802C5280 | size: 0x14
.fn fn_802C5280, global
/* 802C5280 002BB000  7C 83 23 78 */	mr r3, r4
/* 802C5284 002BB004  7C A4 2B 78 */	mr r4, r5
/* 802C5288 002BB008  7C C5 33 78 */	mr r5, r6
/* 802C528C 002BB00C  7C E6 3B 78 */	mr r6, r7
/* 802C5290 002BB010  4B FF FB A4 */	b fn_802C4E34
.endfn fn_802C5280
