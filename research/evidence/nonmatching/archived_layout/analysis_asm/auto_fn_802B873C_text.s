.include "macros.inc"
.file "auto_fn_802B873C_text"

# 0x80007684..0x8000769C | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007684 | size: 0x18
.obj "@etb_80007684", local
.hidden "@etb_80007684"
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
.endobj "@etb_80007684"

# 0x8000A5E8..0x8000A5F4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A5E8 | size: 0xC
.obj "@eti_8000A5E8", local
.hidden "@eti_8000A5E8"
	.4byte fn_802B873C
	.4byte 0x0000007C
	.4byte "@etb_80007684"
.endobj "@eti_8000A5E8"

# 0x802B873C..0x802B87B8 | size: 0x7C
.text
.balign 4

# .text:0x0 | 0x802B873C | size: 0x7C
.fn fn_802B873C, global
/* 802B873C 002AE4BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B8740 002AE4C0  7C 08 02 A6 */	mflr r0
/* 802B8744 002AE4C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B8748 002AE4C8  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802B874C 002AE4CC  7C 7B 1B 78 */	mr r27, r3
/* 802B8750 002AE4D0  7C 9C 23 78 */	mr r28, r4
/* 802B8754 002AE4D4  7C BD 2B 78 */	mr r29, r5
/* 802B8758 002AE4D8  7C DE 33 78 */	mr r30, r6
/* 802B875C 002AE4DC  38 80 00 20 */	li r4, 0x20
/* 802B8760 002AE4E0  38 A0 00 1D */	li r5, 0x1d
/* 802B8764 002AE4E4  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802B8768 002AE4E8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B876C 002AE4EC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B8770 002AE4F0  7D 89 03 A6 */	mtctr r12
/* 802B8774 002AE4F4  4E 80 04 21 */	bctrl
/* 802B8778 002AE4F8  38 00 00 20 */	li r0, 0x20
/* 802B877C 002AE4FC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B8780 002AE500  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802B8784 002AE504  7C 7F 1B 78 */	mr r31, r3
/* 802B8788 002AE508  41 82 00 18 */	beq .L_802B87A0
/* 802B878C 002AE50C  7F 64 DB 78 */	mr r4, r27
/* 802B8790 002AE510  7F 85 E3 78 */	mr r5, r28
/* 802B8794 002AE514  7F A6 EB 78 */	mr r6, r29
/* 802B8798 002AE518  7F C7 F3 78 */	mr r7, r30
/* 802B879C 002AE51C  48 00 00 1D */	bl fn_802B87B8
.L_802B87A0:
/* 802B87A0 002AE520  7F E3 FB 78 */	mr r3, r31
/* 802B87A4 002AE524  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802B87A8 002AE528  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B87AC 002AE52C  7C 08 03 A6 */	mtlr r0
/* 802B87B0 002AE530  38 21 00 20 */	addi r1, r1, 0x20
/* 802B87B4 002AE534  4E 80 00 20 */	blr
.endfn fn_802B873C
