.include "macros.inc"
.file "auto_fn_802B9284_text"

# 0x8000775C..0x80007774 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000775C | size: 0x18
.obj "@etb_8000775C", local
.hidden "@etb_8000775C"
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
 * Dtor: "dtor_802A0DA4"
 * Has end bit
 */
	.4byte 0x28080000
	.4byte 0x00000064
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8A80001F
	.4byte dtor_802A0DA4
.endobj "@etb_8000775C"

# 0x8000A684..0x8000A690 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A684 | size: 0xC
.obj "@eti_8000A684", local
.hidden "@eti_8000A684"
	.4byte fn_802B9284
	.4byte 0x0000007C
	.4byte "@etb_8000775C"
.endobj "@eti_8000A684"

# 0x802B9284..0x802B9300 | size: 0x7C
.text
.balign 4

# .text:0x0 | 0x802B9284 | size: 0x7C
.fn fn_802B9284, global
/* 802B9284 002AF004  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B9288 002AF008  7C 08 02 A6 */	mflr r0
/* 802B928C 002AF00C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B9290 002AF010  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802B9294 002AF014  7C 7B 1B 78 */	mr r27, r3
/* 802B9298 002AF018  7C 9C 23 78 */	mr r28, r4
/* 802B929C 002AF01C  7C BD 2B 78 */	mr r29, r5
/* 802B92A0 002AF020  7C DE 33 78 */	mr r30, r6
/* 802B92A4 002AF024  38 80 00 20 */	li r4, 0x20
/* 802B92A8 002AF028  38 A0 00 1D */	li r5, 0x1d
/* 802B92AC 002AF02C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802B92B0 002AF030  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B92B4 002AF034  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B92B8 002AF038  7D 89 03 A6 */	mtctr r12
/* 802B92BC 002AF03C  4E 80 04 21 */	bctrl
/* 802B92C0 002AF040  38 00 00 20 */	li r0, 0x20
/* 802B92C4 002AF044  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B92C8 002AF048  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802B92CC 002AF04C  7C 7F 1B 78 */	mr r31, r3
/* 802B92D0 002AF050  41 82 00 18 */	beq .L_802B92E8
/* 802B92D4 002AF054  7F 64 DB 78 */	mr r4, r27
/* 802B92D8 002AF058  7F 85 E3 78 */	mr r5, r28
/* 802B92DC 002AF05C  7F A6 EB 78 */	mr r6, r29
/* 802B92E0 002AF060  7F C7 F3 78 */	mr r7, r30
/* 802B92E4 002AF064  4B FF FC 61 */	bl fn_802B8F44
.L_802B92E8:
/* 802B92E8 002AF068  7F E3 FB 78 */	mr r3, r31
/* 802B92EC 002AF06C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802B92F0 002AF070  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B92F4 002AF074  7C 08 03 A6 */	mtlr r0
/* 802B92F8 002AF078  38 21 00 20 */	addi r1, r1, 0x20
/* 802B92FC 002AF07C  4E 80 00 20 */	blr
.endfn fn_802B9284
