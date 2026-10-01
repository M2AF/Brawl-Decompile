.include "macros.inc"
.file "auto_03_802CB630_text"

# 0x802CB630..0x802CB64C | size: 0x1C
.text
.balign 4

# .text:0x0 | 0x802CB630 | size: 0x10
.fn fn_802CB630, global
/* 802CB630 002C13B0  38 00 00 00 */	li r0, 0x0
/* 802CB634 002C13B4  7C A3 2B 78 */	mr r3, r5
/* 802CB638 002C13B8  98 04 00 00 */	stb r0, 0x0(r4)
/* 802CB63C 002C13BC  4E 80 00 20 */	blr
.endfn fn_802CB630

# .text:0x10 | 0x802CB640 | size: 0x4
.fn fn_802CB640, global
/* 802CB640 002C13C0  4E 80 00 20 */	blr
.endfn fn_802CB640

# .text:0x14 | 0x802CB644 | size: 0x8
.fn fn_802CB644, global
/* 802CB644 002C13C4  7C A3 2B 78 */	mr r3, r5
/* 802CB648 002C13C8  4E 80 00 20 */	blr
.endfn fn_802CB644
