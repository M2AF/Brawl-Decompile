.include "macros.inc"
.file "auto_fn_802C65E4_text"

# 0x80007ED8..0x80007EE0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007ED8 | size: 0x8
.obj "@etb_80007ED8", local
.hidden "@etb_80007ED8"
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
.endobj "@etb_80007ED8"

# 0x8000AC0C..0x8000AC18 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AC0C | size: 0xC
.obj "@eti_8000AC0C", local
.hidden "@eti_8000AC0C"
	.4byte fn_802C65E4
	.4byte 0x0000005C
	.4byte "@etb_80007ED8"
.endobj "@eti_8000AC0C"

# 0x802C65E4..0x802C6640 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802C65E4 | size: 0x5C
.fn fn_802C65E4, global
/* 802C65E4 002BC364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C65E8 002BC368  7C 08 02 A6 */	mflr r0
/* 802C65EC 002BC36C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C65F0 002BC370  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C65F4 002BC374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C65F8 002BC378  7C 7F 1B 78 */	mr r31, r3
/* 802C65FC 002BC37C  41 82 00 2C */	beq .L_802C6628
/* 802C6600 002BC380  2C 04 00 00 */	cmpwi r4, 0x0
/* 802C6604 002BC384  40 81 00 24 */	ble .L_802C6628
/* 802C6608 002BC388  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C660C 002BC38C  7F E4 FB 78 */	mr r4, r31
/* 802C6610 002BC390  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802C6614 002BC394  38 C0 00 1D */	li r6, 0x1d
/* 802C6618 002BC398  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C661C 002BC39C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C6620 002BC3A0  7D 89 03 A6 */	mtctr r12
/* 802C6624 002BC3A4  4E 80 04 21 */	bctrl
.L_802C6628:
/* 802C6628 002BC3A8  7F E3 FB 78 */	mr r3, r31
/* 802C662C 002BC3AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C6630 002BC3B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C6634 002BC3B4  7C 08 03 A6 */	mtlr r0
/* 802C6638 002BC3B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802C663C 002BC3BC  4E 80 00 20 */	blr
.endfn fn_802C65E4
