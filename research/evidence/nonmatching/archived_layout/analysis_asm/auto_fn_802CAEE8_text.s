.include "macros.inc"
.file "auto_fn_802CAEE8_text"

# 0x800081D0..0x800081D8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800081D0 | size: 0x8
.obj "@etb_800081D0", local
.hidden "@etb_800081D0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 */
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_800081D0"

# 0x8000AE88..0x8000AE94 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AE88 | size: 0xC
.obj "@eti_8000AE88", local
.hidden "@eti_8000AE88"
	.4byte fn_802CAEE8
	.4byte 0x000000D8
	.4byte "@etb_800081D0"
.endobj "@eti_8000AE88"

# 0x802CAEE8..0x802CAFC0 | size: 0xD8
.text
.balign 4

# .text:0x0 | 0x802CAEE8 | size: 0xD8
.fn fn_802CAEE8, global
/* 802CAEE8 002C0C68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CAEEC 002C0C6C  7C 08 02 A6 */	mflr r0
/* 802CAEF0 002C0C70  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CAEF4 002C0C74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802CAEF8 002C0C78  7C DF 33 78 */	mr r31, r6
/* 802CAEFC 002C0C7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802CAF00 002C0C80  7C BE 2B 78 */	mr r30, r5
/* 802CAF04 002C0C84  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802CAF08 002C0C88  7C 9D 23 78 */	mr r29, r4
/* 802CAF0C 002C0C8C  93 81 00 10 */	stw r28, 0x10(r1)
/* 802CAF10 002C0C90  7C 7C 1B 78 */	mr r28, r3
/* 802CAF14 002C0C94  48 00 00 84 */	b .L_802CAF98
.L_802CAF18:
/* 802CAF18 002C0C98  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 802CAF1C 002C0C9C  7F E3 FB 78 */	mr r3, r31
/* 802CAF20 002C0CA0  80 DD 00 04 */	lwz r6, 0x4(r29)
/* 802CAF24 002C0CA4  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802CAF28 002C0CA8  88 85 00 05 */	lbz r4, 0x5(r5)
/* 802CAF2C 002C0CAC  88 06 00 05 */	lbz r0, 0x5(r6)
/* 802CAF30 002C0CB0  7C 84 07 74 */	extsb r4, r4
/* 802CAF34 002C0CB4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802CAF38 002C0CB8  7C 00 07 74 */	extsb r0, r0
/* 802CAF3C 002C0CBC  7C 85 22 14 */	add r4, r5, r4
/* 802CAF40 002C0CC0  7C A6 02 14 */	add r5, r6, r0
/* 802CAF44 002C0CC4  7D 89 03 A6 */	mtctr r12
/* 802CAF48 002C0CC8  4E 80 04 21 */	bctrl
/* 802CAF4C 002C0CCC  54 60 46 3E */	srwi r0, r3, 24
/* 802CAF50 002C0CD0  7C 00 07 75 */	extsb. r0, r0
/* 802CAF54 002C0CD4  41 82 00 40 */	beq .L_802CAF94
/* 802CAF58 002C0CD8  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 802CAF5C 002C0CDC  7F A4 EB 78 */	mr r4, r29
/* 802CAF60 002C0CE0  80 7D 00 04 */	lwz r3, 0x4(r29)
/* 802CAF64 002C0CE4  88 A5 00 04 */	lbz r5, 0x4(r5)
/* 802CAF68 002C0CE8  88 03 00 04 */	lbz r0, 0x4(r3)
/* 802CAF6C 002C0CEC  7C A3 07 74 */	extsb r3, r5
/* 802CAF70 002C0CF0  54 65 28 34 */	slwi r5, r3, 5
/* 802CAF74 002C0CF4  7C 00 07 74 */	extsb r0, r0
/* 802CAF78 002C0CF8  54 03 10 3A */	slwi r3, r0, 2
/* 802CAF7C 002C0CFC  7C 1C 2A 14 */	add r0, r28, r5
/* 802CAF80 002C0D00  7C 63 00 2E */	lwzx r3, r3, r0
/* 802CAF84 002C0D04  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CAF88 002C0D08  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802CAF8C 002C0D0C  7D 89 03 A6 */	mtctr r12
/* 802CAF90 002C0D10  4E 80 04 21 */	bctrl
.L_802CAF94:
/* 802CAF94 002C0D14  3B BD 00 08 */	addi r29, r29, 0x8
.L_802CAF98:
/* 802CAF98 002C0D18  37 DE FF FF */	subic. r30, r30, 0x1
/* 802CAF9C 002C0D1C  40 80 FF 7C */	bge .L_802CAF18
/* 802CAFA0 002C0D20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CAFA4 002C0D24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802CAFA8 002C0D28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802CAFAC 002C0D2C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802CAFB0 002C0D30  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802CAFB4 002C0D34  7C 08 03 A6 */	mtlr r0
/* 802CAFB8 002C0D38  38 21 00 20 */	addi r1, r1, 0x20
/* 802CAFBC 002C0D3C  4E 80 00 20 */	blr
.endfn fn_802CAEE8
