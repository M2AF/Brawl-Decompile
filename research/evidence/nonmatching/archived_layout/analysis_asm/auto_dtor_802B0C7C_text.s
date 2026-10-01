.include "macros.inc"
.file "auto_dtor_802B0C7C_text"

# 0x80007228..0x80007230 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007228 | size: 0x8
.obj "@etb_80007228", local
.hidden "@etb_80007228"
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
.endobj "@etb_80007228"

# 0x8000A324..0x8000A330 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A324 | size: 0xC
.obj "@eti_8000A324", local
.hidden "@eti_8000A324"
	.4byte dtor_802B0C7C
	.4byte 0x00000090
	.4byte "@etb_80007228"
.endobj "@eti_8000A324"

# 0x802B0C7C..0x802B0D0C | size: 0x90
.text
.balign 4

# .text:0x0 | 0x802B0C7C | size: 0x90
.fn dtor_802B0C7C, global
/* 802B0C7C 002A69FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B0C80 002A6A00  7C 08 02 A6 */	mflr r0
/* 802B0C84 002A6A04  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B0C88 002A6A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B0C8C 002A6A0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B0C90 002A6A10  7C 9F 23 78 */	mr r31, r4
/* 802B0C94 002A6A14  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802B0C98 002A6A18  7C 7E 1B 78 */	mr r30, r3
/* 802B0C9C 002A6A1C  41 82 00 54 */	beq .L_802B0CF0
/* 802B0CA0 002A6A20  80 83 00 00 */	lwz r4, 0x0(r3)
/* 802B0CA4 002A6A24  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802B0CA8 002A6A28  90 83 00 10 */	stw r4, 0x10(r3)
/* 802B0CAC 002A6A2C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802B0CB0 002A6A30  7C 04 00 40 */	cmplw r4, r0
/* 802B0CB4 002A6A34  40 82 00 14 */	bne .L_802B0CC8
/* 802B0CB8 002A6A38  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B0CBC 002A6A3C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B0CC0 002A6A40  7D 89 03 A6 */	mtctr r12
/* 802B0CC4 002A6A44  4E 80 04 21 */	bctrl
.L_802B0CC8:
/* 802B0CC8 002A6A48  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802B0CCC 002A6A4C  40 81 00 24 */	ble .L_802B0CF0
/* 802B0CD0 002A6A50  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802B0CD4 002A6A54  7F C4 F3 78 */	mr r4, r30
/* 802B0CD8 002A6A58  38 A0 00 08 */	li r5, 0x8
/* 802B0CDC 002A6A5C  38 C0 00 15 */	li r6, 0x15
/* 802B0CE0 002A6A60  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B0CE4 002A6A64  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802B0CE8 002A6A68  7D 89 03 A6 */	mtctr r12
/* 802B0CEC 002A6A6C  4E 80 04 21 */	bctrl
.L_802B0CF0:
/* 802B0CF0 002A6A70  7F C3 F3 78 */	mr r3, r30
/* 802B0CF4 002A6A74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B0CF8 002A6A78  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802B0CFC 002A6A7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B0D00 002A6A80  7C 08 03 A6 */	mtlr r0
/* 802B0D04 002A6A84  38 21 00 10 */	addi r1, r1, 0x10
/* 802B0D08 002A6A88  4E 80 00 20 */	blr
.endfn dtor_802B0C7C
