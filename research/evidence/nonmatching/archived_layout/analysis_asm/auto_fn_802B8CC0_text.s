.include "macros.inc"
.file "auto_fn_802B8CC0_text"

# 0x800076EC..0x800076F4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800076EC | size: 0x8
.obj "@etb_800076EC", local
.hidden "@etb_800076EC"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800076EC"

# 0x8000A624..0x8000A630 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A624 | size: 0xC
.obj "@eti_8000A624", local
.hidden "@eti_8000A624"
	.4byte fn_802B8CC0
	.4byte 0x000000B0
	.4byte "@etb_800076EC"
.endobj "@eti_8000A624"

# 0x802B8CC0..0x802B8D70 | size: 0xB0
.text
.balign 4

# .text:0x0 | 0x802B8CC0 | size: 0xB0
.fn fn_802B8CC0, global
/* 802B8CC0 002AEA40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B8CC4 002AEA44  7C 08 02 A6 */	mflr r0
/* 802B8CC8 002AEA48  3D 40 80 53 */	lis r10, lbl_80532448@ha
/* 802B8CCC 002AEA4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B8CD0 002AEA50  39 4A 24 48 */	addi r10, r10, lbl_80532448@l
/* 802B8CD4 002AEA54  81 2A 00 04 */	lwz r9, 0x4(r10)
/* 802B8CD8 002AEA58  81 0A 00 0C */	lwz r8, 0xc(r10)
/* 802B8CDC 002AEA5C  7D 00 4A 78 */	xor r0, r8, r9
/* 802B8CE0 002AEA60  7C 00 00 34 */	cntlzw r0, r0
/* 802B8CE4 002AEA64  7D 00 00 30 */	slw r0, r8, r0
/* 802B8CE8 002AEA68  54 00 0F FE */	srwi r0, r0, 31
/* 802B8CEC 002AEA6C  7C 00 07 75 */	extsb. r0, r0
/* 802B8CF0 002AEA70  41 82 00 24 */	beq .L_802B8D14
/* 802B8CF4 002AEA74  3D 00 80 41 */	lis r8, lbl_8040FEB8@ha
/* 802B8CF8 002AEA78  39 08 FE B8 */	addi r8, r8, lbl_8040FEB8@l
/* 802B8CFC 002AEA7C  38 08 00 0A */	addi r0, r8, 0xa
/* 802B8D00 002AEA80  90 09 00 00 */	stw r0, 0x0(r9)
/* 802B8D04 002AEA84  7D 0C 42 E6 */	mftb r8, 268
/* 802B8D08 002AEA88  38 09 00 0C */	addi r0, r9, 0xc
/* 802B8D0C 002AEA8C  91 09 00 04 */	stw r8, 0x4(r9)
/* 802B8D10 002AEA90  90 0A 00 04 */	stw r0, 0x4(r10)
.L_802B8D14:
/* 802B8D14 002AEA94  4B FF 83 5D */	bl fn_802B1070
/* 802B8D18 002AEA98  3C A0 80 53 */	lis r5, lbl_80532448@ha
/* 802B8D1C 002AEA9C  38 A5 24 48 */	addi r5, r5, lbl_80532448@l
/* 802B8D20 002AEAA0  80 85 00 04 */	lwz r4, 0x4(r5)
/* 802B8D24 002AEAA4  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802B8D28 002AEAA8  7C 60 22 78 */	xor r0, r3, r4
/* 802B8D2C 002AEAAC  7C 00 00 34 */	cntlzw r0, r0
/* 802B8D30 002AEAB0  7C 60 00 30 */	slw r0, r3, r0
/* 802B8D34 002AEAB4  54 00 0F FE */	srwi r0, r0, 31
/* 802B8D38 002AEAB8  7C 00 07 75 */	extsb. r0, r0
/* 802B8D3C 002AEABC  41 82 00 24 */	beq .L_802B8D60
/* 802B8D40 002AEAC0  3C 60 80 41 */	lis r3, lbl_8040FEB8@ha
/* 802B8D44 002AEAC4  38 63 FE B8 */	addi r3, r3, lbl_8040FEB8@l
/* 802B8D48 002AEAC8  38 03 00 07 */	addi r0, r3, 0x7
/* 802B8D4C 002AEACC  90 04 00 00 */	stw r0, 0x0(r4)
/* 802B8D50 002AEAD0  7C 6C 42 E6 */	mftb r3, 268
/* 802B8D54 002AEAD4  38 04 00 0C */	addi r0, r4, 0xc
/* 802B8D58 002AEAD8  90 64 00 04 */	stw r3, 0x4(r4)
/* 802B8D5C 002AEADC  90 05 00 04 */	stw r0, 0x4(r5)
.L_802B8D60:
/* 802B8D60 002AEAE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8D64 002AEAE4  7C 08 03 A6 */	mtlr r0
/* 802B8D68 002AEAE8  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8D6C 002AEAEC  4E 80 00 20 */	blr
.endfn fn_802B8CC0
