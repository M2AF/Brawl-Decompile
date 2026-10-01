.include "macros.inc"
.file "auto_fn_802B91EC_text"

# 0x80007754..0x8000775C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007754 | size: 0x8
.obj "@etb_80007754", local
.hidden "@etb_80007754"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80007754"

# 0x8000A678..0x8000A684 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A678 | size: 0xC
.obj "@eti_8000A678", local
.hidden "@eti_8000A678"
	.4byte fn_802B91EC
	.4byte 0x00000098
	.4byte "@etb_80007754"
.endobj "@eti_8000A678"

# 0x802B91EC..0x802B9284 | size: 0x98
.text
.balign 4

# .text:0x0 | 0x802B91EC | size: 0x98
.fn fn_802B91EC, global
/* 802B91EC 002AEF6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B91F0 002AEF70  7C 08 02 A6 */	mflr r0
/* 802B91F4 002AEF74  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B91F8 002AEF78  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B91FC 002AEF7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B9200 002AEF80  7C 9F 23 78 */	mr r31, r4
/* 802B9204 002AEF84  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802B9208 002AEF88  7C 7E 1B 78 */	mr r30, r3
/* 802B920C 002AEF8C  41 82 00 5C */	beq .L_802B9268
/* 802B9210 002AEF90  34 03 00 0C */	addic. r0, r3, 0xc
/* 802B9214 002AEF94  41 82 00 2C */	beq .L_802B9240
/* 802B9218 002AEF98  41 82 00 28 */	beq .L_802B9240
/* 802B921C 002AEF9C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802B9220 002AEFA0  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802B9224 002AEFA4  40 82 00 1C */	bne .L_802B9240
/* 802B9228 002AEFA8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802B922C 002AEFAC  38 C0 00 15 */	li r6, 0x15
/* 802B9230 002AEFB0  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802B9234 002AEFB4  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802B9238 002AEFB8  54 05 08 7C */	clrlslwi r5, r0, 2, 1
/* 802B923C 002AEFBC  4B FC 58 81 */	bl fn_8027EABC
.L_802B9240:
/* 802B9240 002AEFC0  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802B9244 002AEFC4  40 81 00 24 */	ble .L_802B9268
/* 802B9248 002AEFC8  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802B924C 002AEFCC  7F C4 F3 78 */	mr r4, r30
/* 802B9250 002AEFD0  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802B9254 002AEFD4  38 C0 00 1D */	li r6, 0x1d
/* 802B9258 002AEFD8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B925C 002AEFDC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802B9260 002AEFE0  7D 89 03 A6 */	mtctr r12
/* 802B9264 002AEFE4  4E 80 04 21 */	bctrl
.L_802B9268:
/* 802B9268 002AEFE8  7F C3 F3 78 */	mr r3, r30
/* 802B926C 002AEFEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B9270 002AEFF0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802B9274 002AEFF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B9278 002AEFF8  7C 08 03 A6 */	mtlr r0
/* 802B927C 002AEFFC  38 21 00 10 */	addi r1, r1, 0x10
/* 802B9280 002AF000  4E 80 00 20 */	blr
.endfn fn_802B91EC
