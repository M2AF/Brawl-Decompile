.include "macros.inc"
.file "auto_fn_802A9528_text"

# 0x80006D74..0x80006D8C | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006D74 | size: 0x18
.obj "@etb_80006D74", local
.hidden "@etb_80006D74"
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
.endobj "@etb_80006D74"

# 0x80009FC4..0x80009FD0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009FC4 | size: 0xC
.obj "@eti_80009FC4", local
.hidden "@eti_80009FC4"
	.4byte fn_802A9528
	.4byte 0x00000048
	.4byte "@etb_80006D74"
.endobj "@eti_80009FC4"

# 0x802A9528..0x802A9570 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802A9528 | size: 0x48
.fn fn_802A9528, global
/* 802A9528 0029F2A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A952C 0029F2AC  7C 08 02 A6 */	mflr r0
/* 802A9530 0029F2B0  3C E0 80 48 */	lis r7, lbl_80487178@ha
/* 802A9534 0029F2B4  7C 68 1B 78 */	mr r8, r3
/* 802A9538 0029F2B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A953C 0029F2BC  38 00 00 00 */	li r0, 0x0
/* 802A9540 0029F2C0  38 E7 71 78 */	addi r7, r7, lbl_80487178@l
/* 802A9544 0029F2C4  7C 83 23 78 */	mr r3, r4
/* 802A9548 0029F2C8  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802A954C 0029F2CC  7D 04 43 78 */	mr r4, r8
/* 802A9550 0029F2D0  38 C1 00 08 */	addi r6, r1, 0x8
/* 802A9554 0029F2D4  98 01 00 0C */	stb r0, 0xc(r1)
/* 802A9558 0029F2D8  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802A955C 0029F2DC  4B FF EE 9D */	bl fn_802A83F8
/* 802A9560 0029F2E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A9564 0029F2E4  7C 08 03 A6 */	mtlr r0
/* 802A9568 0029F2E8  38 21 00 20 */	addi r1, r1, 0x20
/* 802A956C 0029F2EC  4E 80 00 20 */	blr
.endfn fn_802A9528
