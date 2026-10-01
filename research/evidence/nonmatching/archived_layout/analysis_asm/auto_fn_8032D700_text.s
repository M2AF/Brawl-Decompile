.include "macros.inc"
.file "auto_fn_8032D700_text"

# 0x80009150..0x80009158 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009150 | size: 0x8
.obj "@etb_80009150", local
.hidden "@etb_80009150"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80009150"

# 0x8000BFC8..0x8000BFD4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BFC8 | size: 0xC
.obj "@eti_8000BFC8", local
.hidden "@eti_8000BFC8"
	.4byte fn_8032D700
	.4byte 0x00000064
	.4byte "@etb_80009150"
.endobj "@eti_8000BFC8"

# 0x8032D700..0x8032D764 | size: 0x64
.text
.balign 4

# .text:0x0 | 0x8032D700 | size: 0x64
.fn fn_8032D700, global
/* 8032D700 00323480  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032D704 00323484  7C 08 02 A6 */	mflr r0
/* 8032D708 00323488  3C A0 80 41 */	lis r5, lbl_804149F0@ha
/* 8032D70C 0032348C  3C 60 80 53 */	lis r3, lbl_80533418@ha
/* 8032D710 00323490  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032D714 00323494  38 A5 49 F0 */	addi r5, r5, lbl_804149F0@l
/* 8032D718 00323498  3C 80 80 41 */	lis r4, lbl_80414A54@ha
/* 8032D71C 0032349C  38 00 00 00 */	li r0, 0x0
/* 8032D720 003234A0  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8032D724 003234A4  38 A0 00 05 */	li r5, 0x5
/* 8032D728 003234A8  38 63 34 18 */	addi r3, r3, lbl_80533418@l
/* 8032D72C 003234AC  38 84 4A 54 */	addi r4, r4, lbl_80414A54@l
/* 8032D730 003234B0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8032D734 003234B4  38 A0 00 00 */	li r5, 0x0
/* 8032D738 003234B8  38 C0 00 28 */	li r6, 0x28
/* 8032D73C 003234BC  38 E0 00 00 */	li r7, 0x0
/* 8032D740 003234C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032D744 003234C4  39 00 00 00 */	li r8, 0x0
/* 8032D748 003234C8  39 20 00 00 */	li r9, 0x0
/* 8032D74C 003234CC  39 40 00 00 */	li r10, 0x0
/* 8032D750 003234D0  4B F4 F0 B9 */	bl fn_8027C808
/* 8032D754 003234D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032D758 003234D8  7C 08 03 A6 */	mtlr r0
/* 8032D75C 003234DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8032D760 003234E0  4E 80 00 20 */	blr
.endfn fn_8032D700

# 0x8040677C..0x80406780 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032D700
