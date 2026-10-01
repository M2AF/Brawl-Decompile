.include "macros.inc"
.file "auto_fn_802A89CC_text"

# 0x80006C6C..0x80006C84 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006C6C | size: 0x18
.obj "@etb_80006C6C", local
.hidden "@etb_80006C6C"
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
.endobj "@etb_80006C6C"

# 0x80009F28..0x80009F34 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009F28 | size: 0xC
.obj "@eti_80009F28", local
.hidden "@eti_80009F28"
	.4byte fn_802A89CC
	.4byte 0x00000048
	.4byte "@etb_80006C6C"
.endobj "@eti_80009F28"

# 0x802A89CC..0x802A8A14 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802A89CC | size: 0x48
.fn fn_802A89CC, global
/* 802A89CC 0029E74C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A89D0 0029E750  7C 08 02 A6 */	mflr r0
/* 802A89D4 0029E754  3D 00 80 48 */	lis r8, lbl_80487198@ha
/* 802A89D8 0029E758  C0 02 AB B8 */	lfs f0, lbl_805A3ED8@sda21(r0)
/* 802A89DC 0029E75C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A89E0 0029E760  39 08 71 98 */	addi r8, r8, lbl_80487198@l
/* 802A89E4 0029E764  7C 80 23 78 */	mr r0, r4
/* 802A89E8 0029E768  7C A4 2B 78 */	mr r4, r5
/* 802A89EC 0029E76C  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802A89F0 0029E770  7C 05 03 78 */	mr r5, r0
/* 802A89F4 0029E774  38 E1 00 08 */	addi r7, r1, 0x8
/* 802A89F8 0029E778  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802A89FC 0029E77C  91 01 00 08 */	stw r8, 0x8(r1)
/* 802A8A00 0029E780  4B FF F3 55 */	bl fn_802A7D54
/* 802A8A04 0029E784  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A8A08 0029E788  7C 08 03 A6 */	mtlr r0
/* 802A8A0C 0029E78C  38 21 00 20 */	addi r1, r1, 0x20
/* 802A8A10 0029E790  4E 80 00 20 */	blr
.endfn fn_802A89CC
