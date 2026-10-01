.include "macros.inc"
.file "auto_fn_802AA5E0_text"

# 0x80006ED4..0x80006EEC | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006ED4 | size: 0x18
.obj "@etb_80006ED4", local
.hidden "@etb_80006ED4"
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
.endobj "@etb_80006ED4"

# 0x8000A0A8..0x8000A0B4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A0A8 | size: 0xC
.obj "@eti_8000A0A8", local
.hidden "@eti_8000A0A8"
	.4byte fn_802AA5E0
	.4byte 0x00000048
	.4byte "@etb_80006ED4"
.endobj "@eti_8000A0A8"

# 0x802AA5E0..0x802AA628 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802AA5E0 | size: 0x48
.fn fn_802AA5E0, global
/* 802AA5E0 002A0360  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AA5E4 002A0364  7C 08 02 A6 */	mflr r0
/* 802AA5E8 002A0368  3D 00 80 48 */	lis r8, lbl_80487178@ha
/* 802AA5EC 002A036C  7C 89 23 78 */	mr r9, r4
/* 802AA5F0 002A0370  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AA5F4 002A0374  38 00 00 00 */	li r0, 0x0
/* 802AA5F8 002A0378  39 08 71 78 */	addi r8, r8, lbl_80487178@l
/* 802AA5FC 002A037C  7C A4 2B 78 */	mr r4, r5
/* 802AA600 002A0380  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802AA604 002A0384  7D 25 4B 78 */	mr r5, r9
/* 802AA608 002A0388  38 E1 00 08 */	addi r7, r1, 0x8
/* 802AA60C 002A038C  98 01 00 0C */	stb r0, 0xc(r1)
/* 802AA610 002A0390  91 01 00 08 */	stw r8, 0x8(r1)
/* 802AA614 002A0394  4B FF F8 DD */	bl fn_802A9EF0
/* 802AA618 002A0398  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AA61C 002A039C  7C 08 03 A6 */	mtlr r0
/* 802AA620 002A03A0  38 21 00 20 */	addi r1, r1, 0x20
/* 802AA624 002A03A4  4E 80 00 20 */	blr
.endfn fn_802AA5E0
