.include "macros.inc"
.file "auto_fn_802A3540_text"

# 0x800069B0..0x800069C8 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x800069B0 | size: 0x18
.obj "@etb_800069B0", local
.hidden "@etb_800069B0"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * 
 * PC actions:
 * PC=00000038, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYLOCAL
 * Local: 0x8(SP)
 * Dtor: "dtor_802A38DC"
 * Has end bit
 */
	.4byte 0x000A0000
	.4byte 0x00000038
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte dtor_802A38DC
.endobj "@etb_800069B0"

# 0x80009D48..0x80009D54 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009D48 | size: 0xC
.obj "@eti_80009D48", local
.hidden "@eti_80009D48"
	.4byte fn_802A3540
	.4byte 0x00000048
	.4byte "@etb_800069B0"
.endobj "@eti_80009D48"

# 0x802A3540..0x802A3588 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802A3540 | size: 0x48
.fn fn_802A3540, global
/* 802A3540 002992C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A3544 002992C4  7C 08 02 A6 */	mflr r0
/* 802A3548 002992C8  3D 00 80 48 */	lis r8, lbl_80487198@ha
/* 802A354C 002992CC  C0 02 AB B0 */	lfs f0, lbl_805A3ED0@sda21(r0)
/* 802A3550 002992D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A3554 002992D4  39 08 71 98 */	addi r8, r8, lbl_80487198@l
/* 802A3558 002992D8  7C 80 23 78 */	mr r0, r4
/* 802A355C 002992DC  7C A4 2B 78 */	mr r4, r5
/* 802A3560 002992E0  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802A3564 002992E4  7C 05 03 78 */	mr r5, r0
/* 802A3568 002992E8  38 E1 00 08 */	addi r7, r1, 0x8
/* 802A356C 002992EC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802A3570 002992F0  91 01 00 08 */	stw r8, 0x8(r1)
/* 802A3574 002992F4  4B FF F6 6D */	bl fn_802A2BE0
/* 802A3578 002992F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A357C 002992FC  7C 08 03 A6 */	mtlr r0
/* 802A3580 00299300  38 21 00 20 */	addi r1, r1, 0x20
/* 802A3584 00299304  4E 80 00 20 */	blr
.endfn fn_802A3540
