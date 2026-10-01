.include "macros.inc"
.file "auto_fn_802C20DC_text"

# 0x80007CC0..0x80007CD8 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007CC0 | size: 0x18
.obj "@etb_80007CC0", local
.hidden "@etb_80007CC0"
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
.endobj "@etb_80007CC0"

# 0x8000AA38..0x8000AA44 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AA38 | size: 0xC
.obj "@eti_8000AA38", local
.hidden "@eti_8000AA38"
	.4byte fn_802C20DC
	.4byte 0x00000048
	.4byte "@etb_80007CC0"
.endobj "@eti_8000AA38"

# 0x802C20DC..0x802C2124 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802C20DC | size: 0x48
.fn fn_802C20DC, global
/* 802C20DC 002B7E5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C20E0 002B7E60  7C 08 02 A6 */	mflr r0
/* 802C20E4 002B7E64  3D 00 80 48 */	lis r8, lbl_80487178@ha
/* 802C20E8 002B7E68  7C 89 23 78 */	mr r9, r4
/* 802C20EC 002B7E6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C20F0 002B7E70  38 00 00 00 */	li r0, 0x0
/* 802C20F4 002B7E74  39 08 71 78 */	addi r8, r8, lbl_80487178@l
/* 802C20F8 002B7E78  7C A4 2B 78 */	mr r4, r5
/* 802C20FC 002B7E7C  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802C2100 002B7E80  7D 25 4B 78 */	mr r5, r9
/* 802C2104 002B7E84  38 E1 00 08 */	addi r7, r1, 0x8
/* 802C2108 002B7E88  98 01 00 0C */	stb r0, 0xc(r1)
/* 802C210C 002B7E8C  91 01 00 08 */	stw r8, 0x8(r1)
/* 802C2110 002B7E90  4B FF F8 31 */	bl fn_802C1940
/* 802C2114 002B7E94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C2118 002B7E98  7C 08 03 A6 */	mtlr r0
/* 802C211C 002B7E9C  38 21 00 20 */	addi r1, r1, 0x20
/* 802C2120 002B7EA0  4E 80 00 20 */	blr
.endfn fn_802C20DC
