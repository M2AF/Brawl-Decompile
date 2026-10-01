.include "macros.inc"
.file "auto_fn_802C7178_text"

# 0x80007F34..0x80007F58 | size: 0x24
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007F34 | size: 0x24
.obj "@etb_80007F34", local
.hidden "@etb_80007F34"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 * 
 * PC actions:
 * PC=00000088, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYBASE
 * Member: 0x0(r30)
 * Dtor: "dtor_802A0E20"
 * 00001C:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A0DA4"
 * Has end bit
 */
	.4byte 0x18080000
	.4byte 0x00000088
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0680001E
	.4byte 0x00000000
	.4byte dtor_802A0E20
	.4byte 0x8A80001F
	.4byte dtor_802A0DA4
.endobj "@etb_80007F34"

# 0x8000AC6C..0x8000AC78 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AC6C | size: 0xC
.obj "@eti_8000AC6C", local
.hidden "@eti_8000AC6C"
	.4byte fn_802C7178
	.4byte 0x000000A8
	.4byte "@etb_80007F34"
.endobj "@eti_8000AC6C"

# 0x802C7178..0x802C7220 | size: 0xA8
.text
.balign 4

# .text:0x0 | 0x802C7178 | size: 0xA8
.fn fn_802C7178, global
/* 802C7178 002BCEF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C717C 002BCEFC  7C 08 02 A6 */	mflr r0
/* 802C7180 002BCF00  38 A0 00 1D */	li r5, 0x1d
/* 802C7184 002BCF04  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C7188 002BCF08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C718C 002BCF0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C7190 002BCF10  7C DE 33 78 */	mr r30, r6
/* 802C7194 002BCF14  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802C7198 002BCF18  7C 9D 23 78 */	mr r29, r4
/* 802C719C 002BCF1C  38 80 00 20 */	li r4, 0x20
/* 802C71A0 002BCF20  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C71A4 002BCF24  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C71A8 002BCF28  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C71AC 002BCF2C  7D 89 03 A6 */	mtctr r12
/* 802C71B0 002BCF30  4E 80 04 21 */	bctrl
/* 802C71B4 002BCF34  38 00 00 20 */	li r0, 0x20
/* 802C71B8 002BCF38  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C71BC 002BCF3C  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802C71C0 002BCF40  7C 7F 1B 78 */	mr r31, r3
/* 802C71C4 002BCF44  41 82 00 3C */	beq .L_802C7200
/* 802C71C8 002BCF48  38 00 00 01 */	li r0, 0x1
/* 802C71CC 002BCF4C  3C C0 80 48 */	lis r6, lbl_8048712C@ha
/* 802C71D0 002BCF50  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802C71D4 002BCF54  3C 80 00 01 */	lis r4, 0x1
/* 802C71D8 002BCF58  38 04 FF FF */	subi r0, r4, 0x1
/* 802C71DC 002BCF5C  38 C6 71 2C */	addi r6, r6, lbl_8048712C@l
/* 802C71E0 002BCF60  93 C3 00 08 */	stw r30, 0x8(r3)
/* 802C71E4 002BCF64  7C 7E 1B 78 */	mr r30, r3
/* 802C71E8 002BCF68  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 802C71EC 002BCF6C  38 83 00 10 */	addi r4, r3, 0x10
/* 802C71F0 002BCF70  90 C3 00 00 */	stw r6, 0x0(r3)
/* 802C71F4 002BCF74  B0 03 00 0C */	sth r0, 0xc(r3)
/* 802C71F8 002BCF78  38 65 00 10 */	addi r3, r5, 0x10
/* 802C71FC 002BCF7C  48 05 DF 89 */	bl fn_80325184
.L_802C7200:
/* 802C7200 002BCF80  7F E3 FB 78 */	mr r3, r31
/* 802C7204 002BCF84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C7208 002BCF88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C720C 002BCF8C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802C7210 002BCF90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C7214 002BCF94  7C 08 03 A6 */	mtlr r0
/* 802C7218 002BCF98  38 21 00 20 */	addi r1, r1, 0x20
/* 802C721C 002BCF9C  4E 80 00 20 */	blr
.endfn fn_802C7178
