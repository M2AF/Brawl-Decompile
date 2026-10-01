.include "macros.inc"
.file "auto_fn_802B4A60_text"

# 0x800074EC..0x800074F4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800074EC | size: 0x8
.obj "@etb_800074EC", local
.hidden "@etb_800074EC"
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
.endobj "@etb_800074EC"

# 0x8000A4EC..0x8000A4F8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A4EC | size: 0xC
.obj "@eti_8000A4EC", local
.hidden "@eti_8000A4EC"
	.4byte fn_802B4A60
	.4byte 0x000000A8
	.4byte "@etb_800074EC"
.endobj "@eti_8000A4EC"

# 0x802B4A60..0x802B4B08 | size: 0xA8
.text
.balign 4

# .text:0x0 | 0x802B4A60 | size: 0xA8
.fn fn_802B4A60, global
/* 802B4A60 002AA7E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B4A64 002AA7E4  7C 08 02 A6 */	mflr r0
/* 802B4A68 002AA7E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B4A6C 002AA7EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B4A70 002AA7F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802B4A74 002AA7F4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802B4A78 002AA7F8  7C 7D 1B 78 */	mr r29, r3
/* 802B4A7C 002AA7FC  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802B4A80 002AA800  2C 00 00 00 */	cmpwi r0, 0x0
/* 802B4A84 002AA804  41 82 00 48 */	beq .L_802B4ACC
/* 802B4A88 002AA808  3B C0 00 00 */	li r30, 0x0
/* 802B4A8C 002AA80C  3B E0 00 00 */	li r31, 0x0
/* 802B4A90 002AA810  48 00 00 30 */	b .L_802B4AC0
.L_802B4A94:
/* 802B4A94 002AA814  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802B4A98 002AA818  7C 83 FA 2E */	lhzx r4, r3, r31
/* 802B4A9C 002AA81C  28 04 FF FF */	cmplwi r4, 0xffff
/* 802B4AA0 002AA820  41 82 00 18 */	beq .L_802B4AB8
/* 802B4AA4 002AA824  80 7D 00 08 */	lwz r3, 0x8(r29)
/* 802B4AA8 002AA828  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B4AAC 002AA82C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B4AB0 002AA830  7D 89 03 A6 */	mtctr r12
/* 802B4AB4 002AA834  4E 80 04 21 */	bctrl
.L_802B4AB8:
/* 802B4AB8 002AA838  3B FF 00 02 */	addi r31, r31, 0x2
/* 802B4ABC 002AA83C  3B DE 00 01 */	addi r30, r30, 0x1
.L_802B4AC0:
/* 802B4AC0 002AA840  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 802B4AC4 002AA844  7C 1E 00 00 */	cmpw r30, r0
/* 802B4AC8 002AA848  41 80 FF CC */	blt .L_802B4A94
.L_802B4ACC:
/* 802B4ACC 002AA84C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 802B4AD0 002AA850  41 82 00 1C */	beq .L_802B4AEC
/* 802B4AD4 002AA854  81 9D 00 00 */	lwz r12, 0x0(r29)
/* 802B4AD8 002AA858  7F A3 EB 78 */	mr r3, r29
/* 802B4ADC 002AA85C  38 80 00 01 */	li r4, 0x1
/* 802B4AE0 002AA860  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802B4AE4 002AA864  7D 89 03 A6 */	mtctr r12
/* 802B4AE8 002AA868  4E 80 04 21 */	bctrl
.L_802B4AEC:
/* 802B4AEC 002AA86C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B4AF0 002AA870  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B4AF4 002AA874  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802B4AF8 002AA878  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802B4AFC 002AA87C  7C 08 03 A6 */	mtlr r0
/* 802B4B00 002AA880  38 21 00 20 */	addi r1, r1, 0x20
/* 802B4B04 002AA884  4E 80 00 20 */	blr
.endfn fn_802B4A60
