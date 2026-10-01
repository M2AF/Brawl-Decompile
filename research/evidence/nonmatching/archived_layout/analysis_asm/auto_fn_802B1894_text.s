.include "macros.inc"
.file "auto_fn_802B1894_text"

# 0x800073A8..0x800073B0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800073A8 | size: 0x8
.obj "@etb_800073A8", local
.hidden "@etb_800073A8"
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
.endobj "@etb_800073A8"

# 0x8000A3E4..0x8000A3F0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A3E4 | size: 0xC
.obj "@eti_8000A3E4", local
.hidden "@eti_8000A3E4"
	.4byte fn_802B1894
	.4byte 0x000000A4
	.4byte "@etb_800073A8"
.endobj "@eti_8000A3E4"

# 0x802B1894..0x802B1938 | size: 0xA4
.text
.balign 4

# .text:0x0 | 0x802B1894 | size: 0xA4
.fn fn_802B1894, global
/* 802B1894 002A7614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B1898 002A7618  7C 08 02 A6 */	mflr r0
/* 802B189C 002A761C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B18A0 002A7620  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B18A4 002A7624  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B18A8 002A7628  7C 9F 23 78 */	mr r31, r4
/* 802B18AC 002A762C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802B18B0 002A7630  7C 7E 1B 78 */	mr r30, r3
/* 802B18B4 002A7634  41 82 00 68 */	beq .L_802B191C
/* 802B18B8 002A7638  41 82 00 3C */	beq .L_802B18F4
/* 802B18BC 002A763C  41 82 00 38 */	beq .L_802B18F4
/* 802B18C0 002A7640  34 03 00 10 */	addic. r0, r3, 0x10
/* 802B18C4 002A7644  41 82 00 30 */	beq .L_802B18F4
/* 802B18C8 002A7648  41 82 00 2C */	beq .L_802B18F4
/* 802B18CC 002A764C  41 82 00 28 */	beq .L_802B18F4
/* 802B18D0 002A7650  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802B18D4 002A7654  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802B18D8 002A7658  40 82 00 1C */	bne .L_802B18F4
/* 802B18DC 002A765C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 802B18E0 002A7660  38 C0 00 15 */	li r6, 0x15
/* 802B18E4 002A7664  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802B18E8 002A7668  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 802B18EC 002A766C  54 05 10 3A */	slwi r5, r0, 2
/* 802B18F0 002A7670  4B FC D1 CD */	bl fn_8027EABC
.L_802B18F4:
/* 802B18F4 002A7674  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802B18F8 002A7678  40 81 00 24 */	ble .L_802B191C
/* 802B18FC 002A767C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802B1900 002A7680  7F C4 F3 78 */	mr r4, r30
/* 802B1904 002A7684  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802B1908 002A7688  38 C0 00 1D */	li r6, 0x1d
/* 802B190C 002A768C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B1910 002A7690  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802B1914 002A7694  7D 89 03 A6 */	mtctr r12
/* 802B1918 002A7698  4E 80 04 21 */	bctrl
.L_802B191C:
/* 802B191C 002A769C  7F C3 F3 78 */	mr r3, r30
/* 802B1920 002A76A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B1924 002A76A4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802B1928 002A76A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B192C 002A76AC  7C 08 03 A6 */	mtlr r0
/* 802B1930 002A76B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802B1934 002A76B4  4E 80 00 20 */	blr
.endfn fn_802B1894
