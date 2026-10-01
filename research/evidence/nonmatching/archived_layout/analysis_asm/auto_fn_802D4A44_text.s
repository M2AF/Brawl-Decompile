.include "macros.inc"
.file "auto_fn_802D4A44_text"

# 0x80008544..0x8000854C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008544 | size: 0x8
.obj "@etb_80008544", local
.hidden "@etb_80008544"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008544"

# 0x8000B338..0x8000B344 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B338 | size: 0xC
.obj "@eti_8000B338", local
.hidden "@eti_8000B338"
	.4byte fn_802D4A44
	.4byte 0x00000050
	.4byte "@etb_80008544"
.endobj "@eti_8000B338"

# 0x802D4A44..0x802D4A94 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802D4A44 | size: 0x50
.fn fn_802D4A44, global
/* 802D4A44 002CA7C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D4A48 002CA7C8  7C 08 02 A6 */	mflr r0
/* 802D4A4C 002CA7CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D4A50 002CA7D0  4B FF FE 41 */	bl fn_802D4890
/* 802D4A54 002CA7D4  3D 00 80 41 */	lis r8, lbl_804109A8@ha
/* 802D4A58 002CA7D8  3C E0 80 53 */	lis r7, lbl_80532820@ha
/* 802D4A5C 002CA7DC  3C C0 80 2D */	lis r6, fn_802D46F4@ha
/* 802D4A60 002CA7E0  3C 80 80 2D */	lis r4, fn_802D47E0@ha
/* 802D4A64 002CA7E4  39 08 09 A8 */	addi r8, r8, lbl_804109A8@l
/* 802D4A68 002CA7E8  38 A7 28 20 */	addi r5, r7, lbl_80532820@l
/* 802D4A6C 002CA7EC  38 C6 46 F4 */	addi r6, r6, fn_802D46F4@l
/* 802D4A70 002CA7F0  38 84 47 E0 */	addi r4, r4, fn_802D47E0@l
/* 802D4A74 002CA7F4  91 07 28 20 */	stw r8, lbl_80532820@l(r7)
/* 802D4A78 002CA7F8  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802D4A7C 002CA7FC  90 85 00 08 */	stw r4, 0x8(r5)
/* 802D4A80 002CA800  90 65 00 0C */	stw r3, 0xc(r5)
/* 802D4A84 002CA804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D4A88 002CA808  7C 08 03 A6 */	mtlr r0
/* 802D4A8C 002CA80C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D4A90 002CA810  4E 80 00 20 */	blr
.endfn fn_802D4A44

# 0x80406680..0x80406684 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D4A44
