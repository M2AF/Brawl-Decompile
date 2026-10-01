.include "macros.inc"
.file "auto_fn_802A221C_text"

# 0x800068A0..0x800068A8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800068A0 | size: 0x8
.obj "@etb_800068A0", local
.hidden "@etb_800068A0"
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
.endobj "@etb_800068A0"

# 0x80009C88..0x80009C94 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009C88 | size: 0xC
.obj "@eti_80009C88", local
.hidden "@eti_80009C88"
	.4byte fn_802A221C
	.4byte 0x00000080
	.4byte "@etb_800068A0"
.endobj "@eti_80009C88"

# 0x802A221C..0x802A229C | size: 0x80
.text
.balign 4

# .text:0x0 | 0x802A221C | size: 0x80
.fn fn_802A221C, global
/* 802A221C 00297F9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A2220 00297FA0  7C 08 02 A6 */	mflr r0
/* 802A2224 00297FA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A2228 00297FA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A222C 00297FAC  7C 7F 1B 78 */	mr r31, r3
/* 802A2230 00297FB0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802A2234 00297FB4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A2238 00297FB8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802A223C 00297FBC  7D 89 03 A6 */	mtctr r12
/* 802A2240 00297FC0  4E 80 04 21 */	bctrl
/* 802A2244 00297FC4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802A2248 00297FC8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A224C 00297FCC  41 82 00 1C */	beq .L_802A2268
/* 802A2250 00297FD0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A2254 00297FD4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802A2258 00297FD8  7D 89 03 A6 */	mtctr r12
/* 802A225C 00297FDC  4E 80 04 21 */	bctrl
/* 802A2260 00297FE0  38 00 00 00 */	li r0, 0x0
/* 802A2264 00297FE4  90 1F 00 10 */	stw r0, 0x10(r31)
.L_802A2268:
/* 802A2268 00297FE8  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802A226C 00297FEC  41 82 00 1C */	beq .L_802A2288
/* 802A2270 00297FF0  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802A2274 00297FF4  7F E3 FB 78 */	mr r3, r31
/* 802A2278 00297FF8  38 80 00 01 */	li r4, 0x1
/* 802A227C 00297FFC  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802A2280 00298000  7D 89 03 A6 */	mtctr r12
/* 802A2284 00298004  4E 80 04 21 */	bctrl
.L_802A2288:
/* 802A2288 00298008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A228C 0029800C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A2290 00298010  7C 08 03 A6 */	mtlr r0
/* 802A2294 00298014  38 21 00 10 */	addi r1, r1, 0x10
/* 802A2298 00298018  4E 80 00 20 */	blr
.endfn fn_802A221C
