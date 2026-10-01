.include "macros.inc"
.file "auto_fn_802DAB08_text"

# 0x802DAB08..0x802DAB58 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802DAB08 | size: 0x50
.fn fn_802DAB08, global
/* 802DAB08 002D0888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DAB0C 002D088C  7C 08 02 A6 */	mflr r0
/* 802DAB10 002D0890  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DAB14 002D0894  4B FF F9 D1 */	bl fn_802DA4E4
/* 802DAB18 002D0898  3D 00 80 41 */	lis r8, lbl_804121D8@ha
/* 802DAB1C 002D089C  3C E0 80 53 */	lis r7, lbl_80532E40@ha
/* 802DAB20 002D08A0  3C C0 80 2E */	lis r6, fn_802DA49C@ha
/* 802DAB24 002D08A4  3C 80 80 2E */	lis r4, fn_802DA4D0@ha
/* 802DAB28 002D08A8  39 08 21 D8 */	addi r8, r8, lbl_804121D8@l
/* 802DAB2C 002D08AC  38 A7 2E 40 */	addi r5, r7, lbl_80532E40@l
/* 802DAB30 002D08B0  38 C6 A4 9C */	addi r6, r6, fn_802DA49C@l
/* 802DAB34 002D08B4  38 84 A4 D0 */	addi r4, r4, fn_802DA4D0@l
/* 802DAB38 002D08B8  91 07 2E 40 */	stw r8, lbl_80532E40@l(r7)
/* 802DAB3C 002D08BC  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802DAB40 002D08C0  90 85 00 08 */	stw r4, 0x8(r5)
/* 802DAB44 002D08C4  90 65 00 0C */	stw r3, 0xc(r5)
/* 802DAB48 002D08C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DAB4C 002D08CC  7C 08 03 A6 */	mtlr r0
/* 802DAB50 002D08D0  38 21 00 10 */	addi r1, r1, 0x10
/* 802DAB54 002D08D4  4E 80 00 20 */	blr
.endfn fn_802DAB08

# 0x804066BC..0x804066C0 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802DAB08
