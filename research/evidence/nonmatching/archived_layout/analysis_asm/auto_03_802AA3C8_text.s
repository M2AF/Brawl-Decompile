.include "macros.inc"
.file "auto_03_802AA3C8_text"

# 0x802AA3C8..0x802AA3D8 | size: 0x10
.text
.balign 4

# .text:0x0 | 0x802AA3C8 | size: 0x8
.fn fn_802AA3C8, global
/* 802AA3C8 002A0148  38 63 00 30 */	addi r3, r3, 0x30
/* 802AA3CC 002A014C  48 05 24 58 */	b fn_802FC824
.endfn fn_802AA3C8

# .text:0x8 | 0x802AA3D0 | size: 0x8
.fn fn_802AA3D0, global
/* 802AA3D0 002A0150  38 63 00 30 */	addi r3, r3, 0x30
/* 802AA3D4 002A0154  48 05 25 B4 */	b fn_802FC988
.endfn fn_802AA3D0
