.include "macros.inc"
.file "auto_03_8028A9E8_text"

# 0x8028A9E8..0x8028AA10 | size: 0x28
.text
.balign 4

# .text:0x0 | 0x8028A9E8 | size: 0x20
.fn fn_8028A9E8, global
/* 8028A9E8 00280768  3C A0 13 02 */	lis r5, 0x1302
/* 8028A9EC 0028076C  80 C4 00 08 */	lwz r6, 0x8(r4)
/* 8028A9F0 00280770  38 05 00 08 */	addi r0, r5, 0x8
/* 8028A9F4 00280774  90 06 00 00 */	stw r0, 0x0(r6)
/* 8028A9F8 00280778  38 06 00 08 */	addi r0, r6, 0x8
/* 8028A9FC 0028077C  98 66 00 04 */	stb r3, 0x4(r6)
/* 8028AA00 00280780  90 04 00 08 */	stw r0, 0x8(r4)
/* 8028AA04 00280784  4E 80 00 20 */	blr
.endfn fn_8028A9E8

# .text:0x20 | 0x8028AA08 | size: 0x8
.fn fn_8028AA08, global
/* 8028AA08 00280788  38 60 00 01 */	li r3, 0x1
/* 8028AA0C 0028078C  4E 80 00 20 */	blr
.endfn fn_8028AA08
