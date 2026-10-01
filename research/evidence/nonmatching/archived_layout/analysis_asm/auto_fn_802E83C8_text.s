.include "macros.inc"
.file "auto_fn_802E83C8_text"

# 0x802E83C8..0x802E841C | size: 0x54
.text
.balign 4

# .text:0x0 | 0x802E83C8 | size: 0x54
.fn fn_802E83C8, global
/* 802E83C8 002DE148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E83CC 002DE14C  7C 08 02 A6 */	mflr r0
/* 802E83D0 002DE150  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E83D4 002DE154  4B FF F5 31 */	bl fn_802E7904
/* 802E83D8 002DE158  3D 00 80 41 */	lis r8, lbl_80413210@ha
/* 802E83DC 002DE15C  3C E0 80 53 */	lis r7, lbl_80533190@ha
/* 802E83E0 002DE160  39 08 32 10 */	addi r8, r8, lbl_80413210@l
/* 802E83E4 002DE164  3C C0 80 2E */	lis r6, fn_802E7878@ha
/* 802E83E8 002DE168  3C 80 80 2E */	lis r4, fn_802E78F0@ha
/* 802E83EC 002DE16C  38 A7 31 90 */	addi r5, r7, lbl_80533190@l
/* 802E83F0 002DE170  38 08 00 28 */	addi r0, r8, 0x28
/* 802E83F4 002DE174  38 C6 78 78 */	addi r6, r6, fn_802E7878@l
/* 802E83F8 002DE178  38 84 78 F0 */	addi r4, r4, fn_802E78F0@l
/* 802E83FC 002DE17C  90 07 31 90 */	stw r0, lbl_80533190@l(r7)
/* 802E8400 002DE180  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802E8404 002DE184  90 85 00 08 */	stw r4, 0x8(r5)
/* 802E8408 002DE188  90 65 00 0C */	stw r3, 0xc(r5)
/* 802E840C 002DE18C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E8410 002DE190  7C 08 03 A6 */	mtlr r0
/* 802E8414 002DE194  38 21 00 10 */	addi r1, r1, 0x10
/* 802E8418 002DE198  4E 80 00 20 */	blr
.endfn fn_802E83C8

# 0x80406728..0x8040672C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802E83C8
