.include "macros.inc"
.file "auto_fn_802A3F80_text"

# 0x80006A70..0x80006A78 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A70 | size: 0x8
.obj "@etb_80006A70", local
.hidden "@etb_80006A70"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved FPR range: fp30-fp31
 * Saved GPR range: r29-r31
 */
	.4byte 0x18880000
	.4byte 0x00000000
.endobj "@etb_80006A70"

# 0x80009E08..0x80009E14 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009E08 | size: 0xC
.obj "@eti_80009E08", local
.hidden "@eti_80009E08"
	.4byte fn_802A3F80
	.4byte 0x00000098
	.4byte "@etb_80006A70"
.endobj "@eti_80009E08"

# 0x802A3F80..0x802A4018 | size: 0x98
.text
.balign 4

# .text:0x0 | 0x802A3F80 | size: 0x98
.fn fn_802A3F80, global
/* 802A3F80 00299D00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A3F84 00299D04  7C 08 02 A6 */	mflr r0
/* 802A3F88 00299D08  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A3F8C 00299D0C  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 802A3F90 00299D10  FF E0 10 90 */	fmr f31, f2
/* 802A3F94 00299D14  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 802A3F98 00299D18  FF C0 08 90 */	fmr f30, f1
/* 802A3F9C 00299D1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A3FA0 00299D20  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A3FA4 00299D24  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802A3FA8 00299D28  7C 9D 23 78 */	mr r29, r4
/* 802A3FAC 00299D2C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802A3FB0 00299D30  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 802A3FB4 00299D34  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802A3FB8 00299D38  7F DF 02 14 */	add r30, r31, r0
/* 802A3FBC 00299D3C  48 00 00 30 */	b .L_802A3FEC
.L_802A3FC0:
/* 802A3FC0 00299D40  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 802A3FC4 00299D44  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A3FC8 00299D48  41 82 00 20 */	beq .L_802A3FE8
/* 802A3FCC 00299D4C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A3FD0 00299D50  FC 20 F0 90 */	fmr f1, f30
/* 802A3FD4 00299D54  FC 40 F8 90 */	fmr f2, f31
/* 802A3FD8 00299D58  7F A4 EB 78 */	mr r4, r29
/* 802A3FDC 00299D5C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802A3FE0 00299D60  7D 89 03 A6 */	mtctr r12
/* 802A3FE4 00299D64  4E 80 04 21 */	bctrl
.L_802A3FE8:
/* 802A3FE8 00299D68  3B FF 00 0C */	addi r31, r31, 0xc
.L_802A3FEC:
/* 802A3FEC 00299D6C  7C 1F F0 40 */	cmplw r31, r30
/* 802A3FF0 00299D70  40 82 FF D0 */	bne .L_802A3FC0
/* 802A3FF4 00299D74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A3FF8 00299D78  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 802A3FFC 00299D7C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 802A4000 00299D80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A4004 00299D84  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A4008 00299D88  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802A400C 00299D8C  7C 08 03 A6 */	mtlr r0
/* 802A4010 00299D90  38 21 00 30 */	addi r1, r1, 0x30
/* 802A4014 00299D94  4E 80 00 20 */	blr
.endfn fn_802A3F80
