.include "macros.inc"
.file "auto_fn_802BD9F8_text"

# 0x80007AAC..0x80007AB4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007AAC | size: 0x8
.obj "@etb_80007AAC", local
.hidden "@etb_80007AAC"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80007AAC"

# 0x8000A870..0x8000A87C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A870 | size: 0xC
.obj "@eti_8000A870", local
.hidden "@eti_8000A870"
	.4byte fn_802BD9F8
	.4byte 0x00000090
	.4byte "@etb_80007AAC"
.endobj "@eti_8000A870"

# 0x802BD9F8..0x802BDA88 | size: 0x90
.text
.balign 4

# .text:0x0 | 0x802BD9F8 | size: 0x90
.fn fn_802BD9F8, global
/* 802BD9F8 002B3778  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BD9FC 002B377C  7C 08 02 A6 */	mflr r0
/* 802BDA00 002B3780  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BDA04 002B3784  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BDA08 002B3788  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BDA0C 002B378C  3B C0 00 00 */	li r30, 0x0
/* 802BDA10 002B3790  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802BDA14 002B3794  7C 7D 1B 78 */	mr r29, r3
/* 802BDA18 002B3798  7F BF EB 78 */	mr r31, r29
.L_802BDA1C:
/* 802BDA1C 002B379C  A0 9F 00 1C */	lhz r4, 0x1c(r31)
/* 802BDA20 002B37A0  28 04 FF FF */	cmplwi r4, 0xffff
/* 802BDA24 002B37A4  41 82 00 18 */	beq .L_802BDA3C
/* 802BDA28 002B37A8  80 7D 00 08 */	lwz r3, 0x8(r29)
/* 802BDA2C 002B37AC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802BDA30 002B37B0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802BDA34 002B37B4  7D 89 03 A6 */	mtctr r12
/* 802BDA38 002B37B8  4E 80 04 21 */	bctrl
.L_802BDA3C:
/* 802BDA3C 002B37BC  3B DE 00 01 */	addi r30, r30, 0x1
/* 802BDA40 002B37C0  3B FF 00 02 */	addi r31, r31, 0x2
/* 802BDA44 002B37C4  2C 1E 00 08 */	cmpwi r30, 0x8
/* 802BDA48 002B37C8  41 80 FF D4 */	blt .L_802BDA1C
/* 802BDA4C 002B37CC  2C 1D 00 00 */	cmpwi r29, 0x0
/* 802BDA50 002B37D0  41 82 00 1C */	beq .L_802BDA6C
/* 802BDA54 002B37D4  81 9D 00 00 */	lwz r12, 0x0(r29)
/* 802BDA58 002B37D8  7F A3 EB 78 */	mr r3, r29
/* 802BDA5C 002B37DC  38 80 00 01 */	li r4, 0x1
/* 802BDA60 002B37E0  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802BDA64 002B37E4  7D 89 03 A6 */	mtctr r12
/* 802BDA68 002B37E8  4E 80 04 21 */	bctrl
.L_802BDA6C:
/* 802BDA6C 002B37EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BDA70 002B37F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BDA74 002B37F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BDA78 002B37F8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802BDA7C 002B37FC  7C 08 03 A6 */	mtlr r0
/* 802BDA80 002B3800  38 21 00 20 */	addi r1, r1, 0x20
/* 802BDA84 002B3804  4E 80 00 20 */	blr
.endfn fn_802BD9F8
