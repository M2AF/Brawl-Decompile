.include "macros.inc"
.file "auto_fn_802C4084_text"

# 0x80007DF8..0x80007E00 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007DF8 | size: 0x8
.obj "@etb_80007DF8", local
.hidden "@etb_80007DF8"
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
.endobj "@etb_80007DF8"

# 0x8000AB4C..0x8000AB58 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AB4C | size: 0xC
.obj "@eti_8000AB4C", local
.hidden "@eti_8000AB4C"
	.4byte fn_802C4084
	.4byte 0x00000078
	.4byte "@etb_80007DF8"
.endobj "@eti_8000AB4C"

# 0x802C4084..0x802C40FC | size: 0x78
.text
.balign 4

# .text:0x0 | 0x802C4084 | size: 0x78
.fn fn_802C4084, global
/* 802C4084 002B9E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C4088 002B9E08  7C 08 02 A6 */	mflr r0
/* 802C408C 002B9E0C  38 80 00 10 */	li r4, 0x10
/* 802C4090 002B9E10  38 A0 00 1D */	li r5, 0x1d
/* 802C4094 002B9E14  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C4098 002B9E18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C409C 002B9E1C  7C DF 33 78 */	mr r31, r6
/* 802C40A0 002B9E20  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C40A4 002B9E24  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C40A8 002B9E28  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C40AC 002B9E2C  7D 89 03 A6 */	mtctr r12
/* 802C40B0 002B9E30  4E 80 04 21 */	bctrl
/* 802C40B4 002B9E34  38 00 00 10 */	li r0, 0x10
/* 802C40B8 002B9E38  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C40BC 002B9E3C  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802C40C0 002B9E40  41 82 00 28 */	beq .L_802C40E8
/* 802C40C4 002B9E44  38 00 00 01 */	li r0, 0x1
/* 802C40C8 002B9E48  3C A0 80 48 */	lis r5, lbl_80487064@ha
/* 802C40CC 002B9E4C  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802C40D0 002B9E50  3C 80 00 01 */	lis r4, 0x1
/* 802C40D4 002B9E54  38 A5 70 64 */	addi r5, r5, lbl_80487064@l
/* 802C40D8 002B9E58  93 E3 00 08 */	stw r31, 0x8(r3)
/* 802C40DC 002B9E5C  38 04 FF FF */	subi r0, r4, 0x1
/* 802C40E0 002B9E60  90 A3 00 00 */	stw r5, 0x0(r3)
/* 802C40E4 002B9E64  B0 03 00 0C */	sth r0, 0xc(r3)
.L_802C40E8:
/* 802C40E8 002B9E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C40EC 002B9E6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C40F0 002B9E70  7C 08 03 A6 */	mtlr r0
/* 802C40F4 002B9E74  38 21 00 10 */	addi r1, r1, 0x10
/* 802C40F8 002B9E78  4E 80 00 20 */	blr
.endfn fn_802C4084
