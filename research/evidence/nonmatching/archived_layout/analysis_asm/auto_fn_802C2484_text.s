.include "macros.inc"
.file "auto_fn_802C2484_text"

# 0x80007D08..0x80007D10 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007D08 | size: 0x8
.obj "@etb_80007D08", local
.hidden "@etb_80007D08"
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
.endobj "@etb_80007D08"

# 0x8000AA74..0x8000AA80 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AA74 | size: 0xC
.obj "@eti_8000AA74", local
.hidden "@eti_8000AA74"
	.4byte fn_802C2484
	.4byte 0x00000078
	.4byte "@etb_80007D08"
.endobj "@eti_8000AA74"

# 0x802C2484..0x802C24FC | size: 0x78
.text
.balign 4

# .text:0x0 | 0x802C2484 | size: 0x78
.fn fn_802C2484, global
/* 802C2484 002B8204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C2488 002B8208  7C 08 02 A6 */	mflr r0
/* 802C248C 002B820C  38 80 00 10 */	li r4, 0x10
/* 802C2490 002B8210  38 A0 00 1D */	li r5, 0x1d
/* 802C2494 002B8214  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C2498 002B8218  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C249C 002B821C  7C DF 33 78 */	mr r31, r6
/* 802C24A0 002B8220  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C24A4 002B8224  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C24A8 002B8228  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C24AC 002B822C  7D 89 03 A6 */	mtctr r12
/* 802C24B0 002B8230  4E 80 04 21 */	bctrl
/* 802C24B4 002B8234  38 00 00 10 */	li r0, 0x10
/* 802C24B8 002B8238  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C24BC 002B823C  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802C24C0 002B8240  41 82 00 28 */	beq .L_802C24E8
/* 802C24C4 002B8244  38 00 00 01 */	li r0, 0x1
/* 802C24C8 002B8248  3C 80 80 48 */	lis r4, lbl_80486FB0@ha
/* 802C24CC 002B824C  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802C24D0 002B8250  3C A0 00 01 */	lis r5, 0x1
/* 802C24D4 002B8254  38 05 FF FF */	subi r0, r5, 0x1
/* 802C24D8 002B8258  38 84 6F B0 */	addi r4, r4, lbl_80486FB0@l
/* 802C24DC 002B825C  93 E3 00 08 */	stw r31, 0x8(r3)
/* 802C24E0 002B8260  B0 03 00 0C */	sth r0, 0xc(r3)
/* 802C24E4 002B8264  90 83 00 00 */	stw r4, 0x0(r3)
.L_802C24E8:
/* 802C24E8 002B8268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C24EC 002B826C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C24F0 002B8270  7C 08 03 A6 */	mtlr r0
/* 802C24F4 002B8274  38 21 00 10 */	addi r1, r1, 0x10
/* 802C24F8 002B8278  4E 80 00 20 */	blr
.endfn fn_802C2484
