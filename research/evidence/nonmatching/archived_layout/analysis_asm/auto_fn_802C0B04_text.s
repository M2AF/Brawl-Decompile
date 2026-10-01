.include "macros.inc"
.file "auto_fn_802C0B04_text"

# 0x80007BD8..0x80007BF0 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007BD8 | size: 0x18
.obj "@etb_80007BD8", local
.hidden "@etb_80007BD8"
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
.endobj "@etb_80007BD8"

# 0x8000A96C..0x8000A978 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A96C | size: 0xC
.obj "@eti_8000A96C", local
.hidden "@eti_8000A96C"
	.4byte fn_802C0B04
	.4byte 0x0000007C
	.4byte "@etb_80007BD8"
.endobj "@eti_8000A96C"

# 0x802C0B04..0x802C0B80 | size: 0x7C
.text
.balign 4

# .text:0x0 | 0x802C0B04 | size: 0x7C
.fn fn_802C0B04, global
/* 802C0B04 002B6884  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C0B08 002B6888  7C 08 02 A6 */	mflr r0
/* 802C0B0C 002B688C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C0B10 002B6890  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802C0B14 002B6894  7C 7B 1B 78 */	mr r27, r3
/* 802C0B18 002B6898  7C 9C 23 78 */	mr r28, r4
/* 802C0B1C 002B689C  7C BD 2B 78 */	mr r29, r5
/* 802C0B20 002B68A0  7C DE 33 78 */	mr r30, r6
/* 802C0B24 002B68A4  38 80 00 38 */	li r4, 0x38
/* 802C0B28 002B68A8  38 A0 00 1D */	li r5, 0x1d
/* 802C0B2C 002B68AC  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C0B30 002B68B0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C0B34 002B68B4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C0B38 002B68B8  7D 89 03 A6 */	mtctr r12
/* 802C0B3C 002B68BC  4E 80 04 21 */	bctrl
/* 802C0B40 002B68C0  38 00 00 38 */	li r0, 0x38
/* 802C0B44 002B68C4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C0B48 002B68C8  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802C0B4C 002B68CC  7C 7F 1B 78 */	mr r31, r3
/* 802C0B50 002B68D0  41 82 00 18 */	beq .L_802C0B68
/* 802C0B54 002B68D4  7F 64 DB 78 */	mr r4, r27
/* 802C0B58 002B68D8  7F 85 E3 78 */	mr r5, r28
/* 802C0B5C 002B68DC  7F A6 EB 78 */	mr r6, r29
/* 802C0B60 002B68E0  7F C7 F3 78 */	mr r7, r30
/* 802C0B64 002B68E4  48 00 01 C9 */	bl fn_802C0D2C
.L_802C0B68:
/* 802C0B68 002B68E8  7F E3 FB 78 */	mr r3, r31
/* 802C0B6C 002B68EC  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802C0B70 002B68F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C0B74 002B68F4  7C 08 03 A6 */	mtlr r0
/* 802C0B78 002B68F8  38 21 00 20 */	addi r1, r1, 0x20
/* 802C0B7C 002B68FC  4E 80 00 20 */	blr
.endfn fn_802C0B04
