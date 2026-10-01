.include "macros.inc"
.file "auto_fn_802CE824_text"

# 0x80008338..0x80008340 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008338 | size: 0x8
.obj "@etb_80008338", local
.hidden "@etb_80008338"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80008338"

# 0x8000B05C..0x8000B068 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B05C | size: 0xC
.obj "@eti_8000B05C", local
.hidden "@eti_8000B05C"
	.4byte fn_802CE824
	.4byte 0x00000104
	.4byte "@etb_80008338"
.endobj "@eti_8000B05C"

# 0x802CE824..0x802CE928 | size: 0x104
.text
.balign 4

# .text:0x0 | 0x802CE824 | size: 0x104
.fn fn_802CE824, global
/* 802CE824 002C45A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CE828 002C45A8  7C 08 02 A6 */	mflr r0
/* 802CE82C 002C45AC  3D 00 80 53 */	lis r8, lbl_80532448@ha
/* 802CE830 002C45B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CE834 002C45B4  39 08 24 48 */	addi r8, r8, lbl_80532448@l
/* 802CE838 002C45B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CE83C 002C45BC  7C BF 2B 78 */	mr r31, r5
/* 802CE840 002C45C0  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 802CE844 002C45C4  80 C8 00 0C */	lwz r6, 0xc(r8)
/* 802CE848 002C45C8  7C C0 3A 78 */	xor r0, r6, r7
/* 802CE84C 002C45CC  7C 00 00 34 */	cntlzw r0, r0
/* 802CE850 002C45D0  7C C0 00 30 */	slw r0, r6, r0
/* 802CE854 002C45D4  54 00 0F FE */	srwi r0, r0, 31
/* 802CE858 002C45D8  7C 00 07 75 */	extsb. r0, r0
/* 802CE85C 002C45DC  41 82 00 20 */	beq .L_802CE87C
/* 802CE860 002C45E0  3C C0 80 41 */	lis r6, lbl_804103D0@ha
/* 802CE864 002C45E4  38 C6 03 D0 */	addi r6, r6, lbl_804103D0@l
/* 802CE868 002C45E8  90 C7 00 00 */	stw r6, 0x0(r7)
/* 802CE86C 002C45EC  7C CC 42 E6 */	mftb r6, 268
/* 802CE870 002C45F0  38 07 00 0C */	addi r0, r7, 0xc
/* 802CE874 002C45F4  90 C7 00 04 */	stw r6, 0x4(r7)
/* 802CE878 002C45F8  90 08 00 04 */	stw r0, 0x4(r8)
.L_802CE87C:
/* 802CE87C 002C45FC  80 C5 00 38 */	lwz r6, 0x38(r5)
/* 802CE880 002C4600  38 06 00 01 */	addi r0, r6, 0x1
/* 802CE884 002C4604  90 05 00 38 */	stw r0, 0x38(r5)
/* 802CE888 002C4608  7F E5 FB 78 */	mr r5, r31
/* 802CE88C 002C460C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802CE890 002C4610  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CE894 002C4614  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802CE898 002C4618  7D 89 03 A6 */	mtctr r12
/* 802CE89C 002C461C  4E 80 04 21 */	bctrl
/* 802CE8A0 002C4620  54 65 46 3E */	srwi r5, r3, 24
/* 802CE8A4 002C4624  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 802CE8A8 002C4628  7C A0 07 75 */	extsb. r0, r5
/* 802CE8AC 002C462C  38 03 FF FF */	subi r0, r3, 0x1
/* 802CE8B0 002C4630  90 1F 00 38 */	stw r0, 0x38(r31)
/* 802CE8B4 002C4634  41 82 00 14 */	beq .L_802CE8C8
/* 802CE8B8 002C4638  54 00 10 3A */	slwi r0, r0, 2
/* 802CE8BC 002C463C  38 80 00 00 */	li r4, 0x0
/* 802CE8C0 002C4640  7C 7F 02 14 */	add r3, r31, r0
/* 802CE8C4 002C4644  90 83 00 18 */	stw r4, 0x18(r3)
.L_802CE8C8:
/* 802CE8C8 002C4648  3C C0 80 53 */	lis r6, lbl_80532448@ha
/* 802CE8CC 002C464C  38 C6 24 48 */	addi r6, r6, lbl_80532448@l
/* 802CE8D0 002C4650  80 86 00 04 */	lwz r4, 0x4(r6)
/* 802CE8D4 002C4654  80 66 00 0C */	lwz r3, 0xc(r6)
/* 802CE8D8 002C4658  7C 60 22 78 */	xor r0, r3, r4
/* 802CE8DC 002C465C  7C 00 00 34 */	cntlzw r0, r0
/* 802CE8E0 002C4660  7C 60 00 30 */	slw r0, r3, r0
/* 802CE8E4 002C4664  54 00 0F FE */	srwi r0, r0, 31
/* 802CE8E8 002C4668  7C 00 07 75 */	extsb. r0, r0
/* 802CE8EC 002C466C  41 82 00 24 */	beq .L_802CE910
/* 802CE8F0 002C4670  3C 60 80 41 */	lis r3, lbl_804103D0@ha
/* 802CE8F4 002C4674  38 63 03 D0 */	addi r3, r3, lbl_804103D0@l
/* 802CE8F8 002C4678  38 03 00 0C */	addi r0, r3, 0xc
/* 802CE8FC 002C467C  90 04 00 00 */	stw r0, 0x0(r4)
/* 802CE900 002C4680  7C 6C 42 E6 */	mftb r3, 268
/* 802CE904 002C4684  38 04 00 0C */	addi r0, r4, 0xc
/* 802CE908 002C4688  90 64 00 04 */	stw r3, 0x4(r4)
/* 802CE90C 002C468C  90 06 00 04 */	stw r0, 0x4(r6)
.L_802CE910:
/* 802CE910 002C4690  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CE914 002C4694  54 A3 C0 0E */	slwi r3, r5, 24
/* 802CE918 002C4698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CE91C 002C469C  7C 08 03 A6 */	mtlr r0
/* 802CE920 002C46A0  38 21 00 10 */	addi r1, r1, 0x10
/* 802CE924 002C46A4  4E 80 00 20 */	blr
.endfn fn_802CE824
