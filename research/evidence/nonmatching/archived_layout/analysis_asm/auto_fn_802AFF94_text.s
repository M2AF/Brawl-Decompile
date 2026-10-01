.include "macros.inc"
.file "auto_fn_802AFF94_text"

# 0x800071D8..0x800071E0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800071D8 | size: 0x8
.obj "@etb_800071D8", local
.hidden "@etb_800071D8"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_800071D8"

# 0x8000A2F4..0x8000A300 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A2F4 | size: 0xC
.obj "@eti_8000A2F4", local
.hidden "@eti_8000A2F4"
	.4byte fn_802AFF94
	.4byte 0x00000074
	.4byte "@etb_800071D8"
.endobj "@eti_8000A2F4"

# 0x802AFF94..0x802B0008 | size: 0x74
.text
.balign 4

# .text:0x0 | 0x802AFF94 | size: 0x74
.fn fn_802AFF94, global
/* 802AFF94 002A5D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AFF98 002A5D18  7C 08 02 A6 */	mflr r0
/* 802AFF9C 002A5D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AFFA0 002A5D20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AFFA4 002A5D24  7C 7F 1B 78 */	mr r31, r3
/* 802AFFA8 002A5D28  80 83 00 08 */	lwz r4, 0x8(r3)
/* 802AFFAC 002A5D2C  38 63 00 30 */	addi r3, r3, 0x30
/* 802AFFB0 002A5D30  48 06 83 5D */	bl fn_8031830C
/* 802AFFB4 002A5D34  38 A0 00 00 */	li r5, 0x0
/* 802AFFB8 002A5D38  34 DF 00 30 */	addic. r6, r31, 0x30
/* 802AFFBC 002A5D3C  98 BF 00 78 */	stb r5, 0x78(r31)
/* 802AFFC0 002A5D40  41 82 00 1C */	beq .L_802AFFDC
/* 802AFFC4 002A5D44  3C 60 80 00 */	lis r3, 0x8000
/* 802AFFC8 002A5D48  38 86 00 0C */	addi r4, r6, 0xc
/* 802AFFCC 002A5D4C  38 03 00 01 */	addi r0, r3, 0x1
/* 802AFFD0 002A5D50  90 86 00 00 */	stw r4, 0x0(r6)
/* 802AFFD4 002A5D54  90 A6 00 04 */	stw r5, 0x4(r6)
/* 802AFFD8 002A5D58  90 06 00 08 */	stw r0, 0x8(r6)
.L_802AFFDC:
/* 802AFFDC 002A5D5C  38 7F 00 30 */	addi r3, r31, 0x30
/* 802AFFE0 002A5D60  48 04 CB 35 */	bl fn_802FCB14
/* 802AFFE4 002A5D64  C0 02 AC 04 */	lfs f0, lbl_805A3F24@sda21(r0)
/* 802AFFE8 002A5D68  38 00 00 19 */	li r0, 0x19
/* 802AFFEC 002A5D6C  B0 1F 00 7A */	sth r0, 0x7a(r31)
/* 802AFFF0 002A5D70  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 802AFFF4 002A5D74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AFFF8 002A5D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AFFFC 002A5D7C  7C 08 03 A6 */	mtlr r0
/* 802B0000 002A5D80  38 21 00 10 */	addi r1, r1, 0x10
/* 802B0004 002A5D84  4E 80 00 20 */	blr
.endfn fn_802AFF94
