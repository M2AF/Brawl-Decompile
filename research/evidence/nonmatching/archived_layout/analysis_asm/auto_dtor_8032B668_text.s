.include "macros.inc"
.file "auto_dtor_8032B668_text"

# 0x800090D8..0x800090E0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800090D8 | size: 0x8
.obj "@etb_800090D8", local
.hidden "@etb_800090D8"
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
.endobj "@etb_800090D8"

# 0x8000BF2C..0x8000BF38 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BF2C | size: 0xC
.obj "@eti_8000BF2C", local
.hidden "@eti_8000BF2C"
	.4byte dtor_8032B668
	.4byte 0x00000094
	.4byte "@etb_800090D8"
.endobj "@eti_8000BF2C"

# 0x8032B668..0x8032B6FC | size: 0x94
.text
.balign 4

# .text:0x0 | 0x8032B668 | size: 0x94
.fn dtor_8032B668, global
/* 8032B668 003213E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032B66C 003213EC  7C 08 02 A6 */	mflr r0
/* 8032B670 003213F0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8032B674 003213F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032B678 003213F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032B67C 003213FC  7C 9F 23 78 */	mr r31, r4
/* 8032B680 00321400  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8032B684 00321404  7C 7E 1B 78 */	mr r30, r3
/* 8032B688 00321408  41 82 00 58 */	beq .L_8032B6E0
/* 8032B68C 0032140C  41 82 00 2C */	beq .L_8032B6B8
/* 8032B690 00321410  80 03 00 08 */	lwz r0, 0x8(r3)
/* 8032B694 00321414  54 00 00 01 */	clrrwi. r0, r0, 31
/* 8032B698 00321418  40 82 00 20 */	bne .L_8032B6B8
/* 8032B69C 0032141C  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 8032B6A0 00321420  38 C0 00 15 */	li r6, 0x15
/* 8032B6A4 00321424  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 8032B6A8 00321428  54 00 00 BE */	clrlwi r0, r0, 2
/* 8032B6AC 0032142C  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8032B6B0 00321430  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8032B6B4 00321434  4B F5 34 09 */	bl fn_8027EABC
.L_8032B6B8:
/* 8032B6B8 00321438  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8032B6BC 0032143C  40 81 00 24 */	ble .L_8032B6E0
/* 8032B6C0 00321440  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 8032B6C4 00321444  7F C4 F3 78 */	mr r4, r30
/* 8032B6C8 00321448  38 A0 03 0C */	li r5, 0x30c
/* 8032B6CC 0032144C  38 C0 00 15 */	li r6, 0x15
/* 8032B6D0 00321450  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8032B6D4 00321454  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8032B6D8 00321458  7D 89 03 A6 */	mtctr r12
/* 8032B6DC 0032145C  4E 80 04 21 */	bctrl
.L_8032B6E0:
/* 8032B6E0 00321460  7F C3 F3 78 */	mr r3, r30
/* 8032B6E4 00321464  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032B6E8 00321468  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8032B6EC 0032146C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032B6F0 00321470  7C 08 03 A6 */	mtlr r0
/* 8032B6F4 00321474  38 21 00 10 */	addi r1, r1, 0x10
/* 8032B6F8 00321478  4E 80 00 20 */	blr
.endfn dtor_8032B668
