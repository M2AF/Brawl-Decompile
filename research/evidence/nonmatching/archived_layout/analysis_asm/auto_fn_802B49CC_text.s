.include "macros.inc"
.file "auto_fn_802B49CC_text"

# 0x800074E4..0x800074EC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800074E4 | size: 0x8
.obj "@etb_800074E4", local
.hidden "@etb_800074E4"
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
.endobj "@etb_800074E4"

# 0x8000A4E0..0x8000A4EC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A4E0 | size: 0xC
.obj "@eti_8000A4E0", local
.hidden "@eti_8000A4E0"
	.4byte fn_802B49CC
	.4byte 0x00000094
	.4byte "@etb_800074E4"
.endobj "@eti_8000A4E0"

# 0x802B49CC..0x802B4A60 | size: 0x94
.text
.balign 4

# .text:0x0 | 0x802B49CC | size: 0x94
.fn fn_802B49CC, global
/* 802B49CC 002AA74C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B49D0 002AA750  7C 08 02 A6 */	mflr r0
/* 802B49D4 002AA754  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B49D8 002AA758  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B49DC 002AA75C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B49E0 002AA760  7C 9F 23 78 */	mr r31, r4
/* 802B49E4 002AA764  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802B49E8 002AA768  7C 7E 1B 78 */	mr r30, r3
/* 802B49EC 002AA76C  41 82 00 58 */	beq .L_802B4A44
/* 802B49F0 002AA770  34 03 00 0C */	addic. r0, r3, 0xc
/* 802B49F4 002AA774  41 82 00 28 */	beq .L_802B4A1C
/* 802B49F8 002AA778  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802B49FC 002AA77C  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802B4A00 002AA780  40 82 00 1C */	bne .L_802B4A1C
/* 802B4A04 002AA784  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802B4A08 002AA788  38 C0 00 15 */	li r6, 0x15
/* 802B4A0C 002AA78C  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802B4A10 002AA790  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802B4A14 002AA794  54 05 08 7C */	clrlslwi r5, r0, 2, 1
/* 802B4A18 002AA798  4B FC A0 A5 */	bl fn_8027EABC
.L_802B4A1C:
/* 802B4A1C 002AA79C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802B4A20 002AA7A0  40 81 00 24 */	ble .L_802B4A44
/* 802B4A24 002AA7A4  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802B4A28 002AA7A8  7F C4 F3 78 */	mr r4, r30
/* 802B4A2C 002AA7AC  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802B4A30 002AA7B0  38 C0 00 1D */	li r6, 0x1d
/* 802B4A34 002AA7B4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B4A38 002AA7B8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802B4A3C 002AA7BC  7D 89 03 A6 */	mtctr r12
/* 802B4A40 002AA7C0  4E 80 04 21 */	bctrl
.L_802B4A44:
/* 802B4A44 002AA7C4  7F C3 F3 78 */	mr r3, r30
/* 802B4A48 002AA7C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B4A4C 002AA7CC  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802B4A50 002AA7D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B4A54 002AA7D4  7C 08 03 A6 */	mtlr r0
/* 802B4A58 002AA7D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802B4A5C 002AA7DC  4E 80 00 20 */	blr
.endfn fn_802B49CC
