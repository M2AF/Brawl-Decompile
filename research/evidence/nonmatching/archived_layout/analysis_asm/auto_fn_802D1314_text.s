.include "macros.inc"
.file "auto_fn_802D1314_text"

# 0x80008438..0x80008440 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008438 | size: 0x8
.obj "@etb_80008438", local
.hidden "@etb_80008438"
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
.endobj "@etb_80008438"

# 0x8000B1C4..0x8000B1D0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B1C4 | size: 0xC
.obj "@eti_8000B1C4", local
.hidden "@eti_8000B1C4"
	.4byte fn_802D1314
	.4byte 0x00000044
	.4byte "@etb_80008438"
.endobj "@eti_8000B1C4"

# 0x802D1314..0x802D1358 | size: 0x44
.text
.balign 4

# .text:0x0 | 0x802D1314 | size: 0x44
.fn fn_802D1314, global
/* 802D1314 002C7094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1318 002C7098  7C 08 02 A6 */	mflr r0
/* 802D131C 002C709C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1320 002C70A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D1324 002C70A4  7C 9F 23 78 */	mr r31, r4
/* 802D1328 002C70A8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802D132C 002C70AC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D1330 002C70B0  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802D1334 002C70B4  7D 89 03 A6 */	mtctr r12
/* 802D1338 002C70B8  4E 80 04 21 */	bctrl
/* 802D133C 002C70BC  38 00 00 01 */	li r0, 0x1
/* 802D1340 002C70C0  98 1F 00 04 */	stb r0, 0x4(r31)
/* 802D1344 002C70C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D1348 002C70C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D134C 002C70CC  7C 08 03 A6 */	mtlr r0
/* 802D1350 002C70D0  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1354 002C70D4  4E 80 00 20 */	blr
.endfn fn_802D1314
