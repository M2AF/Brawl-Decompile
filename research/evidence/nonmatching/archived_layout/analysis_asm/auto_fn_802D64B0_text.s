.include "macros.inc"
.file "auto_fn_802D64B0_text"

# 0x80008614..0x8000861C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008614 | size: 0x8
.obj "@etb_80008614", local
.hidden "@etb_80008614"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008614"

# 0x8000B470..0x8000B47C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B470 | size: 0xC
.obj "@eti_8000B470", local
.hidden "@eti_8000B470"
	.4byte fn_802D64B0
	.4byte 0x0000005C
	.4byte "@etb_80008614"
.endobj "@eti_8000B470"

# 0x802D64B0..0x802D650C | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802D64B0 | size: 0x5C
.fn fn_802D64B0, global
/* 802D64B0 002CC230  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D64B4 002CC234  7C 08 02 A6 */	mflr r0
/* 802D64B8 002CC238  3C 60 80 53 */	lis r3, lbl_80532940@ha
/* 802D64BC 002CC23C  3C 80 80 41 */	lis r4, lbl_80410F98@ha
/* 802D64C0 002CC240  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D64C4 002CC244  38 00 00 00 */	li r0, 0x0
/* 802D64C8 002CC248  3C A0 80 53 */	lis r5, lbl_80532830@ha
/* 802D64CC 002CC24C  38 63 29 40 */	addi r3, r3, lbl_80532940@l
/* 802D64D0 002CC250  90 01 00 08 */	stw r0, 0x8(r1)
/* 802D64D4 002CC254  38 84 0F 98 */	addi r4, r4, lbl_80410F98@l
/* 802D64D8 002CC258  38 A5 28 30 */	addi r5, r5, lbl_80532830@l
/* 802D64DC 002CC25C  38 C0 00 0C */	li r6, 0xc
/* 802D64E0 002CC260  90 01 00 0C */	stw r0, 0xc(r1)
/* 802D64E4 002CC264  38 E0 00 00 */	li r7, 0x0
/* 802D64E8 002CC268  39 00 00 00 */	li r8, 0x0
/* 802D64EC 002CC26C  39 20 00 00 */	li r9, 0x0
/* 802D64F0 002CC270  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D64F4 002CC274  39 40 00 00 */	li r10, 0x0
/* 802D64F8 002CC278  4B FA 63 11 */	bl fn_8027C808
/* 802D64FC 002CC27C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D6500 002CC280  7C 08 03 A6 */	mtlr r0
/* 802D6504 002CC284  38 21 00 20 */	addi r1, r1, 0x20
/* 802D6508 002CC288  4E 80 00 20 */	blr
.endfn fn_802D64B0

# 0x804066A0..0x804066A4 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D64B0
