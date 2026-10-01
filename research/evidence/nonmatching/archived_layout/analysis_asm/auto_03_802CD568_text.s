.include "macros.inc"
.file "auto_03_802CD568_text"

# 0x802CD568..0x802CD5A8 | size: 0x40
.text
.balign 4

# .text:0x0 | 0x802CD568 | size: 0x8
.fn fn_802CD568, global
/* 802CD568 002C32E8  38 63 FF F8 */	subi r3, r3, 0x8
/* 802CD56C 002C32EC  4B FF FC DC */	b fn_802CD248
.endfn fn_802CD568

# .text:0x8 | 0x802CD570 | size: 0x8
.fn fn_802CD570, global
/* 802CD570 002C32F0  38 63 FF F8 */	subi r3, r3, 0x8
/* 802CD574 002C32F4  4B FF FC 00 */	b fn_802CD174
.endfn fn_802CD570

# .text:0x10 | 0x802CD578 | size: 0x8
.fn fn_802CD578, global
/* 802CD578 002C32F8  38 63 FF F4 */	subi r3, r3, 0xc
/* 802CD57C 002C32FC  4B FF FB F8 */	b fn_802CD174
.endfn fn_802CD578

# .text:0x18 | 0x802CD580 | size: 0x8
.fn fn_802CD580, global
/* 802CD580 002C3300  38 63 FF F4 */	subi r3, r3, 0xc
/* 802CD584 002C3304  4B FF FC D0 */	b fn_802CD254
.endfn fn_802CD580

# .text:0x20 | 0x802CD588 | size: 0x8
.fn fn_802CD588, global
/* 802CD588 002C3308  38 63 FF F0 */	subi r3, r3, 0x10
/* 802CD58C 002C330C  4B FF FB E8 */	b fn_802CD174
.endfn fn_802CD588

# .text:0x28 | 0x802CD590 | size: 0x8
.fn fn_802CD590, global
/* 802CD590 002C3310  38 63 FF F0 */	subi r3, r3, 0x10
/* 802CD594 002C3314  4B FF FE 00 */	b fn_802CD394
.endfn fn_802CD590

# .text:0x30 | 0x802CD598 | size: 0x8
.fn fn_802CD598, global
/* 802CD598 002C3318  38 63 FF EC */	subi r3, r3, 0x14
/* 802CD59C 002C331C  4B FF FE 54 */	b fn_802CD3F0
.endfn fn_802CD598

# .text:0x38 | 0x802CD5A0 | size: 0x8
.fn fn_802CD5A0, global
/* 802CD5A0 002C3320  38 63 FF EC */	subi r3, r3, 0x14
/* 802CD5A4 002C3324  4B FF FB D0 */	b fn_802CD174
.endfn fn_802CD5A0
