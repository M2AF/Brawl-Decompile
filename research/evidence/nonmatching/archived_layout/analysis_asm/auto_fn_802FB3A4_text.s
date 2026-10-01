.include "macros.inc"
.file "auto_fn_802FB3A4_text"

# 0x80008674..0x8000867C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008674 | size: 0x8
.obj "@etb_80008674", local
.hidden "@etb_80008674"
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
.endobj "@etb_80008674"

# 0x8000B500..0x8000B50C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B500 | size: 0xC
.obj "@eti_8000B500", local
.hidden "@eti_8000B500"
	.4byte fn_802FB3A4
	.4byte 0x00000074
	.4byte "@etb_80008674"
.endobj "@eti_8000B500"

# 0x802FB3A4..0x802FB418 | size: 0x74
.text
.balign 4

# .text:0x0 | 0x802FB3A4 | size: 0x74
.fn fn_802FB3A4, global
/* 802FB3A4 002F1124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FB3A8 002F1128  7C 08 02 A6 */	mflr r0
/* 802FB3AC 002F112C  38 C0 00 00 */	li r6, 0x0
/* 802FB3B0 002F1130  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FB3B4 002F1134  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FB3B8 002F1138  7C 7F 1B 78 */	mr r31, r3
/* 802FB3BC 002F113C  7C 83 23 78 */	mr r3, r4
/* 802FB3C0 002F1140  88 04 00 21 */	lbz r0, 0x21(r4)
/* 802FB3C4 002F1144  7C 09 03 A6 */	mtctr r0
/* 802FB3C8 002F1148  2C 00 00 00 */	cmpwi r0, 0x0
/* 802FB3CC 002F114C  40 81 00 38 */	ble .L_802FB404
.L_802FB3D0:
/* 802FB3D0 002F1150  A0 03 00 02 */	lhz r0, 0x2(r3)
/* 802FB3D4 002F1154  7C 05 00 40 */	cmplw r5, r0
/* 802FB3D8 002F1158  40 82 00 20 */	bne .L_802FB3F8
/* 802FB3DC 002F115C  7C 83 23 78 */	mr r3, r4
/* 802FB3E0 002F1160  7C C4 33 78 */	mr r4, r6
/* 802FB3E4 002F1164  4B FA 6A A9 */	bl fn_802A1E8C
/* 802FB3E8 002F1168  88 7F 00 02 */	lbz r3, 0x2(r31)
/* 802FB3EC 002F116C  38 03 FF FF */	subi r0, r3, 0x1
/* 802FB3F0 002F1170  98 1F 00 02 */	stb r0, 0x2(r31)
/* 802FB3F4 002F1174  48 00 00 10 */	b .L_802FB404
.L_802FB3F8:
/* 802FB3F8 002F1178  38 63 00 04 */	addi r3, r3, 0x4
/* 802FB3FC 002F117C  38 C6 00 01 */	addi r6, r6, 0x1
/* 802FB400 002F1180  42 00 FF D0 */	bdnz .L_802FB3D0
.L_802FB404:
/* 802FB404 002F1184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FB408 002F1188  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FB40C 002F118C  7C 08 03 A6 */	mtlr r0
/* 802FB410 002F1190  38 21 00 10 */	addi r1, r1, 0x10
/* 802FB414 002F1194  4E 80 00 20 */	blr
.endfn fn_802FB3A4
