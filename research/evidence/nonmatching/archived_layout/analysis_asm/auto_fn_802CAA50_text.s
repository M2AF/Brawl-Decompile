.include "macros.inc"
.file "auto_fn_802CAA50_text"

# 0x800081A0..0x800081A8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800081A0 | size: 0x8
.obj "@etb_800081A0", local
.hidden "@etb_800081A0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 */
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_800081A0"

# 0x8000AE40..0x8000AE4C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AE40 | size: 0xC
.obj "@eti_8000AE40", local
.hidden "@eti_8000AE40"
	.4byte fn_802CAA50
	.4byte 0x000000D0
	.4byte "@etb_800081A0"
.endobj "@eti_8000AE40"

# 0x802CAA50..0x802CAB20 | size: 0xD0
.text
.balign 4

# .text:0x0 | 0x802CAA50 | size: 0xD0
.fn fn_802CAA50, global
/* 802CAA50 002C07D0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802CAA54 002C07D4  7C 08 02 A6 */	mflr r0
/* 802CAA58 002C07D8  3D 80 80 2D */	lis r12, fn_802CAB20@ha
/* 802CAA5C 002C07DC  3D 60 80 2D */	lis r11, fn_802CABFC@ha
/* 802CAA60 002C07E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 802CAA64 002C07E4  3D 40 80 2D */	lis r10, fn_802CAC4C@ha
/* 802CAA68 002C07E8  3D 20 80 2D */	lis r9, fn_802CAC60@ha
/* 802CAA6C 002C07EC  3D 00 80 2D */	lis r8, fn_802CAC80@ha
/* 802CAA70 002C07F0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 802CAA74 002C07F4  3F E0 80 2D */	lis r31, fn_802CACB0@ha
/* 802CAA78 002C07F8  3C E0 80 2D */	lis r7, fn_802CAC98@ha
/* 802CAA7C 002C07FC  39 8C AB 20 */	addi r12, r12, fn_802CAB20@l
/* 802CAA80 002C0800  93 C1 00 48 */	stw r30, 0x48(r1)
/* 802CAA84 002C0804  3F C0 80 2D */	lis r30, fn_802CACE0@ha
/* 802CAA88 002C0808  3B DE AC E0 */	addi r30, r30, fn_802CACE0@l
/* 802CAA8C 002C080C  3B FF AC B0 */	addi r31, r31, fn_802CACB0@l
/* 802CAA90 002C0810  93 A1 00 44 */	stw r29, 0x44(r1)
/* 802CAA94 002C0814  3F A0 80 2D */	lis r29, fn_802CACC8@ha
/* 802CAA98 002C0818  3B BD AC C8 */	addi r29, r29, fn_802CACC8@l
/* 802CAA9C 002C081C  39 6B AB FC */	addi r11, r11, fn_802CABFC@l
/* 802CAAA0 002C0820  93 81 00 40 */	stw r28, 0x40(r1)
/* 802CAAA4 002C0824  3B 80 00 00 */	li r28, 0x0
/* 802CAAA8 002C0828  39 4A AC 4C */	addi r10, r10, fn_802CAC4C@l
/* 802CAAAC 002C082C  39 29 AC 60 */	addi r9, r9, fn_802CAC60@l
/* 802CAAB0 002C0830  39 08 AC 80 */	addi r8, r8, fn_802CAC80@l
/* 802CAAB4 002C0834  38 E7 AC 98 */	addi r7, r7, fn_802CAC98@l
/* 802CAAB8 002C0838  38 00 00 01 */	li r0, 0x1
/* 802CAABC 002C083C  9B 81 00 35 */	stb r28, 0x35(r1)
/* 802CAAC0 002C0840  38 81 00 08 */	addi r4, r1, 0x8
/* 802CAAC4 002C0844  38 A0 FF FF */	li r5, -0x1
/* 802CAAC8 002C0848  93 A1 00 18 */	stw r29, 0x18(r1)
/* 802CAACC 002C084C  38 C0 FF FF */	li r6, -0x1
/* 802CAAD0 002C0850  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 802CAAD4 002C0854  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802CAAD8 002C0858  91 81 00 08 */	stw r12, 0x8(r1)
/* 802CAADC 002C085C  91 61 00 30 */	stw r11, 0x30(r1)
/* 802CAAE0 002C0860  93 81 00 2C */	stw r28, 0x2c(r1)
/* 802CAAE4 002C0864  93 81 00 10 */	stw r28, 0x10(r1)
/* 802CAAE8 002C0868  91 41 00 0C */	stw r10, 0xc(r1)
/* 802CAAEC 002C086C  91 21 00 20 */	stw r9, 0x20(r1)
/* 802CAAF0 002C0870  91 01 00 24 */	stw r8, 0x24(r1)
/* 802CAAF4 002C0874  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802CAAF8 002C0878  98 01 00 34 */	stb r0, 0x34(r1)
/* 802CAAFC 002C087C  48 00 17 19 */	bl fn_802CC214
/* 802CAB00 002C0880  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802CAB04 002C0884  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 802CAB08 002C0888  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 802CAB0C 002C088C  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 802CAB10 002C0890  83 81 00 40 */	lwz r28, 0x40(r1)
/* 802CAB14 002C0894  7C 08 03 A6 */	mtlr r0
/* 802CAB18 002C0898  38 21 00 50 */	addi r1, r1, 0x50
/* 802CAB1C 002C089C  4E 80 00 20 */	blr
.endfn fn_802CAA50
