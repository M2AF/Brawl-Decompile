.include "macros.inc"
.file "auto_fn_802A0CD0_text"

# 0x800067E8..0x8000680C | size: 0x24
.section extab, "a"
.balign 4

# extab:0x0 | 0x800067E8 | size: 0x24
.obj "@etb_800067E8", local
.hidden "@etb_800067E8"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 * 
 * PC actions:
 * PC=000000B4, Action: 000010
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
	.4byte 0x180A0000
	.4byte 0x000000B4
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0680001E
	.4byte 0x00000000
	.4byte dtor_802A0E20
	.4byte 0x8A80001F
	.4byte dtor_802A0DA4
.endobj "@etb_800067E8"

# 0x80009BEC..0x80009BF8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009BEC | size: 0xC
.obj "@eti_80009BEC", local
.hidden "@eti_80009BEC"
	.4byte fn_802A0CD0
	.4byte 0x000000D4
	.4byte "@etb_800067E8"
.endobj "@eti_80009BEC"

# 0x802A0CD0..0x802A0DA4 | size: 0xD4
.text
.balign 4

# .text:0x0 | 0x802A0CD0 | size: 0xD4
.fn fn_802A0CD0, global
/* 802A0CD0 00296A50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A0CD4 00296A54  7C 08 02 A6 */	mflr r0
/* 802A0CD8 00296A58  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 802A0CDC 00296A5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A0CE0 00296A60  C0 22 AB A0 */	lfs f1, lbl_805A3EC0@sda21(r0)
/* 802A0CE4 00296A64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A0CE8 00296A68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A0CEC 00296A6C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802A0CF0 00296A70  7C DD 33 78 */	mr r29, r6
/* 802A0CF4 00296A74  80 C4 00 00 */	lwz r6, 0x0(r4)
/* 802A0CF8 00296A78  C0 07 00 1C */	lfs f0, 0x1c(r7)
/* 802A0CFC 00296A7C  C0 45 00 08 */	lfs f2, 0x8(r5)
/* 802A0D00 00296A80  EC 01 00 32 */	fmuls f0, f1, f0
/* 802A0D04 00296A84  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802A0D08 00296A88  4C 41 13 82 */	cror eq, gt, eq
/* 802A0D0C 00296A8C  41 82 00 18 */	beq .L_802A0D24
/* 802A0D10 00296A90  C0 06 00 1C */	lfs f0, 0x1c(r6)
/* 802A0D14 00296A94  EC 01 00 32 */	fmuls f0, f1, f0
/* 802A0D18 00296A98  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802A0D1C 00296A9C  4C 41 13 82 */	cror eq, gt, eq
/* 802A0D20 00296AA0  40 82 00 10 */	bne .L_802A0D30
.L_802A0D24:
/* 802A0D24 00296AA4  7F A6 EB 78 */	mr r6, r29
/* 802A0D28 00296AA8  48 01 1B 8D */	bl fn_802B28B4
/* 802A0D2C 00296AAC  48 00 00 5C */	b .L_802A0D88
.L_802A0D30:
/* 802A0D30 00296AB0  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A0D34 00296AB4  38 80 00 60 */	li r4, 0x60
/* 802A0D38 00296AB8  38 A0 00 1D */	li r5, 0x1d
/* 802A0D3C 00296ABC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A0D40 00296AC0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802A0D44 00296AC4  7D 89 03 A6 */	mtctr r12
/* 802A0D48 00296AC8  4E 80 04 21 */	bctrl
/* 802A0D4C 00296ACC  38 00 00 60 */	li r0, 0x60
/* 802A0D50 00296AD0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A0D54 00296AD4  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802A0D58 00296AD8  7C 7F 1B 78 */	mr r31, r3
/* 802A0D5C 00296ADC  41 82 00 28 */	beq .L_802A0D84
/* 802A0D60 00296AE0  38 00 00 01 */	li r0, 0x1
/* 802A0D64 00296AE4  3C 80 80 48 */	lis r4, lbl_80486740@ha
/* 802A0D68 00296AE8  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802A0D6C 00296AEC  38 84 67 40 */	addi r4, r4, lbl_80486740@l
/* 802A0D70 00296AF0  7C 7E 1B 78 */	mr r30, r3
/* 802A0D74 00296AF4  93 A3 00 08 */	stw r29, 0x8(r3)
/* 802A0D78 00296AF8  90 83 00 00 */	stw r4, 0x0(r3)
/* 802A0D7C 00296AFC  38 63 00 10 */	addi r3, r3, 0x10
/* 802A0D80 00296B00  48 00 10 09 */	bl fn_802A1D88
.L_802A0D84:
/* 802A0D84 00296B04  7F E3 FB 78 */	mr r3, r31
.L_802A0D88:
/* 802A0D88 00296B08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A0D8C 00296B0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A0D90 00296B10  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A0D94 00296B14  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802A0D98 00296B18  7C 08 03 A6 */	mtlr r0
/* 802A0D9C 00296B1C  38 21 00 20 */	addi r1, r1, 0x20
/* 802A0DA0 00296B20  4E 80 00 20 */	blr
.endfn fn_802A0CD0
