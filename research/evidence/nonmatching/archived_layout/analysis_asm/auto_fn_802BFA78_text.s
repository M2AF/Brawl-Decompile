.include "macros.inc"
.file "auto_fn_802BFA78_text"

# 0x80007AF4..0x80007B0C | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007AF4 | size: 0x18
.obj "@etb_80007AF4", local
.hidden "@etb_80007AF4"
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
.endobj "@etb_80007AF4"

# 0x8000A8C4..0x8000A8D0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A8C4 | size: 0xC
.obj "@eti_8000A8C4", local
.hidden "@eti_8000A8C4"
	.4byte fn_802BFA78
	.4byte 0x00000048
	.4byte "@etb_80007AF4"
.endobj "@eti_8000A8C4"

# 0x802BFA78..0x802BFAC0 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802BFA78 | size: 0x48
.fn fn_802BFA78, global
/* 802BFA78 002B57F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BFA7C 002B57FC  7C 08 02 A6 */	mflr r0
/* 802BFA80 002B5800  3C E0 80 48 */	lis r7, lbl_80487178@ha
/* 802BFA84 002B5804  7C 68 1B 78 */	mr r8, r3
/* 802BFA88 002B5808  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BFA8C 002B580C  38 00 00 00 */	li r0, 0x0
/* 802BFA90 002B5810  38 E7 71 78 */	addi r7, r7, lbl_80487178@l
/* 802BFA94 002B5814  7C 83 23 78 */	mr r3, r4
/* 802BFA98 002B5818  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802BFA9C 002B581C  7D 04 43 78 */	mr r4, r8
/* 802BFAA0 002B5820  38 C1 00 08 */	addi r6, r1, 0x8
/* 802BFAA4 002B5824  98 01 00 0C */	stb r0, 0xc(r1)
/* 802BFAA8 002B5828  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802BFAAC 002B582C  4B FF F2 B1 */	bl fn_802BED5C
/* 802BFAB0 002B5830  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BFAB4 002B5834  7C 08 03 A6 */	mtlr r0
/* 802BFAB8 002B5838  38 21 00 20 */	addi r1, r1, 0x20
/* 802BFABC 002B583C  4E 80 00 20 */	blr
.endfn fn_802BFA78
