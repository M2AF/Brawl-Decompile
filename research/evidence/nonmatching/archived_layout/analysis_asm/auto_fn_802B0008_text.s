.include "macros.inc"
.file "auto_fn_802B0008_text"

# 0x800071E0..0x800071E8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800071E0 | size: 0x8
.obj "@etb_800071E0", local
.hidden "@etb_800071E0"
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
.endobj "@etb_800071E0"

# 0x8000A300..0x8000A30C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A300 | size: 0xC
.obj "@eti_8000A300", local
.hidden "@eti_8000A300"
	.4byte fn_802B0008
	.4byte 0x00000048
	.4byte "@etb_800071E0"
.endobj "@eti_8000A300"

# 0x802B0008..0x802B0050 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802B0008 | size: 0x48
.fn fn_802B0008, global
/* 802B0008 002A5D88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B000C 002A5D8C  7C 08 02 A6 */	mflr r0
/* 802B0010 002A5D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B0014 002A5D94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B0018 002A5D98  7C 7F 1B 78 */	mr r31, r3
/* 802B001C 002A5D9C  80 83 00 74 */	lwz r4, 0x74(r3)
/* 802B0020 002A5DA0  80 A3 00 08 */	lwz r5, 0x8(r3)
/* 802B0024 002A5DA4  38 63 00 30 */	addi r3, r3, 0x30
/* 802B0028 002A5DA8  48 04 C6 85 */	bl fn_802FC6AC
/* 802B002C 002A5DAC  38 60 00 00 */	li r3, 0x0
/* 802B0030 002A5DB0  38 00 00 01 */	li r0, 0x1
/* 802B0034 002A5DB4  90 7F 00 30 */	stw r3, 0x30(r31)
/* 802B0038 002A5DB8  98 1F 00 78 */	stb r0, 0x78(r31)
/* 802B003C 002A5DBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B0040 002A5DC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B0044 002A5DC4  7C 08 03 A6 */	mtlr r0
/* 802B0048 002A5DC8  38 21 00 10 */	addi r1, r1, 0x10
/* 802B004C 002A5DCC  4E 80 00 20 */	blr
.endfn fn_802B0008
