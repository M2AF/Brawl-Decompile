.include "macros.inc"
.file "auto_fn_802AE4B0_text"

# 0x8000702C..0x80007044 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000702C | size: 0x18
.obj "@etb_8000702C", local
.hidden "@etb_8000702C"
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
.endobj "@etb_8000702C"

# 0x8000A1E0..0x8000A1EC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A1E0 | size: 0xC
.obj "@eti_8000A1E0", local
.hidden "@eti_8000A1E0"
	.4byte fn_802AE4B0
	.4byte 0x00000048
	.4byte "@etb_8000702C"
.endobj "@eti_8000A1E0"

# 0x802AE4B0..0x802AE4F8 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802AE4B0 | size: 0x48
.fn fn_802AE4B0, global
/* 802AE4B0 002A4230  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AE4B4 002A4234  7C 08 02 A6 */	mflr r0
/* 802AE4B8 002A4238  3C E0 80 48 */	lis r7, lbl_80487198@ha
/* 802AE4BC 002A423C  C0 02 AB F4 */	lfs f0, lbl_805A3F14@sda21(r0)
/* 802AE4C0 002A4240  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AE4C4 002A4244  38 E7 71 98 */	addi r7, r7, lbl_80487198@l
/* 802AE4C8 002A4248  7C 60 1B 78 */	mr r0, r3
/* 802AE4CC 002A424C  7C 83 23 78 */	mr r3, r4
/* 802AE4D0 002A4250  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802AE4D4 002A4254  7C 04 03 78 */	mr r4, r0
/* 802AE4D8 002A4258  38 C1 00 08 */	addi r6, r1, 0x8
/* 802AE4DC 002A425C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802AE4E0 002A4260  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802AE4E4 002A4264  4B FF E7 61 */	bl fn_802ACC44
/* 802AE4E8 002A4268  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AE4EC 002A426C  7C 08 03 A6 */	mtlr r0
/* 802AE4F0 002A4270  38 21 00 20 */	addi r1, r1, 0x20
/* 802AE4F4 002A4274  4E 80 00 20 */	blr
.endfn fn_802AE4B0
