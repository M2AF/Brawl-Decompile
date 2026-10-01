.include "macros.inc"
.file "auto_fn_802B7998_text"

# 0x800075FC..0x80007604 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800075FC | size: 0x8
.obj "@etb_800075FC", local
.hidden "@etb_800075FC"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800075FC"

# 0x8000A5AC..0x8000A5B8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A5AC | size: 0xC
.obj "@eti_8000A5AC", local
.hidden "@eti_8000A5AC"
	.4byte fn_802B7998
	.4byte 0x00000068
	.4byte "@etb_800075FC"
.endobj "@eti_8000A5AC"

# 0x802B7998..0x802B7A00 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x802B7998 | size: 0x68
.fn fn_802B7998, global
/* 802B7998 002AD718  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B799C 002AD71C  7C 08 02 A6 */	mflr r0
/* 802B79A0 002AD720  3C A0 80 41 */	lis r5, lbl_8040FE68@ha
/* 802B79A4 002AD724  3C 60 80 53 */	lis r3, lbl_80532588@ha
/* 802B79A8 002AD728  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B79AC 002AD72C  38 A5 FE 68 */	addi r5, r5, lbl_8040FE68@l
/* 802B79B0 002AD730  3C 80 80 41 */	lis r4, lbl_8040FEA4@ha
/* 802B79B4 002AD734  38 C0 00 03 */	li r6, 0x3
/* 802B79B8 002AD738  90 A1 00 08 */	stw r5, 0x8(r1)
/* 802B79BC 002AD73C  3C A0 80 53 */	lis r5, lbl_80532560@ha
/* 802B79C0 002AD740  38 00 00 00 */	li r0, 0x0
/* 802B79C4 002AD744  38 63 25 88 */	addi r3, r3, lbl_80532588@l
/* 802B79C8 002AD748  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802B79CC 002AD74C  38 84 FE A4 */	addi r4, r4, lbl_8040FEA4@l
/* 802B79D0 002AD750  38 A5 25 60 */	addi r5, r5, lbl_80532560@l
/* 802B79D4 002AD754  38 C0 00 24 */	li r6, 0x24
/* 802B79D8 002AD758  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B79DC 002AD75C  38 E0 00 00 */	li r7, 0x0
/* 802B79E0 002AD760  39 00 00 00 */	li r8, 0x0
/* 802B79E4 002AD764  39 20 00 00 */	li r9, 0x0
/* 802B79E8 002AD768  39 40 00 00 */	li r10, 0x0
/* 802B79EC 002AD76C  4B FC 4E 1D */	bl fn_8027C808
/* 802B79F0 002AD770  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B79F4 002AD774  7C 08 03 A6 */	mtlr r0
/* 802B79F8 002AD778  38 21 00 20 */	addi r1, r1, 0x20
/* 802B79FC 002AD77C  4E 80 00 20 */	blr
.endfn fn_802B7998

# 0x8040662C..0x80406630 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802B7998
