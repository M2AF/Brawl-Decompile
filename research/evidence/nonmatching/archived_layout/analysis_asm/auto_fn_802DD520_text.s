.include "macros.inc"
.file "auto_fn_802DD520_text"

# 0x802DD520..0x802DD570 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802DD520 | size: 0x50
.fn fn_802DD520, global
/* 802DD520 002D32A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DD524 002D32A4  7C 08 02 A6 */	mflr r0
/* 802DD528 002D32A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DD52C 002D32AC  4B FF E7 9D */	bl fn_802DBCC8
/* 802DD530 002D32B0  3D 00 80 41 */	lis r8, lbl_80412208@ha
/* 802DD534 002D32B4  3C E0 80 53 */	lis r7, lbl_80532E60@ha
/* 802DD538 002D32B8  3C C0 80 2E */	lis r6, fn_802DBC80@ha
/* 802DD53C 002D32BC  3C 80 80 2E */	lis r4, fn_802DBCB4@ha
/* 802DD540 002D32C0  39 08 22 08 */	addi r8, r8, lbl_80412208@l
/* 802DD544 002D32C4  38 A7 2E 60 */	addi r5, r7, lbl_80532E60@l
/* 802DD548 002D32C8  38 C6 BC 80 */	addi r6, r6, fn_802DBC80@l
/* 802DD54C 002D32CC  38 84 BC B4 */	addi r4, r4, fn_802DBCB4@l
/* 802DD550 002D32D0  91 07 2E 60 */	stw r8, lbl_80532E60@l(r7)
/* 802DD554 002D32D4  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802DD558 002D32D8  90 85 00 08 */	stw r4, 0x8(r5)
/* 802DD55C 002D32DC  90 65 00 0C */	stw r3, 0xc(r5)
/* 802DD560 002D32E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DD564 002D32E4  7C 08 03 A6 */	mtlr r0
/* 802DD568 002D32E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802DD56C 002D32EC  4E 80 00 20 */	blr
.endfn fn_802DD520

# 0x804066C4..0x804066C8 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802DD520
