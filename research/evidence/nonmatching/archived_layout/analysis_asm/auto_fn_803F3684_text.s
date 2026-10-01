.include "macros.inc"
.file "auto_fn_803F3684_text"

# 0x8000959C..0x800095A4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000959C | size: 0x8
.obj "@etb_8000959C", local
.hidden "@etb_8000959C"
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
.endobj "@etb_8000959C"

# 0x8000C5B0..0x8000C5BC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C5B0 | size: 0xC
.obj "@eti_8000C5B0", local
.hidden "@eti_8000C5B0"
	.4byte fn_803F3684
	.4byte 0x0000006C
	.4byte "@etb_8000959C"
.endobj "@eti_8000C5B0"

# 0x803F3684..0x803F36F0 | size: 0x6C
.text
.balign 4

# .text:0x0 | 0x803F3684 | size: 0x6C
.fn fn_803F3684, global
/* 803F3684 003E9404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F3688 003E9408  7C 08 02 A6 */	mflr r0
/* 803F368C 003E940C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F3690 003E9410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F3694 003E9414  3B E0 00 00 */	li r31, 0x0
/* 803F3698 003E9418  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803F369C 003E941C  3F C0 80 49 */	lis r30, __files@ha
/* 803F36A0 003E9420  3B DE 3E 60 */	addi r30, r30, __files@l
/* 803F36A4 003E9424  48 00 00 28 */	b .L_803F36CC
.L_803F36A8:
/* 803F36A8 003E9428  80 1E 00 04 */	lwz r0, 0x4(r30)
/* 803F36AC 003E942C  54 00 57 7F */	extrwi. r0, r0, 3, 7
/* 803F36B0 003E9430  41 82 00 18 */	beq .L_803F36C8
/* 803F36B4 003E9434  7F C3 F3 78 */	mr r3, r30
/* 803F36B8 003E9438  48 00 22 9D */	bl fn_803F5954
/* 803F36BC 003E943C  2C 03 00 00 */	cmpwi r3, 0x0
/* 803F36C0 003E9440  41 82 00 08 */	beq .L_803F36C8
/* 803F36C4 003E9444  3B E0 FF FF */	li r31, -0x1
.L_803F36C8:
/* 803F36C8 003E9448  83 DE 00 4C */	lwz r30, 0x4c(r30)
.L_803F36CC:
/* 803F36CC 003E944C  2C 1E 00 00 */	cmpwi r30, 0x0
/* 803F36D0 003E9450  40 82 FF D8 */	bne .L_803F36A8
/* 803F36D4 003E9454  7F E3 FB 78 */	mr r3, r31
/* 803F36D8 003E9458  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F36DC 003E945C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803F36E0 003E9460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F36E4 003E9464  7C 08 03 A6 */	mtlr r0
/* 803F36E8 003E9468  38 21 00 10 */	addi r1, r1, 0x10
/* 803F36EC 003E946C  4E 80 00 20 */	blr
.endfn fn_803F3684
