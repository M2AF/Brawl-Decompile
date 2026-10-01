.include "macros.inc"
.file "auto_fn_8032D4B0_text"

# 0x80009130..0x80009138 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009130 | size: 0x8
.obj "@etb_80009130", local
.hidden "@etb_80009130"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80009130"

# 0x8000BF98..0x8000BFA4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BF98 | size: 0xC
.obj "@eti_8000BF98", local
.hidden "@eti_8000BF98"
	.4byte fn_8032D4B0
	.4byte 0x00000074
	.4byte "@etb_80009130"
.endobj "@eti_8000BF98"

# 0x8032D4B0..0x8032D524 | size: 0x74
.text
.balign 4

# .text:0x0 | 0x8032D4B0 | size: 0x74
.fn fn_8032D4B0, global
/* 8032D4B0 00323230  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032D4B4 00323234  7C 08 02 A6 */	mflr r0
/* 8032D4B8 00323238  3C A0 80 49 */	lis r5, lbl_80488DD8@ha
/* 8032D4BC 0032323C  3C C0 80 41 */	lis r6, lbl_80414798@ha
/* 8032D4C0 00323240  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032D4C4 00323244  3C 60 80 53 */	lis r3, lbl_80533338@ha
/* 8032D4C8 00323248  3C 80 80 41 */	lis r4, lbl_804147A8@ha
/* 8032D4CC 0032324C  3D 20 80 41 */	lis r9, lbl_80414754@ha
/* 8032D4D0 00323250  80 ED AC 18 */	lwz r7, lbl_8059F038@sda21(r0)
/* 8032D4D4 00323254  38 A5 8D D8 */	addi r5, r5, lbl_80488DD8@l
/* 8032D4D8 00323258  38 00 00 03 */	li r0, 0x3
/* 8032D4DC 0032325C  38 C6 47 98 */	addi r6, r6, lbl_80414798@l
/* 8032D4E0 00323260  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8032D4E4 00323264  38 63 33 38 */	addi r3, r3, lbl_80533338@l
/* 8032D4E8 00323268  38 84 47 A8 */	addi r4, r4, lbl_804147A8@l
/* 8032D4EC 0032326C  39 29 47 54 */	addi r9, r9, lbl_80414754@l
/* 8032D4F0 00323270  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032D4F4 00323274  39 00 00 00 */	li r8, 0x0
/* 8032D4F8 00323278  39 40 00 01 */	li r10, 0x1
/* 8032D4FC 0032327C  90 E5 00 30 */	stw r7, 0x30(r5)
/* 8032D500 00323280  38 A0 00 00 */	li r5, 0x0
/* 8032D504 00323284  38 E0 00 00 */	li r7, 0x0
/* 8032D508 00323288  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8032D50C 0032328C  38 C0 00 10 */	li r6, 0x10
/* 8032D510 00323290  4B F4 F2 F9 */	bl fn_8027C808
/* 8032D514 00323294  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032D518 00323298  7C 08 03 A6 */	mtlr r0
/* 8032D51C 0032329C  38 21 00 20 */	addi r1, r1, 0x20
/* 8032D520 003232A0  4E 80 00 20 */	blr
.endfn fn_8032D4B0

# 0x8040676C..0x80406770 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032D4B0
