.include "macros.inc"
.file "auto_fn_802A0C68_text"

# 0x800067E0..0x800067E8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800067E0 | size: 0x8
.obj "@etb_800067E0", local
.hidden "@etb_800067E0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800067E0"

# 0x80009BE0..0x80009BEC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009BE0 | size: 0xC
.obj "@eti_80009BE0", local
.hidden "@eti_80009BE0"
	.4byte fn_802A0C68
	.4byte 0x00000068
	.4byte "@etb_800067E0"
.endobj "@eti_80009BE0"

# 0x802A0C68..0x802A0CD0 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x802A0C68 | size: 0x68
.fn fn_802A0C68, global
/* 802A0C68 002969E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A0C6C 002969EC  7C 08 02 A6 */	mflr r0
/* 802A0C70 002969F0  3C 80 80 2A */	lis r4, fn_802A0CD0@ha
/* 802A0C74 002969F4  3C C0 80 2A */	lis r6, fn_802A1858@ha
/* 802A0C78 002969F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A0C7C 002969FC  3D 00 80 2A */	lis r8, fn_802A13B4@ha
/* 802A0C80 00296A00  38 00 00 00 */	li r0, 0x0
/* 802A0C84 00296A04  3C E0 80 2B */	lis r7, fn_802B7FD0@ha
/* 802A0C88 00296A08  38 84 0C D0 */	addi r4, r4, fn_802A0CD0@l
/* 802A0C8C 00296A0C  38 C6 18 58 */	addi r6, r6, fn_802A1858@l
/* 802A0C90 00296A10  39 08 13 B4 */	addi r8, r8, fn_802A13B4@l
/* 802A0C94 00296A14  38 E7 7F D0 */	addi r7, r7, fn_802B7FD0@l
/* 802A0C98 00296A18  90 81 00 08 */	stw r4, 0x8(r1)
/* 802A0C9C 00296A1C  38 81 00 08 */	addi r4, r1, 0x8
/* 802A0CA0 00296A20  38 A0 00 07 */	li r5, 0x7
/* 802A0CA4 00296A24  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802A0CA8 00296A28  38 C0 00 07 */	li r6, 0x7
/* 802A0CAC 00296A2C  91 01 00 10 */	stw r8, 0x10(r1)
/* 802A0CB0 00296A30  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802A0CB4 00296A34  98 01 00 18 */	stb r0, 0x18(r1)
/* 802A0CB8 00296A38  98 01 00 19 */	stb r0, 0x19(r1)
/* 802A0CBC 00296A3C  48 02 B4 31 */	bl fn_802CC0EC
/* 802A0CC0 00296A40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A0CC4 00296A44  7C 08 03 A6 */	mtlr r0
/* 802A0CC8 00296A48  38 21 00 20 */	addi r1, r1, 0x20
/* 802A0CCC 00296A4C  4E 80 00 20 */	blr
.endfn fn_802A0C68
