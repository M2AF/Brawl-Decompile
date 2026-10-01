.include "macros.inc"
.file "auto_fn_8032F514_text"

# 0x80009224..0x8000922C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009224 | size: 0x8
.obj "@etb_80009224", local
.hidden "@etb_80009224"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80009224"

# 0x8000C0D0..0x8000C0DC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C0D0 | size: 0xC
.obj "@eti_8000C0D0", local
.hidden "@eti_8000C0D0"
	.4byte fn_8032F514
	.4byte 0x00000070
	.4byte "@etb_80009224"
.endobj "@eti_8000C0D0"

# 0x8032F514..0x8032F584 | size: 0x70
.text
.balign 4

# .text:0x0 | 0x8032F514 | size: 0x70
.fn fn_8032F514, global
/* 8032F514 00325294  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032F518 00325298  7C 08 02 A6 */	mflr r0
/* 8032F51C 0032529C  3C A0 80 49 */	lis r5, lbl_80488E18@ha
/* 8032F520 003252A0  3C 60 80 53 */	lis r3, lbl_805335E8@ha
/* 8032F524 003252A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032F528 003252A8  3C 80 80 41 */	lis r4, lbl_80415258@ha
/* 8032F52C 003252AC  3D 20 80 41 */	lis r9, lbl_80415214@ha
/* 8032F530 003252B0  38 A5 8E 18 */	addi r5, r5, lbl_80488E18@l
/* 8032F534 003252B4  80 CD AC 20 */	lwz r6, lbl_8059F040@sda21(r0)
/* 8032F538 003252B8  38 00 00 05 */	li r0, 0x5
/* 8032F53C 003252BC  38 63 35 E8 */	addi r3, r3, lbl_805335E8@l
/* 8032F540 003252C0  38 84 52 58 */	addi r4, r4, lbl_80415258@l
/* 8032F544 003252C4  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8032F548 003252C8  39 29 52 14 */	addi r9, r9, lbl_80415214@l
/* 8032F54C 003252CC  38 E0 00 00 */	li r7, 0x0
/* 8032F550 003252D0  39 00 00 00 */	li r8, 0x0
/* 8032F554 003252D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032F558 003252D8  38 00 00 00 */	li r0, 0x0
/* 8032F55C 003252DC  39 40 00 01 */	li r10, 0x1
/* 8032F560 003252E0  90 C5 00 08 */	stw r6, 0x8(r5)
/* 8032F564 003252E4  38 A0 00 00 */	li r5, 0x0
/* 8032F568 003252E8  38 C0 00 1C */	li r6, 0x1c
/* 8032F56C 003252EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032F570 003252F0  4B F4 D2 99 */	bl fn_8027C808
/* 8032F574 003252F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032F578 003252F8  7C 08 03 A6 */	mtlr r0
/* 8032F57C 003252FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8032F580 00325300  4E 80 00 20 */	blr
.endfn fn_8032F514

# 0x804067A0..0x804067A4 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032F514
