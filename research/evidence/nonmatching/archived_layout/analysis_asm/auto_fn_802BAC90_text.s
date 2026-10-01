.include "macros.inc"
.file "auto_fn_802BAC90_text"

# 0x80007864..0x8000787C | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007864 | size: 0x18
.obj "@etb_80007864", local
.hidden "@etb_80007864"
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
.endobj "@etb_80007864"

# 0x8000A738..0x8000A744 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A738 | size: 0xC
.obj "@eti_8000A738", local
.hidden "@eti_8000A738"
	.4byte fn_802BAC90
	.4byte 0x0000007C
	.4byte "@etb_80007864"
.endobj "@eti_8000A738"

# 0x802BAC90..0x802BAD0C | size: 0x7C
.text
.balign 4

# .text:0x0 | 0x802BAC90 | size: 0x7C
.fn fn_802BAC90, global
/* 802BAC90 002B0A10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BAC94 002B0A14  7C 08 02 A6 */	mflr r0
/* 802BAC98 002B0A18  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BAC9C 002B0A1C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802BACA0 002B0A20  7C 7B 1B 78 */	mr r27, r3
/* 802BACA4 002B0A24  7C 9C 23 78 */	mr r28, r4
/* 802BACA8 002B0A28  7C BD 2B 78 */	mr r29, r5
/* 802BACAC 002B0A2C  7C DE 33 78 */	mr r30, r6
/* 802BACB0 002B0A30  38 80 00 38 */	li r4, 0x38
/* 802BACB4 002B0A34  38 A0 00 1D */	li r5, 0x1d
/* 802BACB8 002B0A38  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802BACBC 002B0A3C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802BACC0 002B0A40  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802BACC4 002B0A44  7D 89 03 A6 */	mtctr r12
/* 802BACC8 002B0A48  4E 80 04 21 */	bctrl
/* 802BACCC 002B0A4C  38 00 00 38 */	li r0, 0x38
/* 802BACD0 002B0A50  2C 03 00 00 */	cmpwi r3, 0x0
/* 802BACD4 002B0A54  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802BACD8 002B0A58  7C 7F 1B 78 */	mr r31, r3
/* 802BACDC 002B0A5C  41 82 00 18 */	beq .L_802BACF4
/* 802BACE0 002B0A60  7F 64 DB 78 */	mr r4, r27
/* 802BACE4 002B0A64  7F 85 E3 78 */	mr r5, r28
/* 802BACE8 002B0A68  7F A6 EB 78 */	mr r6, r29
/* 802BACEC 002B0A6C  7F C7 F3 78 */	mr r7, r30
/* 802BACF0 002B0A70  48 00 01 C9 */	bl fn_802BAEB8
.L_802BACF4:
/* 802BACF4 002B0A74  7F E3 FB 78 */	mr r3, r31
/* 802BACF8 002B0A78  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802BACFC 002B0A7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BAD00 002B0A80  7C 08 03 A6 */	mtlr r0
/* 802BAD04 002B0A84  38 21 00 20 */	addi r1, r1, 0x20
/* 802BAD08 002B0A88  4E 80 00 20 */	blr
.endfn fn_802BAC90
