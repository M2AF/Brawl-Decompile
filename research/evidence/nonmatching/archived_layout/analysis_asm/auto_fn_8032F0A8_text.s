.include "macros.inc"
.file "auto_fn_8032F0A8_text"

# 0x800091D8..0x800091E0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800091D8 | size: 0x8
.obj "@etb_800091D8", local
.hidden "@etb_800091D8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800091D8"

# 0x8000C094..0x8000C0A0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C094 | size: 0xC
.obj "@eti_8000C094", local
.hidden "@eti_8000C094"
	.4byte fn_8032F0A8
	.4byte 0x00000064
	.4byte "@etb_800091D8"
.endobj "@eti_8000C094"

# 0x8032F0A8..0x8032F10C | size: 0x64
.text
.balign 4

# .text:0x0 | 0x8032F0A8 | size: 0x64
.fn fn_8032F0A8, global
/* 8032F0A8 00324E28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032F0AC 00324E2C  7C 08 02 A6 */	mflr r0
/* 8032F0B0 00324E30  3C A0 80 41 */	lis r5, lbl_80414EA0@ha
/* 8032F0B4 00324E34  3C 60 80 53 */	lis r3, lbl_80533550@ha
/* 8032F0B8 00324E38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032F0BC 00324E3C  38 A5 4E A0 */	addi r5, r5, lbl_80414EA0@l
/* 8032F0C0 00324E40  3C 80 80 41 */	lis r4, lbl_80414EF0@ha
/* 8032F0C4 00324E44  38 00 00 00 */	li r0, 0x0
/* 8032F0C8 00324E48  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8032F0CC 00324E4C  38 A0 00 04 */	li r5, 0x4
/* 8032F0D0 00324E50  38 63 35 50 */	addi r3, r3, lbl_80533550@l
/* 8032F0D4 00324E54  38 84 4E F0 */	addi r4, r4, lbl_80414EF0@l
/* 8032F0D8 00324E58  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8032F0DC 00324E5C  38 A0 00 00 */	li r5, 0x0
/* 8032F0E0 00324E60  38 C0 00 1C */	li r6, 0x1c
/* 8032F0E4 00324E64  38 E0 00 00 */	li r7, 0x0
/* 8032F0E8 00324E68  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032F0EC 00324E6C  39 00 00 00 */	li r8, 0x0
/* 8032F0F0 00324E70  39 20 00 00 */	li r9, 0x0
/* 8032F0F4 00324E74  39 40 00 00 */	li r10, 0x0
/* 8032F0F8 00324E78  4B F4 D7 11 */	bl fn_8027C808
/* 8032F0FC 00324E7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032F100 00324E80  7C 08 03 A6 */	mtlr r0
/* 8032F104 00324E84  38 21 00 20 */	addi r1, r1, 0x20
/* 8032F108 00324E88  4E 80 00 20 */	blr
.endfn fn_8032F0A8

# 0x80406794..0x80406798 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032F0A8
