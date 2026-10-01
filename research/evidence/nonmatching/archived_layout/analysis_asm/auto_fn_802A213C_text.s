.include "macros.inc"
.file "auto_fn_802A213C_text"

# 0x80006880..0x80006898 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006880 | size: 0x18
.obj "@etb_80006880", local
.hidden "@etb_80006880"
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
.endobj "@etb_80006880"

# 0x80009C70..0x80009C7C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009C70 | size: 0xC
.obj "@eti_80009C70", local
.hidden "@eti_80009C70"
	.4byte fn_802A213C
	.4byte 0x00000084
	.4byte "@etb_80006880"
.endobj "@eti_80009C70"

# 0x802A213C..0x802A21C0 | size: 0x84
.text
.balign 4

# .text:0x0 | 0x802A213C | size: 0x84
.fn fn_802A213C, global
/* 802A213C 00297EBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A2140 00297EC0  7C 08 02 A6 */	mflr r0
/* 802A2144 00297EC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A2148 00297EC8  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802A214C 00297ECC  7C 7B 1B 78 */	mr r27, r3
/* 802A2150 00297ED0  7C 9C 23 78 */	mr r28, r4
/* 802A2154 00297ED4  7C BD 2B 78 */	mr r29, r5
/* 802A2158 00297ED8  7C DE 33 78 */	mr r30, r6
/* 802A215C 00297EDC  38 80 00 14 */	li r4, 0x14
/* 802A2160 00297EE0  38 A0 00 1D */	li r5, 0x1d
/* 802A2164 00297EE4  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A2168 00297EE8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A216C 00297EEC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802A2170 00297EF0  7D 89 03 A6 */	mtctr r12
/* 802A2174 00297EF4  4E 80 04 21 */	bctrl
/* 802A2178 00297EF8  38 00 00 14 */	li r0, 0x14
/* 802A217C 00297EFC  7C 7F 1B 79 */	mr. r31, r3
/* 802A2180 00297F00  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802A2184 00297F04  41 82 00 24 */	beq .L_802A21A8
/* 802A2188 00297F08  7F 84 E3 78 */	mr r4, r28
/* 802A218C 00297F0C  7F 65 DB 78 */	mr r5, r27
/* 802A2190 00297F10  7F A6 EB 78 */	mr r6, r29
/* 802A2194 00297F14  7F C7 F3 78 */	mr r7, r30
/* 802A2198 00297F18  4B FF FD 3D */	bl fn_802A1ED4
/* 802A219C 00297F1C  3C 60 80 48 */	lis r3, lbl_80486780@ha
/* 802A21A0 00297F20  38 63 67 80 */	addi r3, r3, lbl_80486780@l
/* 802A21A4 00297F24  90 7F 00 00 */	stw r3, 0x0(r31)
.L_802A21A8:
/* 802A21A8 00297F28  7F E3 FB 78 */	mr r3, r31
/* 802A21AC 00297F2C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802A21B0 00297F30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A21B4 00297F34  7C 08 03 A6 */	mtlr r0
/* 802A21B8 00297F38  38 21 00 20 */	addi r1, r1, 0x20
/* 802A21BC 00297F3C  4E 80 00 20 */	blr
.endfn fn_802A213C
