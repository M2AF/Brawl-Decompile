.include "macros.inc"
.file "auto_fn_802CC72C_text"

# 0x80008268..0x80008270 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008268 | size: 0x8
.obj "@etb_80008268", local
.hidden "@etb_80008268"
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
.endobj "@etb_80008268"

# 0x8000AF24..0x8000AF30 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AF24 | size: 0xC
.obj "@eti_8000AF24", local
.hidden "@eti_8000AF24"
	.4byte fn_802CC72C
	.4byte 0x00000094
	.4byte "@etb_80008268"
.endobj "@eti_8000AF24"

# 0x802CC72C..0x802CC7C0 | size: 0x94
.text
.balign 4

# .text:0x0 | 0x802CC72C | size: 0x94
.fn fn_802CC72C, global
/* 802CC72C 002C24AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CC730 002C24B0  7C 08 02 A6 */	mflr r0
/* 802CC734 002C24B4  54 87 10 3A */	slwi r7, r4, 2
/* 802CC738 002C24B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CC73C 002C24BC  54 A0 10 3A */	slwi r0, r5, 2
/* 802CC740 002C24C0  7C E3 3A 14 */	add r7, r3, r7
/* 802CC744 002C24C4  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802CC748 002C24C8  7C 7B 1B 78 */	mr r27, r3
/* 802CC74C 002C24CC  7C 63 02 14 */	add r3, r3, r0
/* 802CC750 002C24D0  7C 9C 23 78 */	mr r28, r4
/* 802CC754 002C24D4  7C DD 33 78 */	mr r29, r6
/* 802CC758 002C24D8  3B C0 00 00 */	li r30, 0x0
/* 802CC75C 002C24DC  3B E0 00 00 */	li r31, 0x0
/* 802CC760 002C24E0  80 A7 01 0C */	lwz r5, 0x10c(r7)
/* 802CC764 002C24E4  80 03 01 0C */	lwz r0, 0x10c(r3)
/* 802CC768 002C24E8  7C A0 03 78 */	or r0, r5, r0
/* 802CC76C 002C24EC  90 07 01 0C */	stw r0, 0x10c(r7)
/* 802CC770 002C24F0  48 00 00 30 */	b .L_802CC7A0
.L_802CC774:
/* 802CC774 002C24F4  80 1B 1C 18 */	lwz r0, 0x1c18(r27)
/* 802CC778 002C24F8  7C 60 FA 14 */	add r3, r0, r31
/* 802CC77C 002C24FC  80 A3 00 04 */	lwz r5, 0x4(r3)
/* 802CC780 002C2500  7C 05 E0 00 */	cmpw r5, r28
/* 802CC784 002C2504  40 82 00 14 */	bne .L_802CC798
/* 802CC788 002C2508  80 83 00 00 */	lwz r4, 0x0(r3)
/* 802CC78C 002C250C  7F 63 DB 78 */	mr r3, r27
/* 802CC790 002C2510  38 DD 00 01 */	addi r6, r29, 0x1
/* 802CC794 002C2514  4B FF FF 99 */	bl fn_802CC72C
.L_802CC798:
/* 802CC798 002C2518  3B FF 00 08 */	addi r31, r31, 0x8
/* 802CC79C 002C251C  3B DE 00 01 */	addi r30, r30, 0x1
.L_802CC7A0:
/* 802CC7A0 002C2520  80 1B 1C 1C */	lwz r0, 0x1c1c(r27)
/* 802CC7A4 002C2524  7C 1E 00 00 */	cmpw r30, r0
/* 802CC7A8 002C2528  41 80 FF CC */	blt .L_802CC774
/* 802CC7AC 002C252C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802CC7B0 002C2530  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CC7B4 002C2534  7C 08 03 A6 */	mtlr r0
/* 802CC7B8 002C2538  38 21 00 20 */	addi r1, r1, 0x20
/* 802CC7BC 002C253C  4E 80 00 20 */	blr
.endfn fn_802CC72C
