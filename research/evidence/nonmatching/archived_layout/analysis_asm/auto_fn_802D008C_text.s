.include "macros.inc"
.file "auto_fn_802D008C_text"

# 0x800083A0..0x800083A8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800083A0 | size: 0x8
.obj "@etb_800083A0", local
.hidden "@etb_800083A0"
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
.endobj "@etb_800083A0"

# 0x8000B0E0..0x8000B0EC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B0E0 | size: 0xC
.obj "@eti_8000B0E0", local
.hidden "@eti_8000B0E0"
	.4byte fn_802D008C
	.4byte 0x00000064
	.4byte "@etb_800083A0"
.endobj "@eti_8000B0E0"

# 0x802D008C..0x802D00F0 | size: 0x64
.text
.balign 4

# .text:0x0 | 0x802D008C | size: 0x64
.fn fn_802D008C, global
/* 802D008C 002C5E0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D0090 002C5E10  7C 08 02 A6 */	mflr r0
/* 802D0094 002C5E14  7C 66 1B 78 */	mr r6, r3
/* 802D0098 002C5E18  38 A0 00 01 */	li r5, 0x1
/* 802D009C 002C5E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D00A0 002C5E20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D00A4 002C5E24  7C 9F 23 78 */	mr r31, r4
/* 802D00A8 002C5E28  3C 80 80 41 */	lis r4, lbl_804103F8@ha
/* 802D00AC 002C5E2C  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802D00B0 002C5E30  38 84 03 F8 */	addi r4, r4, lbl_804103F8@l
/* 802D00B4 002C5E34  7F E3 FB 78 */	mr r3, r31
/* 802D00B8 002C5E38  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802D00BC 002C5E3C  38 84 00 0F */	addi r4, r4, 0xf
/* 802D00C0 002C5E40  7D 89 03 A6 */	mtctr r12
/* 802D00C4 002C5E44  4E 80 04 21 */	bctrl
/* 802D00C8 002C5E48  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802D00CC 002C5E4C  7F E3 FB 78 */	mr r3, r31
/* 802D00D0 002C5E50  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802D00D4 002C5E54  7D 89 03 A6 */	mtctr r12
/* 802D00D8 002C5E58  4E 80 04 21 */	bctrl
/* 802D00DC 002C5E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D00E0 002C5E60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D00E4 002C5E64  7C 08 03 A6 */	mtlr r0
/* 802D00E8 002C5E68  38 21 00 10 */	addi r1, r1, 0x10
/* 802D00EC 002C5E6C  4E 80 00 20 */	blr
.endfn fn_802D008C
