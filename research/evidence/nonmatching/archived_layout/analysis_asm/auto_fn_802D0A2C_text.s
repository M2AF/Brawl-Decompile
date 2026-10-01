.include "macros.inc"
.file "auto_fn_802D0A2C_text"

# 0x800083E8..0x800083F0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800083E8 | size: 0x8
.obj "@etb_800083E8", local
.hidden "@etb_800083E8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800083E8"

# 0x8000B14C..0x8000B158 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B14C | size: 0xC
.obj "@eti_8000B14C", local
.hidden "@eti_8000B14C"
	.4byte fn_802D0A2C
	.4byte 0x00000068
	.4byte "@etb_800083E8"
.endobj "@eti_8000B14C"

# 0x802D0A2C..0x802D0A94 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x802D0A2C | size: 0x68
.fn fn_802D0A2C, global
/* 802D0A2C 002C67AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D0A30 002C67B0  7C 08 02 A6 */	mflr r0
/* 802D0A34 002C67B4  3C A0 80 41 */	lis r5, lbl_80410558@ha
/* 802D0A38 002C67B8  3C 60 80 53 */	lis r3, lbl_80532730@ha
/* 802D0A3C 002C67BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D0A40 002C67C0  38 A5 05 58 */	addi r5, r5, lbl_80410558@l
/* 802D0A44 002C67C4  3C 80 80 41 */	lis r4, lbl_8041056C@ha
/* 802D0A48 002C67C8  38 C0 00 01 */	li r6, 0x1
/* 802D0A4C 002C67CC  90 A1 00 08 */	stw r5, 0x8(r1)
/* 802D0A50 002C67D0  3C A0 80 53 */	lis r5, lbl_80532940@ha
/* 802D0A54 002C67D4  38 00 00 00 */	li r0, 0x0
/* 802D0A58 002C67D8  38 63 27 30 */	addi r3, r3, lbl_80532730@l
/* 802D0A5C 002C67DC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802D0A60 002C67E0  38 84 05 6C */	addi r4, r4, lbl_8041056C@l
/* 802D0A64 002C67E4  38 A5 29 40 */	addi r5, r5, lbl_80532940@l
/* 802D0A68 002C67E8  38 C0 00 10 */	li r6, 0x10
/* 802D0A6C 002C67EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D0A70 002C67F0  38 E0 00 00 */	li r7, 0x0
/* 802D0A74 002C67F4  39 00 00 00 */	li r8, 0x0
/* 802D0A78 002C67F8  39 20 00 00 */	li r9, 0x0
/* 802D0A7C 002C67FC  39 40 00 00 */	li r10, 0x0
/* 802D0A80 002C6800  4B FA BD 89 */	bl fn_8027C808
/* 802D0A84 002C6804  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0A88 002C6808  7C 08 03 A6 */	mtlr r0
/* 802D0A8C 002C680C  38 21 00 20 */	addi r1, r1, 0x20
/* 802D0A90 002C6810  4E 80 00 20 */	blr
.endfn fn_802D0A2C

# 0x80406664..0x80406668 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D0A2C
