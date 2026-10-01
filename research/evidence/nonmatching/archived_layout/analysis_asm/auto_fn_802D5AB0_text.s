.include "macros.inc"
.file "auto_fn_802D5AB0_text"

# 0x800085BC..0x800085C4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800085BC | size: 0x8
.obj "@etb_800085BC", local
.hidden "@etb_800085BC"
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
.endobj "@etb_800085BC"

# 0x8000B3EC..0x8000B3F8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B3EC | size: 0xC
.obj "@eti_8000B3EC", local
.hidden "@eti_8000B3EC"
	.4byte fn_802D5AB0
	.4byte 0x000000F4
	.4byte "@etb_800085BC"
.endobj "@eti_8000B3EC"

# 0x802D5AB0..0x802D5BA4 | size: 0xF4
.text
.balign 4

# .text:0x0 | 0x802D5AB0 | size: 0xF4
.fn fn_802D5AB0, global
/* 802D5AB0 002CB830  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5AB4 002CB834  7C 08 02 A6 */	mflr r0
/* 802D5AB8 002CB838  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5ABC 002CB83C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D5AC0 002CB840  7C 9F 23 78 */	mr r31, r4
/* 802D5AC4 002CB844  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802D5AC8 002CB848  7C 7E 1B 78 */	mr r30, r3
/* 802D5ACC 002CB84C  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 802D5AD0 002CB850  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 802D5AD4 002CB854  54 00 00 BE */	clrlwi r0, r0, 2
/* 802D5AD8 002CB858  7C 05 00 00 */	cmpw r5, r0
/* 802D5ADC 002CB85C  40 82 00 10 */	bne .L_802D5AEC
/* 802D5AE0 002CB860  38 80 00 30 */	li r4, 0x30
/* 802D5AE4 002CB864  38 63 00 34 */	addi r3, r3, 0x34
/* 802D5AE8 002CB868  4B FA 73 55 */	bl fn_8027CE3C
.L_802D5AEC:
/* 802D5AEC 002CB86C  80 BE 00 38 */	lwz r5, 0x38(r30)
/* 802D5AF0 002CB870  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802D5AF4 002CB874  1C 85 00 30 */	mulli r4, r5, 0x30
/* 802D5AF8 002CB878  38 05 00 01 */	addi r0, r5, 0x1
/* 802D5AFC 002CB87C  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 802D5B00 002CB880  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D5B04 002CB884  90 1E 00 38 */	stw r0, 0x38(r30)
/* 802D5B08 002CB888  7C A5 22 14 */	add r5, r5, r4
/* 802D5B0C 002CB88C  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 802D5B10 002CB890  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 802D5B14 002CB894  90 05 00 00 */	stw r0, 0x0(r5)
/* 802D5B18 002CB898  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 802D5B1C 002CB89C  90 85 00 04 */	stw r4, 0x4(r5)
/* 802D5B20 002CB8A0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 802D5B24 002CB8A4  90 05 00 08 */	stw r0, 0x8(r5)
/* 802D5B28 002CB8A8  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 802D5B2C 002CB8AC  90 85 00 0C */	stw r4, 0xc(r5)
/* 802D5B30 002CB8B0  88 9F 00 11 */	lbz r4, 0x11(r31)
/* 802D5B34 002CB8B4  98 05 00 10 */	stb r0, 0x10(r5)
/* 802D5B38 002CB8B8  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 802D5B3C 002CB8BC  98 85 00 11 */	stb r4, 0x11(r5)
/* 802D5B40 002CB8C0  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 802D5B44 002CB8C4  90 05 00 14 */	stw r0, 0x14(r5)
/* 802D5B48 002CB8C8  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 802D5B4C 002CB8CC  90 85 00 18 */	stw r4, 0x18(r5)
/* 802D5B50 002CB8D0  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 802D5B54 002CB8D4  90 65 00 1C */	stw r3, 0x1c(r5)
/* 802D5B58 002CB8D8  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 802D5B5C 002CB8DC  90 05 00 20 */	stw r0, 0x20(r5)
/* 802D5B60 002CB8E0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 802D5B64 002CB8E4  90 85 00 24 */	stw r4, 0x24(r5)
/* 802D5B68 002CB8E8  90 65 00 28 */	stw r3, 0x28(r5)
/* 802D5B6C 002CB8EC  90 05 00 2C */	stw r0, 0x2c(r5)
/* 802D5B70 002CB8F0  40 82 00 1C */	bne .L_802D5B8C
/* 802D5B74 002CB8F4  38 00 00 01 */	li r0, 0x1
/* 802D5B78 002CB8F8  3C 60 80 53 */	lis r3, lbl_80532550@ha
/* 802D5B7C 002CB8FC  90 05 00 2C */	stw r0, 0x2c(r5)
/* 802D5B80 002CB900  38 63 25 50 */	addi r3, r3, lbl_80532550@l
/* 802D5B84 002CB904  90 65 00 24 */	stw r3, 0x24(r5)
/* 802D5B88 002CB908  90 65 00 1C */	stw r3, 0x1c(r5)
.L_802D5B8C:
/* 802D5B8C 002CB90C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5B90 002CB910  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D5B94 002CB914  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802D5B98 002CB918  7C 08 03 A6 */	mtlr r0
/* 802D5B9C 002CB91C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D5BA0 002CB920  4E 80 00 20 */	blr
.endfn fn_802D5AB0
