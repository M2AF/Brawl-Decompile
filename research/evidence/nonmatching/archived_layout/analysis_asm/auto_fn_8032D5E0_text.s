.include "macros.inc"
.file "auto_fn_8032D5E0_text"

# 0x80009140..0x80009148 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009140 | size: 0x8
.obj "@etb_80009140", local
.hidden "@etb_80009140"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80009140"

# 0x8000BFB0..0x8000BFBC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BFB0 | size: 0xC
.obj "@eti_8000BFB0", local
.hidden "@eti_8000BFB0"
	.4byte fn_8032D5E0
	.4byte 0x00000068
	.4byte "@etb_80009140"
.endobj "@eti_8000BFB0"

# 0x8032D5E0..0x8032D648 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x8032D5E0 | size: 0x68
.fn fn_8032D5E0, global
/* 8032D5E0 00323360  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032D5E4 00323364  7C 08 02 A6 */	mflr r0
/* 8032D5E8 00323368  3C A0 80 41 */	lis r5, lbl_80414898@ha
/* 8032D5EC 0032336C  3C 60 80 53 */	lis r3, lbl_805333A8@ha
/* 8032D5F0 00323370  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032D5F4 00323374  38 A5 48 98 */	addi r5, r5, lbl_80414898@l
/* 8032D5F8 00323378  3C 80 80 41 */	lis r4, lbl_804148E8@ha
/* 8032D5FC 0032337C  38 C0 00 04 */	li r6, 0x4
/* 8032D600 00323380  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8032D604 00323384  3C A0 80 53 */	lis r5, lbl_80532340@ha
/* 8032D608 00323388  38 00 00 00 */	li r0, 0x0
/* 8032D60C 0032338C  38 63 33 A8 */	addi r3, r3, lbl_805333A8@l
/* 8032D610 00323390  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8032D614 00323394  38 84 48 E8 */	addi r4, r4, lbl_804148E8@l
/* 8032D618 00323398  38 A5 23 40 */	addi r5, r5, lbl_80532340@l
/* 8032D61C 0032339C  38 C0 00 1C */	li r6, 0x1c
/* 8032D620 003233A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032D624 003233A4  38 E0 00 00 */	li r7, 0x0
/* 8032D628 003233A8  39 00 00 00 */	li r8, 0x0
/* 8032D62C 003233AC  39 20 00 00 */	li r9, 0x0
/* 8032D630 003233B0  39 40 00 00 */	li r10, 0x0
/* 8032D634 003233B4  4B F4 F1 D5 */	bl fn_8027C808
/* 8032D638 003233B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032D63C 003233BC  7C 08 03 A6 */	mtlr r0
/* 8032D640 003233C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8032D644 003233C4  4E 80 00 20 */	blr
.endfn fn_8032D5E0

# 0x80406774..0x80406778 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032D5E0
