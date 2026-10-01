.include "macros.inc"
.file "auto_fn_802A8984_text"

# 0x80006C54..0x80006C6C | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006C54 | size: 0x18
.obj "@etb_80006C54", local
.hidden "@etb_80006C54"
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
.endobj "@etb_80006C54"

# 0x80009F1C..0x80009F28 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009F1C | size: 0xC
.obj "@eti_80009F1C", local
.hidden "@eti_80009F1C"
	.4byte fn_802A8984
	.4byte 0x00000048
	.4byte "@etb_80006C54"
.endobj "@eti_80009F1C"

# 0x802A8984..0x802A89CC | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802A8984 | size: 0x48
.fn fn_802A8984, global
/* 802A8984 0029E704  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A8988 0029E708  7C 08 02 A6 */	mflr r0
/* 802A898C 0029E70C  3C E0 80 48 */	lis r7, lbl_80487178@ha
/* 802A8990 0029E710  7C 68 1B 78 */	mr r8, r3
/* 802A8994 0029E714  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A8998 0029E718  38 00 00 00 */	li r0, 0x0
/* 802A899C 0029E71C  38 E7 71 78 */	addi r7, r7, lbl_80487178@l
/* 802A89A0 0029E720  7C 83 23 78 */	mr r3, r4
/* 802A89A4 0029E724  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802A89A8 0029E728  7D 04 43 78 */	mr r4, r8
/* 802A89AC 0029E72C  38 C1 00 08 */	addi r6, r1, 0x8
/* 802A89B0 0029E730  98 01 00 0C */	stb r0, 0xc(r1)
/* 802A89B4 0029E734  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802A89B8 0029E738  4B FF FA 41 */	bl fn_802A83F8
/* 802A89BC 0029E73C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A89C0 0029E740  7C 08 03 A6 */	mtlr r0
/* 802A89C4 0029E744  38 21 00 20 */	addi r1, r1, 0x20
/* 802A89C8 0029E748  4E 80 00 20 */	blr
.endfn fn_802A8984
