.include "macros.inc"
.file "auto_fn_802C59C4_text"

# 0x80007E40..0x80007E58 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007E40 | size: 0x18
.obj "@etb_80007E40", local
.hidden "@etb_80007E40"
/*
 * Flag values:
 * Has Elf Vector: No
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
 * Dtor: "dtor_802A3938"
 * Has end bit
 */
	.4byte 0x00080000
	.4byte 0x00000038
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte dtor_802A3938
.endobj "@etb_80007E40"

# 0x8000ABA0..0x8000ABAC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000ABA0 | size: 0xC
.obj "@eti_8000ABA0", local
.hidden "@eti_8000ABA0"
	.4byte fn_802C59C4
	.4byte 0x00000048
	.4byte "@etb_80007E40"
.endobj "@eti_8000ABA0"

# 0x802C59C4..0x802C5A0C | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802C59C4 | size: 0x48
.fn fn_802C59C4, global
/* 802C59C4 002BB744  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C59C8 002BB748  7C 08 02 A6 */	mflr r0
/* 802C59CC 002BB74C  3C E0 80 48 */	lis r7, lbl_80487178@ha
/* 802C59D0 002BB750  7C 68 1B 78 */	mr r8, r3
/* 802C59D4 002BB754  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C59D8 002BB758  38 00 00 00 */	li r0, 0x0
/* 802C59DC 002BB75C  38 E7 71 78 */	addi r7, r7, lbl_80487178@l
/* 802C59E0 002BB760  7C 83 23 78 */	mr r3, r4
/* 802C59E4 002BB764  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802C59E8 002BB768  7D 04 43 78 */	mr r4, r8
/* 802C59EC 002BB76C  38 C1 00 08 */	addi r6, r1, 0x8
/* 802C59F0 002BB770  98 01 00 0C */	stb r0, 0xc(r1)
/* 802C59F4 002BB774  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802C59F8 002BB778  4B FF F4 3D */	bl fn_802C4E34
/* 802C59FC 002BB77C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C5A00 002BB780  7C 08 03 A6 */	mtlr r0
/* 802C5A04 002BB784  38 21 00 20 */	addi r1, r1, 0x20
/* 802C5A08 002BB788  4E 80 00 20 */	blr
.endfn fn_802C59C4
