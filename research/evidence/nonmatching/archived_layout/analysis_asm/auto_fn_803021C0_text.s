.include "macros.inc"
.file "auto_fn_803021C0_text"

# 0x8000879C..0x800087A4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000879C | size: 0x8
.obj "@etb_8000879C", local
.hidden "@etb_8000879C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8000879C"

# 0x8000B6BC..0x8000B6C8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B6BC | size: 0xC
.obj "@eti_8000B6BC", local
.hidden "@eti_8000B6BC"
	.4byte fn_803021C0
	.4byte 0x000000B0
	.4byte "@etb_8000879C"
.endobj "@eti_8000B6BC"

# 0x803021C0..0x80302270 | size: 0xB0
.text
.balign 4

# .text:0x0 | 0x803021C0 | size: 0xB0
.fn fn_803021C0, global
/* 803021C0 002F7F40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803021C4 002F7F44  7C 08 02 A6 */	mflr r0
/* 803021C8 002F7F48  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 803021CC 002F7F4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803021D0 002F7F50  38 00 00 00 */	li r0, 0x0
/* 803021D4 002F7F54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803021D8 002F7F58  7C BF 2B 78 */	mr r31, r5
/* 803021DC 002F7F5C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803021E0 002F7F60  7C 9E 23 78 */	mr r30, r4
/* 803021E4 002F7F64  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803021E8 002F7F68  7C 7D 1B 78 */	mr r29, r3
/* 803021EC 002F7F6C  90 04 00 04 */	stw r0, 0x4(r4)
/* 803021F0 002F7F70  80 66 00 00 */	lwz r3, 0x0(r6)
/* 803021F4 002F7F74  81 83 00 00 */	lwz r12, 0x0(r3)
/* 803021F8 002F7F78  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 803021FC 002F7F7C  7D 89 03 A6 */	mtctr r12
/* 80302200 002F7F80  4E 80 04 21 */	bctrl
/* 80302204 002F7F84  2C 03 00 05 */	cmpwi r3, 0x5
/* 80302208 002F7F88  40 82 00 10 */	bne .L_80302218
/* 8030220C 002F7F8C  80 1E 00 04 */	lwz r0, 0x4(r30)
/* 80302210 002F7F90  60 00 00 01 */	ori r0, r0, 0x1
/* 80302214 002F7F94  90 1E 00 04 */	stw r0, 0x4(r30)
.L_80302218:
/* 80302218 002F7F98  80 7D 00 04 */	lwz r3, 0x4(r29)
/* 8030221C 002F7F9C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 80302220 002F7FA0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80302224 002F7FA4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80302228 002F7FA8  7D 89 03 A6 */	mtctr r12
/* 8030222C 002F7FAC  4E 80 04 21 */	bctrl
/* 80302230 002F7FB0  2C 03 00 05 */	cmpwi r3, 0x5
/* 80302234 002F7FB4  40 82 00 10 */	bne .L_80302244
/* 80302238 002F7FB8  80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8030223C 002F7FBC  60 00 00 02 */	ori r0, r0, 0x2
/* 80302240 002F7FC0  90 1E 00 04 */	stw r0, 0x4(r30)
.L_80302244:
/* 80302244 002F7FC4  7F A3 EB 78 */	mr r3, r29
/* 80302248 002F7FC8  7F C4 F3 78 */	mr r4, r30
/* 8030224C 002F7FCC  7F E5 FB 78 */	mr r5, r31
/* 80302250 002F7FD0  4B FF E6 6D */	bl fn_803008BC
/* 80302254 002F7FD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80302258 002F7FD8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8030225C 002F7FDC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80302260 002F7FE0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80302264 002F7FE4  7C 08 03 A6 */	mtlr r0
/* 80302268 002F7FE8  38 21 00 20 */	addi r1, r1, 0x20
/* 8030226C 002F7FEC  4E 80 00 20 */	blr
.endfn fn_803021C0
