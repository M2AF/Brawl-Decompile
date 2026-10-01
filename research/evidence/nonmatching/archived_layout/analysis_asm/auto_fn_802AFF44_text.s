.include "macros.inc"
.file "auto_fn_802AFF44_text"

# 0x800071D0..0x800071D8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800071D0 | size: 0x8
.obj "@etb_800071D0", local
.hidden "@etb_800071D0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800071D0"

# 0x8000A2E8..0x8000A2F4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A2E8 | size: 0xC
.obj "@eti_8000A2E8", local
.hidden "@eti_8000A2E8"
	.4byte fn_802AFF44
	.4byte 0x00000050
	.4byte "@etb_800071D0"
.endobj "@eti_8000A2E8"

# 0x802AFF44..0x802AFF94 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802AFF44 | size: 0x50
.fn fn_802AFF44, global
/* 802AFF44 002A5CC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AFF48 002A5CC8  7C 08 02 A6 */	mflr r0
/* 802AFF4C 002A5CCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AFF50 002A5CD0  88 03 00 78 */	lbz r0, 0x78(r3)
/* 802AFF54 002A5CD4  7C 00 07 75 */	extsb. r0, r0
/* 802AFF58 002A5CD8  40 82 00 2C */	bne .L_802AFF84
/* 802AFF5C 002A5CDC  90 81 00 08 */	stw r4, 0x8(r1)
/* 802AFF60 002A5CE0  38 81 00 08 */	addi r4, r1, 0x8
/* 802AFF64 002A5CE4  80 05 00 00 */	lwz r0, 0x0(r5)
/* 802AFF68 002A5CE8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802AFF6C 002A5CEC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 802AFF70 002A5CF0  80 A3 00 08 */	lwz r5, 0x8(r3)
/* 802AFF74 002A5CF4  38 63 00 30 */	addi r3, r3, 0x30
/* 802AFF78 002A5CF8  90 A1 00 18 */	stw r5, 0x18(r1)
/* 802AFF7C 002A5CFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802AFF80 002A5D00  48 04 EA D5 */	bl fn_802FEA54
.L_802AFF84:
/* 802AFF84 002A5D04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AFF88 002A5D08  7C 08 03 A6 */	mtlr r0
/* 802AFF8C 002A5D0C  38 21 00 20 */	addi r1, r1, 0x20
/* 802AFF90 002A5D10  4E 80 00 20 */	blr
.endfn fn_802AFF44
