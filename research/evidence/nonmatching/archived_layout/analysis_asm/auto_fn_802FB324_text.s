.include "macros.inc"
.file "auto_fn_802FB324_text"

# 0x8000866C..0x80008674 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000866C | size: 0x8
.obj "@etb_8000866C", local
.hidden "@etb_8000866C"
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
.endobj "@etb_8000866C"

# 0x8000B4F4..0x8000B500 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B4F4 | size: 0xC
.obj "@eti_8000B4F4", local
.hidden "@eti_8000B4F4"
	.4byte fn_802FB324
	.4byte 0x00000080
	.4byte "@etb_8000866C"
.endobj "@eti_8000B4F4"

# 0x802FB324..0x802FB3A4 | size: 0x80
.text
.balign 4

# .text:0x0 | 0x802FB324 | size: 0x80
.fn fn_802FB324, global
/* 802FB324 002F10A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FB328 002F10A8  7C 08 02 A6 */	mflr r0
/* 802FB32C 002F10AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FB330 002F10B0  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802FB334 002F10B4  7C 9C 23 78 */	mr r28, r4
/* 802FB338 002F10B8  7C 7B 1B 78 */	mr r27, r3
/* 802FB33C 002F10BC  7C BD 2B 78 */	mr r29, r5
/* 802FB340 002F10C0  7F 9F E3 78 */	mr r31, r28
/* 802FB344 002F10C4  3B C0 00 00 */	li r30, 0x0
/* 802FB348 002F10C8  48 00 00 2C */	b .L_802FB374
.L_802FB34C:
/* 802FB34C 002F10CC  A0 9F 00 02 */	lhz r4, 0x2(r31)
/* 802FB350 002F10D0  28 04 FF FF */	cmplwi r4, 0xffff
/* 802FB354 002F10D4  41 82 00 18 */	beq .L_802FB36C
/* 802FB358 002F10D8  81 9D 00 00 */	lwz r12, 0x0(r29)
/* 802FB35C 002F10DC  7F A3 EB 78 */	mr r3, r29
/* 802FB360 002F10E0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802FB364 002F10E4  7D 89 03 A6 */	mtctr r12
/* 802FB368 002F10E8  4E 80 04 21 */	bctrl
.L_802FB36C:
/* 802FB36C 002F10EC  3B FF 00 04 */	addi r31, r31, 0x4
/* 802FB370 002F10F0  3B DE 00 01 */	addi r30, r30, 0x1
.L_802FB374:
/* 802FB374 002F10F4  88 1C 00 21 */	lbz r0, 0x21(r28)
/* 802FB378 002F10F8  7C 1E 00 00 */	cmpw r30, r0
/* 802FB37C 002F10FC  41 80 FF D0 */	blt .L_802FB34C
/* 802FB380 002F1100  38 00 00 00 */	li r0, 0x0
/* 802FB384 002F1104  38 7C 00 50 */	addi r3, r28, 0x50
/* 802FB388 002F1108  98 1C 00 21 */	stb r0, 0x21(r28)
/* 802FB38C 002F110C  98 1B 00 02 */	stb r0, 0x2(r27)
/* 802FB390 002F1110  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802FB394 002F1114  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FB398 002F1118  7C 08 03 A6 */	mtlr r0
/* 802FB39C 002F111C  38 21 00 20 */	addi r1, r1, 0x20
/* 802FB3A0 002F1120  4E 80 00 20 */	blr
.endfn fn_802FB324
