.include "macros.inc"
.file "auto_fn_802BD308_text"

# 0x800079EC..0x80007A04 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x800079EC | size: 0x18
.obj "@etb_800079EC", local
.hidden "@etb_800079EC"
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
.endobj "@etb_800079EC"

# 0x8000A804..0x8000A810 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A804 | size: 0xC
.obj "@eti_8000A804", local
.hidden "@eti_8000A804"
	.4byte fn_802BD308
	.4byte 0x00000048
	.4byte "@etb_800079EC"
.endobj "@eti_8000A804"

# 0x802BD308..0x802BD350 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802BD308 | size: 0x48
.fn fn_802BD308, global
/* 802BD308 002B3088  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BD30C 002B308C  7C 08 02 A6 */	mflr r0
/* 802BD310 002B3090  3D 00 80 48 */	lis r8, lbl_80487198@ha
/* 802BD314 002B3094  C0 02 AC 74 */	lfs f0, lbl_805A3F94@sda21(r0)
/* 802BD318 002B3098  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BD31C 002B309C  39 08 71 98 */	addi r8, r8, lbl_80487198@l
/* 802BD320 002B30A0  7C 80 23 78 */	mr r0, r4
/* 802BD324 002B30A4  7C A4 2B 78 */	mr r4, r5
/* 802BD328 002B30A8  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802BD32C 002B30AC  7C 05 03 78 */	mr r5, r0
/* 802BD330 002B30B0  38 E1 00 08 */	addi r7, r1, 0x8
/* 802BD334 002B30B4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802BD338 002B30B8  91 01 00 08 */	stw r8, 0x8(r1)
/* 802BD33C 002B30BC  4B FF E5 59 */	bl fn_802BB894
/* 802BD340 002B30C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BD344 002B30C4  7C 08 03 A6 */	mtlr r0
/* 802BD348 002B30C8  38 21 00 20 */	addi r1, r1, 0x20
/* 802BD34C 002B30CC  4E 80 00 20 */	blr
.endfn fn_802BD308
