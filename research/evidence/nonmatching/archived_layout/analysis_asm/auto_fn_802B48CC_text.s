.include "macros.inc"
.file "auto_fn_802B48CC_text"

# 0x800074B4..0x800074CC | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x800074B4 | size: 0x18
.obj "@etb_800074B4", local
.hidden "@etb_800074B4"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 * 
 * PC actions:
 * PC=00000064, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A1FD4"
 * Has end bit
 */
	.4byte 0x28080000
	.4byte 0x00000064
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8A80001F
	.4byte dtor_802A1FD4
.endobj "@etb_800074B4"

# 0x8000A4C8..0x8000A4D4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A4C8 | size: 0xC
.obj "@eti_8000A4C8", local
.hidden "@eti_8000A4C8"
	.4byte fn_802B48CC
	.4byte 0x0000007C
	.4byte "@etb_800074B4"
.endobj "@eti_8000A4C8"

# 0x802B48CC..0x802B4948 | size: 0x7C
.text
.balign 4

# .text:0x0 | 0x802B48CC | size: 0x7C
.fn fn_802B48CC, global
/* 802B48CC 002AA64C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B48D0 002AA650  7C 08 02 A6 */	mflr r0
/* 802B48D4 002AA654  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B48D8 002AA658  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802B48DC 002AA65C  7C 7B 1B 78 */	mr r27, r3
/* 802B48E0 002AA660  7C 9C 23 78 */	mr r28, r4
/* 802B48E4 002AA664  7C BD 2B 78 */	mr r29, r5
/* 802B48E8 002AA668  7C DE 33 78 */	mr r30, r6
/* 802B48EC 002AA66C  38 80 00 18 */	li r4, 0x18
/* 802B48F0 002AA670  38 A0 00 1D */	li r5, 0x1d
/* 802B48F4 002AA674  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802B48F8 002AA678  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B48FC 002AA67C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B4900 002AA680  7D 89 03 A6 */	mtctr r12
/* 802B4904 002AA684  4E 80 04 21 */	bctrl
/* 802B4908 002AA688  38 00 00 18 */	li r0, 0x18
/* 802B490C 002AA68C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B4910 002AA690  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802B4914 002AA694  7C 7F 1B 78 */	mr r31, r3
/* 802B4918 002AA698  41 82 00 18 */	beq .L_802B4930
/* 802B491C 002AA69C  7F 64 DB 78 */	mr r4, r27
/* 802B4920 002AA6A0  7F 85 E3 78 */	mr r5, r28
/* 802B4924 002AA6A4  7F A6 EB 78 */	mr r6, r29
/* 802B4928 002AA6A8  7F C7 F3 78 */	mr r7, r30
/* 802B492C 002AA6AC  4B FF FB F9 */	bl fn_802B4524
.L_802B4930:
/* 802B4930 002AA6B0  7F E3 FB 78 */	mr r3, r31
/* 802B4934 002AA6B4  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802B4938 002AA6B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B493C 002AA6BC  7C 08 03 A6 */	mtlr r0
/* 802B4940 002AA6C0  38 21 00 20 */	addi r1, r1, 0x20
/* 802B4944 002AA6C4  4E 80 00 20 */	blr
.endfn fn_802B48CC
