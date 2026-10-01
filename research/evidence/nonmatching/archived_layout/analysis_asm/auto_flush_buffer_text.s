.include "macros.inc"
.file "auto_flush_buffer_text"

# 0x800095E4..0x800095EC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800095E4 | size: 0x8
.obj "@etb_800095E4", local
.hidden "@etb_800095E4"
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
.endobj "@etb_800095E4"

# 0x8000C61C..0x8000C628 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C61C | size: 0xC
.obj "@eti_8000C61C", local
.hidden "@eti_8000C61C"
	.4byte __flush_buffer
	.4byte 0x000000B8
	.4byte "@etb_800095E4"
.endobj "@eti_8000C61C"

# 0x803F5194..0x803F524C | size: 0xB8
.text
.balign 4

# .text:0x0 | 0x803F5194 | size: 0xB8
.fn __flush_buffer, global
/* 803F5194 003EAF14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F5198 003EAF18  7C 08 02 A6 */	mflr r0
/* 803F519C 003EAF1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F51A0 003EAF20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F51A4 003EAF24  7C 9F 23 78 */	mr r31, r4
/* 803F51A8 003EAF28  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803F51AC 003EAF2C  7C 7E 1B 78 */	mr r30, r3
/* 803F51B0 003EAF30  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 803F51B4 003EAF34  80 03 00 24 */	lwz r0, 0x24(r3)
/* 803F51B8 003EAF38  7C 05 00 51 */	subf. r0, r5, r0
/* 803F51BC 003EAF3C  41 82 00 50 */	beq .L_803F520C
/* 803F51C0 003EAF40  81 9E 00 40 */	lwz r12, 0x40(r30)
/* 803F51C4 003EAF44  7C A4 2B 78 */	mr r4, r5
/* 803F51C8 003EAF48  90 03 00 28 */	stw r0, 0x28(r3)
/* 803F51CC 003EAF4C  38 BE 00 28 */	addi r5, r30, 0x28
/* 803F51D0 003EAF50  80 63 00 00 */	lwz r3, 0x0(r3)
/* 803F51D4 003EAF54  80 DE 00 48 */	lwz r6, 0x48(r30)
/* 803F51D8 003EAF58  7D 89 03 A6 */	mtctr r12
/* 803F51DC 003EAF5C  4E 80 04 21 */	bctrl
/* 803F51E0 003EAF60  2C 1F 00 00 */	cmpwi r31, 0x0
/* 803F51E4 003EAF64  41 82 00 0C */	beq .L_803F51F0
/* 803F51E8 003EAF68  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 803F51EC 003EAF6C  90 1F 00 00 */	stw r0, 0x0(r31)
.L_803F51F0:
/* 803F51F0 003EAF70  2C 03 00 00 */	cmpwi r3, 0x0
/* 803F51F4 003EAF74  41 82 00 08 */	beq .L_803F51FC
/* 803F51F8 003EAF78  48 00 00 3C */	b .L_803F5234
.L_803F51FC:
/* 803F51FC 003EAF7C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 803F5200 003EAF80  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 803F5204 003EAF84  7C 03 02 14 */	add r0, r3, r0
/* 803F5208 003EAF88  90 1E 00 18 */	stw r0, 0x18(r30)
.L_803F520C:
/* 803F520C 003EAF8C  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 803F5210 003EAF90  38 60 00 00 */	li r3, 0x0
/* 803F5214 003EAF94  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 803F5218 003EAF98  80 DE 00 1C */	lwz r6, 0x1c(r30)
/* 803F521C 003EAF9C  80 BE 00 20 */	lwz r5, 0x20(r30)
/* 803F5220 003EAFA0  7C 80 00 38 */	and r0, r4, r0
/* 803F5224 003EAFA4  90 DE 00 24 */	stw r6, 0x24(r30)
/* 803F5228 003EAFA8  7C 00 28 50 */	subf r0, r0, r5
/* 803F522C 003EAFAC  90 1E 00 28 */	stw r0, 0x28(r30)
/* 803F5230 003EAFB0  90 9E 00 34 */	stw r4, 0x34(r30)
.L_803F5234:
/* 803F5234 003EAFB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F5238 003EAFB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F523C 003EAFBC  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803F5240 003EAFC0  7C 08 03 A6 */	mtlr r0
/* 803F5244 003EAFC4  38 21 00 10 */	addi r1, r1, 0x10
/* 803F5248 003EAFC8  4E 80 00 20 */	blr
.endfn __flush_buffer
