.include "macros.inc"
.file "auto_fn_802CE588_text"

# 0x80008318..0x80008320 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008318 | size: 0x8
.obj "@etb_80008318", local
.hidden "@etb_80008318"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008318"

# 0x8000B02C..0x8000B038 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B02C | size: 0xC
.obj "@eti_8000B02C", local
.hidden "@eti_8000B02C"
	.4byte fn_802CE588
	.4byte 0x00000068
	.4byte "@etb_80008318"
.endobj "@eti_8000B02C"

# 0x802CE588..0x802CE5F0 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x802CE588 | size: 0x68
.fn fn_802CE588, global
/* 802CE588 002C4308  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CE58C 002C430C  7C 08 02 A6 */	mflr r0
/* 802CE590 002C4310  3C A0 80 41 */	lis r5, lbl_804103AC@ha
/* 802CE594 002C4314  3C 60 80 53 */	lis r3, lbl_80532698@ha
/* 802CE598 002C4318  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CE59C 002C431C  38 A5 03 AC */	addi r5, r5, lbl_804103AC@l
/* 802CE5A0 002C4320  3C 80 80 41 */	lis r4, lbl_804103C0@ha
/* 802CE5A4 002C4324  38 C0 00 01 */	li r6, 0x1
/* 802CE5A8 002C4328  90 A1 00 08 */	stw r5, 0x8(r1)
/* 802CE5AC 002C432C  3C A0 80 53 */	lis r5, lbl_80532730@ha
/* 802CE5B0 002C4330  38 00 00 00 */	li r0, 0x0
/* 802CE5B4 002C4334  38 63 26 98 */	addi r3, r3, lbl_80532698@l
/* 802CE5B8 002C4338  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802CE5BC 002C433C  38 84 03 C0 */	addi r4, r4, lbl_804103C0@l
/* 802CE5C0 002C4340  38 A5 27 30 */	addi r5, r5, lbl_80532730@l
/* 802CE5C4 002C4344  38 C0 00 20 */	li r6, 0x20
/* 802CE5C8 002C4348  90 01 00 10 */	stw r0, 0x10(r1)
/* 802CE5CC 002C434C  38 E0 00 00 */	li r7, 0x0
/* 802CE5D0 002C4350  39 00 00 00 */	li r8, 0x0
/* 802CE5D4 002C4354  39 20 00 00 */	li r9, 0x0
/* 802CE5D8 002C4358  39 40 00 00 */	li r10, 0x0
/* 802CE5DC 002C435C  4B FA E2 2D */	bl fn_8027C808
/* 802CE5E0 002C4360  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CE5E4 002C4364  7C 08 03 A6 */	mtlr r0
/* 802CE5E8 002C4368  38 21 00 20 */	addi r1, r1, 0x20
/* 802CE5EC 002C436C  4E 80 00 20 */	blr
.endfn fn_802CE588

# 0x80406650..0x80406654 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802CE588
