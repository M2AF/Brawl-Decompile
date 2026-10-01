.include "macros.inc"
.file "auto_fn_802B1AAC_text"

# 0x800073CC..0x800073D4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800073CC | size: 0x8
.obj "@etb_800073CC", local
.hidden "@etb_800073CC"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800073CC"

# 0x8000A3FC..0x8000A408 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A3FC | size: 0xC
.obj "@eti_8000A3FC", local
.hidden "@eti_8000A3FC"
	.4byte fn_802B1AAC
	.4byte 0x0000005C
	.4byte "@etb_800073CC"
.endobj "@eti_8000A3FC"

# 0x802B1AAC..0x802B1B08 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802B1AAC | size: 0x5C
.fn fn_802B1AAC, global
/* 802B1AAC 002A782C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B1AB0 002A7830  7C 08 02 A6 */	mflr r0
/* 802B1AB4 002A7834  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B1AB8 002A7838  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B1ABC 002A783C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B1AC0 002A7840  7C 7F 1B 78 */	mr r31, r3
/* 802B1AC4 002A7844  41 82 00 2C */	beq .L_802B1AF0
/* 802B1AC8 002A7848  2C 04 00 00 */	cmpwi r4, 0x0
/* 802B1ACC 002A784C  40 81 00 24 */	ble .L_802B1AF0
/* 802B1AD0 002A7850  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802B1AD4 002A7854  7F E4 FB 78 */	mr r4, r31
/* 802B1AD8 002A7858  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802B1ADC 002A785C  38 C0 00 1D */	li r6, 0x1d
/* 802B1AE0 002A7860  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B1AE4 002A7864  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802B1AE8 002A7868  7D 89 03 A6 */	mtctr r12
/* 802B1AEC 002A786C  4E 80 04 21 */	bctrl
.L_802B1AF0:
/* 802B1AF0 002A7870  7F E3 FB 78 */	mr r3, r31
/* 802B1AF4 002A7874  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B1AF8 002A7878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B1AFC 002A787C  7C 08 03 A6 */	mtlr r0
/* 802B1B00 002A7880  38 21 00 10 */	addi r1, r1, 0x10
/* 802B1B04 002A7884  4E 80 00 20 */	blr
.endfn fn_802B1AAC
