.include "macros.inc"
.file "auto_fn_802FB948_text"

# 0x8000868C..0x80008694 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000868C | size: 0x8
.obj "@etb_8000868C", local
.hidden "@etb_8000868C"
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
.endobj "@etb_8000868C"

# 0x8000B524..0x8000B530 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B524 | size: 0xC
.obj "@eti_8000B524", local
.hidden "@eti_8000B524"
	.4byte fn_802FB948
	.4byte 0x0000005C
	.4byte "@etb_8000868C"
.endobj "@eti_8000B524"

# 0x802FB948..0x802FB9A4 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802FB948 | size: 0x5C
.fn fn_802FB948, global
/* 802FB948 002F16C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FB94C 002F16CC  7C 08 02 A6 */	mflr r0
/* 802FB950 002F16D0  80 E3 00 04 */	lwz r7, 0x4(r3)
/* 802FB954 002F16D4  38 C0 00 00 */	li r6, 0x0
/* 802FB958 002F16D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FB95C 002F16DC  3C 60 00 01 */	lis r3, 0x1
/* 802FB960 002F16E0  38 03 FF FF */	subi r0, r3, 0x1
/* 802FB964 002F16E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FB968 002F16E8  7C BF 2B 78 */	mr r31, r5
/* 802FB96C 002F16EC  80 E7 00 00 */	lwz r7, 0x0(r7)
/* 802FB970 002F16F0  98 C4 00 02 */	stb r6, 0x2(r4)
/* 802FB974 002F16F4  38 67 00 10 */	addi r3, r7, 0x10
/* 802FB978 002F16F8  38 85 00 08 */	addi r4, r5, 0x8
/* 802FB97C 002F16FC  B0 05 00 00 */	sth r0, 0x0(r5)
/* 802FB980 002F1700  B0 05 00 02 */	sth r0, 0x2(r5)
/* 802FB984 002F1704  B0 05 00 04 */	sth r0, 0x4(r5)
/* 802FB988 002F1708  48 02 99 AD */	bl fn_80325334
/* 802FB98C 002F170C  38 7F 00 20 */	addi r3, r31, 0x20
/* 802FB990 002F1710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FB994 002F1714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FB998 002F1718  7C 08 03 A6 */	mtlr r0
/* 802FB99C 002F171C  38 21 00 10 */	addi r1, r1, 0x10
/* 802FB9A0 002F1720  4E 80 00 20 */	blr
.endfn fn_802FB948
