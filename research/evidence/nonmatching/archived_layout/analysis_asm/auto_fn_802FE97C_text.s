.include "macros.inc"
.file "auto_fn_802FE97C_text"

# 0x800086EC..0x800086F4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800086EC | size: 0x8
.obj "@etb_800086EC", local
.hidden "@etb_800086EC"
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
.endobj "@etb_800086EC"

# 0x8000B5B4..0x8000B5C0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B5B4 | size: 0xC
.obj "@eti_8000B5B4", local
.hidden "@eti_8000B5B4"
	.4byte fn_802FE97C
	.4byte 0x000000D8
	.4byte "@etb_800086EC"
.endobj "@eti_8000B5B4"

# 0x802FE97C..0x802FEA54 | size: 0xD8
.text
.balign 4

# .text:0x0 | 0x802FE97C | size: 0xD8
.fn fn_802FE97C, global
/* 802FE97C 002F46FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FE980 002F4700  7C 08 02 A6 */	mflr r0
/* 802FE984 002F4704  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FE988 002F4708  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802FE98C 002F470C  7C BF 2B 78 */	mr r31, r5
/* 802FE990 002F4710  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802FE994 002F4714  7C 9E 23 78 */	mr r30, r4
/* 802FE998 002F4718  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802FE99C 002F471C  7C 7D 1B 78 */	mr r29, r3
/* 802FE9A0 002F4720  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 802FE9A4 002F4724  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 802FE9A8 002F4728  80 66 00 04 */	lwz r3, 0x4(r6)
/* 802FE9AC 002F472C  7C C4 33 78 */	mr r4, r6
/* 802FE9B0 002F4730  80 DD 00 04 */	lwz r6, 0x4(r29)
/* 802FE9B4 002F4734  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802FE9B8 002F4738  80 FD 00 08 */	lwz r7, 0x8(r29)
/* 802FE9BC 002F473C  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802FE9C0 002F4740  81 1E 00 08 */	lwz r8, 0x8(r30)
/* 802FE9C4 002F4744  7D 89 03 A6 */	mtctr r12
/* 802FE9C8 002F4748  4E 80 04 21 */	bctrl
/* 802FE9CC 002F474C  54 60 46 3E */	srwi r0, r3, 24
/* 802FE9D0 002F4750  7C 00 07 75 */	extsb. r0, r0
/* 802FE9D4 002F4754  41 82 00 1C */	beq .L_802FE9F0
/* 802FE9D8 002F4758  88 1E 00 00 */	lbz r0, 0x0(r30)
/* 802FE9DC 002F475C  2C 00 00 00 */	cmpwi r0, 0x0
/* 802FE9E0 002F4760  41 82 00 10 */	beq .L_802FE9F0
/* 802FE9E4 002F4764  88 1E 00 03 */	lbz r0, 0x3(r30)
/* 802FE9E8 002F4768  7C 7E 02 14 */	add r3, r30, r0
/* 802FE9EC 002F476C  48 00 00 4C */	b .L_802FEA38
.L_802FE9F0:
/* 802FE9F0 002F4770  88 1E 00 00 */	lbz r0, 0x0(r30)
/* 802FE9F4 002F4774  2C 00 00 00 */	cmpwi r0, 0x0
/* 802FE9F8 002F4778  40 82 00 10 */	bne .L_802FEA08
/* 802FE9FC 002F477C  88 1E 00 03 */	lbz r0, 0x3(r30)
/* 802FEA00 002F4780  7C 7E 02 14 */	add r3, r30, r0
/* 802FEA04 002F4784  48 00 00 34 */	b .L_802FEA38
.L_802FEA08:
/* 802FEA08 002F4788  88 1E 00 01 */	lbz r0, 0x1(r30)
/* 802FEA0C 002F478C  7F C3 F3 78 */	mr r3, r30
/* 802FEA10 002F4790  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 802FEA14 002F4794  7F E4 FB 78 */	mr r4, r31
/* 802FEA18 002F4798  1C 00 00 34 */	mulli r0, r0, 0x34
/* 802FEA1C 002F479C  80 BD 00 10 */	lwz r5, 0x10(r29)
/* 802FEA20 002F47A0  80 C6 00 00 */	lwz r6, 0x0(r6)
/* 802FEA24 002F47A4  7C C6 02 14 */	add r6, r6, r0
/* 802FEA28 002F47A8  81 86 16 98 */	lwz r12, 0x1698(r6)
/* 802FEA2C 002F47AC  7D 89 03 A6 */	mtctr r12
/* 802FEA30 002F47B0  4E 80 04 21 */	bctrl
/* 802FEA34 002F47B4  7F C3 F3 78 */	mr r3, r30
.L_802FEA38:
/* 802FEA38 002F47B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FEA3C 002F47BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802FEA40 002F47C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802FEA44 002F47C4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802FEA48 002F47C8  7C 08 03 A6 */	mtlr r0
/* 802FEA4C 002F47CC  38 21 00 20 */	addi r1, r1, 0x20
/* 802FEA50 002F47D0  4E 80 00 20 */	blr
.endfn fn_802FE97C
