.include "macros.inc"
.file "auto_fn_802A9D54_text"

# 0x80006E3C..0x80006E54 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006E3C | size: 0x18
.obj "@etb_80006E3C", local
.hidden "@etb_80006E3C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 * 
 * PC actions:
 * PC=00000060, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A1FD4"
 * Has end bit
 */
	.4byte 0x28080000
	.4byte 0x00000060
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8A80001F
	.4byte dtor_802A1FD4
.endobj "@etb_80006E3C"

# 0x8000A048..0x8000A054 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A048 | size: 0xC
.obj "@eti_8000A048", local
.hidden "@eti_8000A048"
	.4byte fn_802A9D54
	.4byte 0x00000084
	.4byte "@etb_80006E3C"
.endobj "@eti_8000A048"

# 0x802A9D54..0x802A9DD8 | size: 0x84
.text
.balign 4

# .text:0x0 | 0x802A9D54 | size: 0x84
.fn fn_802A9D54, global
/* 802A9D54 0029FAD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A9D58 0029FAD8  7C 08 02 A6 */	mflr r0
/* 802A9D5C 0029FADC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A9D60 0029FAE0  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802A9D64 0029FAE4  7C 7B 1B 78 */	mr r27, r3
/* 802A9D68 0029FAE8  7C 9C 23 78 */	mr r28, r4
/* 802A9D6C 0029FAEC  7C BD 2B 78 */	mr r29, r5
/* 802A9D70 0029FAF0  7C DE 33 78 */	mr r30, r6
/* 802A9D74 0029FAF4  38 80 00 40 */	li r4, 0x40
/* 802A9D78 0029FAF8  38 A0 00 1D */	li r5, 0x1d
/* 802A9D7C 0029FAFC  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A9D80 0029FB00  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A9D84 0029FB04  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802A9D88 0029FB08  7D 89 03 A6 */	mtctr r12
/* 802A9D8C 0029FB0C  4E 80 04 21 */	bctrl
/* 802A9D90 0029FB10  38 00 00 40 */	li r0, 0x40
/* 802A9D94 0029FB14  7C 7F 1B 79 */	mr. r31, r3
/* 802A9D98 0029FB18  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802A9D9C 0029FB1C  41 82 00 24 */	beq .L_802A9DC0
/* 802A9DA0 0029FB20  7F 84 E3 78 */	mr r4, r28
/* 802A9DA4 0029FB24  7F 65 DB 78 */	mr r5, r27
/* 802A9DA8 0029FB28  7F A6 EB 78 */	mr r6, r29
/* 802A9DAC 0029FB2C  7F C7 F3 78 */	mr r7, r30
/* 802A9DB0 0029FB30  4B FF FC 01 */	bl fn_802A99B0
/* 802A9DB4 0029FB34  3C 60 80 48 */	lis r3, lbl_804868E8@ha
/* 802A9DB8 0029FB38  38 63 68 E8 */	addi r3, r3, lbl_804868E8@l
/* 802A9DBC 0029FB3C  90 7F 00 00 */	stw r3, 0x0(r31)
.L_802A9DC0:
/* 802A9DC0 0029FB40  7F E3 FB 78 */	mr r3, r31
/* 802A9DC4 0029FB44  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802A9DC8 0029FB48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A9DCC 0029FB4C  7C 08 03 A6 */	mtlr r0
/* 802A9DD0 0029FB50  38 21 00 20 */	addi r1, r1, 0x20
/* 802A9DD4 0029FB54  4E 80 00 20 */	blr
.endfn fn_802A9D54
