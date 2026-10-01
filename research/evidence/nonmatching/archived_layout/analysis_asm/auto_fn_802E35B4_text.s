.include "macros.inc"
.file "auto_fn_802E35B4_text"

# 0x802E35B4..0x802E3604 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802E35B4 | size: 0x50
.fn fn_802E35B4, global
/* 802E35B4 002D9334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E35B8 002D9338  7C 08 02 A6 */	mflr r0
/* 802E35BC 002D933C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E35C0 002D9340  4B FF ED 65 */	bl fn_802E2324
/* 802E35C4 002D9344  3D 00 80 41 */	lis r8, lbl_80412CE0@ha
/* 802E35C8 002D9348  3C E0 80 53 */	lis r7, lbl_80532FF8@ha
/* 802E35CC 002D934C  3C C0 80 2E */	lis r6, fn_802E22C4@ha
/* 802E35D0 002D9350  3C 80 80 2E */	lis r4, fn_802E2310@ha
/* 802E35D4 002D9354  39 08 2C E0 */	addi r8, r8, lbl_80412CE0@l
/* 802E35D8 002D9358  38 A7 2F F8 */	addi r5, r7, lbl_80532FF8@l
/* 802E35DC 002D935C  38 C6 22 C4 */	addi r6, r6, fn_802E22C4@l
/* 802E35E0 002D9360  38 84 23 10 */	addi r4, r4, fn_802E2310@l
/* 802E35E4 002D9364  91 07 2F F8 */	stw r8, lbl_80532FF8@l(r7)
/* 802E35E8 002D9368  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802E35EC 002D936C  90 85 00 08 */	stw r4, 0x8(r5)
/* 802E35F0 002D9370  90 65 00 0C */	stw r3, 0xc(r5)
/* 802E35F4 002D9374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E35F8 002D9378  7C 08 03 A6 */	mtlr r0
/* 802E35FC 002D937C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E3600 002D9380  4E 80 00 20 */	blr
.endfn fn_802E35B4

# 0x804066F4..0x804066F8 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802E35B4
