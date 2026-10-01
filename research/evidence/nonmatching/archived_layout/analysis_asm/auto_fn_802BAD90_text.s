.include "macros.inc"
.file "auto_fn_802BAD90_text"

# 0x80007894..0x8000789C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007894 | size: 0x8
.obj "@etb_80007894", local
.hidden "@etb_80007894"
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
.endobj "@etb_80007894"

# 0x8000A750..0x8000A75C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A750 | size: 0xC
.obj "@eti_8000A750", local
.hidden "@eti_8000A750"
	.4byte fn_802BAD90
	.4byte 0x00000098
	.4byte "@etb_80007894"
.endobj "@eti_8000A750"

# 0x802BAD90..0x802BAE28 | size: 0x98
.text
.balign 4

# .text:0x0 | 0x802BAD90 | size: 0x98
.fn fn_802BAD90, global
/* 802BAD90 002B0B10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BAD94 002B0B14  7C 08 02 A6 */	mflr r0
/* 802BAD98 002B0B18  2C 03 00 00 */	cmpwi r3, 0x0
/* 802BAD9C 002B0B1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BADA0 002B0B20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BADA4 002B0B24  7C 9F 23 78 */	mr r31, r4
/* 802BADA8 002B0B28  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802BADAC 002B0B2C  7C 7E 1B 78 */	mr r30, r3
/* 802BADB0 002B0B30  41 82 00 5C */	beq .L_802BAE0C
/* 802BADB4 002B0B34  34 03 00 0C */	addic. r0, r3, 0xc
/* 802BADB8 002B0B38  41 82 00 2C */	beq .L_802BADE4
/* 802BADBC 002B0B3C  41 82 00 28 */	beq .L_802BADE4
/* 802BADC0 002B0B40  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802BADC4 002B0B44  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802BADC8 002B0B48  40 82 00 1C */	bne .L_802BADE4
/* 802BADCC 002B0B4C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802BADD0 002B0B50  38 C0 00 15 */	li r6, 0x15
/* 802BADD4 002B0B54  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802BADD8 002B0B58  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802BADDC 002B0B5C  54 05 18 38 */	slwi r5, r0, 3
/* 802BADE0 002B0B60  4B FC 3C DD */	bl fn_8027EABC
.L_802BADE4:
/* 802BADE4 002B0B64  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802BADE8 002B0B68  40 81 00 24 */	ble .L_802BAE0C
/* 802BADEC 002B0B6C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802BADF0 002B0B70  7F C4 F3 78 */	mr r4, r30
/* 802BADF4 002B0B74  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802BADF8 002B0B78  38 C0 00 1D */	li r6, 0x1d
/* 802BADFC 002B0B7C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802BAE00 002B0B80  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802BAE04 002B0B84  7D 89 03 A6 */	mtctr r12
/* 802BAE08 002B0B88  4E 80 04 21 */	bctrl
.L_802BAE0C:
/* 802BAE0C 002B0B8C  7F C3 F3 78 */	mr r3, r30
/* 802BAE10 002B0B90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BAE14 002B0B94  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802BAE18 002B0B98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BAE1C 002B0B9C  7C 08 03 A6 */	mtlr r0
/* 802BAE20 002B0BA0  38 21 00 10 */	addi r1, r1, 0x10
/* 802BAE24 002B0BA4  4E 80 00 20 */	blr
.endfn fn_802BAD90
