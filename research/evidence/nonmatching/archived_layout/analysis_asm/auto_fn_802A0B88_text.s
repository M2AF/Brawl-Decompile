.include "macros.inc"
.file "auto_fn_802A0B88_text"

# 0x800067D0..0x800067D8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800067D0 | size: 0x8
.obj "@etb_800067D0", local
.hidden "@etb_800067D0"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_800067D0"

# 0x80009BC8..0x80009BD4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009BC8 | size: 0xC
.obj "@eti_80009BC8", local
.hidden "@eti_80009BC8"
	.4byte fn_802A0B88
	.4byte 0x00000044
	.4byte "@etb_800067D0"
.endobj "@eti_80009BC8"

# 0x802A0B88..0x802A0BCC | size: 0x44
.text
.balign 4

# .text:0x0 | 0x802A0B88 | size: 0x44
.fn fn_802A0B88, global
/* 802A0B88 00296908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A0B8C 0029690C  7C 08 02 A6 */	mflr r0
/* 802A0B90 00296910  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A0B94 00296914  4B F4 0F A1 */	bl fn_801E1B34
/* 802A0B98 00296918  3C C0 80 00 */	lis r6, 0x8000
/* 802A0B9C 0029691C  38 A0 00 00 */	li r5, 0x0
/* 802A0BA0 00296920  80 06 00 F8 */	lwz r0, 0xf8(r6)
/* 802A0BA4 00296924  54 06 F0 BE */	srwi r6, r0, 2
/* 802A0BA8 00296928  48 15 08 C9 */	bl fn_803F1470
/* 802A0BAC 0029692C  48 15 0C 35 */	bl fn_803F17E0
/* 802A0BB0 00296930  C0 02 AB 88 */	lfs f0, lbl_805A3EA8@sda21(r0)
/* 802A0BB4 00296934  EC 20 08 2A */	fadds f1, f0, f1
/* 802A0BB8 00296938  48 15 0D A9 */	bl fn_803F1960
/* 802A0BBC 0029693C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A0BC0 00296940  7C 08 03 A6 */	mtlr r0
/* 802A0BC4 00296944  38 21 00 10 */	addi r1, r1, 0x10
/* 802A0BC8 00296948  4E 80 00 20 */	blr
.endfn fn_802A0B88
