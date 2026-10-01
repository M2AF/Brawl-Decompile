.include "macros.inc"
.file "auto_fn_802C8C98_text"

# 0x80008020..0x80008028 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008020 | size: 0x8
.obj "@etb_80008020", local
.hidden "@etb_80008020"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80008020"

# 0x8000AD14..0x8000AD20 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AD14 | size: 0xC
.obj "@eti_8000AD14", local
.hidden "@eti_8000AD14"
	.4byte fn_802C8C98
	.4byte 0x000000D8
	.4byte "@etb_80008020"
.endobj "@eti_8000AD14"

# 0x802C8C98..0x802C8D70 | size: 0xD8
.text
.balign 4

# .text:0x0 | 0x802C8C98 | size: 0xD8
.fn fn_802C8C98, global
/* 802C8C98 002BEA18  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802C8C9C 002BEA1C  7C 2C 0B 78 */	mr r12, r1
/* 802C8CA0 002BEA20  21 6B FF A0 */	subfic r11, r11, -0x60
/* 802C8CA4 002BEA24  7C 21 59 6E */	stwux r1, r1, r11
/* 802C8CA8 002BEA28  7C 08 02 A6 */	mflr r0
/* 802C8CAC 002BEA2C  C1 04 00 1C */	lfs f8, 0x1c(r4)
/* 802C8CB0 002BEA30  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 802C8CB4 002BEA34  90 0C 00 04 */	stw r0, 0x4(r12)
/* 802C8CB8 002BEA38  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 802C8CBC 002BEA3C  FC 40 08 50 */	fneg f2, f1
/* 802C8CC0 002BEA40  93 EC FF FC */	stw r31, -0x4(r12)
/* 802C8CC4 002BEA44  7C 7F 1B 78 */	mr r31, r3
/* 802C8CC8 002BEA48  EC E1 02 3A */	fmadds f7, f1, f8, f0
/* 802C8CCC 002BEA4C  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 802C8CD0 002BEA50  80 A4 00 20 */	lwz r5, 0x20(r4)
/* 802C8CD4 002BEA54  FC 20 30 50 */	fneg f1, f6
/* 802C8CD8 002BEA58  C0 84 00 04 */	lfs f4, 0x4(r4)
/* 802C8CDC 002BEA5C  80 04 00 24 */	lwz r0, 0x24(r4)
/* 802C8CE0 002BEA60  EC C6 22 3A */	fmadds f6, f6, f8, f4
/* 802C8CE4 002BEA64  C0 A4 00 18 */	lfs f5, 0x18(r4)
/* 802C8CE8 002BEA68  C0 64 00 08 */	lfs f3, 0x8(r4)
/* 802C8CEC 002BEA6C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802C8CF0 002BEA70  38 81 00 20 */	addi r4, r1, 0x20
/* 802C8CF4 002BEA74  EC 85 1A 3A */	fmadds f4, f5, f8, f3
/* 802C8CF8 002BEA78  EC 68 02 3A */	fmadds f3, f8, f8, f0
/* 802C8CFC 002BEA7C  90 01 00 40 */	stw r0, 0x40(r1)
/* 802C8D00 002BEA80  FC 00 28 50 */	fneg f0, f5
/* 802C8D04 002BEA84  90 A1 00 44 */	stw r5, 0x44(r1)
/* 802C8D08 002BEA88  D0 E1 00 20 */	stfs f7, 0x20(r1)
/* 802C8D0C 002BEA8C  D0 C1 00 24 */	stfs f6, 0x24(r1)
/* 802C8D10 002BEA90  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 802C8D14 002BEA94  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 802C8D18 002BEA98  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 802C8D1C 002BEA9C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 802C8D20 002BEAA0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 802C8D24 002BEAA4  D1 01 00 3C */	stfs f8, 0x3c(r1)
/* 802C8D28 002BEAA8  80 63 00 08 */	lwz r3, 0x8(r3)
/* 802C8D2C 002BEAAC  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 802C8D30 002BEAB0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C8D34 002BEAB4  D1 01 00 14 */	stfs f8, 0x14(r1)
/* 802C8D38 002BEAB8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802C8D3C 002BEABC  D1 01 00 18 */	stfs f8, 0x18(r1)
/* 802C8D40 002BEAC0  D1 01 00 1C */	stfs f8, 0x1c(r1)
/* 802C8D44 002BEAC4  7D 89 03 A6 */	mtctr r12
/* 802C8D48 002BEAC8  4E 80 04 21 */	bctrl
/* 802C8D4C 002BEACC  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 802C8D50 002BEAD0  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 802C8D54 002BEAD4  D0 1F 00 04 */	stfs f0, 0x4(r31)
/* 802C8D58 002BEAD8  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802C8D5C 002BEADC  83 EA FF FC */	lwz r31, -0x4(r10)
/* 802C8D60 002BEAE0  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802C8D64 002BEAE4  7C 08 03 A6 */	mtlr r0
/* 802C8D68 002BEAE8  7D 41 53 78 */	mr r1, r10
/* 802C8D6C 002BEAEC  4E 80 00 20 */	blr
.endfn fn_802C8C98
