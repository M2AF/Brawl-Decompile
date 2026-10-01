.include "macros.inc"
.file "auto_03_802ABC70_text"

# 0x802ABC70..0x802ABC84 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x802ABC70 | size: 0x14
.fn fn_802ABC70, global
/* 802ABC70 002A19F0  7C 83 23 78 */	mr r3, r4
/* 802ABC74 002A19F4  7C A4 2B 78 */	mr r4, r5
/* 802ABC78 002A19F8  7C C5 33 78 */	mr r5, r6
/* 802ABC7C 002A19FC  7C E6 3B 78 */	mr r6, r7
/* 802ABC80 002A1A00  4B FF F9 EC */	b fn_802AB66C
.endfn fn_802ABC70
