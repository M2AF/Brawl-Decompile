.include "macros.inc"
.file "auto_fn_802D47F4_text"

# 0x80008534..0x8000853C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008534 | size: 0x8
.obj "@etb_80008534", local
.hidden "@etb_80008534"
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
.endobj "@etb_80008534"

# 0x8000B320..0x8000B32C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B320 | size: 0xC
.obj "@eti_8000B320", local
.hidden "@eti_8000B320"
	.4byte fn_802D47F4
	.4byte 0x0000009C
	.4byte "@etb_80008534"
.endobj "@eti_8000B320"

# 0x802D47F4..0x802D4890 | size: 0x9C
.text
.balign 4

# .text:0x0 | 0x802D47F4 | size: 0x9C
.fn fn_802D47F4, global
/* 802D47F4 002CA574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D47F8 002CA578  7C 08 02 A6 */	mflr r0
/* 802D47FC 002CA57C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D4800 002CA580  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D4804 002CA584  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4808 002CA588  7C 9F 23 78 */	mr r31, r4
/* 802D480C 002CA58C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802D4810 002CA590  7C 7E 1B 78 */	mr r30, r3
/* 802D4814 002CA594  41 82 00 60 */	beq .L_802D4874
/* 802D4818 002CA598  41 82 00 34 */	beq .L_802D484C
/* 802D481C 002CA59C  34 03 00 34 */	addic. r0, r3, 0x34
/* 802D4820 002CA5A0  41 82 00 2C */	beq .L_802D484C
/* 802D4824 002CA5A4  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 802D4828 002CA5A8  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802D482C 002CA5AC  40 82 00 20 */	bne .L_802D484C
/* 802D4830 002CA5B0  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 802D4834 002CA5B4  38 C0 00 15 */	li r6, 0x15
/* 802D4838 002CA5B8  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802D483C 002CA5BC  54 00 00 BE */	clrlwi r0, r0, 2
/* 802D4840 002CA5C0  80 9E 00 34 */	lwz r4, 0x34(r30)
/* 802D4844 002CA5C4  1C A0 00 30 */	mulli r5, r0, 0x30
/* 802D4848 002CA5C8  4B FA A2 75 */	bl fn_8027EABC
.L_802D484C:
/* 802D484C 002CA5CC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802D4850 002CA5D0  40 81 00 24 */	ble .L_802D4874
/* 802D4854 002CA5D4  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802D4858 002CA5D8  7F C4 F3 78 */	mr r4, r30
/* 802D485C 002CA5DC  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802D4860 002CA5E0  38 C0 00 25 */	li r6, 0x25
/* 802D4864 002CA5E4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D4868 002CA5E8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802D486C 002CA5EC  7D 89 03 A6 */	mtctr r12
/* 802D4870 002CA5F0  4E 80 04 21 */	bctrl
.L_802D4874:
/* 802D4874 002CA5F4  7F C3 F3 78 */	mr r3, r30
/* 802D4878 002CA5F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D487C 002CA5FC  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802D4880 002CA600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D4884 002CA604  7C 08 03 A6 */	mtlr r0
/* 802D4888 002CA608  38 21 00 10 */	addi r1, r1, 0x10
/* 802D488C 002CA60C  4E 80 00 20 */	blr
.endfn fn_802D47F4
