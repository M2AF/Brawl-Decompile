.include "macros.inc"
.file "auto_fn_802B9168_text"

# 0x8000773C..0x80007754 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000773C | size: 0x18
.obj "@etb_8000773C", local
.hidden "@etb_8000773C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 * 
 * PC actions:
 * PC=00000060, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A0DA4"
 * Has end bit
 */
	.4byte 0x28080000
	.4byte 0x00000060
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8A80001F
	.4byte dtor_802A0DA4
.endobj "@etb_8000773C"

# 0x8000A66C..0x8000A678 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A66C | size: 0xC
.obj "@eti_8000A66C", local
.hidden "@eti_8000A66C"
	.4byte fn_802B9168
	.4byte 0x00000084
	.4byte "@etb_8000773C"
.endobj "@eti_8000A66C"

# 0x802B9168..0x802B91EC | size: 0x84
.text
.balign 4

# .text:0x0 | 0x802B9168 | size: 0x84
.fn fn_802B9168, global
/* 802B9168 002AEEE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B916C 002AEEEC  7C 08 02 A6 */	mflr r0
/* 802B9170 002AEEF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B9174 002AEEF4  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802B9178 002AEEF8  7C 7B 1B 78 */	mr r27, r3
/* 802B917C 002AEEFC  7C 9C 23 78 */	mr r28, r4
/* 802B9180 002AEF00  7C BD 2B 78 */	mr r29, r5
/* 802B9184 002AEF04  7C DE 33 78 */	mr r30, r6
/* 802B9188 002AEF08  38 80 00 20 */	li r4, 0x20
/* 802B918C 002AEF0C  38 A0 00 1D */	li r5, 0x1d
/* 802B9190 002AEF10  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802B9194 002AEF14  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B9198 002AEF18  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B919C 002AEF1C  7D 89 03 A6 */	mtctr r12
/* 802B91A0 002AEF20  4E 80 04 21 */	bctrl
/* 802B91A4 002AEF24  38 00 00 20 */	li r0, 0x20
/* 802B91A8 002AEF28  7C 7F 1B 79 */	mr. r31, r3
/* 802B91AC 002AEF2C  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802B91B0 002AEF30  41 82 00 24 */	beq .L_802B91D4
/* 802B91B4 002AEF34  7F 84 E3 78 */	mr r4, r28
/* 802B91B8 002AEF38  7F 65 DB 78 */	mr r5, r27
/* 802B91BC 002AEF3C  7F A6 EB 78 */	mr r6, r29
/* 802B91C0 002AEF40  7F C7 F3 78 */	mr r7, r30
/* 802B91C4 002AEF44  4B FF FD 81 */	bl fn_802B8F44
/* 802B91C8 002AEF48  3C 60 80 48 */	lis r3, lbl_80486D28@ha
/* 802B91CC 002AEF4C  38 63 6D 28 */	addi r3, r3, lbl_80486D28@l
/* 802B91D0 002AEF50  90 7F 00 00 */	stw r3, 0x0(r31)
.L_802B91D4:
/* 802B91D4 002AEF54  7F E3 FB 78 */	mr r3, r31
/* 802B91D8 002AEF58  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802B91DC 002AEF5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B91E0 002AEF60  7C 08 03 A6 */	mtlr r0
/* 802B91E4 002AEF64  38 21 00 20 */	addi r1, r1, 0x20
/* 802B91E8 002AEF68  4E 80 00 20 */	blr
.endfn fn_802B9168
