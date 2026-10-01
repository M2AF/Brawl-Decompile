.include "macros.inc"
.file "auto_fn_802B8BF8_text"

# 0x800076E4..0x800076EC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800076E4 | size: 0x8
.obj "@etb_800076E4", local
.hidden "@etb_800076E4"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800076E4"

# 0x8000A618..0x8000A624 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A618 | size: 0xC
.obj "@eti_8000A618", local
.hidden "@eti_8000A618"
	.4byte fn_802B8BF8
	.4byte 0x000000B0
	.4byte "@etb_800076E4"
.endobj "@eti_8000A618"

# 0x802B8BF8..0x802B8CA8 | size: 0xB0
.text
.balign 4

# .text:0x0 | 0x802B8BF8 | size: 0xB0
.fn fn_802B8BF8, global
/* 802B8BF8 002AE978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B8BFC 002AE97C  7C 08 02 A6 */	mflr r0
/* 802B8C00 002AE980  3D 20 80 53 */	lis r9, lbl_80532448@ha
/* 802B8C04 002AE984  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B8C08 002AE988  39 29 24 48 */	addi r9, r9, lbl_80532448@l
/* 802B8C0C 002AE98C  81 09 00 04 */	lwz r8, 0x4(r9)
/* 802B8C10 002AE990  80 E9 00 0C */	lwz r7, 0xc(r9)
/* 802B8C14 002AE994  7C E0 42 78 */	xor r0, r7, r8
/* 802B8C18 002AE998  7C 00 00 34 */	cntlzw r0, r0
/* 802B8C1C 002AE99C  7C E0 00 30 */	slw r0, r7, r0
/* 802B8C20 002AE9A0  54 00 0F FE */	srwi r0, r0, 31
/* 802B8C24 002AE9A4  7C 00 07 75 */	extsb. r0, r0
/* 802B8C28 002AE9A8  41 82 00 24 */	beq .L_802B8C4C
/* 802B8C2C 002AE9AC  3C E0 80 41 */	lis r7, lbl_8040FEB8@ha
/* 802B8C30 002AE9B0  38 E7 FE B8 */	addi r7, r7, lbl_8040FEB8@l
/* 802B8C34 002AE9B4  38 07 00 0A */	addi r0, r7, 0xa
/* 802B8C38 002AE9B8  90 08 00 00 */	stw r0, 0x0(r8)
/* 802B8C3C 002AE9BC  7C EC 42 E6 */	mftb r7, 268
/* 802B8C40 002AE9C0  38 08 00 0C */	addi r0, r8, 0xc
/* 802B8C44 002AE9C4  90 E8 00 04 */	stw r7, 0x4(r8)
/* 802B8C48 002AE9C8  90 09 00 04 */	stw r0, 0x4(r9)
.L_802B8C4C:
/* 802B8C4C 002AE9CC  4B FF 83 DD */	bl fn_802B1028
/* 802B8C50 002AE9D0  3C A0 80 53 */	lis r5, lbl_80532448@ha
/* 802B8C54 002AE9D4  38 A5 24 48 */	addi r5, r5, lbl_80532448@l
/* 802B8C58 002AE9D8  80 85 00 04 */	lwz r4, 0x4(r5)
/* 802B8C5C 002AE9DC  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802B8C60 002AE9E0  7C 60 22 78 */	xor r0, r3, r4
/* 802B8C64 002AE9E4  7C 00 00 34 */	cntlzw r0, r0
/* 802B8C68 002AE9E8  7C 60 00 30 */	slw r0, r3, r0
/* 802B8C6C 002AE9EC  54 00 0F FE */	srwi r0, r0, 31
/* 802B8C70 002AE9F0  7C 00 07 75 */	extsb. r0, r0
/* 802B8C74 002AE9F4  41 82 00 24 */	beq .L_802B8C98
/* 802B8C78 002AE9F8  3C 60 80 41 */	lis r3, lbl_8040FEB8@ha
/* 802B8C7C 002AE9FC  38 63 FE B8 */	addi r3, r3, lbl_8040FEB8@l
/* 802B8C80 002AEA00  38 03 00 07 */	addi r0, r3, 0x7
/* 802B8C84 002AEA04  90 04 00 00 */	stw r0, 0x0(r4)
/* 802B8C88 002AEA08  7C 6C 42 E6 */	mftb r3, 268
/* 802B8C8C 002AEA0C  38 04 00 0C */	addi r0, r4, 0xc
/* 802B8C90 002AEA10  90 64 00 04 */	stw r3, 0x4(r4)
/* 802B8C94 002AEA14  90 05 00 04 */	stw r0, 0x4(r5)
.L_802B8C98:
/* 802B8C98 002AEA18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8C9C 002AEA1C  7C 08 03 A6 */	mtlr r0
/* 802B8CA0 002AEA20  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8CA4 002AEA24  4E 80 00 20 */	blr
.endfn fn_802B8BF8
