.include "macros.inc"
.file "auto_fn_802CA564_text"

# 0x80008150..0x80008168 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008150 | size: 0x18
.obj "@etb_80008150", local
.hidden "@etb_80008150"
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
.endobj "@etb_80008150"

# 0x8000AE10..0x8000AE1C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AE10 | size: 0xC
.obj "@eti_8000AE10", local
.hidden "@eti_8000AE10"
	.4byte fn_802CA564
	.4byte 0x00000048
	.4byte "@etb_80008150"
.endobj "@eti_8000AE10"

# 0x802CA564..0x802CA5AC | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802CA564 | size: 0x48
.fn fn_802CA564, global
/* 802CA564 002C02E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CA568 002C02E8  7C 08 02 A6 */	mflr r0
/* 802CA56C 002C02EC  3C E0 80 48 */	lis r7, lbl_80487198@ha
/* 802CA570 002C02F0  C0 02 AC D4 */	lfs f0, lbl_805A3FF4@sda21(r0)
/* 802CA574 002C02F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CA578 002C02F8  38 E7 71 98 */	addi r7, r7, lbl_80487198@l
/* 802CA57C 002C02FC  7C 60 1B 78 */	mr r0, r3
/* 802CA580 002C0300  7C 83 23 78 */	mr r3, r4
/* 802CA584 002C0304  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802CA588 002C0308  7C 04 03 78 */	mr r4, r0
/* 802CA58C 002C030C  38 C1 00 08 */	addi r6, r1, 0x8
/* 802CA590 002C0310  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802CA594 002C0314  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802CA598 002C0318  4B FF F8 B5 */	bl fn_802C9E4C
/* 802CA59C 002C031C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CA5A0 002C0320  7C 08 03 A6 */	mtlr r0
/* 802CA5A4 002C0324  38 21 00 20 */	addi r1, r1, 0x20
/* 802CA5A8 002C0328  4E 80 00 20 */	blr
.endfn fn_802CA564
