.include "macros.inc"
.file "auto_fn_802E5514_text"

# 0x802E5514..0x802E5564 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802E5514 | size: 0x50
.fn fn_802E5514, global
/* 802E5514 002DB294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E5518 002DB298  7C 08 02 A6 */	mflr r0
/* 802E551C 002DB29C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E5520 002DB2A0  4B FF FD D1 */	bl fn_802E52F0
/* 802E5524 002DB2A4  3D 00 80 41 */	lis r8, lbl_80413130@ha
/* 802E5528 002DB2A8  3C E0 80 53 */	lis r7, lbl_805330F8@ha
/* 802E552C 002DB2AC  3C C0 80 2E */	lis r6, fn_802E5258@ha
/* 802E5530 002DB2B0  3C 80 80 2E */	lis r4, fn_802E5278@ha
/* 802E5534 002DB2B4  39 08 31 30 */	addi r8, r8, lbl_80413130@l
/* 802E5538 002DB2B8  38 A7 30 F8 */	addi r5, r7, lbl_805330F8@l
/* 802E553C 002DB2BC  38 C6 52 58 */	addi r6, r6, fn_802E5258@l
/* 802E5540 002DB2C0  38 84 52 78 */	addi r4, r4, fn_802E5278@l
/* 802E5544 002DB2C4  91 07 30 F8 */	stw r8, lbl_805330F8@l(r7)
/* 802E5548 002DB2C8  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802E554C 002DB2CC  90 85 00 08 */	stw r4, 0x8(r5)
/* 802E5550 002DB2D0  90 65 00 0C */	stw r3, 0xc(r5)
/* 802E5554 002DB2D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E5558 002DB2D8  7C 08 03 A6 */	mtlr r0
/* 802E555C 002DB2DC  38 21 00 10 */	addi r1, r1, 0x10
/* 802E5560 002DB2E0  4E 80 00 20 */	blr
.endfn fn_802E5514

# 0x80406714..0x80406718 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802E5514
