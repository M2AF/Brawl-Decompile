.include "macros.inc"
.file "auto_fn_802AAA38_text"

# 0x80006F24..0x80006F2C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006F24 | size: 0x8
.obj "@etb_80006F24", local
.hidden "@etb_80006F24"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006F24"

# 0x8000A0F0..0x8000A0FC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A0F0 | size: 0xC
.obj "@eti_8000A0F0", local
.hidden "@eti_8000A0F0"
	.4byte fn_802AAA38
	.4byte 0x00000068
	.4byte "@etb_80006F24"
.endobj "@eti_8000A0F0"

# 0x802AAA38..0x802AAAA0 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x802AAA38 | size: 0x68
.fn fn_802AAA38, global
/* 802AAA38 002A07B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AAA3C 002A07BC  7C 08 02 A6 */	mflr r0
/* 802AAA40 002A07C0  3C 80 80 2B */	lis r4, fn_802AA9B8@ha
/* 802AAA44 002A07C4  3C C0 80 2B */	lis r6, fn_802AB66C@ha
/* 802AAA48 002A07C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AAA4C 002A07CC  3D 00 80 2B */	lis r8, fn_802AB0FC@ha
/* 802AAA50 002A07D0  38 00 00 00 */	li r0, 0x0
/* 802AAA54 002A07D4  3C E0 80 2B */	lis r7, fn_802B7FD0@ha
/* 802AAA58 002A07D8  38 84 A9 B8 */	addi r4, r4, fn_802AA9B8@l
/* 802AAA5C 002A07DC  38 C6 B6 6C */	addi r6, r6, fn_802AB66C@l
/* 802AAA60 002A07E0  39 08 B0 FC */	addi r8, r8, fn_802AB0FC@l
/* 802AAA64 002A07E4  38 E7 7F D0 */	addi r7, r7, fn_802B7FD0@l
/* 802AAA68 002A07E8  90 81 00 08 */	stw r4, 0x8(r1)
/* 802AAA6C 002A07EC  38 81 00 08 */	addi r4, r1, 0x8
/* 802AAA70 002A07F0  38 A0 00 08 */	li r5, 0x8
/* 802AAA74 002A07F4  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802AAA78 002A07F8  38 C0 00 08 */	li r6, 0x8
/* 802AAA7C 002A07FC  91 01 00 10 */	stw r8, 0x10(r1)
/* 802AAA80 002A0800  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802AAA84 002A0804  98 01 00 18 */	stb r0, 0x18(r1)
/* 802AAA88 002A0808  98 01 00 19 */	stb r0, 0x19(r1)
/* 802AAA8C 002A080C  48 02 16 61 */	bl fn_802CC0EC
/* 802AAA90 002A0810  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AAA94 002A0814  7C 08 03 A6 */	mtlr r0
/* 802AAA98 002A0818  38 21 00 20 */	addi r1, r1, 0x20
/* 802AAA9C 002A081C  4E 80 00 20 */	blr
.endfn fn_802AAA38
