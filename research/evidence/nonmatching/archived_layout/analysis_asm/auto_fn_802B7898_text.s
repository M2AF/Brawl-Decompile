.include "macros.inc"
.file "auto_fn_802B7898_text"

# 0x800075EC..0x800075F4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800075EC | size: 0x8
.obj "@etb_800075EC", local
.hidden "@etb_800075EC"
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
.endobj "@etb_800075EC"

# 0x8000A594..0x8000A5A0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A594 | size: 0xC
.obj "@eti_8000A594", local
.hidden "@eti_8000A594"
	.4byte fn_802B7898
	.4byte 0x0000009C
	.4byte "@etb_800075EC"
.endobj "@eti_8000A594"

# 0x802B7898..0x802B7934 | size: 0x9C
.text
.balign 4

# .text:0x0 | 0x802B7898 | size: 0x9C
.fn fn_802B7898, global
/* 802B7898 002AD618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B789C 002AD61C  7C 08 02 A6 */	mflr r0
/* 802B78A0 002AD620  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B78A4 002AD624  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B78A8 002AD628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B78AC 002AD62C  7C 9F 23 78 */	mr r31, r4
/* 802B78B0 002AD630  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802B78B4 002AD634  7C 7E 1B 78 */	mr r30, r3
/* 802B78B8 002AD638  41 82 00 60 */	beq .L_802B7918
/* 802B78BC 002AD63C  41 82 00 34 */	beq .L_802B78F0
/* 802B78C0 002AD640  41 82 00 30 */	beq .L_802B78F0
/* 802B78C4 002AD644  34 03 00 0C */	addic. r0, r3, 0xc
/* 802B78C8 002AD648  41 82 00 28 */	beq .L_802B78F0
/* 802B78CC 002AD64C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802B78D0 002AD650  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802B78D4 002AD654  40 82 00 1C */	bne .L_802B78F0
/* 802B78D8 002AD658  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802B78DC 002AD65C  38 C0 00 15 */	li r6, 0x15
/* 802B78E0 002AD660  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802B78E4 002AD664  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802B78E8 002AD668  54 05 08 7C */	clrlslwi r5, r0, 2, 1
/* 802B78EC 002AD66C  4B FC 71 D1 */	bl fn_8027EABC
.L_802B78F0:
/* 802B78F0 002AD670  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802B78F4 002AD674  40 81 00 24 */	ble .L_802B7918
/* 802B78F8 002AD678  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802B78FC 002AD67C  7F C4 F3 78 */	mr r4, r30
/* 802B7900 002AD680  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802B7904 002AD684  38 C0 00 1D */	li r6, 0x1d
/* 802B7908 002AD688  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B790C 002AD68C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802B7910 002AD690  7D 89 03 A6 */	mtctr r12
/* 802B7914 002AD694  4E 80 04 21 */	bctrl
.L_802B7918:
/* 802B7918 002AD698  7F C3 F3 78 */	mr r3, r30
/* 802B791C 002AD69C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B7920 002AD6A0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802B7924 002AD6A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B7928 002AD6A8  7C 08 03 A6 */	mtlr r0
/* 802B792C 002AD6AC  38 21 00 10 */	addi r1, r1, 0x10
/* 802B7930 002AD6B0  4E 80 00 20 */	blr
.endfn fn_802B7898
