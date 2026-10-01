.include "macros.inc"
.file "auto_fn_802BB3A8_text"

# 0x800078E4..0x800078EC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800078E4 | size: 0x8
.obj "@etb_800078E4", local
.hidden "@etb_800078E4"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_800078E4"

# 0x8000A780..0x8000A78C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A780 | size: 0xC
.obj "@eti_8000A780", local
.hidden "@eti_8000A780"
	.4byte fn_802BB3A8
	.4byte 0x00000094
	.4byte "@etb_800078E4"
.endobj "@eti_8000A780"

# 0x802BB3A8..0x802BB43C | size: 0x94
.text
.balign 4

# .text:0x0 | 0x802BB3A8 | size: 0x94
.fn fn_802BB3A8, global
/* 802BB3A8 002B1128  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BB3AC 002B112C  7C 08 02 A6 */	mflr r0
/* 802BB3B0 002B1130  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BB3B4 002B1134  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BB3B8 002B1138  3B E0 00 00 */	li r31, 0x0
/* 802BB3BC 002B113C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BB3C0 002B1140  3B C0 00 00 */	li r30, 0x0
/* 802BB3C4 002B1144  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802BB3C8 002B1148  7C 7D 1B 78 */	mr r29, r3
/* 802BB3CC 002B114C  48 00 00 28 */	b .L_802BB3F4
.L_802BB3D0:
/* 802BB3D0 002B1150  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802BB3D4 002B1154  7C 60 FA 14 */	add r3, r0, r31
/* 802BB3D8 002B1158  80 63 00 04 */	lwz r3, 0x4(r3)
/* 802BB3DC 002B115C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802BB3E0 002B1160  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802BB3E4 002B1164  7D 89 03 A6 */	mtctr r12
/* 802BB3E8 002B1168  4E 80 04 21 */	bctrl
/* 802BB3EC 002B116C  3B FF 00 08 */	addi r31, r31, 0x8
/* 802BB3F0 002B1170  3B DE 00 01 */	addi r30, r30, 0x1
.L_802BB3F4:
/* 802BB3F4 002B1174  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 802BB3F8 002B1178  7C 1E 00 00 */	cmpw r30, r0
/* 802BB3FC 002B117C  41 80 FF D4 */	blt .L_802BB3D0
/* 802BB400 002B1180  2C 1D 00 00 */	cmpwi r29, 0x0
/* 802BB404 002B1184  41 82 00 1C */	beq .L_802BB420
/* 802BB408 002B1188  81 9D 00 00 */	lwz r12, 0x0(r29)
/* 802BB40C 002B118C  7F A3 EB 78 */	mr r3, r29
/* 802BB410 002B1190  38 80 00 01 */	li r4, 0x1
/* 802BB414 002B1194  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802BB418 002B1198  7D 89 03 A6 */	mtctr r12
/* 802BB41C 002B119C  4E 80 04 21 */	bctrl
.L_802BB420:
/* 802BB420 002B11A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BB424 002B11A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BB428 002B11A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BB42C 002B11AC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802BB430 002B11B0  7C 08 03 A6 */	mtlr r0
/* 802BB434 002B11B4  38 21 00 20 */	addi r1, r1, 0x20
/* 802BB438 002B11B8  4E 80 00 20 */	blr
.endfn fn_802BB3A8
