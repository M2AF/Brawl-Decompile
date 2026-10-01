.include "macros.inc"
.file "auto_fn_802AC5A4_text"

# 0x80006FB4..0x80006FBC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006FB4 | size: 0x8
.obj "@etb_80006FB4", local
.hidden "@etb_80006FB4"
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
.endobj "@etb_80006FB4"

# 0x8000A174..0x8000A180 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A174 | size: 0xC
.obj "@eti_8000A174", local
.hidden "@eti_8000A174"
	.4byte fn_802AC5A4
	.4byte 0x00000090
	.4byte "@etb_80006FB4"
.endobj "@eti_8000A174"

# 0x802AC5A4..0x802AC634 | size: 0x90
.text
.balign 4

# .text:0x0 | 0x802AC5A4 | size: 0x90
.fn fn_802AC5A4, global
/* 802AC5A4 002A2324  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AC5A8 002A2328  7C 08 02 A6 */	mflr r0
/* 802AC5AC 002A232C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AC5B0 002A2330  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AC5B4 002A2334  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802AC5B8 002A2338  3B C0 00 00 */	li r30, 0x0
/* 802AC5BC 002A233C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802AC5C0 002A2340  7C 7D 1B 78 */	mr r29, r3
/* 802AC5C4 002A2344  7F BF EB 78 */	mr r31, r29
.L_802AC5C8:
/* 802AC5C8 002A2348  A0 9F 00 0C */	lhz r4, 0xc(r31)
/* 802AC5CC 002A234C  28 04 FF FF */	cmplwi r4, 0xffff
/* 802AC5D0 002A2350  41 82 00 18 */	beq .L_802AC5E8
/* 802AC5D4 002A2354  80 7D 00 08 */	lwz r3, 0x8(r29)
/* 802AC5D8 002A2358  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AC5DC 002A235C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802AC5E0 002A2360  7D 89 03 A6 */	mtctr r12
/* 802AC5E4 002A2364  4E 80 04 21 */	bctrl
.L_802AC5E8:
/* 802AC5E8 002A2368  3B DE 00 01 */	addi r30, r30, 0x1
/* 802AC5EC 002A236C  3B FF 00 02 */	addi r31, r31, 0x2
/* 802AC5F0 002A2370  2C 1E 00 03 */	cmpwi r30, 0x3
/* 802AC5F4 002A2374  41 80 FF D4 */	blt .L_802AC5C8
/* 802AC5F8 002A2378  2C 1D 00 00 */	cmpwi r29, 0x0
/* 802AC5FC 002A237C  41 82 00 1C */	beq .L_802AC618
/* 802AC600 002A2380  81 9D 00 00 */	lwz r12, 0x0(r29)
/* 802AC604 002A2384  7F A3 EB 78 */	mr r3, r29
/* 802AC608 002A2388  38 80 00 01 */	li r4, 0x1
/* 802AC60C 002A238C  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802AC610 002A2390  7D 89 03 A6 */	mtctr r12
/* 802AC614 002A2394  4E 80 04 21 */	bctrl
.L_802AC618:
/* 802AC618 002A2398  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AC61C 002A239C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AC620 002A23A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802AC624 002A23A4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802AC628 002A23A8  7C 08 03 A6 */	mtlr r0
/* 802AC62C 002A23AC  38 21 00 20 */	addi r1, r1, 0x20
/* 802AC630 002A23B0  4E 80 00 20 */	blr
.endfn fn_802AC5A4
