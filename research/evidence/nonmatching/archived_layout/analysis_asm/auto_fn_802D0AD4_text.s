.include "macros.inc"
.file "auto_fn_802D0AD4_text"

# 0x800083F0..0x800083F8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800083F0 | size: 0x8
.obj "@etb_800083F0", local
.hidden "@etb_800083F0"
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
.endobj "@etb_800083F0"

# 0x8000B158..0x8000B164 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B158 | size: 0xC
.obj "@eti_8000B158", local
.hidden "@eti_8000B158"
	.4byte fn_802D0AD4
	.4byte 0x000000C0
	.4byte "@etb_800083F0"
.endobj "@eti_8000B158"

# 0x802D0AD4..0x802D0B94 | size: 0xC0
.text
.balign 4

# .text:0x0 | 0x802D0AD4 | size: 0xC0
.fn fn_802D0AD4, global
/* 802D0AD4 002C6854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D0AD8 002C6858  7C 08 02 A6 */	mflr r0
/* 802D0ADC 002C685C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D0AE0 002C6860  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D0AE4 002C6864  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D0AE8 002C6868  7C 9F 23 78 */	mr r31, r4
/* 802D0AEC 002C686C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802D0AF0 002C6870  7C 7E 1B 78 */	mr r30, r3
/* 802D0AF4 002C6874  41 82 00 84 */	beq .L_802D0B78
/* 802D0AF8 002C6878  34 03 00 10 */	addic. r0, r3, 0x10
/* 802D0AFC 002C687C  41 82 00 54 */	beq .L_802D0B50
/* 802D0B00 002C6880  3C 80 80 48 */	lis r4, lbl_804873E8@ha
/* 802D0B04 002C6884  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 802D0B08 002C6888  38 84 73 E8 */	addi r4, r4, lbl_804873E8@l
/* 802D0B0C 002C688C  90 83 00 10 */	stw r4, 0x10(r3)
/* 802D0B10 002C6890  A0 05 00 04 */	lhz r0, 0x4(r5)
/* 802D0B14 002C6894  2C 00 00 00 */	cmpwi r0, 0x0
/* 802D0B18 002C6898  41 82 00 38 */	beq .L_802D0B50
/* 802D0B1C 002C689C  A8 65 00 06 */	lha r3, 0x6(r5)
/* 802D0B20 002C68A0  38 63 FF FF */	subi r3, r3, 0x1
/* 802D0B24 002C68A4  7C 60 07 35 */	extsh. r0, r3
/* 802D0B28 002C68A8  B0 65 00 06 */	sth r3, 0x6(r5)
/* 802D0B2C 002C68AC  40 82 00 24 */	bne .L_802D0B50
/* 802D0B30 002C68B0  2C 05 00 00 */	cmpwi r5, 0x0
/* 802D0B34 002C68B4  41 82 00 1C */	beq .L_802D0B50
/* 802D0B38 002C68B8  81 85 00 00 */	lwz r12, 0x0(r5)
/* 802D0B3C 002C68BC  7C A3 2B 78 */	mr r3, r5
/* 802D0B40 002C68C0  38 80 00 01 */	li r4, 0x1
/* 802D0B44 002C68C4  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802D0B48 002C68C8  7D 89 03 A6 */	mtctr r12
/* 802D0B4C 002C68CC  4E 80 04 21 */	bctrl
.L_802D0B50:
/* 802D0B50 002C68D0  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802D0B54 002C68D4  40 81 00 24 */	ble .L_802D0B78
/* 802D0B58 002C68D8  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802D0B5C 002C68DC  7F C4 F3 78 */	mr r4, r30
/* 802D0B60 002C68E0  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802D0B64 002C68E4  38 C0 00 25 */	li r6, 0x25
/* 802D0B68 002C68E8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D0B6C 002C68EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802D0B70 002C68F0  7D 89 03 A6 */	mtctr r12
/* 802D0B74 002C68F4  4E 80 04 21 */	bctrl
.L_802D0B78:
/* 802D0B78 002C68F8  7F C3 F3 78 */	mr r3, r30
/* 802D0B7C 002C68FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D0B80 002C6900  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802D0B84 002C6904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D0B88 002C6908  7C 08 03 A6 */	mtlr r0
/* 802D0B8C 002C690C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D0B90 002C6910  4E 80 00 20 */	blr
.endfn fn_802D0AD4
