.include "macros.inc"
.file "auto_dtor_802A5860_text"

# 0x80006B20..0x80006B28 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006B20 | size: 0x8
.obj "@etb_80006B20", local
.hidden "@etb_80006B20"
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
.endobj "@etb_80006B20"

# 0x80009E68..0x80009E74 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009E68 | size: 0xC
.obj "@eti_80009E68", local
.hidden "@eti_80009E68"
	.4byte dtor_802A5860
	.4byte 0x000000C0
	.4byte "@etb_80006B20"
.endobj "@eti_80009E68"

# 0x802A5860..0x802A5920 | size: 0xC0
.text
.balign 4

# .text:0x0 | 0x802A5860 | size: 0xC0
.fn dtor_802A5860, global
/* 802A5860 0029B5E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A5864 0029B5E4  7C 08 02 A6 */	mflr r0
/* 802A5868 0029B5E8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A586C 0029B5EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A5870 0029B5F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A5874 0029B5F4  7C 9F 23 78 */	mr r31, r4
/* 802A5878 0029B5F8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A587C 0029B5FC  7C 7E 1B 78 */	mr r30, r3
/* 802A5880 0029B600  41 82 00 84 */	beq .L_802A5904
/* 802A5884 0029B604  80 83 00 0C */	lwz r4, 0xc(r3)
/* 802A5888 0029B608  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802A588C 0029B60C  90 83 00 10 */	stw r4, 0x10(r3)
/* 802A5890 0029B610  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802A5894 0029B614  7C 04 00 40 */	cmplw r4, r0
/* 802A5898 0029B618  40 82 00 14 */	bne .L_802A58AC
/* 802A589C 0029B61C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A58A0 0029B620  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802A58A4 0029B624  7D 89 03 A6 */	mtctr r12
/* 802A58A8 0029B628  4E 80 04 21 */	bctrl
.L_802A58AC:
/* 802A58AC 0029B62C  2C 1E 00 00 */	cmpwi r30, 0x0
/* 802A58B0 0029B630  41 82 00 2C */	beq .L_802A58DC
/* 802A58B4 0029B634  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 802A58B8 0029B638  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802A58BC 0029B63C  40 82 00 20 */	bne .L_802A58DC
/* 802A58C0 0029B640  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 802A58C4 0029B644  38 C0 00 15 */	li r6, 0x15
/* 802A58C8 0029B648  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802A58CC 0029B64C  54 00 00 BE */	clrlwi r0, r0, 2
/* 802A58D0 0029B650  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 802A58D4 0029B654  1C A0 00 0C */	mulli r5, r0, 0xc
/* 802A58D8 0029B658  4B FD 91 E5 */	bl fn_8027EABC
.L_802A58DC:
/* 802A58DC 0029B65C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802A58E0 0029B660  40 81 00 24 */	ble .L_802A5904
/* 802A58E4 0029B664  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A58E8 0029B668  7F C4 F3 78 */	mr r4, r30
/* 802A58EC 0029B66C  38 A0 00 10 */	li r5, 0x10
/* 802A58F0 0029B670  38 C0 00 15 */	li r6, 0x15
/* 802A58F4 0029B674  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A58F8 0029B678  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A58FC 0029B67C  7D 89 03 A6 */	mtctr r12
/* 802A5900 0029B680  4E 80 04 21 */	bctrl
.L_802A5904:
/* 802A5904 0029B684  7F C3 F3 78 */	mr r3, r30
/* 802A5908 0029B688  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A590C 0029B68C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A5910 0029B690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A5914 0029B694  7C 08 03 A6 */	mtlr r0
/* 802A5918 0029B698  38 21 00 10 */	addi r1, r1, 0x10
/* 802A591C 0029B69C  4E 80 00 20 */	blr
.endfn dtor_802A5860
