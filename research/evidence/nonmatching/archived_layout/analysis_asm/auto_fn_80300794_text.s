.include "macros.inc"
.file "auto_fn_80300794_text"

# 0x80008754..0x8000875C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008754 | size: 0x8
.obj "@etb_80008754", local
.hidden "@etb_80008754"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008754"

# 0x8000B650..0x8000B65C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B650 | size: 0xC
.obj "@eti_8000B650", local
.hidden "@eti_8000B650"
	.4byte fn_80300794
	.4byte 0x00000068
	.4byte "@etb_80008754"
.endobj "@eti_8000B650"

# 0x80300794..0x803007FC | size: 0x68
.text
.balign 4

# .text:0x0 | 0x80300794 | size: 0x68
.fn fn_80300794, global
/* 80300794 002F6514  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80300798 002F6518  7C 08 02 A6 */	mflr r0
/* 8030079C 002F651C  3C A0 80 41 */	lis r5, lbl_804141C4@ha
/* 803007A0 002F6520  3C 60 80 53 */	lis r3, lbl_80533288@ha
/* 803007A4 002F6524  90 01 00 24 */	stw r0, 0x24(r1)
/* 803007A8 002F6528  38 A5 41 C4 */	addi r5, r5, lbl_804141C4@l
/* 803007AC 002F652C  3C 80 80 41 */	lis r4, lbl_804141D8@ha
/* 803007B0 002F6530  38 C0 00 01 */	li r6, 0x1
/* 803007B4 002F6534  90 A1 00 08 */	stw r5, 0x8(r1)
/* 803007B8 002F6538  3C A0 80 53 */	lis r5, lbl_80532588@ha
/* 803007BC 002F653C  38 00 00 00 */	li r0, 0x0
/* 803007C0 002F6540  38 63 32 88 */	addi r3, r3, lbl_80533288@l
/* 803007C4 002F6544  90 C1 00 0C */	stw r6, 0xc(r1)
/* 803007C8 002F6548  38 84 41 D8 */	addi r4, r4, lbl_804141D8@l
/* 803007CC 002F654C  38 A5 25 88 */	addi r5, r5, lbl_80532588@l
/* 803007D0 002F6550  38 C0 00 30 */	li r6, 0x30
/* 803007D4 002F6554  90 01 00 10 */	stw r0, 0x10(r1)
/* 803007D8 002F6558  38 E0 00 00 */	li r7, 0x0
/* 803007DC 002F655C  39 00 00 00 */	li r8, 0x0
/* 803007E0 002F6560  39 20 00 00 */	li r9, 0x0
/* 803007E4 002F6564  39 40 00 00 */	li r10, 0x0
/* 803007E8 002F6568  4B F7 C0 21 */	bl fn_8027C808
/* 803007EC 002F656C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803007F0 002F6570  7C 08 03 A6 */	mtlr r0
/* 803007F4 002F6574  38 21 00 20 */	addi r1, r1, 0x20
/* 803007F8 002F6578  4E 80 00 20 */	blr
.endfn fn_80300794

# 0x8040674C..0x80406750 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80300794
