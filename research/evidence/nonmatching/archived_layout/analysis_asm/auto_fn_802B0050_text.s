.include "macros.inc"
.file "auto_fn_802B0050_text"

# 0x800071E8..0x800071F0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800071E8 | size: 0x8
.obj "@etb_800071E8", local
.hidden "@etb_800071E8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800071E8"

# 0x8000A30C..0x8000A318 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A30C | size: 0xC
.obj "@eti_8000A30C", local
.hidden "@eti_8000A30C"
	.4byte fn_802B0050
	.4byte 0x00000074
	.4byte "@etb_800071E8"
.endobj "@eti_8000A30C"

# 0x802B0050..0x802B00C4 | size: 0x74
.text
.balign 4

# .text:0x0 | 0x802B0050 | size: 0x74
.fn fn_802B0050, global
/* 802B0050 002A5DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B0054 002A5DD4  7C 08 02 A6 */	mflr r0
/* 802B0058 002A5DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B005C 002A5DDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B0060 002A5DE0  7C 7F 1B 78 */	mr r31, r3
/* 802B0064 002A5DE4  88 03 00 78 */	lbz r0, 0x78(r3)
/* 802B0068 002A5DE8  7C 00 07 75 */	extsb. r0, r0
/* 802B006C 002A5DEC  41 82 00 14 */	beq .L_802B0080
/* 802B0070 002A5DF0  80 83 00 08 */	lwz r4, 0x8(r3)
/* 802B0074 002A5DF4  38 63 00 30 */	addi r3, r3, 0x30
/* 802B0078 002A5DF8  48 06 82 95 */	bl fn_8031830C
/* 802B007C 002A5DFC  48 00 00 14 */	b .L_802B0090
.L_802B0080:
/* 802B0080 002A5E00  80 83 00 74 */	lwz r4, 0x74(r3)
/* 802B0084 002A5E04  80 A3 00 08 */	lwz r5, 0x8(r3)
/* 802B0088 002A5E08  38 63 00 30 */	addi r3, r3, 0x30
/* 802B008C 002A5E0C  48 04 C6 21 */	bl fn_802FC6AC
.L_802B0090:
/* 802B0090 002A5E10  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802B0094 002A5E14  41 82 00 1C */	beq .L_802B00B0
/* 802B0098 002A5E18  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802B009C 002A5E1C  7F E3 FB 78 */	mr r3, r31
/* 802B00A0 002A5E20  38 80 00 01 */	li r4, 0x1
/* 802B00A4 002A5E24  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802B00A8 002A5E28  7D 89 03 A6 */	mtctr r12
/* 802B00AC 002A5E2C  4E 80 04 21 */	bctrl
.L_802B00B0:
/* 802B00B0 002A5E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B00B4 002A5E34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B00B8 002A5E38  7C 08 03 A6 */	mtlr r0
/* 802B00BC 002A5E3C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B00C0 002A5E40  4E 80 00 20 */	blr
.endfn fn_802B0050
