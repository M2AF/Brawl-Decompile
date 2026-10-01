.include "macros.inc"
.file "auto_03_8032D494_text"

# 0x8032D494..0x8032D4B0 | size: 0x1C
.text
.balign 4

# .text:0x0 | 0x8032D494 | size: 0xC
.fn fn_8032D494, global
/* 8032D494 00323214  38 A0 00 00 */	li r5, 0x0
/* 8032D498 00323218  38 63 00 08 */	addi r3, r3, 0x8
/* 8032D49C 0032321C  4B F5 0B D8 */	b fn_8027E074
.endfn fn_8032D494

# .text:0xC | 0x8032D4A0 | size: 0x10
.fn fn_8032D4A0, global
/* 8032D4A0 00323220  80 84 00 00 */	lwz r4, 0x0(r4)
/* 8032D4A4 00323224  38 A0 00 00 */	li r5, 0x0
/* 8032D4A8 00323228  38 63 00 08 */	addi r3, r3, 0x8
/* 8032D4AC 0032322C  4B F4 FD 44 */	b fn_8027D1F0
.endfn fn_8032D4A0
