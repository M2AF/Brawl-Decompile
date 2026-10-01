.include "macros.inc"
.file "auto_fn_802C0994_text"

# 0x80007BC8..0x80007BD0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007BC8 | size: 0x8
.obj "@etb_80007BC8", local
.hidden "@etb_80007BC8"
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
.endobj "@etb_80007BC8"

# 0x8000A954..0x8000A960 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A954 | size: 0xC
.obj "@eti_8000A954", local
.hidden "@eti_8000A954"
	.4byte fn_802C0994
	.4byte 0x0000005C
	.4byte "@etb_80007BC8"
.endobj "@eti_8000A954"

# 0x802C0994..0x802C09F0 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802C0994 | size: 0x5C
.fn fn_802C0994, global
/* 802C0994 002B6714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0998 002B6718  7C 08 02 A6 */	mflr r0
/* 802C099C 002B671C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C09A0 002B6720  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C09A4 002B6724  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C09A8 002B6728  7C 7F 1B 78 */	mr r31, r3
/* 802C09AC 002B672C  41 82 00 2C */	beq .L_802C09D8
/* 802C09B0 002B6730  2C 04 00 00 */	cmpwi r4, 0x0
/* 802C09B4 002B6734  40 81 00 24 */	ble .L_802C09D8
/* 802C09B8 002B6738  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C09BC 002B673C  7F E4 FB 78 */	mr r4, r31
/* 802C09C0 002B6740  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802C09C4 002B6744  38 C0 00 1D */	li r6, 0x1d
/* 802C09C8 002B6748  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C09CC 002B674C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C09D0 002B6750  7D 89 03 A6 */	mtctr r12
/* 802C09D4 002B6754  4E 80 04 21 */	bctrl
.L_802C09D8:
/* 802C09D8 002B6758  7F E3 FB 78 */	mr r3, r31
/* 802C09DC 002B675C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C09E0 002B6760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C09E4 002B6764  7C 08 03 A6 */	mtlr r0
/* 802C09E8 002B6768  38 21 00 10 */	addi r1, r1, 0x10
/* 802C09EC 002B676C  4E 80 00 20 */	blr
.endfn fn_802C0994
