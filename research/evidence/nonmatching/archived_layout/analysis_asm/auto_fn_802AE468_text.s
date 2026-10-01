.include "macros.inc"
.file "auto_fn_802AE468_text"

# 0x80007014..0x8000702C | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007014 | size: 0x18
.obj "@etb_80007014", local
.hidden "@etb_80007014"
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
.endobj "@etb_80007014"

# 0x8000A1D4..0x8000A1E0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A1D4 | size: 0xC
.obj "@eti_8000A1D4", local
.hidden "@eti_8000A1D4"
	.4byte fn_802AE468
	.4byte 0x00000048
	.4byte "@etb_80007014"
.endobj "@eti_8000A1D4"

# 0x802AE468..0x802AE4B0 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802AE468 | size: 0x48
.fn fn_802AE468, global
/* 802AE468 002A41E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AE46C 002A41EC  7C 08 02 A6 */	mflr r0
/* 802AE470 002A41F0  3D 00 80 48 */	lis r8, lbl_80487198@ha
/* 802AE474 002A41F4  C0 02 AB F4 */	lfs f0, lbl_805A3F14@sda21(r0)
/* 802AE478 002A41F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AE47C 002A41FC  39 08 71 98 */	addi r8, r8, lbl_80487198@l
/* 802AE480 002A4200  7C 80 23 78 */	mr r0, r4
/* 802AE484 002A4204  7C A4 2B 78 */	mr r4, r5
/* 802AE488 002A4208  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802AE48C 002A420C  7C 05 03 78 */	mr r5, r0
/* 802AE490 002A4210  38 E1 00 08 */	addi r7, r1, 0x8
/* 802AE494 002A4214  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802AE498 002A4218  91 01 00 08 */	stw r8, 0x8(r1)
/* 802AE49C 002A421C  4B FF E1 99 */	bl fn_802AC634
/* 802AE4A0 002A4220  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AE4A4 002A4224  7C 08 03 A6 */	mtlr r0
/* 802AE4A8 002A4228  38 21 00 20 */	addi r1, r1, 0x20
/* 802AE4AC 002A422C  4E 80 00 20 */	blr
.endfn fn_802AE468
