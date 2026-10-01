.include "macros.inc"
.file "auto_03_802A0C4C_text"

# 0x802A0C4C..0x802A0C5C | size: 0x10
.text
.balign 4

# .text:0x0 | 0x802A0C4C | size: 0x10
.fn fn_802A0C4C, global
/* 802A0C4C 002969CC  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 802A0C50 002969D0  4D 80 00 20 */	bltlr
/* 802A0C54 002969D4  FC 20 10 90 */	fmr f1, f2
/* 802A0C58 002969D8  4E 80 00 20 */	blr
.endfn fn_802A0C4C
