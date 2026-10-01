.include "macros.inc"
.file "auto_fn_802E1F78_text"

# 0x802E1F78..0x802E1FCC | size: 0x54
.text
.balign 4

# .text:0x0 | 0x802E1F78 | size: 0x54
.fn fn_802E1F78, global
/* 802E1F78 002D7CF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E1F7C 002D7CFC  7C 08 02 A6 */	mflr r0
/* 802E1F80 002D7D00  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E1F84 002D7D04  4B FF EF 05 */	bl fn_802E0E88
/* 802E1F88 002D7D08  3D 00 80 41 */	lis r8, lbl_804129D0@ha
/* 802E1F8C 002D7D0C  3C E0 80 53 */	lis r7, lbl_80532F70@ha
/* 802E1F90 002D7D10  39 08 29 D0 */	addi r8, r8, lbl_804129D0@l
/* 802E1F94 002D7D14  3C C0 80 2E */	lis r6, fn_802E0E40@ha
/* 802E1F98 002D7D18  3C 80 80 2E */	lis r4, fn_802E0E74@ha
/* 802E1F9C 002D7D1C  38 A7 2F 70 */	addi r5, r7, lbl_80532F70@l
/* 802E1FA0 002D7D20  38 08 00 4A */	addi r0, r8, 0x4a
/* 802E1FA4 002D7D24  38 C6 0E 40 */	addi r6, r6, fn_802E0E40@l
/* 802E1FA8 002D7D28  38 84 0E 74 */	addi r4, r4, fn_802E0E74@l
/* 802E1FAC 002D7D2C  90 07 2F 70 */	stw r0, lbl_80532F70@l(r7)
/* 802E1FB0 002D7D30  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802E1FB4 002D7D34  90 85 00 08 */	stw r4, 0x8(r5)
/* 802E1FB8 002D7D38  90 65 00 0C */	stw r3, 0xc(r5)
/* 802E1FBC 002D7D3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E1FC0 002D7D40  7C 08 03 A6 */	mtlr r0
/* 802E1FC4 002D7D44  38 21 00 10 */	addi r1, r1, 0x10
/* 802E1FC8 002D7D48  4E 80 00 20 */	blr
.endfn fn_802E1F78

# 0x804066E4..0x804066E8 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802E1F78
