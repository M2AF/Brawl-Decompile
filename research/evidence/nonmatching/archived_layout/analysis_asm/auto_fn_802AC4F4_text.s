.include "macros.inc"
.file "auto_fn_802AC4F4_text"

# 0x80006F90..0x80006FB4 | size: 0x24
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006F90 | size: 0x24
.obj "@etb_80006F90", local
.hidden "@etb_80006F90"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 * 
 * PC actions:
 * PC=00000090, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYBASE
 * Member: 0x0(r30)
 * Dtor: "dtor_802A0E20"
 * 00001C:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A0DA4"
 * Has end bit
 */
	.4byte 0x18080000
	.4byte 0x00000090
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0680001E
	.4byte 0x00000000
	.4byte dtor_802A0E20
	.4byte 0x8A80001F
	.4byte dtor_802A0DA4
.endobj "@etb_80006F90"

# 0x8000A168..0x8000A174 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A168 | size: 0xC
.obj "@eti_8000A168", local
.hidden "@eti_8000A168"
	.4byte fn_802AC4F4
	.4byte 0x000000B0
	.4byte "@etb_80006F90"
.endobj "@eti_8000A168"

# 0x802AC4F4..0x802AC5A4 | size: 0xB0
.text
.balign 4

# .text:0x0 | 0x802AC4F4 | size: 0xB0
.fn fn_802AC4F4, global
/* 802AC4F4 002A2274  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AC4F8 002A2278  7C 08 02 A6 */	mflr r0
/* 802AC4FC 002A227C  38 A0 00 1D */	li r5, 0x1d
/* 802AC500 002A2280  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AC504 002A2284  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AC508 002A2288  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802AC50C 002A228C  7C DE 33 78 */	mr r30, r6
/* 802AC510 002A2290  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802AC514 002A2294  7C 9D 23 78 */	mr r29, r4
/* 802AC518 002A2298  38 80 00 28 */	li r4, 0x28
/* 802AC51C 002A229C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802AC520 002A22A0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AC524 002A22A4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802AC528 002A22A8  7D 89 03 A6 */	mtctr r12
/* 802AC52C 002A22AC  4E 80 04 21 */	bctrl
/* 802AC530 002A22B0  38 00 00 28 */	li r0, 0x28
/* 802AC534 002A22B4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802AC538 002A22B8  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802AC53C 002A22BC  7C 7F 1B 78 */	mr r31, r3
/* 802AC540 002A22C0  41 82 00 44 */	beq .L_802AC584
/* 802AC544 002A22C4  38 00 00 01 */	li r0, 0x1
/* 802AC548 002A22C8  3C C0 80 48 */	lis r6, lbl_804869E4@ha
/* 802AC54C 002A22CC  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802AC550 002A22D0  3C 80 00 01 */	lis r4, 0x1
/* 802AC554 002A22D4  38 04 FF FF */	subi r0, r4, 0x1
/* 802AC558 002A22D8  38 C6 69 E4 */	addi r6, r6, lbl_804869E4@l
/* 802AC55C 002A22DC  93 C3 00 08 */	stw r30, 0x8(r3)
/* 802AC560 002A22E0  7C 7E 1B 78 */	mr r30, r3
/* 802AC564 002A22E4  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 802AC568 002A22E8  38 83 00 14 */	addi r4, r3, 0x14
/* 802AC56C 002A22EC  90 C3 00 00 */	stw r6, 0x0(r3)
/* 802AC570 002A22F0  B0 03 00 0C */	sth r0, 0xc(r3)
/* 802AC574 002A22F4  B0 03 00 0E */	sth r0, 0xe(r3)
/* 802AC578 002A22F8  B0 03 00 10 */	sth r0, 0x10(r3)
/* 802AC57C 002A22FC  38 65 00 10 */	addi r3, r5, 0x10
/* 802AC580 002A2300  48 07 8D B5 */	bl fn_80325334
.L_802AC584:
/* 802AC584 002A2304  7F E3 FB 78 */	mr r3, r31
/* 802AC588 002A2308  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AC58C 002A230C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802AC590 002A2310  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802AC594 002A2314  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AC598 002A2318  7C 08 03 A6 */	mtlr r0
/* 802AC59C 002A231C  38 21 00 20 */	addi r1, r1, 0x20
/* 802AC5A0 002A2320  4E 80 00 20 */	blr
.endfn fn_802AC4F4
