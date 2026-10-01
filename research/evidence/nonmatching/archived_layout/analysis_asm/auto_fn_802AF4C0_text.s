.include "macros.inc"
.file "auto_fn_802AF4C0_text"

# 0x80007118..0x80007140 | size: 0x28
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007118 | size: 0x28
.obj "@etb_80007118", local
.hidden "@etb_80007118"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 * 
 * PC actions:
 * PC=00000068, Action: 000018
 * PC=000000BC, Action: 000020
 * 
 * Exception actions:
 * 000018:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A0DA4"
 * Has end bit
 * 000020:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A1FD4"
 * Has end bit
 */
	.4byte 0x28080000
	.4byte 0x00000068
	.4byte 0x00000018
	.4byte 0x000000BC
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x8A80001F
	.4byte dtor_802A0DA4
	.4byte 0x8A80001F
	.4byte dtor_802A1FD4
.endobj "@etb_80007118"

# 0x8000A288..0x8000A294 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A288 | size: 0xC
.obj "@eti_8000A288", local
.hidden "@eti_8000A288"
	.4byte fn_802AF4C0
	.4byte 0x000000E0
	.4byte "@etb_80007118"
.endobj "@eti_8000A288"

# 0x802AF4C0..0x802AF5A0 | size: 0xE0
.text
.balign 4

# .text:0x0 | 0x802AF4C0 | size: 0xE0
.fn fn_802AF4C0, global
/* 802AF4C0 002A5240  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AF4C4 002A5244  7C 08 02 A6 */	mflr r0
/* 802AF4C8 002A5248  2C 06 00 00 */	cmpwi r6, 0x0
/* 802AF4CC 002A524C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AF4D0 002A5250  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802AF4D4 002A5254  7C 7B 1B 78 */	mr r27, r3
/* 802AF4D8 002A5258  7C 9C 23 78 */	mr r28, r4
/* 802AF4DC 002A525C  7C BD 2B 78 */	mr r29, r5
/* 802AF4E0 002A5260  7C DE 33 78 */	mr r30, r6
/* 802AF4E4 002A5264  41 82 00 58 */	beq .L_802AF53C
/* 802AF4E8 002A5268  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802AF4EC 002A526C  38 80 00 80 */	li r4, 0x80
/* 802AF4F0 002A5270  38 A0 00 1D */	li r5, 0x1d
/* 802AF4F4 002A5274  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AF4F8 002A5278  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802AF4FC 002A527C  7D 89 03 A6 */	mtctr r12
/* 802AF500 002A5280  4E 80 04 21 */	bctrl
/* 802AF504 002A5284  38 00 00 80 */	li r0, 0x80
/* 802AF508 002A5288  7C 7F 1B 79 */	mr. r31, r3
/* 802AF50C 002A528C  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802AF510 002A5290  41 82 00 24 */	beq .L_802AF534
/* 802AF514 002A5294  7F 84 E3 78 */	mr r4, r28
/* 802AF518 002A5298  7F 65 DB 78 */	mr r5, r27
/* 802AF51C 002A529C  7F A6 EB 78 */	mr r6, r29
/* 802AF520 002A52A0  7F C7 F3 78 */	mr r7, r30
/* 802AF524 002A52A4  4B FF FC 25 */	bl fn_802AF148
/* 802AF528 002A52A8  3C 60 80 48 */	lis r3, lbl_80486A6C@ha
/* 802AF52C 002A52AC  38 63 6A 6C */	addi r3, r3, lbl_80486A6C@l
/* 802AF530 002A52B0  90 7F 00 00 */	stw r3, 0x0(r31)
.L_802AF534:
/* 802AF534 002A52B4  7F E3 FB 78 */	mr r3, r31
/* 802AF538 002A52B8  48 00 00 54 */	b .L_802AF58C
.L_802AF53C:
/* 802AF53C 002A52BC  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802AF540 002A52C0  38 80 00 20 */	li r4, 0x20
/* 802AF544 002A52C4  38 A0 00 1D */	li r5, 0x1d
/* 802AF548 002A52C8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AF54C 002A52CC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802AF550 002A52D0  7D 89 03 A6 */	mtctr r12
/* 802AF554 002A52D4  4E 80 04 21 */	bctrl
/* 802AF558 002A52D8  38 00 00 20 */	li r0, 0x20
/* 802AF55C 002A52DC  7C 7F 1B 79 */	mr. r31, r3
/* 802AF560 002A52E0  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802AF564 002A52E4  41 82 00 24 */	beq .L_802AF588
/* 802AF568 002A52E8  7F 84 E3 78 */	mr r4, r28
/* 802AF56C 002A52EC  7F 65 DB 78 */	mr r5, r27
/* 802AF570 002A52F0  7F A6 EB 78 */	mr r6, r29
/* 802AF574 002A52F4  7F C7 F3 78 */	mr r7, r30
/* 802AF578 002A52F8  48 00 92 41 */	bl fn_802B87B8
/* 802AF57C 002A52FC  3C 60 80 48 */	lis r3, lbl_80486A30@ha
/* 802AF580 002A5300  38 63 6A 30 */	addi r3, r3, lbl_80486A30@l
/* 802AF584 002A5304  90 7F 00 00 */	stw r3, 0x0(r31)
.L_802AF588:
/* 802AF588 002A5308  7F E3 FB 78 */	mr r3, r31
.L_802AF58C:
/* 802AF58C 002A530C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802AF590 002A5310  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AF594 002A5314  7C 08 03 A6 */	mtlr r0
/* 802AF598 002A5318  38 21 00 20 */	addi r1, r1, 0x20
/* 802AF59C 002A531C  4E 80 00 20 */	blr
.endfn fn_802AF4C0
