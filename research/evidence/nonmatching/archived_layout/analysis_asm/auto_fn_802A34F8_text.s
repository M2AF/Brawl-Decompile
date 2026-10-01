.include "macros.inc"
.file "auto_fn_802A34F8_text"

# 0x80006998..0x800069B0 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006998 | size: 0x18
.obj "@etb_80006998", local
.hidden "@etb_80006998"
/*
 * Flag values:
 * Has Elf Vector: No
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
 * Dtor: "dtor_802A3938"
 * Has end bit
 */
	.4byte 0x00080000
	.4byte 0x00000038
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte dtor_802A3938
.endobj "@etb_80006998"

# 0x80009D3C..0x80009D48 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009D3C | size: 0xC
.obj "@eti_80009D3C", local
.hidden "@eti_80009D3C"
	.4byte fn_802A34F8
	.4byte 0x00000048
	.4byte "@etb_80006998"
.endobj "@eti_80009D3C"

# 0x802A34F8..0x802A3540 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802A34F8 | size: 0x48
.fn fn_802A34F8, global
/* 802A34F8 00299278  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A34FC 0029927C  7C 08 02 A6 */	mflr r0
/* 802A3500 00299280  3C E0 80 48 */	lis r7, lbl_80487178@ha
/* 802A3504 00299284  7C 68 1B 78 */	mr r8, r3
/* 802A3508 00299288  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A350C 0029928C  38 00 00 00 */	li r0, 0x0
/* 802A3510 00299290  38 E7 71 78 */	addi r7, r7, lbl_80487178@l
/* 802A3514 00299294  7C 83 23 78 */	mr r3, r4
/* 802A3518 00299298  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802A351C 0029929C  7D 04 43 78 */	mr r4, r8
/* 802A3520 002992A0  38 C1 00 08 */	addi r6, r1, 0x8
/* 802A3524 002992A4  98 01 00 0C */	stb r0, 0xc(r1)
/* 802A3528 002992A8  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802A352C 002992AC  4B FF FC 0D */	bl fn_802A3138
/* 802A3530 002992B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A3534 002992B4  7C 08 03 A6 */	mtlr r0
/* 802A3538 002992B8  38 21 00 20 */	addi r1, r1, 0x20
/* 802A353C 002992BC  4E 80 00 20 */	blr
.endfn fn_802A34F8
