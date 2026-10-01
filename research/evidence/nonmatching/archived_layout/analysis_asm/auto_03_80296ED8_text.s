.include "macros.inc"
.file "auto_03_80296ED8_text"

# 0x80296ED8..0x80296EF0 | size: 0x18
.text
.balign 4

# .text:0x0 | 0x80296ED8 | size: 0x8
.fn fn_80296ED8, global
/* 80296ED8 0028CC58  7C 63 22 14 */	add r3, r3, r4
/* 80296EDC 0028CC5C  4E 80 00 20 */	blr
.endfn fn_80296ED8

# .text:0x8 | 0x80296EE0 | size: 0xC
.fn fn_80296EE0, global
/* 80296EE0 0028CC60  80 03 00 00 */	lwz r0, 0x0(r3)
/* 80296EE4 0028CC64  7C 64 02 14 */	add r3, r4, r0
/* 80296EE8 0028CC68  4E 80 00 20 */	blr
.endfn fn_80296EE0

# .text:0x14 | 0x80296EEC | size: 0x4
.fn fn_80296EEC, global
/* 80296EEC 0028CC6C  4E 80 00 20 */	blr
.endfn fn_80296EEC
