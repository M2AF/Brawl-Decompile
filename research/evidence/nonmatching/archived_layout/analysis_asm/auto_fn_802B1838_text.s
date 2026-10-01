.include "macros.inc"
.file "auto_fn_802B1838_text"

# 0x800073A0..0x800073A8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800073A0 | size: 0x8
.obj "@etb_800073A0", local
.hidden "@etb_800073A0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800073A0"

# 0x8000A3D8..0x8000A3E4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A3D8 | size: 0xC
.obj "@eti_8000A3D8", local
.hidden "@eti_8000A3D8"
	.4byte fn_802B1838
	.4byte 0x0000005C
	.4byte "@etb_800073A0"
.endobj "@eti_8000A3D8"

# 0x802B1838..0x802B1894 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802B1838 | size: 0x5C
.fn fn_802B1838, global
/* 802B1838 002A75B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B183C 002A75BC  7C 08 02 A6 */	mflr r0
/* 802B1840 002A75C0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B1844 002A75C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B1848 002A75C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B184C 002A75CC  7C 7F 1B 78 */	mr r31, r3
/* 802B1850 002A75D0  41 82 00 2C */	beq .L_802B187C
/* 802B1854 002A75D4  2C 04 00 00 */	cmpwi r4, 0x0
/* 802B1858 002A75D8  40 81 00 24 */	ble .L_802B187C
/* 802B185C 002A75DC  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802B1860 002A75E0  7F E4 FB 78 */	mr r4, r31
/* 802B1864 002A75E4  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802B1868 002A75E8  38 C0 00 1D */	li r6, 0x1d
/* 802B186C 002A75EC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B1870 002A75F0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802B1874 002A75F4  7D 89 03 A6 */	mtctr r12
/* 802B1878 002A75F8  4E 80 04 21 */	bctrl
.L_802B187C:
/* 802B187C 002A75FC  7F E3 FB 78 */	mr r3, r31
/* 802B1880 002A7600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B1884 002A7604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B1888 002A7608  7C 08 03 A6 */	mtlr r0
/* 802B188C 002A760C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B1890 002A7610  4E 80 00 20 */	blr
.endfn fn_802B1838
