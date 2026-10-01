.include "macros.inc"
.file "auto_fn_802B6CAC_text"

# 0x8000758C..0x800075A4 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000758C | size: 0x18
.obj "@etb_8000758C", local
.hidden "@etb_8000758C"
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
.endobj "@etb_8000758C"

# 0x8000A564..0x8000A570 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A564 | size: 0xC
.obj "@eti_8000A564", local
.hidden "@eti_8000A564"
	.4byte fn_802B6CAC
	.4byte 0x00000048
	.4byte "@etb_8000758C"
.endobj "@eti_8000A564"

# 0x802B6CAC..0x802B6CF4 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802B6CAC | size: 0x48
.fn fn_802B6CAC, global
/* 802B6CAC 002ACA2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B6CB0 002ACA30  7C 08 02 A6 */	mflr r0
/* 802B6CB4 002ACA34  3D 00 80 48 */	lis r8, lbl_80487198@ha
/* 802B6CB8 002ACA38  C0 02 AC 38 */	lfs f0, lbl_805A3F58@sda21(r0)
/* 802B6CBC 002ACA3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B6CC0 002ACA40  39 08 71 98 */	addi r8, r8, lbl_80487198@l
/* 802B6CC4 002ACA44  7C 80 23 78 */	mr r0, r4
/* 802B6CC8 002ACA48  7C A4 2B 78 */	mr r4, r5
/* 802B6CCC 002ACA4C  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802B6CD0 002ACA50  7C 05 03 78 */	mr r5, r0
/* 802B6CD4 002ACA54  38 E1 00 08 */	addi r7, r1, 0x8
/* 802B6CD8 002ACA58  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802B6CDC 002ACA5C  91 01 00 08 */	stw r8, 0x8(r1)
/* 802B6CE0 002ACA60  4B FF E5 AD */	bl fn_802B528C
/* 802B6CE4 002ACA64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B6CE8 002ACA68  7C 08 03 A6 */	mtlr r0
/* 802B6CEC 002ACA6C  38 21 00 20 */	addi r1, r1, 0x20
/* 802B6CF0 002ACA70  4E 80 00 20 */	blr
.endfn fn_802B6CAC
