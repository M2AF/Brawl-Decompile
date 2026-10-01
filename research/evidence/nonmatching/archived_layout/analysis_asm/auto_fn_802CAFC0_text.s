.include "macros.inc"
.file "auto_fn_802CAFC0_text"

# 0x800081D8..0x800081E0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800081D8 | size: 0x8
.obj "@etb_800081D8", local
.hidden "@etb_800081D8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_800081D8"

# 0x8000AE94..0x8000AEA0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AE94 | size: 0xC
.obj "@eti_8000AE94", local
.hidden "@eti_8000AE94"
	.4byte fn_802CAFC0
	.4byte 0x0000008C
	.4byte "@etb_800081D8"
.endobj "@eti_8000AE94"

# 0x802CAFC0..0x802CB04C | size: 0x8C
.text
.balign 4

# .text:0x0 | 0x802CAFC0 | size: 0x8C
.fn fn_802CAFC0, global
/* 802CAFC0 002C0D40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CAFC4 002C0D44  7C 08 02 A6 */	mflr r0
/* 802CAFC8 002C0D48  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CAFCC 002C0D4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802CAFD0 002C0D50  7C BF 2B 78 */	mr r31, r5
/* 802CAFD4 002C0D54  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802CAFD8 002C0D58  7C 9E 23 78 */	mr r30, r4
/* 802CAFDC 002C0D5C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802CAFE0 002C0D60  7C 7D 1B 78 */	mr r29, r3
/* 802CAFE4 002C0D64  48 00 00 44 */	b .L_802CB028
.L_802CAFE8:
/* 802CAFE8 002C0D68  80 BE 00 00 */	lwz r5, 0x0(r30)
/* 802CAFEC 002C0D6C  7F C4 F3 78 */	mr r4, r30
/* 802CAFF0 002C0D70  80 7E 00 04 */	lwz r3, 0x4(r30)
/* 802CAFF4 002C0D74  88 A5 00 04 */	lbz r5, 0x4(r5)
/* 802CAFF8 002C0D78  88 03 00 04 */	lbz r0, 0x4(r3)
/* 802CAFFC 002C0D7C  7C A3 07 74 */	extsb r3, r5
/* 802CB000 002C0D80  54 65 28 34 */	slwi r5, r3, 5
/* 802CB004 002C0D84  7C 00 07 74 */	extsb r0, r0
/* 802CB008 002C0D88  54 03 10 3A */	slwi r3, r0, 2
/* 802CB00C 002C0D8C  7C 1D 2A 14 */	add r0, r29, r5
/* 802CB010 002C0D90  7C 63 00 2E */	lwzx r3, r3, r0
/* 802CB014 002C0D94  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CB018 002C0D98  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802CB01C 002C0D9C  7D 89 03 A6 */	mtctr r12
/* 802CB020 002C0DA0  4E 80 04 21 */	bctrl
/* 802CB024 002C0DA4  3B DE 00 08 */	addi r30, r30, 0x8
.L_802CB028:
/* 802CB028 002C0DA8  37 FF FF FF */	subic. r31, r31, 0x1
/* 802CB02C 002C0DAC  40 80 FF BC */	bge .L_802CAFE8
/* 802CB030 002C0DB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CB034 002C0DB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802CB038 002C0DB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802CB03C 002C0DBC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802CB040 002C0DC0  7C 08 03 A6 */	mtlr r0
/* 802CB044 002C0DC4  38 21 00 20 */	addi r1, r1, 0x20
/* 802CB048 002C0DC8  4E 80 00 20 */	blr
.endfn fn_802CAFC0
