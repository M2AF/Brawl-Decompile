.include "macros.inc"
.file "auto_fn_802B9300_text"

# 0x80007774..0x8000777C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007774 | size: 0x8
.obj "@etb_80007774", local
.hidden "@etb_80007774"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 */
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_80007774"

# 0x8000A690..0x8000A69C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A690 | size: 0xC
.obj "@eti_8000A690", local
.hidden "@eti_8000A690"
	.4byte fn_802B9300
	.4byte 0x000000A4
	.4byte "@etb_80007774"
.endobj "@eti_8000A690"

# 0x802B9300..0x802B93A4 | size: 0xA4
.text
.balign 4

# .text:0x0 | 0x802B9300 | size: 0xA4
.fn fn_802B9300, global
/* 802B9300 002AF080  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B9304 002AF084  7C 08 02 A6 */	mflr r0
/* 802B9308 002AF088  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B930C 002AF08C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B9310 002AF090  3B E0 00 00 */	li r31, 0x0
/* 802B9314 002AF094  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802B9318 002AF098  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802B931C 002AF09C  3B A0 00 00 */	li r29, 0x0
/* 802B9320 002AF0A0  93 81 00 10 */	stw r28, 0x10(r1)
/* 802B9324 002AF0A4  7C 7C 1B 78 */	mr r28, r3
/* 802B9328 002AF0A8  83 C3 00 10 */	lwz r30, 0x10(r3)
/* 802B932C 002AF0AC  48 00 00 30 */	b .L_802B935C
.L_802B9330:
/* 802B9330 002AF0B0  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 802B9334 002AF0B4  7C 83 FA 2E */	lhzx r4, r3, r31
/* 802B9338 002AF0B8  28 04 FF FF */	cmplwi r4, 0xffff
/* 802B933C 002AF0BC  41 82 00 18 */	beq .L_802B9354
/* 802B9340 002AF0C0  80 7C 00 08 */	lwz r3, 0x8(r28)
/* 802B9344 002AF0C4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B9348 002AF0C8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B934C 002AF0CC  7D 89 03 A6 */	mtctr r12
/* 802B9350 002AF0D0  4E 80 04 21 */	bctrl
.L_802B9354:
/* 802B9354 002AF0D4  3B FF 00 02 */	addi r31, r31, 0x2
/* 802B9358 002AF0D8  3B BD 00 01 */	addi r29, r29, 0x1
.L_802B935C:
/* 802B935C 002AF0DC  7C 1D F0 00 */	cmpw r29, r30
/* 802B9360 002AF0E0  41 80 FF D0 */	blt .L_802B9330
/* 802B9364 002AF0E4  2C 1C 00 00 */	cmpwi r28, 0x0
/* 802B9368 002AF0E8  41 82 00 1C */	beq .L_802B9384
/* 802B936C 002AF0EC  81 9C 00 00 */	lwz r12, 0x0(r28)
/* 802B9370 002AF0F0  7F 83 E3 78 */	mr r3, r28
/* 802B9374 002AF0F4  38 80 00 01 */	li r4, 0x1
/* 802B9378 002AF0F8  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802B937C 002AF0FC  7D 89 03 A6 */	mtctr r12
/* 802B9380 002AF100  4E 80 04 21 */	bctrl
.L_802B9384:
/* 802B9384 002AF104  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B9388 002AF108  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B938C 002AF10C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802B9390 002AF110  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802B9394 002AF114  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802B9398 002AF118  7C 08 03 A6 */	mtlr r0
/* 802B939C 002AF11C  38 21 00 20 */	addi r1, r1, 0x20
/* 802B93A0 002AF120  4E 80 00 20 */	blr
.endfn fn_802B9300
