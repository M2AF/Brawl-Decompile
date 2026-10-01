.include "macros.inc"
.file "auto_fn_802DE94C_text"

# 0x802DE94C..0x802DE99C | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802DE94C | size: 0x50
.fn fn_802DE94C, global
/* 802DE94C 002D46CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE950 002D46D0  7C 08 02 A6 */	mflr r0
/* 802DE954 002D46D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE958 002D46D8  4B FF FD D1 */	bl fn_802DE728
/* 802DE95C 002D46DC  3D 00 80 41 */	lis r8, lbl_804126F0@ha
/* 802DE960 002D46E0  3C E0 80 53 */	lis r7, lbl_80532F10@ha
/* 802DE964 002D46E4  3C C0 80 2E */	lis r6, fn_802DE6F4@ha
/* 802DE968 002D46E8  3C 80 80 2E */	lis r4, fn_802DE714@ha
/* 802DE96C 002D46EC  39 08 26 F0 */	addi r8, r8, lbl_804126F0@l
/* 802DE970 002D46F0  38 A7 2F 10 */	addi r5, r7, lbl_80532F10@l
/* 802DE974 002D46F4  38 C6 E6 F4 */	addi r6, r6, fn_802DE6F4@l
/* 802DE978 002D46F8  38 84 E7 14 */	addi r4, r4, fn_802DE714@l
/* 802DE97C 002D46FC  91 07 2F 10 */	stw r8, lbl_80532F10@l(r7)
/* 802DE980 002D4700  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802DE984 002D4704  90 85 00 08 */	stw r4, 0x8(r5)
/* 802DE988 002D4708  90 65 00 0C */	stw r3, 0xc(r5)
/* 802DE98C 002D470C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE990 002D4710  7C 08 03 A6 */	mtlr r0
/* 802DE994 002D4714  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE998 002D4718  4E 80 00 20 */	blr
.endfn fn_802DE94C

# 0x804066D8..0x804066DC | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802DE94C
