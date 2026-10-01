.include "macros.inc"
.file "auto_fn_802C3FB0_text"

# 0x80007DE8..0x80007DF0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007DE8 | size: 0x8
.obj "@etb_80007DE8", local
.hidden "@etb_80007DE8"
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
.endobj "@etb_80007DE8"

# 0x8000AB34..0x8000AB40 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AB34 | size: 0xC
.obj "@eti_8000AB34", local
.hidden "@eti_8000AB34"
	.4byte fn_802C3FB0
	.4byte 0x00000078
	.4byte "@etb_80007DE8"
.endobj "@eti_8000AB34"

# 0x802C3FB0..0x802C4028 | size: 0x78
.text
.balign 4

# .text:0x0 | 0x802C3FB0 | size: 0x78
.fn fn_802C3FB0, global
/* 802C3FB0 002B9D30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C3FB4 002B9D34  7C 08 02 A6 */	mflr r0
/* 802C3FB8 002B9D38  38 80 00 10 */	li r4, 0x10
/* 802C3FBC 002B9D3C  38 A0 00 1D */	li r5, 0x1d
/* 802C3FC0 002B9D40  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C3FC4 002B9D44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C3FC8 002B9D48  7C DF 33 78 */	mr r31, r6
/* 802C3FCC 002B9D4C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C3FD0 002B9D50  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C3FD4 002B9D54  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C3FD8 002B9D58  7D 89 03 A6 */	mtctr r12
/* 802C3FDC 002B9D5C  4E 80 04 21 */	bctrl
/* 802C3FE0 002B9D60  38 00 00 10 */	li r0, 0x10
/* 802C3FE4 002B9D64  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C3FE8 002B9D68  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802C3FEC 002B9D6C  41 82 00 28 */	beq .L_802C4014
/* 802C3FF0 002B9D70  38 00 00 01 */	li r0, 0x1
/* 802C3FF4 002B9D74  3C 80 80 48 */	lis r4, lbl_80487028@ha
/* 802C3FF8 002B9D78  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802C3FFC 002B9D7C  3C A0 00 01 */	lis r5, 0x1
/* 802C4000 002B9D80  38 05 FF FF */	subi r0, r5, 0x1
/* 802C4004 002B9D84  38 84 70 28 */	addi r4, r4, lbl_80487028@l
/* 802C4008 002B9D88  93 E3 00 08 */	stw r31, 0x8(r3)
/* 802C400C 002B9D8C  B0 03 00 0C */	sth r0, 0xc(r3)
/* 802C4010 002B9D90  90 83 00 00 */	stw r4, 0x0(r3)
.L_802C4014:
/* 802C4014 002B9D94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C4018 002B9D98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C401C 002B9D9C  7C 08 03 A6 */	mtlr r0
/* 802C4020 002B9DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 802C4024 002B9DA4  4E 80 00 20 */	blr
.endfn fn_802C3FB0
