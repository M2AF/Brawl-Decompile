.include "macros.inc"
.file "auto_fn_802AAAA0_text"

# 0x80006F2C..0x80006F34 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006F2C | size: 0x8
.obj "@etb_80006F2C", local
.hidden "@etb_80006F2C"
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
.endobj "@etb_80006F2C"

# 0x8000A0FC..0x8000A108 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A0FC | size: 0xC
.obj "@eti_8000A0FC", local
.hidden "@eti_8000A0FC"
	.4byte fn_802AAAA0
	.4byte 0x00000090
	.4byte "@etb_80006F2C"
.endobj "@eti_8000A0FC"

# 0x802AAAA0..0x802AAB30 | size: 0x90
.text
.balign 4

# .text:0x0 | 0x802AAAA0 | size: 0x90
.fn fn_802AAAA0, global
/* 802AAAA0 002A0820  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AAAA4 002A0824  7C 08 02 A6 */	mflr r0
/* 802AAAA8 002A0828  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AAAAC 002A082C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AAAB0 002A0830  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802AAAB4 002A0834  3B C0 00 00 */	li r30, 0x0
/* 802AAAB8 002A0838  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802AAABC 002A083C  7C 7D 1B 78 */	mr r29, r3
/* 802AAAC0 002A0840  7F BF EB 78 */	mr r31, r29
.L_802AAAC4:
/* 802AAAC4 002A0844  A0 9F 00 0C */	lhz r4, 0xc(r31)
/* 802AAAC8 002A0848  28 04 FF FF */	cmplwi r4, 0xffff
/* 802AAACC 002A084C  41 82 00 18 */	beq .L_802AAAE4
/* 802AAAD0 002A0850  80 7D 00 08 */	lwz r3, 0x8(r29)
/* 802AAAD4 002A0854  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AAAD8 002A0858  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802AAADC 002A085C  7D 89 03 A6 */	mtctr r12
/* 802AAAE0 002A0860  4E 80 04 21 */	bctrl
.L_802AAAE4:
/* 802AAAE4 002A0864  3B DE 00 01 */	addi r30, r30, 0x1
/* 802AAAE8 002A0868  3B FF 00 02 */	addi r31, r31, 0x2
/* 802AAAEC 002A086C  2C 1E 00 03 */	cmpwi r30, 0x3
/* 802AAAF0 002A0870  41 80 FF D4 */	blt .L_802AAAC4
/* 802AAAF4 002A0874  2C 1D 00 00 */	cmpwi r29, 0x0
/* 802AAAF8 002A0878  41 82 00 1C */	beq .L_802AAB14
/* 802AAAFC 002A087C  81 9D 00 00 */	lwz r12, 0x0(r29)
/* 802AAB00 002A0880  7F A3 EB 78 */	mr r3, r29
/* 802AAB04 002A0884  38 80 00 01 */	li r4, 0x1
/* 802AAB08 002A0888  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802AAB0C 002A088C  7D 89 03 A6 */	mtctr r12
/* 802AAB10 002A0890  4E 80 04 21 */	bctrl
.L_802AAB14:
/* 802AAB14 002A0894  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AAB18 002A0898  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AAB1C 002A089C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802AAB20 002A08A0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802AAB24 002A08A4  7C 08 03 A6 */	mtlr r0
/* 802AAB28 002A08A8  38 21 00 20 */	addi r1, r1, 0x20
/* 802AAB2C 002A08AC  4E 80 00 20 */	blr
.endfn fn_802AAAA0
