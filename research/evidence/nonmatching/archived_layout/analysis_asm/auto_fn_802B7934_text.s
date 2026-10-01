.include "macros.inc"
.file "auto_fn_802B7934_text"

# 0x800075F4..0x800075FC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800075F4 | size: 0x8
.obj "@etb_800075F4", local
.hidden "@etb_800075F4"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800075F4"

# 0x8000A5A0..0x8000A5AC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A5A0 | size: 0xC
.obj "@eti_8000A5A0", local
.hidden "@eti_8000A5A0"
	.4byte fn_802B7934
	.4byte 0x00000064
	.4byte "@etb_800075F4"
.endobj "@eti_8000A5A0"

# 0x802B7934..0x802B7998 | size: 0x64
.text
.balign 4

# .text:0x0 | 0x802B7934 | size: 0x64
.fn fn_802B7934, global
/* 802B7934 002AD6B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B7938 002AD6B8  7C 08 02 A6 */	mflr r0
/* 802B793C 002AD6BC  3C A0 80 41 */	lis r5, lbl_8040FDD0@ha
/* 802B7940 002AD6C0  3C 60 80 53 */	lis r3, lbl_80532560@ha
/* 802B7944 002AD6C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B7948 002AD6C8  38 A5 FD D0 */	addi r5, r5, lbl_8040FDD0@l
/* 802B794C 002AD6CC  3C 80 80 41 */	lis r4, lbl_8040FE20@ha
/* 802B7950 002AD6D0  38 00 00 00 */	li r0, 0x0
/* 802B7954 002AD6D4  90 A1 00 08 */	stw r5, 0x8(r1)
/* 802B7958 002AD6D8  38 A0 00 04 */	li r5, 0x4
/* 802B795C 002AD6DC  38 63 25 60 */	addi r3, r3, lbl_80532560@l
/* 802B7960 002AD6E0  38 84 FE 20 */	addi r4, r4, lbl_8040FE20@l
/* 802B7964 002AD6E4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802B7968 002AD6E8  38 A0 00 00 */	li r5, 0x0
/* 802B796C 002AD6EC  38 C0 00 10 */	li r6, 0x10
/* 802B7970 002AD6F0  38 E0 00 00 */	li r7, 0x0
/* 802B7974 002AD6F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B7978 002AD6F8  39 00 00 00 */	li r8, 0x0
/* 802B797C 002AD6FC  39 20 00 00 */	li r9, 0x0
/* 802B7980 002AD700  39 40 00 00 */	li r10, 0x0
/* 802B7984 002AD704  4B FC 4E 85 */	bl fn_8027C808
/* 802B7988 002AD708  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B798C 002AD70C  7C 08 03 A6 */	mtlr r0
/* 802B7990 002AD710  38 21 00 20 */	addi r1, r1, 0x20
/* 802B7994 002AD714  4E 80 00 20 */	blr
.endfn fn_802B7934

# 0x80406628..0x8040662C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802B7934
