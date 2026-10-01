.include "macros.inc"
.file "auto_fn_802AA81C_text"

# 0x80006F0C..0x80006F14 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006F0C | size: 0x8
.obj "@etb_80006F0C", local
.hidden "@etb_80006F0C"
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
.endobj "@etb_80006F0C"

# 0x8000A0CC..0x8000A0D8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A0CC | size: 0xC
.obj "@eti_8000A0CC", local
.hidden "@eti_8000A0CC"
	.4byte fn_802AA81C
	.4byte 0x000000A4
	.4byte "@etb_80006F0C"
.endobj "@eti_8000A0CC"

# 0x802AA81C..0x802AA8C0 | size: 0xA4
.text
.balign 4

# .text:0x0 | 0x802AA81C | size: 0xA4
.fn fn_802AA81C, global
/* 802AA81C 002A059C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AA820 002A05A0  7C 08 02 A6 */	mflr r0
/* 802AA824 002A05A4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802AA828 002A05A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AA82C 002A05AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AA830 002A05B0  7C 9F 23 78 */	mr r31, r4
/* 802AA834 002A05B4  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802AA838 002A05B8  7C 7E 1B 78 */	mr r30, r3
/* 802AA83C 002A05BC  41 82 00 68 */	beq .L_802AA8A4
/* 802AA840 002A05C0  41 82 00 3C */	beq .L_802AA87C
/* 802AA844 002A05C4  41 82 00 38 */	beq .L_802AA87C
/* 802AA848 002A05C8  34 03 00 30 */	addic. r0, r3, 0x30
/* 802AA84C 002A05CC  41 82 00 30 */	beq .L_802AA87C
/* 802AA850 002A05D0  41 82 00 2C */	beq .L_802AA87C
/* 802AA854 002A05D4  41 82 00 28 */	beq .L_802AA87C
/* 802AA858 002A05D8  80 03 00 38 */	lwz r0, 0x38(r3)
/* 802AA85C 002A05DC  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802AA860 002A05E0  40 82 00 1C */	bne .L_802AA87C
/* 802AA864 002A05E4  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 802AA868 002A05E8  38 C0 00 15 */	li r6, 0x15
/* 802AA86C 002A05EC  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802AA870 002A05F0  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 802AA874 002A05F4  54 05 10 3A */	slwi r5, r0, 2
/* 802AA878 002A05F8  4B FD 42 45 */	bl fn_8027EABC
.L_802AA87C:
/* 802AA87C 002A05FC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802AA880 002A0600  40 81 00 24 */	ble .L_802AA8A4
/* 802AA884 002A0604  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802AA888 002A0608  7F C4 F3 78 */	mr r4, r30
/* 802AA88C 002A060C  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802AA890 002A0610  38 C0 00 1D */	li r6, 0x1d
/* 802AA894 002A0614  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AA898 002A0618  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802AA89C 002A061C  7D 89 03 A6 */	mtctr r12
/* 802AA8A0 002A0620  4E 80 04 21 */	bctrl
.L_802AA8A4:
/* 802AA8A4 002A0624  7F C3 F3 78 */	mr r3, r30
/* 802AA8A8 002A0628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AA8AC 002A062C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802AA8B0 002A0630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AA8B4 002A0634  7C 08 03 A6 */	mtlr r0
/* 802AA8B8 002A0638  38 21 00 10 */	addi r1, r1, 0x10
/* 802AA8BC 002A063C  4E 80 00 20 */	blr
.endfn fn_802AA81C
