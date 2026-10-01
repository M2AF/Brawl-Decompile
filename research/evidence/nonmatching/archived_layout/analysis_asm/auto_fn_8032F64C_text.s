.include "macros.inc"
.file "auto_fn_8032F64C_text"

# 0x8000923C..0x80009244 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000923C | size: 0x8
.obj "@etb_8000923C", local
.hidden "@etb_8000923C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000923C"

# 0x8000C0F4..0x8000C100 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C0F4 | size: 0xC
.obj "@eti_8000C0F4", local
.hidden "@eti_8000C0F4"
	.4byte fn_8032F64C
	.4byte 0x00000064
	.4byte "@etb_8000923C"
.endobj "@eti_8000C0F4"

# 0x8032F64C..0x8032F6B0 | size: 0x64
.text
.balign 4

# .text:0x0 | 0x8032F64C | size: 0x64
.fn fn_8032F64C, global
/* 8032F64C 003253CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032F650 003253D0  7C 08 02 A6 */	mflr r0
/* 8032F654 003253D4  3C A0 80 41 */	lis r5, lbl_80415318@ha
/* 8032F658 003253D8  3C 60 80 53 */	lis r3, lbl_80533660@ha
/* 8032F65C 003253DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032F660 003253E0  38 A5 53 18 */	addi r5, r5, lbl_80415318@l
/* 8032F664 003253E4  3C 80 80 41 */	lis r4, lbl_80415340@ha
/* 8032F668 003253E8  38 00 00 00 */	li r0, 0x0
/* 8032F66C 003253EC  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8032F670 003253F0  38 A0 00 02 */	li r5, 0x2
/* 8032F674 003253F4  38 63 36 60 */	addi r3, r3, lbl_80533660@l
/* 8032F678 003253F8  38 84 53 40 */	addi r4, r4, lbl_80415340@l
/* 8032F67C 003253FC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8032F680 00325400  38 A0 00 00 */	li r5, 0x0
/* 8032F684 00325404  38 C0 00 10 */	li r6, 0x10
/* 8032F688 00325408  38 E0 00 00 */	li r7, 0x0
/* 8032F68C 0032540C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032F690 00325410  39 00 00 00 */	li r8, 0x0
/* 8032F694 00325414  39 20 00 00 */	li r9, 0x0
/* 8032F698 00325418  39 40 00 00 */	li r10, 0x0
/* 8032F69C 0032541C  4B F4 D1 6D */	bl fn_8027C808
/* 8032F6A0 00325420  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032F6A4 00325424  7C 08 03 A6 */	mtlr r0
/* 8032F6A8 00325428  38 21 00 20 */	addi r1, r1, 0x20
/* 8032F6AC 0032542C  4E 80 00 20 */	blr
.endfn fn_8032F64C

# 0x804067AC..0x804067B0 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032F64C
