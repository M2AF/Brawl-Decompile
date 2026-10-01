.include "macros.inc"
.file "auto_fn_802B2990_text"

# 0x8000742C..0x80007434 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000742C | size: 0x8
.obj "@etb_8000742C", local
.hidden "@etb_8000742C"
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
.endobj "@etb_8000742C"

# 0x8000A45C..0x8000A468 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A45C | size: 0xC
.obj "@eti_8000A45C", local
.hidden "@eti_8000A45C"
	.4byte fn_802B2990
	.4byte 0x00000054
	.4byte "@etb_8000742C"
.endobj "@eti_8000A45C"

# 0x802B2990..0x802B29E4 | size: 0x54
.text
.balign 4

# .text:0x0 | 0x802B2990 | size: 0x54
.fn fn_802B2990, global
/* 802B2990 002A8710  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B2994 002A8714  7C 08 02 A6 */	mflr r0
/* 802B2998 002A8718  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B299C 002A871C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B29A0 002A8720  7C 7F 1B 78 */	mr r31, r3
/* 802B29A4 002A8724  80 83 00 08 */	lwz r4, 0x8(r3)
/* 802B29A8 002A8728  38 63 00 30 */	addi r3, r3, 0x30
/* 802B29AC 002A872C  48 06 59 61 */	bl fn_8031830C
/* 802B29B0 002A8730  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802B29B4 002A8734  41 82 00 1C */	beq .L_802B29D0
/* 802B29B8 002A8738  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802B29BC 002A873C  7F E3 FB 78 */	mr r3, r31
/* 802B29C0 002A8740  38 80 00 01 */	li r4, 0x1
/* 802B29C4 002A8744  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802B29C8 002A8748  7D 89 03 A6 */	mtctr r12
/* 802B29CC 002A874C  4E 80 04 21 */	bctrl
.L_802B29D0:
/* 802B29D0 002A8750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B29D4 002A8754  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B29D8 002A8758  7C 08 03 A6 */	mtlr r0
/* 802B29DC 002A875C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B29E0 002A8760  4E 80 00 20 */	blr
.endfn fn_802B2990
