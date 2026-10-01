.include "macros.inc"
.file "auto_fn_803FA1D0_text"

# 0x800096DC..0x800096E4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800096DC | size: 0x8
.obj "@etb_800096DC", local
.hidden "@etb_800096DC"
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
.endobj "@etb_800096DC"

# 0x8000C790..0x8000C79C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C790 | size: 0xC
.obj "@eti_8000C790", local
.hidden "@eti_8000C790"
	.4byte fn_803FA1D0
	.4byte 0x000000B0
	.4byte "@etb_800096DC"
.endobj "@eti_8000C790"

# 0x803FA1D0..0x803FA280 | size: 0xB0
.text
.balign 4

# .text:0x0 | 0x803FA1D0 | size: 0xB0
.fn fn_803FA1D0, global
/* 803FA1D0 003EFF50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FA1D4 003EFF54  7C 08 02 A6 */	mflr r0
/* 803FA1D8 003EFF58  2C 03 00 01 */	cmpwi r3, 0x1
/* 803FA1DC 003EFF5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FA1E0 003EFF60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FA1E4 003EFF64  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803FA1E8 003EFF68  7C 7E 1B 78 */	mr r30, r3
/* 803FA1EC 003EFF6C  41 80 00 0C */	blt .L_803FA1F8
/* 803FA1F0 003EFF70  2C 03 00 07 */	cmpwi r3, 0x7
/* 803FA1F4 003EFF74  40 81 00 0C */	ble .L_803FA200
.L_803FA1F8:
/* 803FA1F8 003EFF78  38 60 FF FF */	li r3, -0x1
/* 803FA1FC 003EFF7C  48 00 00 6C */	b .L_803FA268
.L_803FA200:
/* 803FA200 003EFF80  38 03 FF FF */	subi r0, r3, 0x1
/* 803FA204 003EFF84  3C 80 80 5A */	lis r4, lbl_80599F28@ha
/* 803FA208 003EFF88  54 05 10 3A */	slwi r5, r0, 2
/* 803FA20C 003EFF8C  38 84 9F 28 */	addi r4, r4, lbl_80599F28@l
/* 803FA210 003EFF90  7F E4 28 2E */	lwzx r31, r4, r5
/* 803FA214 003EFF94  28 1F 00 01 */	cmplwi r31, 0x1
/* 803FA218 003EFF98  41 82 00 0C */	beq .L_803FA224
/* 803FA21C 003EFF9C  38 00 00 00 */	li r0, 0x0
/* 803FA220 003EFFA0  7C 04 29 2E */	stwx r0, r4, r5
.L_803FA224:
/* 803FA224 003EFFA4  28 1F 00 01 */	cmplwi r31, 0x1
/* 803FA228 003EFFA8  41 82 00 14 */	beq .L_803FA23C
/* 803FA22C 003EFFAC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 803FA230 003EFFB0  40 82 00 14 */	bne .L_803FA244
/* 803FA234 003EFFB4  2C 03 00 01 */	cmpwi r3, 0x1
/* 803FA238 003EFFB8  40 82 00 0C */	bne .L_803FA244
.L_803FA23C:
/* 803FA23C 003EFFBC  38 60 00 00 */	li r3, 0x0
/* 803FA240 003EFFC0  48 00 00 28 */	b .L_803FA268
.L_803FA244:
/* 803FA244 003EFFC4  2C 1F 00 00 */	cmpwi r31, 0x0
/* 803FA248 003EFFC8  40 82 00 0C */	bne .L_803FA254
/* 803FA24C 003EFFCC  38 60 00 00 */	li r3, 0x0
/* 803FA250 003EFFD0  4B DE 9F 59 */	bl exit
.L_803FA254:
/* 803FA254 003EFFD4  7F EC FB 78 */	mr r12, r31
/* 803FA258 003EFFD8  7F C3 F3 78 */	mr r3, r30
/* 803FA25C 003EFFDC  7D 89 03 A6 */	mtctr r12
/* 803FA260 003EFFE0  4E 80 04 21 */	bctrl
/* 803FA264 003EFFE4  38 60 00 00 */	li r3, 0x0
.L_803FA268:
/* 803FA268 003EFFE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FA26C 003EFFEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FA270 003EFFF0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803FA274 003EFFF4  7C 08 03 A6 */	mtlr r0
/* 803FA278 003EFFF8  38 21 00 10 */	addi r1, r1, 0x10
/* 803FA27C 003EFFFC  4E 80 00 20 */	blr
.endfn fn_803FA1D0
