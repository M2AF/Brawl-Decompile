.include "macros.inc"
.file "auto_fn_802CE534_text"

# 0x80008310..0x80008318 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008310 | size: 0x8
.obj "@etb_80008310", local
.hidden "@etb_80008310"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008310"

# 0x8000B020..0x8000B02C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B020 | size: 0xC
.obj "@eti_8000B020", local
.hidden "@eti_8000B020"
	.4byte fn_802CE534
	.4byte 0x00000054
	.4byte "@etb_80008310"
.endobj "@eti_8000B020"

# 0x802CE534..0x802CE588 | size: 0x54
.text
.balign 4

# .text:0x0 | 0x802CE534 | size: 0x54
.fn fn_802CE534, global
/* 802CE534 002C42B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CE538 002C42B8  7C 08 02 A6 */	mflr r0
/* 802CE53C 002C42BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CE540 002C42C0  4B FF F3 D5 */	bl fn_802CD914
/* 802CE544 002C42C4  3D 00 80 41 */	lis r8, lbl_8041037C@ha
/* 802CE548 002C42C8  3C E0 80 53 */	lis r7, lbl_80532688@ha
/* 802CE54C 002C42CC  39 08 03 7C */	addi r8, r8, lbl_8041037C@l
/* 802CE550 002C42D0  3C C0 80 2D */	lis r6, fn_802CD884@ha
/* 802CE554 002C42D4  3C 80 80 2D */	lis r4, fn_802CD8A4@ha
/* 802CE558 002C42D8  38 A7 26 88 */	addi r5, r7, lbl_80532688@l
/* 802CE55C 002C42DC  38 08 00 14 */	addi r0, r8, 0x14
/* 802CE560 002C42E0  38 C6 D8 84 */	addi r6, r6, fn_802CD884@l
/* 802CE564 002C42E4  38 84 D8 A4 */	addi r4, r4, fn_802CD8A4@l
/* 802CE568 002C42E8  90 07 26 88 */	stw r0, lbl_80532688@l(r7)
/* 802CE56C 002C42EC  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802CE570 002C42F0  90 85 00 08 */	stw r4, 0x8(r5)
/* 802CE574 002C42F4  90 65 00 0C */	stw r3, 0xc(r5)
/* 802CE578 002C42F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CE57C 002C42FC  7C 08 03 A6 */	mtlr r0
/* 802CE580 002C4300  38 21 00 10 */	addi r1, r1, 0x10
/* 802CE584 002C4304  4E 80 00 20 */	blr
.endfn fn_802CE534

# 0x8040664C..0x80406650 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802CE534
