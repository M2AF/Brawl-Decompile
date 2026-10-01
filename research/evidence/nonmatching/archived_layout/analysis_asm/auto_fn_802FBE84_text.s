.include "macros.inc"
.file "auto_fn_802FBE84_text"

# 0x8000869C..0x800086A4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000869C | size: 0x8
.obj "@etb_8000869C", local
.hidden "@etb_8000869C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 */
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_8000869C"

# 0x8000B53C..0x8000B548 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B53C | size: 0xC
.obj "@eti_8000B53C", local
.hidden "@eti_8000B53C"
	.4byte fn_802FBE84
	.4byte 0x00000074
	.4byte "@etb_8000869C"
.endobj "@eti_8000B53C"

# 0x802FBE84..0x802FBEF8 | size: 0x74
.text
.balign 4

# .text:0x0 | 0x802FBE84 | size: 0x74
.fn fn_802FBE84, global
/* 802FBE84 002F1C04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FBE88 002F1C08  7C 08 02 A6 */	mflr r0
/* 802FBE8C 002F1C0C  3C 60 00 01 */	lis r3, 0x1
/* 802FBE90 002F1C10  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FBE94 002F1C14  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802FBE98 002F1C18  7C 9B 23 78 */	mr r27, r4
/* 802FBE9C 002F1C1C  7C BC 2B 78 */	mr r28, r5
/* 802FBEA0 002F1C20  3B A0 00 00 */	li r29, 0x0
/* 802FBEA4 002F1C24  7F 7E DB 78 */	mr r30, r27
/* 802FBEA8 002F1C28  3B E3 FF FF */	subi r31, r3, 0x1
.L_802FBEAC:
/* 802FBEAC 002F1C2C  A0 9E 00 00 */	lhz r4, 0x0(r30)
/* 802FBEB0 002F1C30  28 04 FF FF */	cmplwi r4, 0xffff
/* 802FBEB4 002F1C34  41 82 00 1C */	beq .L_802FBED0
/* 802FBEB8 002F1C38  81 9C 00 00 */	lwz r12, 0x0(r28)
/* 802FBEBC 002F1C3C  7F 83 E3 78 */	mr r3, r28
/* 802FBEC0 002F1C40  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802FBEC4 002F1C44  7D 89 03 A6 */	mtctr r12
/* 802FBEC8 002F1C48  4E 80 04 21 */	bctrl
/* 802FBECC 002F1C4C  B3 FE 00 00 */	sth r31, 0x0(r30)
.L_802FBED0:
/* 802FBED0 002F1C50  3B BD 00 01 */	addi r29, r29, 0x1
/* 802FBED4 002F1C54  3B DE 00 02 */	addi r30, r30, 0x2
/* 802FBED8 002F1C58  2C 1D 00 03 */	cmpwi r29, 0x3
/* 802FBEDC 002F1C5C  41 80 FF D0 */	blt .L_802FBEAC
/* 802FBEE0 002F1C60  38 7B 00 20 */	addi r3, r27, 0x20
/* 802FBEE4 002F1C64  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802FBEE8 002F1C68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FBEEC 002F1C6C  7C 08 03 A6 */	mtlr r0
/* 802FBEF0 002F1C70  38 21 00 20 */	addi r1, r1, 0x20
/* 802FBEF4 002F1C74  4E 80 00 20 */	blr
.endfn fn_802FBE84
