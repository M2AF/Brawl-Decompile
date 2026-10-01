.include "macros.inc"
.file "auto_fn_802C8F68_text"

# 0x80008040..0x80008048 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008040 | size: 0x8
.obj "@etb_80008040", local
.hidden "@etb_80008040"
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
.endobj "@etb_80008040"

# 0x8000AD44..0x8000AD50 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AD44 | size: 0xC
.obj "@eti_8000AD44", local
.hidden "@eti_8000AD44"
	.4byte fn_802C8F68
	.4byte 0x0000005C
	.4byte "@etb_80008040"
.endobj "@eti_8000AD44"

# 0x802C8F68..0x802C8FC4 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802C8F68 | size: 0x5C
.fn fn_802C8F68, global
/* 802C8F68 002BECE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C8F6C 002BECEC  7C 08 02 A6 */	mflr r0
/* 802C8F70 002BECF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C8F74 002BECF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C8F78 002BECF8  7C 7F 1B 78 */	mr r31, r3
/* 802C8F7C 002BECFC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802C8F80 002BED00  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C8F84 002BED04  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802C8F88 002BED08  7D 89 03 A6 */	mtctr r12
/* 802C8F8C 002BED0C  4E 80 04 21 */	bctrl
/* 802C8F90 002BED10  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802C8F94 002BED14  41 82 00 1C */	beq .L_802C8FB0
/* 802C8F98 002BED18  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802C8F9C 002BED1C  7F E3 FB 78 */	mr r3, r31
/* 802C8FA0 002BED20  38 80 00 01 */	li r4, 0x1
/* 802C8FA4 002BED24  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802C8FA8 002BED28  7D 89 03 A6 */	mtctr r12
/* 802C8FAC 002BED2C  4E 80 04 21 */	bctrl
.L_802C8FB0:
/* 802C8FB0 002BED30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C8FB4 002BED34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C8FB8 002BED38  7C 08 03 A6 */	mtlr r0
/* 802C8FBC 002BED3C  38 21 00 10 */	addi r1, r1, 0x10
/* 802C8FC0 002BED40  4E 80 00 20 */	blr
.endfn fn_802C8F68
