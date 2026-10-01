.include "macros.inc"
.file "auto_03_80302C34_text"

# 0x80302C34..0x80302C78 | size: 0x44
.text
.balign 4

# .text:0x0 | 0x80302C34 | size: 0x44
.fn fn_80302C34, global
/* 80302C34 002F89B4  A1 64 00 00 */	lhz r11, 0x0(r4)
/* 80302C38 002F89B8  A1 44 00 02 */	lhz r10, 0x2(r4)
/* 80302C3C 002F89BC  A1 24 00 04 */	lhz r9, 0x4(r4)
/* 80302C40 002F89C0  A1 04 00 06 */	lhz r8, 0x6(r4)
/* 80302C44 002F89C4  88 E4 00 08 */	lbz r7, 0x8(r4)
/* 80302C48 002F89C8  88 C4 00 09 */	lbz r6, 0x9(r4)
/* 80302C4C 002F89CC  88 A4 00 0A */	lbz r5, 0xa(r4)
/* 80302C50 002F89D0  88 04 00 0B */	lbz r0, 0xb(r4)
/* 80302C54 002F89D4  B1 63 00 00 */	sth r11, 0x0(r3)
/* 80302C58 002F89D8  B1 43 00 02 */	sth r10, 0x2(r3)
/* 80302C5C 002F89DC  B1 23 00 04 */	sth r9, 0x4(r3)
/* 80302C60 002F89E0  B1 03 00 06 */	sth r8, 0x6(r3)
/* 80302C64 002F89E4  98 E3 00 08 */	stb r7, 0x8(r3)
/* 80302C68 002F89E8  98 C3 00 09 */	stb r6, 0x9(r3)
/* 80302C6C 002F89EC  98 A3 00 0A */	stb r5, 0xa(r3)
/* 80302C70 002F89F0  98 03 00 0B */	stb r0, 0xb(r3)
/* 80302C74 002F89F4  4E 80 00 20 */	blr
.endfn fn_80302C34
