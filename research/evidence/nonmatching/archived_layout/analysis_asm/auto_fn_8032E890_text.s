.include "macros.inc"
.file "auto_fn_8032E890_text"

# 0x80009190..0x80009198 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009190 | size: 0x8
.obj "@etb_80009190", local
.hidden "@etb_80009190"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80009190"

# 0x8000C028..0x8000C034 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C028 | size: 0xC
.obj "@eti_8000C028", local
.hidden "@eti_8000C028"
	.4byte fn_8032E890
	.4byte 0x0000005C
	.4byte "@etb_80009190"
.endobj "@eti_8000C028"

# 0x8032E890..0x8032E8EC | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x8032E890 | size: 0x5C
.fn fn_8032E890, global
/* 8032E890 00324610  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032E894 00324614  7C 08 02 A6 */	mflr r0
/* 8032E898 00324618  3C 60 80 53 */	lis r3, lbl_805334D8@ha
/* 8032E89C 0032461C  3C 80 80 41 */	lis r4, lbl_80414D88@ha
/* 8032E8A0 00324620  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032E8A4 00324624  38 00 00 00 */	li r0, 0x0
/* 8032E8A8 00324628  3C A0 80 53 */	lis r5, lbl_80532340@ha
/* 8032E8AC 0032462C  38 63 34 D8 */	addi r3, r3, lbl_805334D8@l
/* 8032E8B0 00324630  90 01 00 08 */	stw r0, 0x8(r1)
/* 8032E8B4 00324634  38 84 4D 88 */	addi r4, r4, lbl_80414D88@l
/* 8032E8B8 00324638  38 A5 23 40 */	addi r5, r5, lbl_80532340@l
/* 8032E8BC 0032463C  38 C0 00 08 */	li r6, 0x8
/* 8032E8C0 00324640  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032E8C4 00324644  38 E0 00 00 */	li r7, 0x0
/* 8032E8C8 00324648  39 00 00 00 */	li r8, 0x0
/* 8032E8CC 0032464C  39 20 00 00 */	li r9, 0x0
/* 8032E8D0 00324650  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032E8D4 00324654  39 40 00 00 */	li r10, 0x0
/* 8032E8D8 00324658  4B F4 DF 31 */	bl fn_8027C808
/* 8032E8DC 0032465C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032E8E0 00324660  7C 08 03 A6 */	mtlr r0
/* 8032E8E4 00324664  38 21 00 20 */	addi r1, r1, 0x20
/* 8032E8E8 00324668  4E 80 00 20 */	blr
.endfn fn_8032E890

# 0x80406788..0x8040678C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032E890
