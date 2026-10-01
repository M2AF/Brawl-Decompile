.include "macros.inc"
.file "auto_03_802B8894_text"

# 0x802B8894..0x802B88A4 | size: 0x10
.text
.balign 4

# .text:0x0 | 0x802B8894 | size: 0x8
.fn fn_802B8894, global
/* 802B8894 002AE614  38 63 00 10 */	addi r3, r3, 0x10
/* 802B8898 002AE618  48 04 3F 8C */	b fn_802FC824
.endfn fn_802B8894

# .text:0x8 | 0x802B889C | size: 0x8
.fn fn_802B889C, global
/* 802B889C 002AE61C  38 63 00 10 */	addi r3, r3, 0x10
/* 802B88A0 002AE620  48 04 40 E8 */	b fn_802FC988
.endfn fn_802B889C
