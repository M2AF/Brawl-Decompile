.include "macros.inc"
.file "auto_fn_8032F030_text"

# 0x800091D0..0x800091D8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800091D0 | size: 0x8
.obj "@etb_800091D0", local
.hidden "@etb_800091D0"
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
.endobj "@etb_800091D0"

# 0x8000C088..0x8000C094 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C088 | size: 0xC
.obj "@eti_8000C088", local
.hidden "@eti_8000C088"
	.4byte fn_8032F030
	.4byte 0x00000078
	.4byte "@etb_800091D0"
.endobj "@eti_8000C088"

# 0x8032F030..0x8032F0A8 | size: 0x78
.text
.balign 4

# .text:0x0 | 0x8032F030 | size: 0x78
.fn fn_8032F030, global
/* 8032F030 00324DB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032F034 00324DB4  7C 08 02 A6 */	mflr r0
/* 8032F038 00324DB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032F03C 00324DBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032F040 00324DC0  7C 7F 1B 78 */	mr r31, r3
/* 8032F044 00324DC4  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8032F048 00324DC8  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8032F04C 00324DCC  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8032F050 00324DD0  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8032F054 00324DD4  1C A0 00 30 */	mulli r5, r0, 0x30
/* 8032F058 00324DD8  4B F5 2B 65 */	bl fn_80281BBC
/* 8032F05C 00324DDC  38 A0 00 00 */	li r5, 0x0
/* 8032F060 00324DE0  38 80 00 02 */	li r4, 0x2
/* 8032F064 00324DE4  48 00 00 10 */	b .L_8032F074
.L_8032F068:
/* 8032F068 00324DE8  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8032F06C 00324DEC  7C 83 29 AE */	stbx r4, r3, r5
/* 8032F070 00324DF0  38 A5 00 01 */	addi r5, r5, 0x1
.L_8032F074:
/* 8032F074 00324DF4  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8032F078 00324DF8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8032F07C 00324DFC  7C 05 00 00 */	cmpw r5, r0
/* 8032F080 00324E00  41 80 FF E8 */	blt .L_8032F068
/* 8032F084 00324E04  38 60 00 00 */	li r3, 0x0
/* 8032F088 00324E08  38 00 00 01 */	li r0, 0x1
/* 8032F08C 00324E0C  98 7F 00 28 */	stb r3, 0x28(r31)
/* 8032F090 00324E10  98 1F 00 29 */	stb r0, 0x29(r31)
/* 8032F094 00324E14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032F098 00324E18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032F09C 00324E1C  7C 08 03 A6 */	mtlr r0
/* 8032F0A0 00324E20  38 21 00 10 */	addi r1, r1, 0x10
/* 8032F0A4 00324E24  4E 80 00 20 */	blr
.endfn fn_8032F030
