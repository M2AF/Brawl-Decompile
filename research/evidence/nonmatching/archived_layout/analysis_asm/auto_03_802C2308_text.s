.include "macros.inc"
.file "auto_03_802C2308_text"

# 0x802C2308..0x802C2318 | size: 0x10
.text
.balign 4

# .text:0x0 | 0x802C2308 | size: 0x10
.fn fn_802C2308, global
/* 802C2308 002B8088  7C 80 23 78 */	mr r0, r4
/* 802C230C 002B808C  7C A4 2B 78 */	mr r4, r5
/* 802C2310 002B8090  7C 05 03 78 */	mr r5, r0
/* 802C2314 002B8094  4B FF F9 BC */	b fn_802C1CD0
.endfn fn_802C2308
