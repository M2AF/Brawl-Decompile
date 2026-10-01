.include "macros.inc"
.file "auto_fn_802DBC30_text"

# 0x802DBC30..0x802DBC80 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802DBC30 | size: 0x50
.fn fn_802DBC30, global
/* 802DBC30 002D19B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DBC34 002D19B4  7C 08 02 A6 */	mflr r0
/* 802DBC38 002D19B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DBC3C 002D19BC  4B FF EF 65 */	bl fn_802DABA0
/* 802DBC40 002D19C0  3D 00 80 41 */	lis r8, lbl_804121F0@ha
/* 802DBC44 002D19C4  3C E0 80 53 */	lis r7, lbl_80532E50@ha
/* 802DBC48 002D19C8  3C C0 80 2E */	lis r6, fn_802DAB58@ha
/* 802DBC4C 002D19CC  3C 80 80 2E */	lis r4, fn_802DAB8C@ha
/* 802DBC50 002D19D0  39 08 21 F0 */	addi r8, r8, lbl_804121F0@l
/* 802DBC54 002D19D4  38 A7 2E 50 */	addi r5, r7, lbl_80532E50@l
/* 802DBC58 002D19D8  38 C6 AB 58 */	addi r6, r6, fn_802DAB58@l
/* 802DBC5C 002D19DC  38 84 AB 8C */	addi r4, r4, fn_802DAB8C@l
/* 802DBC60 002D19E0  91 07 2E 50 */	stw r8, lbl_80532E50@l(r7)
/* 802DBC64 002D19E4  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802DBC68 002D19E8  90 85 00 08 */	stw r4, 0x8(r5)
/* 802DBC6C 002D19EC  90 65 00 0C */	stw r3, 0xc(r5)
/* 802DBC70 002D19F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DBC74 002D19F4  7C 08 03 A6 */	mtlr r0
/* 802DBC78 002D19F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802DBC7C 002D19FC  4E 80 00 20 */	blr
.endfn fn_802DBC30

# 0x804066C0..0x804066C4 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802DBC30
