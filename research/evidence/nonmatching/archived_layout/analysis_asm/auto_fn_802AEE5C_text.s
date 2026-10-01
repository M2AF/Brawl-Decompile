.include "macros.inc"
.file "auto_fn_802AEE5C_text"

# 0x8000707C..0x80007084 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000707C | size: 0x8
.obj "@etb_8000707C", local
.hidden "@etb_8000707C"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved FPR range: fp31
 * Saved GPR range: r26-r31
 */
	.4byte 0x304A0000
	.4byte 0x00000000
.endobj "@etb_8000707C"

# 0x8000A210..0x8000A21C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A210 | size: 0xC
.obj "@eti_8000A210", local
.hidden "@eti_8000A210"
	.4byte fn_802AEE5C
	.4byte 0x00000104
	.4byte "@etb_8000707C"
.endobj "@eti_8000A210"

# 0x802AEE5C..0x802AEF60 | size: 0x104
.text
.balign 4

# .text:0x0 | 0x802AEE5C | size: 0x104
.fn fn_802AEE5C, global
/* 802AEE5C 002A4BDC  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802AEE60 002A4BE0  7C 2C 0B 78 */	mr r12, r1
/* 802AEE64 002A4BE4  21 6B FF B0 */	subfic r11, r11, -0x50
/* 802AEE68 002A4BE8  7C 21 59 6E */	stwux r1, r1, r11
/* 802AEE6C 002A4BEC  7C 08 02 A6 */	mflr r0
/* 802AEE70 002A4BF0  90 0C 00 04 */	stw r0, 0x4(r12)
/* 802AEE74 002A4BF4  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 802AEE78 002A4BF8  F3 EC 0F F8 */	psq_st f31, -0x8(r12), 0, qr0
/* 802AEE7C 002A4BFC  39 6C FF F0 */	subi r11, r12, 0x10
/* 802AEE80 002A4C00  48 14 24 9D */	bl _savegpr_26
/* 802AEE84 002A4C04  C3 E2 AB F8 */	lfs f31, lbl_805A3F18@sda21(r0)
/* 802AEE88 002A4C08  7C 7A 1B 78 */	mr r26, r3
/* 802AEE8C 002A4C0C  7C 9B 23 78 */	mr r27, r4
/* 802AEE90 002A4C10  7C BC 2B 78 */	mr r28, r5
/* 802AEE94 002A4C14  3B C0 00 00 */	li r30, 0x0
/* 802AEE98 002A4C18  3B A0 00 00 */	li r29, 0x0
/* 802AEE9C 002A4C1C  3B E0 00 00 */	li r31, 0x0
/* 802AEEA0 002A4C20  48 00 00 7C */	b .L_802AEF1C
.L_802AEEA4:
/* 802AEEA4 002A4C24  80 7A 00 10 */	lwz r3, 0x10(r26)
/* 802AEEA8 002A4C28  7F 64 DB 78 */	mr r4, r27
/* 802AEEAC 002A4C2C  38 A1 00 10 */	addi r5, r1, 0x10
/* 802AEEB0 002A4C30  7C 63 F8 2E */	lwzx r3, r3, r31
/* 802AEEB4 002A4C34  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AEEB8 002A4C38  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802AEEBC 002A4C3C  7D 89 03 A6 */	mtctr r12
/* 802AEEC0 002A4C40  4E 80 04 21 */	bctrl
/* 802AEEC4 002A4C44  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 802AEEC8 002A4C48  C0 1B 00 04 */	lfs f0, 0x4(r27)
/* 802AEECC 002A4C4C  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 802AEED0 002A4C50  EC 81 00 32 */	fmuls f4, f1, f0
/* 802AEED4 002A4C54  C0 5B 00 00 */	lfs f2, 0x0(r27)
/* 802AEED8 002A4C58  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 802AEEDC 002A4C5C  C0 1B 00 08 */	lfs f0, 0x8(r27)
/* 802AEEE0 002A4C60  EC 43 20 BA */	fmadds f2, f3, f2, f4
/* 802AEEE4 002A4C64  EC 01 10 3A */	fmadds f0, f1, f0, f2
/* 802AEEE8 002A4C68  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 802AEEEC 002A4C6C  40 81 00 28 */	ble .L_802AEF14
/* 802AEEF0 002A4C70  D0 7C 00 00 */	stfs f3, 0x0(r28)
/* 802AEEF4 002A4C74  FF E0 00 90 */	fmr f31, f0
/* 802AEEF8 002A4C78  7F BE EB 78 */	mr r30, r29
/* 802AEEFC 002A4C7C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 802AEF00 002A4C80  D0 1C 00 04 */	stfs f0, 0x4(r28)
/* 802AEF04 002A4C84  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 802AEF08 002A4C88  D0 1C 00 08 */	stfs f0, 0x8(r28)
/* 802AEF0C 002A4C8C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802AEF10 002A4C90  D0 1C 00 0C */	stfs f0, 0xc(r28)
.L_802AEF14:
/* 802AEF14 002A4C94  3B BD 00 01 */	addi r29, r29, 0x1
/* 802AEF18 002A4C98  3B FF 00 08 */	addi r31, r31, 0x8
.L_802AEF1C:
/* 802AEF1C 002A4C9C  80 1A 00 14 */	lwz r0, 0x14(r26)
/* 802AEF20 002A4CA0  7C 1D 00 00 */	cmpw r29, r0
/* 802AEF24 002A4CA4  41 80 FF 80 */	blt .L_802AEEA4
/* 802AEF28 002A4CA8  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 802AEF2C 002A4CAC  57 C0 40 2E */	slwi r0, r30, 8
/* 802AEF30 002A4CB0  7C 03 02 14 */	add r0, r3, r0
/* 802AEF34 002A4CB4  90 1C 00 0C */	stw r0, 0xc(r28)
/* 802AEF38 002A4CB8  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802AEF3C 002A4CBC  38 00 FF F8 */	li r0, -0x8
/* 802AEF40 002A4CC0  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 802AEF44 002A4CC4  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 802AEF48 002A4CC8  39 6A FF F0 */	subi r11, r10, 0x10
/* 802AEF4C 002A4CCC  48 14 24 1D */	bl _restgpr_26
/* 802AEF50 002A4CD0  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802AEF54 002A4CD4  7C 08 03 A6 */	mtlr r0
/* 802AEF58 002A4CD8  7D 41 53 78 */	mr r1, r10
/* 802AEF5C 002A4CDC  4E 80 00 20 */	blr
.endfn fn_802AEE5C
