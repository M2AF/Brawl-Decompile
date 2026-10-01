.include "macros.inc"
.file "auto_03_8032BBE8_text"

# 0x8032BBE8..0x8032BC08 | size: 0x20
.text
.balign 4

# .text:0x0 | 0x8032BBE8 | size: 0x20
.fn fn_8032BBE8, global
/* 8032BBE8 00321968  3C 80 80 49 */	lis r4, lbl_80488D38@ha
/* 8032BBEC 0032196C  38 A0 00 01 */	li r5, 0x1
/* 8032BBF0 00321970  38 84 8D 38 */	addi r4, r4, lbl_80488D38@l
/* 8032BBF4 00321974  3C 00 00 02 */	lis r0, 0x2
/* 8032BBF8 00321978  B0 A3 00 06 */	sth r5, 0x6(r3)
/* 8032BBFC 0032197C  90 83 00 00 */	stw r4, 0x0(r3)
/* 8032BC00 00321980  90 03 00 08 */	stw r0, 0x8(r3)
/* 8032BC04 00321984  4E 80 00 20 */	blr
.endfn fn_8032BBE8
