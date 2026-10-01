.include "macros.inc"
.file "auto_fn_802CA4D4_text"

# 0x80008120..0x80008138 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008120 | size: 0x18
.obj "@etb_80008120", local
.hidden "@etb_80008120"
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
.endobj "@etb_80008120"

# 0x8000ADF8..0x8000AE04 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000ADF8 | size: 0xC
.obj "@eti_8000ADF8", local
.hidden "@eti_8000ADF8"
	.4byte fn_802CA4D4
	.4byte 0x00000048
	.4byte "@etb_80008120"
.endobj "@eti_8000ADF8"

# 0x802CA4D4..0x802CA51C | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802CA4D4 | size: 0x48
.fn fn_802CA4D4, global
/* 802CA4D4 002C0254  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CA4D8 002C0258  7C 08 02 A6 */	mflr r0
/* 802CA4DC 002C025C  3C E0 80 48 */	lis r7, lbl_80487178@ha
/* 802CA4E0 002C0260  7C 68 1B 78 */	mr r8, r3
/* 802CA4E4 002C0264  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CA4E8 002C0268  38 00 00 00 */	li r0, 0x0
/* 802CA4EC 002C026C  38 E7 71 78 */	addi r7, r7, lbl_80487178@l
/* 802CA4F0 002C0270  7C 83 23 78 */	mr r3, r4
/* 802CA4F4 002C0274  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802CA4F8 002C0278  7D 04 43 78 */	mr r4, r8
/* 802CA4FC 002C027C  38 C1 00 08 */	addi r6, r1, 0x8
/* 802CA500 002C0280  98 01 00 0C */	stb r0, 0xc(r1)
/* 802CA504 002C0284  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802CA508 002C0288  4B FF FB CD */	bl fn_802CA0D4
/* 802CA50C 002C028C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CA510 002C0290  7C 08 03 A6 */	mtlr r0
/* 802CA514 002C0294  38 21 00 20 */	addi r1, r1, 0x20
/* 802CA518 002C0298  4E 80 00 20 */	blr
.endfn fn_802CA4D4
