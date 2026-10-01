.include "macros.inc"
.file "auto_fn_802B149C_text"

# 0x80007340..0x80007358 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007340 | size: 0x18
.obj "@etb_80007340", local
.hidden "@etb_80007340"
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
.endobj "@etb_80007340"

# 0x8000A3A8..0x8000A3B4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A3A8 | size: 0xC
.obj "@eti_8000A3A8", local
.hidden "@eti_8000A3A8"
	.4byte fn_802B149C
	.4byte 0x00000048
	.4byte "@etb_80007340"
.endobj "@eti_8000A3A8"

# 0x802B149C..0x802B14E4 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802B149C | size: 0x48
.fn fn_802B149C, global
/* 802B149C 002A721C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B14A0 002A7220  7C 08 02 A6 */	mflr r0
/* 802B14A4 002A7224  3D 00 80 48 */	lis r8, lbl_80487198@ha
/* 802B14A8 002A7228  C0 02 AC 00 */	lfs f0, lbl_805A3F20@sda21(r0)
/* 802B14AC 002A722C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B14B0 002A7230  39 08 71 98 */	addi r8, r8, lbl_80487198@l
/* 802B14B4 002A7234  7C 80 23 78 */	mr r0, r4
/* 802B14B8 002A7238  7C A4 2B 78 */	mr r4, r5
/* 802B14BC 002A723C  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802B14C0 002A7240  7C 05 03 78 */	mr r5, r0
/* 802B14C4 002A7244  38 E1 00 08 */	addi r7, r1, 0x8
/* 802B14C8 002A7248  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802B14CC 002A724C  91 01 00 08 */	stw r8, 0x8(r1)
/* 802B14D0 002A7250  4B FF E6 91 */	bl fn_802AFB60
/* 802B14D4 002A7254  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B14D8 002A7258  7C 08 03 A6 */	mtlr r0
/* 802B14DC 002A725C  38 21 00 20 */	addi r1, r1, 0x20
/* 802B14E0 002A7260  4E 80 00 20 */	blr
.endfn fn_802B149C
