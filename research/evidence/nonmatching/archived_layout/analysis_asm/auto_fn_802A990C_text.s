.include "macros.inc"
.file "auto_fn_802A990C_text"

# 0x80006DEC..0x80006DF4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006DEC | size: 0x8
.obj "@etb_80006DEC", local
.hidden "@etb_80006DEC"
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
.endobj "@etb_80006DEC"

# 0x8000A000..0x8000A00C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A000 | size: 0xC
.obj "@eti_8000A000", global
.hidden "@eti_8000A000"
	.4byte fn_802A990C
	.4byte 0x000000A4
	.4byte "@etb_80006DEC"
.endobj "@eti_8000A000"

# 0x802A990C..0x802A99B0 | size: 0xA4
.text
.balign 4

# .text:0x0 | 0x802A990C | size: 0xA4
.fn fn_802A990C, global
/* 802A990C 0029F68C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9910 0029F690  7C 08 02 A6 */	mflr r0
/* 802A9914 0029F694  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A9918 0029F698  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A991C 0029F69C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9920 0029F6A0  7C 9F 23 78 */	mr r31, r4
/* 802A9924 0029F6A4  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A9928 0029F6A8  7C 7E 1B 78 */	mr r30, r3
/* 802A992C 0029F6AC  41 82 00 68 */	beq .L_802A9994
/* 802A9930 0029F6B0  41 82 00 3C */	beq .L_802A996C
/* 802A9934 0029F6B4  41 82 00 38 */	beq .L_802A996C
/* 802A9938 0029F6B8  41 82 00 34 */	beq .L_802A996C
/* 802A993C 0029F6BC  34 03 00 0C */	addic. r0, r3, 0xc
/* 802A9940 0029F6C0  41 82 00 2C */	beq .L_802A996C
/* 802A9944 0029F6C4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802A9948 0029F6C8  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802A994C 0029F6CC  40 82 00 20 */	bne .L_802A996C
/* 802A9950 0029F6D0  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802A9954 0029F6D4  38 C0 00 15 */	li r6, 0x15
/* 802A9958 0029F6D8  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802A995C 0029F6DC  54 00 00 BE */	clrlwi r0, r0, 2
/* 802A9960 0029F6E0  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802A9964 0029F6E4  1C A0 00 0C */	mulli r5, r0, 0xc
/* 802A9968 0029F6E8  4B FD 51 55 */	bl fn_8027EABC
.L_802A996C:
/* 802A996C 0029F6EC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802A9970 0029F6F0  40 81 00 24 */	ble .L_802A9994
/* 802A9974 0029F6F4  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A9978 0029F6F8  7F C4 F3 78 */	mr r4, r30
/* 802A997C 0029F6FC  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802A9980 0029F700  38 C0 00 1D */	li r6, 0x1d
/* 802A9984 0029F704  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A9988 0029F708  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A998C 0029F70C  7D 89 03 A6 */	mtctr r12
/* 802A9990 0029F710  4E 80 04 21 */	bctrl
.L_802A9994:
/* 802A9994 0029F714  7F C3 F3 78 */	mr r3, r30
/* 802A9998 0029F718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A999C 0029F71C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A99A0 0029F720  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A99A4 0029F724  7C 08 03 A6 */	mtlr r0
/* 802A99A8 0029F728  38 21 00 10 */	addi r1, r1, 0x10
/* 802A99AC 0029F72C  4E 80 00 20 */	blr
.endfn fn_802A990C
