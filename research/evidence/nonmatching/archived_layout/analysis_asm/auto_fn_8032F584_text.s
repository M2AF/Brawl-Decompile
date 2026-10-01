.include "macros.inc"
.file "auto_fn_8032F584_text"

# 0x8000922C..0x80009234 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000922C | size: 0x8
.obj "@etb_8000922C", local
.hidden "@etb_8000922C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000922C"

# 0x8000C0DC..0x8000C0E8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C0DC | size: 0xC
.obj "@eti_8000C0DC", local
.hidden "@eti_8000C0DC"
	.4byte fn_8032F584
	.4byte 0x00000064
	.4byte "@etb_8000922C"
.endobj "@eti_8000C0DC"

# 0x8032F584..0x8032F5E8 | size: 0x64
.text
.balign 4

# .text:0x0 | 0x8032F584 | size: 0x64
.fn fn_8032F584, global
/* 8032F584 00325304  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032F588 00325308  7C 08 02 A6 */	mflr r0
/* 8032F58C 0032530C  3C A0 80 41 */	lis r5, lbl_80415274@ha
/* 8032F590 00325310  3C 60 80 53 */	lis r3, lbl_80533610@ha
/* 8032F594 00325314  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032F598 00325318  38 A5 52 74 */	addi r5, r5, lbl_80415274@l
/* 8032F59C 0032531C  3C 80 80 41 */	lis r4, lbl_80415288@ha
/* 8032F5A0 00325320  38 00 00 00 */	li r0, 0x0
/* 8032F5A4 00325324  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8032F5A8 00325328  38 A0 00 01 */	li r5, 0x1
/* 8032F5AC 0032532C  38 63 36 10 */	addi r3, r3, lbl_80533610@l
/* 8032F5B0 00325330  38 84 52 88 */	addi r4, r4, lbl_80415288@l
/* 8032F5B4 00325334  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8032F5B8 00325338  38 A0 00 00 */	li r5, 0x0
/* 8032F5BC 0032533C  38 C0 00 08 */	li r6, 0x8
/* 8032F5C0 00325340  38 E0 00 00 */	li r7, 0x0
/* 8032F5C4 00325344  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032F5C8 00325348  39 00 00 00 */	li r8, 0x0
/* 8032F5CC 0032534C  39 20 00 00 */	li r9, 0x0
/* 8032F5D0 00325350  39 40 00 00 */	li r10, 0x0
/* 8032F5D4 00325354  4B F4 D2 35 */	bl fn_8027C808
/* 8032F5D8 00325358  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032F5DC 0032535C  7C 08 03 A6 */	mtlr r0
/* 8032F5E0 00325360  38 21 00 20 */	addi r1, r1, 0x20
/* 8032F5E4 00325364  4E 80 00 20 */	blr
.endfn fn_8032F584

# 0x804067A4..0x804067A8 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032F584
