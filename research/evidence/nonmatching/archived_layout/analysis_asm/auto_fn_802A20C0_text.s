.include "macros.inc"
.file "auto_fn_802A20C0_text"

# 0x80006868..0x80006880 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006868 | size: 0x18
.obj "@etb_80006868", local
.hidden "@etb_80006868"
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
.endobj "@etb_80006868"

# 0x80009C64..0x80009C70 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009C64 | size: 0xC
.obj "@eti_80009C64", local
.hidden "@eti_80009C64"
	.4byte fn_802A20C0
	.4byte 0x0000007C
	.4byte "@etb_80006868"
.endobj "@eti_80009C64"

# 0x802A20C0..0x802A213C | size: 0x7C
.text
.balign 4

# .text:0x0 | 0x802A20C0 | size: 0x7C
.fn fn_802A20C0, global
/* 802A20C0 00297E40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A20C4 00297E44  7C 08 02 A6 */	mflr r0
/* 802A20C8 00297E48  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A20CC 00297E4C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802A20D0 00297E50  7C 7B 1B 78 */	mr r27, r3
/* 802A20D4 00297E54  7C 9C 23 78 */	mr r28, r4
/* 802A20D8 00297E58  7C BD 2B 78 */	mr r29, r5
/* 802A20DC 00297E5C  7C DE 33 78 */	mr r30, r6
/* 802A20E0 00297E60  38 80 00 14 */	li r4, 0x14
/* 802A20E4 00297E64  38 A0 00 1D */	li r5, 0x1d
/* 802A20E8 00297E68  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A20EC 00297E6C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A20F0 00297E70  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802A20F4 00297E74  7D 89 03 A6 */	mtctr r12
/* 802A20F8 00297E78  4E 80 04 21 */	bctrl
/* 802A20FC 00297E7C  38 00 00 14 */	li r0, 0x14
/* 802A2100 00297E80  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A2104 00297E84  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802A2108 00297E88  7C 7F 1B 78 */	mr r31, r3
/* 802A210C 00297E8C  41 82 00 18 */	beq .L_802A2124
/* 802A2110 00297E90  7F 64 DB 78 */	mr r4, r27
/* 802A2114 00297E94  7F 85 E3 78 */	mr r5, r28
/* 802A2118 00297E98  7F A6 EB 78 */	mr r6, r29
/* 802A211C 00297E9C  7F C7 F3 78 */	mr r7, r30
/* 802A2120 00297EA0  4B FF FD B5 */	bl fn_802A1ED4
.L_802A2124:
/* 802A2124 00297EA4  7F E3 FB 78 */	mr r3, r31
/* 802A2128 00297EA8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802A212C 00297EAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A2130 00297EB0  7C 08 03 A6 */	mtlr r0
/* 802A2134 00297EB4  38 21 00 20 */	addi r1, r1, 0x20
/* 802A2138 00297EB8  4E 80 00 20 */	blr
.endfn fn_802A20C0
