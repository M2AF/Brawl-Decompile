.include "macros.inc"
.file "auto_03_80303004_text"

# 0x80303004..0x80303018 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x80303004 | size: 0x8
.fn fn_80303004, global
/* 80303004 002F8D84  88 63 00 21 */	lbz r3, 0x21(r3)
/* 80303008 002F8D88  4E 80 00 20 */	blr
.endfn fn_80303004

# .text:0x8 | 0x8030300C | size: 0xC
.fn fn_8030300C, global
/* 8030300C 002F8D8C  88 04 00 00 */	lbz r0, 0x0(r4)
/* 80303010 002F8D90  98 03 00 22 */	stb r0, 0x22(r3)
/* 80303014 002F8D94  4E 80 00 20 */	blr
.endfn fn_8030300C
