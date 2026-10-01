.include "macros.inc"
.file "auto_fn_8032D648_text"

# 0x80009148..0x80009150 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009148 | size: 0x8
.obj "@etb_80009148", local
.hidden "@etb_80009148"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80009148"

# 0x8000BFBC..0x8000BFC8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BFBC | size: 0xC
.obj "@eti_8000BFBC", local
.hidden "@eti_8000BFBC"
	.4byte fn_8032D648
	.4byte 0x000000B8
	.4byte "@etb_80009148"
.endobj "@eti_8000BFBC"

# 0x8032D648..0x8032D700 | size: 0xB8
.text
.balign 4

# .text:0x0 | 0x8032D648 | size: 0xB8
.fn fn_8032D648, global
/* 8032D648 003233C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032D64C 003233CC  7C 08 02 A6 */	mflr r0
/* 8032D650 003233D0  3C 80 80 41 */	lis r4, lbl_80414900@ha
/* 8032D654 003233D4  3C 60 80 53 */	lis r3, lbl_805333D0@ha
/* 8032D658 003233D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032D65C 003233DC  38 84 49 00 */	addi r4, r4, lbl_80414900@l
/* 8032D660 003233E0  38 00 00 01 */	li r0, 0x1
/* 8032D664 003233E4  38 63 33 D0 */	addi r3, r3, lbl_805333D0@l
/* 8032D668 003233E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8032D66C 003233EC  3F E0 80 41 */	lis r31, lbl_80414998@ha
/* 8032D670 003233F0  38 A0 00 00 */	li r5, 0x0
/* 8032D674 003233F4  38 C0 00 08 */	li r6, 0x8
/* 8032D678 003233F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8032D67C 003233FC  3B C0 00 00 */	li r30, 0x0
/* 8032D680 00323400  38 E0 00 00 */	li r7, 0x0
/* 8032D684 00323404  39 00 00 00 */	li r8, 0x0
/* 8032D688 00323408  90 81 00 08 */	stw r4, 0x8(r1)
/* 8032D68C 0032340C  38 9F 49 98 */	addi r4, r31, lbl_80414998@l
/* 8032D690 00323410  39 20 00 00 */	li r9, 0x0
/* 8032D694 00323414  39 40 00 00 */	li r10, 0x0
/* 8032D698 00323418  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032D69C 0032341C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8032D6A0 00323420  4B F4 F1 69 */	bl fn_8027C808
/* 8032D6A4 00323424  3C A0 80 41 */	lis r5, lbl_80414948@ha
/* 8032D6A8 00323428  38 9F 49 98 */	addi r4, r31, lbl_80414998@l
/* 8032D6AC 0032342C  38 A5 49 48 */	addi r5, r5, lbl_80414948@l
/* 8032D6B0 00323430  3C 60 80 53 */	lis r3, lbl_805333F4@ha
/* 8032D6B4 00323434  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8032D6B8 00323438  38 00 00 04 */	li r0, 0x4
/* 8032D6BC 0032343C  38 63 33 F4 */	addi r3, r3, lbl_805333F4@l
/* 8032D6C0 00323440  38 84 00 15 */	addi r4, r4, 0x15
/* 8032D6C4 00323444  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032D6C8 00323448  38 A0 00 00 */	li r5, 0x0
/* 8032D6CC 0032344C  38 C0 00 18 */	li r6, 0x18
/* 8032D6D0 00323450  38 E0 00 00 */	li r7, 0x0
/* 8032D6D4 00323454  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8032D6D8 00323458  39 00 00 00 */	li r8, 0x0
/* 8032D6DC 0032345C  39 20 00 00 */	li r9, 0x0
/* 8032D6E0 00323460  39 40 00 00 */	li r10, 0x0
/* 8032D6E4 00323464  4B F4 F1 25 */	bl fn_8027C808
/* 8032D6E8 00323468  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032D6EC 0032346C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8032D6F0 00323470  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8032D6F4 00323474  7C 08 03 A6 */	mtlr r0
/* 8032D6F8 00323478  38 21 00 20 */	addi r1, r1, 0x20
/* 8032D6FC 0032347C  4E 80 00 20 */	blr
.endfn fn_8032D648

# 0x80406778..0x8040677C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032D648
