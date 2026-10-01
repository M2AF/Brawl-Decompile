.include "macros.inc"
.file "auto_fn_8031830C_text"

# 0x80008BE4..0x80008BEC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008BE4 | size: 0x8
.obj "@etb_80008BE4", local
.hidden "@etb_80008BE4"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 */
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_80008BE4"

# 0x8000BB0C..0x8000BB18 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BB0C | size: 0xC
.obj "@eti_8000BB0C", local
.hidden "@eti_8000BB0C"
	.4byte fn_8031830C
	.4byte 0x00000094
	.4byte "@etb_80008BE4"
.endobj "@eti_8000BB0C"

# 0x8031830C..0x803183A0 | size: 0x94
.text
.balign 4

# .text:0x0 | 0x8031830C | size: 0x94
.fn fn_8031830C, global
/* 8031830C 0030E08C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80318310 0030E090  7C 08 02 A6 */	mflr r0
/* 80318314 0030E094  90 01 00 24 */	stw r0, 0x24(r1)
/* 80318318 0030E098  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8031831C 0030E09C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80318320 0030E0A0  3B C0 00 00 */	li r30, 0x0
/* 80318324 0030E0A4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80318328 0030E0A8  7C 9D 23 78 */	mr r29, r4
/* 8031832C 0030E0AC  93 81 00 10 */	stw r28, 0x10(r1)
/* 80318330 0030E0B0  7C 7C 1B 78 */	mr r28, r3
/* 80318334 0030E0B4  7F 9F E3 78 */	mr r31, r28
/* 80318338 0030E0B8  48 00 00 2C */	b .L_80318364
.L_8031833C:
/* 8031833C 0030E0BC  A0 9F 00 06 */	lhz r4, 0x6(r31)
/* 80318340 0030E0C0  28 04 FF FF */	cmplwi r4, 0xffff
/* 80318344 0030E0C4  41 82 00 18 */	beq .L_8031835C
/* 80318348 0030E0C8  81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8031834C 0030E0CC  7F A3 EB 78 */	mr r3, r29
/* 80318350 0030E0D0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80318354 0030E0D4  7D 89 03 A6 */	mtctr r12
/* 80318358 0030E0D8  4E 80 04 21 */	bctrl
.L_8031835C:
/* 8031835C 0030E0DC  3B FF 00 08 */	addi r31, r31, 0x8
/* 80318360 0030E0E0  3B DE 00 01 */	addi r30, r30, 0x1
.L_80318364:
/* 80318364 0030E0E4  88 1C 00 02 */	lbz r0, 0x2(r28)
/* 80318368 0030E0E8  7C 1E 00 00 */	cmpw r30, r0
/* 8031836C 0030E0EC  41 80 FF D0 */	blt .L_8031833C
/* 80318370 0030E0F0  38 00 00 00 */	li r0, 0x0
/* 80318374 0030E0F4  98 1C 00 02 */	stb r0, 0x2(r28)
/* 80318378 0030E0F8  98 1C 00 00 */	stb r0, 0x0(r28)
/* 8031837C 0030E0FC  98 1C 00 01 */	stb r0, 0x1(r28)
/* 80318380 0030E100  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80318384 0030E104  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80318388 0030E108  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8031838C 0030E10C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80318390 0030E110  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80318394 0030E114  7C 08 03 A6 */	mtlr r0
/* 80318398 0030E118  38 21 00 20 */	addi r1, r1, 0x20
/* 8031839C 0030E11C  4E 80 00 20 */	blr
.endfn fn_8031830C
