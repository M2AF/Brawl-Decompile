.include "macros.inc"
.file "auto_fn_802D0914_text"

# 0x800083E0..0x800083E8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800083E0 | size: 0x8
.obj "@etb_800083E0", local
.hidden "@etb_800083E0"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_800083E0"

# 0x8000B140..0x8000B14C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B140 | size: 0xC
.obj "@eti_8000B140", local
.hidden "@eti_8000B140"
	.4byte fn_802D0914
	.4byte 0x00000110
	.4byte "@etb_800083E0"
.endobj "@eti_8000B140"

# 0x802D0914..0x802D0A24 | size: 0x110
.text
.balign 4

# .text:0x0 | 0x802D0914 | size: 0x110
.fn fn_802D0914, global
/* 802D0914 002C6694  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802D0918 002C6698  7C 2C 0B 78 */	mr r12, r1
/* 802D091C 002C669C  21 6B FF A0 */	subfic r11, r11, -0x60
/* 802D0920 002C66A0  7C 21 59 6E */	stwux r1, r1, r11
/* 802D0924 002C66A4  7C 08 02 A6 */	mflr r0
/* 802D0928 002C66A8  C0 02 AD 80 */	lfs f0, lbl_805A40A0@sda21(r0)
/* 802D092C 002C66AC  38 E0 FF FF */	li r7, -0x1
/* 802D0930 002C66B0  90 0C 00 04 */	stw r0, 0x4(r12)
/* 802D0934 002C66B4  38 00 00 00 */	li r0, 0x0
/* 802D0938 002C66B8  93 EC FF FC */	stw r31, -0x4(r12)
/* 802D093C 002C66BC  7C DF 33 78 */	mr r31, r6
/* 802D0940 002C66C0  93 CC FF F8 */	stw r30, -0x8(r12)
/* 802D0944 002C66C4  7C BE 2B 78 */	mr r30, r5
/* 802D0948 002C66C8  38 A1 00 10 */	addi r5, r1, 0x10
/* 802D094C 002C66CC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802D0950 002C66D0  90 E1 00 24 */	stw r7, 0x24(r1)
/* 802D0954 002C66D4  90 01 00 48 */	stw r0, 0x48(r1)
/* 802D0958 002C66D8  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802D095C 002C66DC  C0 06 00 04 */	lfs f0, 0x4(r6)
/* 802D0960 002C66E0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802D0964 002C66E4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D0968 002C66E8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802D096C 002C66EC  7D 89 03 A6 */	mtctr r12
/* 802D0970 002C66F0  4E 80 04 21 */	bctrl
/* 802D0974 002C66F4  54 60 46 3E */	srwi r0, r3, 24
/* 802D0978 002C66F8  7C 00 07 75 */	extsb. r0, r0
/* 802D097C 002C66FC  41 82 00 8C */	beq .L_802D0A08
/* 802D0980 002C6700  80 DE 00 08 */	lwz r6, 0x8(r30)
/* 802D0984 002C6704  7F E3 FB 78 */	mr r3, r31
/* 802D0988 002C6708  C0 A1 00 14 */	lfs f5, 0x14(r1)
/* 802D098C 002C670C  7F C4 F3 78 */	mr r4, r30
/* 802D0990 002C6710  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 802D0994 002C6714  38 A1 00 10 */	addi r5, r1, 0x10
/* 802D0998 002C6718  C0 C1 00 10 */	lfs f6, 0x10(r1)
/* 802D099C 002C671C  EC 45 00 32 */	fmuls f2, f5, f0
/* 802D09A0 002C6720  C0 06 00 00 */	lfs f0, 0x0(r6)
/* 802D09A4 002C6724  C0 81 00 18 */	lfs f4, 0x18(r1)
/* 802D09A8 002C6728  C0 26 00 20 */	lfs f1, 0x20(r6)
/* 802D09AC 002C672C  EC 46 10 3A */	fmadds f2, f6, f0, f2
/* 802D09B0 002C6730  C0 02 AD 84 */	lfs f0, lbl_805A40A4@sda21(r0)
/* 802D09B4 002C6734  EC 24 10 7A */	fmadds f1, f4, f1, f2
/* 802D09B8 002C6738  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802D09BC 002C673C  C0 26 00 14 */	lfs f1, 0x14(r6)
/* 802D09C0 002C6740  C0 46 00 04 */	lfs f2, 0x4(r6)
/* 802D09C4 002C6744  EC 65 00 72 */	fmuls f3, f5, f1
/* 802D09C8 002C6748  C0 26 00 24 */	lfs f1, 0x24(r6)
/* 802D09CC 002C674C  EC 46 18 BA */	fmadds f2, f6, f2, f3
/* 802D09D0 002C6750  EC 24 10 7A */	fmadds f1, f4, f1, f2
/* 802D09D4 002C6754  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 802D09D8 002C6758  C0 26 00 18 */	lfs f1, 0x18(r6)
/* 802D09DC 002C675C  C0 46 00 08 */	lfs f2, 0x8(r6)
/* 802D09E0 002C6760  EC 65 00 72 */	fmuls f3, f5, f1
/* 802D09E4 002C6764  C0 26 00 28 */	lfs f1, 0x28(r6)
/* 802D09E8 002C6768  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802D09EC 002C676C  EC 06 18 BA */	fmadds f0, f6, f2, f3
/* 802D09F0 002C6770  EC 04 00 7A */	fmadds f0, f4, f1, f0
/* 802D09F4 002C6774  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802D09F8 002C6778  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802D09FC 002C677C  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802D0A00 002C6780  7D 89 03 A6 */	mtctr r12
/* 802D0A04 002C6784  4E 80 04 21 */	bctrl
.L_802D0A08:
/* 802D0A08 002C6788  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802D0A0C 002C678C  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802D0A10 002C6790  83 EA FF FC */	lwz r31, -0x4(r10)
/* 802D0A14 002C6794  83 CA FF F8 */	lwz r30, -0x8(r10)
/* 802D0A18 002C6798  7C 08 03 A6 */	mtlr r0
/* 802D0A1C 002C679C  7D 41 53 78 */	mr r1, r10
/* 802D0A20 002C67A0  4E 80 00 20 */	blr
.endfn fn_802D0914
