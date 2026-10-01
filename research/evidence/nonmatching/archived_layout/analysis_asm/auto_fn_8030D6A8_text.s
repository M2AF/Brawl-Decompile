.include "macros.inc"
.file "auto_fn_8030D6A8_text"

# 0x80008988..0x80008990 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008988 | size: 0x8
.obj "@etb_80008988", local
.hidden "@etb_80008988"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 */
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_80008988"

# 0x8000B8E4..0x8000B8F0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B8E4 | size: 0xC
.obj "@eti_8000B8E4", local
.hidden "@eti_8000B8E4"
	.4byte fn_8030D6A8
	.4byte 0x000000B0
	.4byte "@etb_80008988"
.endobj "@eti_8000B8E4"

# 0x8030D6A8..0x8030D758 | size: 0xB0
.text
.balign 4

# .text:0x0 | 0x8030D6A8 | size: 0xB0
.fn fn_8030D6A8, global
/* 8030D6A8 00303428  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8030D6AC 0030342C  7C 08 02 A6 */	mflr r0
/* 8030D6B0 00303430  90 01 00 24 */	stw r0, 0x24(r1)
/* 8030D6B4 00303434  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 8030D6B8 00303438  7C 7B 1B 78 */	mr r27, r3
/* 8030D6BC 0030343C  7C 9C 23 78 */	mr r28, r4
/* 8030D6C0 00303440  80 04 00 08 */	lwz r0, 0x8(r4)
/* 8030D6C4 00303444  80 A3 00 A0 */	lwz r5, 0xa0(r3)
/* 8030D6C8 00303448  80 63 00 74 */	lwz r3, 0x74(r3)
/* 8030D6CC 0030344C  54 00 00 BE */	clrlwi r0, r0, 2
/* 8030D6D0 00303450  7C 85 18 50 */	subf r4, r5, r3
/* 8030D6D4 00303454  7C 00 20 00 */	cmpw r0, r4
/* 8030D6D8 00303458  40 80 00 10 */	bge .L_8030D6E8
/* 8030D6DC 0030345C  7F 83 E3 78 */	mr r3, r28
/* 8030D6E0 00303460  38 A0 00 20 */	li r5, 0x20
/* 8030D6E4 00303464  4B F6 F6 B1 */	bl fn_8027CD94
.L_8030D6E8:
/* 8030D6E8 00303468  80 7B 00 A0 */	lwz r3, 0xa0(r27)
/* 8030D6EC 0030346C  3B E0 00 00 */	li r31, 0x0
/* 8030D6F0 00303470  80 1B 00 74 */	lwz r0, 0x74(r27)
/* 8030D6F4 00303474  3B A0 00 00 */	li r29, 0x0
/* 8030D6F8 00303478  3B C0 00 00 */	li r30, 0x0
/* 8030D6FC 0030347C  7C 03 00 50 */	subf r0, r3, r0
/* 8030D700 00303480  90 1C 00 04 */	stw r0, 0x4(r28)
/* 8030D704 00303484  48 00 00 34 */	b .L_8030D738
.L_8030D708:
/* 8030D708 00303488  80 1B 00 70 */	lwz r0, 0x70(r27)
/* 8030D70C 0030348C  7C 80 F2 14 */	add r4, r0, r30
/* 8030D710 00303490  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8030D714 00303494  54 00 07 FF */	clrlwi. r0, r0, 31
/* 8030D718 00303498  40 82 00 18 */	bne .L_8030D730
/* 8030D71C 0030349C  80 1C 00 00 */	lwz r0, 0x0(r28)
/* 8030D720 003034A0  7F 63 DB 78 */	mr r3, r27
/* 8030D724 003034A4  7C A0 FA 14 */	add r5, r0, r31
/* 8030D728 003034A8  3B FF 00 20 */	addi r31, r31, 0x20
/* 8030D72C 003034AC  48 00 50 7D */	bl fn_803127A8
.L_8030D730:
/* 8030D730 003034B0  3B DE 00 10 */	addi r30, r30, 0x10
/* 8030D734 003034B4  3B BD 00 01 */	addi r29, r29, 0x1
.L_8030D738:
/* 8030D738 003034B8  80 1B 00 74 */	lwz r0, 0x74(r27)
/* 8030D73C 003034BC  7C 1D 00 00 */	cmpw r29, r0
/* 8030D740 003034C0  41 80 FF C8 */	blt .L_8030D708
/* 8030D744 003034C4  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8030D748 003034C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030D74C 003034CC  7C 08 03 A6 */	mtlr r0
/* 8030D750 003034D0  38 21 00 20 */	addi r1, r1, 0x20
/* 8030D754 003034D4  4E 80 00 20 */	blr
.endfn fn_8030D6A8
