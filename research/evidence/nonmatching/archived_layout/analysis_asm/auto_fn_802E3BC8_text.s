.include "macros.inc"
.file "auto_fn_802E3BC8_text"

# 0x802E3BC8..0x802E3C18 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802E3BC8 | size: 0x50
.fn fn_802E3BC8, global
/* 802E3BC8 002D9948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E3BCC 002D994C  7C 08 02 A6 */	mflr r0
/* 802E3BD0 002D9950  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E3BD4 002D9954  4B FF FC 9D */	bl fn_802E3870
/* 802E3BD8 002D9958  3D 00 80 41 */	lis r8, lbl_80412DA8@ha
/* 802E3BDC 002D995C  3C E0 80 53 */	lis r7, lbl_80533058@ha
/* 802E3BE0 002D9960  3C C0 80 2E */	lis r6, fn_802E37E0@ha
/* 802E3BE4 002D9964  3C 80 80 2E */	lis r4, fn_802E3800@ha
/* 802E3BE8 002D9968  39 08 2D A8 */	addi r8, r8, lbl_80412DA8@l
/* 802E3BEC 002D996C  38 A7 30 58 */	addi r5, r7, lbl_80533058@l
/* 802E3BF0 002D9970  38 C6 37 E0 */	addi r6, r6, fn_802E37E0@l
/* 802E3BF4 002D9974  38 84 38 00 */	addi r4, r4, fn_802E3800@l
/* 802E3BF8 002D9978  91 07 30 58 */	stw r8, lbl_80533058@l(r7)
/* 802E3BFC 002D997C  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802E3C00 002D9980  90 85 00 08 */	stw r4, 0x8(r5)
/* 802E3C04 002D9984  90 65 00 0C */	stw r3, 0xc(r5)
/* 802E3C08 002D9988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E3C0C 002D998C  7C 08 03 A6 */	mtlr r0
/* 802E3C10 002D9990  38 21 00 10 */	addi r1, r1, 0x10
/* 802E3C14 002D9994  4E 80 00 20 */	blr
.endfn fn_802E3BC8

# 0x80406700..0x80406704 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802E3BC8
