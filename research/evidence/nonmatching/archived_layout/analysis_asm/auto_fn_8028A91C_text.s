.include "macros.inc"
.file "auto_fn_8028A91C_text"

# 0x80006548..0x80006550 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006548 | size: 0x8
.obj "@etb_80006548", local
.hidden "@etb_80006548"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80006548"

# 0x800097FC..0x80009808 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800097FC | size: 0xC
.obj "@eti_800097FC", local
.hidden "@eti_800097FC"
	.4byte fn_8028A91C
	.4byte 0x000000CC
	.4byte "@etb_80006548"
.endobj "@eti_800097FC"

# 0x8028A91C..0x8028A9E8 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x8028A91C | size: 0xCC
.fn fn_8028A91C, global
/* 8028A91C 0028069C  54 2B 07 3E */	clrlwi r11, r1, 28
/* 8028A920 002806A0  7C 2C 0B 78 */	mr r12, r1
/* 8028A924 002806A4  21 6B FF C0 */	subfic r11, r11, -0x40
/* 8028A928 002806A8  7C 21 59 6E */	stwux r1, r1, r11
/* 8028A92C 002806AC  7C 08 02 A6 */	mflr r0
/* 8028A930 002806B0  90 0C 00 04 */	stw r0, 0x4(r12)
/* 8028A934 002806B4  88 03 00 02 */	lbz r0, 0x2(r3)
/* 8028A938 002806B8  2C 00 00 00 */	cmpwi r0, 0x0
/* 8028A93C 002806BC  41 82 00 78 */	beq .L_8028A9B4
/* 8028A940 002806C0  C1 03 00 04 */	lfs f8, 0x4(r3)
/* 8028A944 002806C4  C0 02 AA 70 */	lfs f0, lbl_805A3D90@sda21(r0)
/* 8028A948 002806C8  FC 08 00 40 */	fcmpo cr0, f8, f0
/* 8028A94C 002806CC  40 81 00 68 */	ble .L_8028A9B4
/* 8028A950 002806D0  88 03 00 03 */	lbz r0, 0x3(r3)
/* 8028A954 002806D4  38 61 00 10 */	addi r3, r1, 0x10
/* 8028A958 002806D8  C0 E5 00 30 */	lfs f7, 0x30(r5)
/* 8028A95C 002806DC  54 00 20 36 */	slwi r0, r0, 4
/* 8028A960 002806E0  C0 C5 00 34 */	lfs f6, 0x34(r5)
/* 8028A964 002806E4  7C 66 04 6E */	lfsux f3, r6, r0
/* 8028A968 002806E8  C0 A5 00 38 */	lfs f5, 0x38(r5)
/* 8028A96C 002806EC  C0 85 00 3C */	lfs f4, 0x3c(r5)
/* 8028A970 002806F0  7C E5 3B 78 */	mr r5, r7
/* 8028A974 002806F4  C0 46 00 04 */	lfs f2, 0x4(r6)
/* 8028A978 002806F8  C0 26 00 08 */	lfs f1, 0x8(r6)
/* 8028A97C 002806FC  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 8028A980 00280700  80 04 00 44 */	lwz r0, 0x44(r4)
/* 8028A984 00280704  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 8028A988 00280708  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 8028A98C 0028070C  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 8028A990 00280710  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 8028A994 00280714  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8028A998 00280718  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8028A99C 0028071C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8028A9A0 00280720  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8028A9A4 00280724  D1 01 00 30 */	stfs f8, 0x30(r1)
/* 8028A9A8 00280728  90 01 00 34 */	stw r0, 0x34(r1)
/* 8028A9AC 0028072C  48 00 36 D5 */	bl fn_8028E080
/* 8028A9B0 00280730  48 00 00 24 */	b .L_8028A9D4
.L_8028A9B4:
/* 8028A9B4 00280734  3C 60 13 02 */	lis r3, 0x1302
/* 8028A9B8 00280738  80 87 00 08 */	lwz r4, 0x8(r7)
/* 8028A9BC 0028073C  38 03 00 08 */	addi r0, r3, 0x8
/* 8028A9C0 00280740  90 04 00 00 */	stw r0, 0x0(r4)
/* 8028A9C4 00280744  38 60 00 01 */	li r3, 0x1
/* 8028A9C8 00280748  38 04 00 08 */	addi r0, r4, 0x8
/* 8028A9CC 0028074C  98 64 00 04 */	stb r3, 0x4(r4)
/* 8028A9D0 00280750  90 07 00 08 */	stw r0, 0x8(r7)
.L_8028A9D4:
/* 8028A9D4 00280754  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8028A9D8 00280758  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8028A9DC 0028075C  7C 08 03 A6 */	mtlr r0
/* 8028A9E0 00280760  7D 41 53 78 */	mr r1, r10
/* 8028A9E4 00280764  4E 80 00 20 */	blr
.endfn fn_8028A91C
