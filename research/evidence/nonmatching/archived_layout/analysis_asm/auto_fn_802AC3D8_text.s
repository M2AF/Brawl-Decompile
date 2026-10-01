.include "macros.inc"
.file "auto_fn_802AC3D8_text"

# 0x80006F64..0x80006F88 | size: 0x24
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006F64 | size: 0x24
.obj "@etb_80006F64", local
.hidden "@etb_80006F64"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 * 
 * PC actions:
 * PC=00000090, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYBASE
 * Member: 0x0(r30)
 * Dtor: "dtor_802A0E20"
 * 00001C:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A0DA4"
 * Has end bit
 */
	.4byte 0x20080000
	.4byte 0x00000090
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0680001E
	.4byte 0x00000000
	.4byte dtor_802A0E20
	.4byte 0x8A80001F
	.4byte dtor_802A0DA4
.endobj "@etb_80006F64"

# 0x8000A150..0x8000A15C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A150 | size: 0xC
.obj "@eti_8000A150", local
.hidden "@eti_8000A150"
	.4byte fn_802AC3D8
	.4byte 0x000000C0
	.4byte "@etb_80006F64"
.endobj "@eti_8000A150"

# 0x802AC3D8..0x802AC498 | size: 0xC0
.text
.balign 4

# .text:0x0 | 0x802AC3D8 | size: 0xC0
.fn fn_802AC3D8, global
/* 802AC3D8 002A2158  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AC3DC 002A215C  7C 08 02 A6 */	mflr r0
/* 802AC3E0 002A2160  38 80 00 28 */	li r4, 0x28
/* 802AC3E4 002A2164  38 A0 00 1D */	li r5, 0x1d
/* 802AC3E8 002A2168  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AC3EC 002A216C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AC3F0 002A2170  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802AC3F4 002A2174  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802AC3F8 002A2178  7C DD 33 78 */	mr r29, r6
/* 802AC3FC 002A217C  93 81 00 10 */	stw r28, 0x10(r1)
/* 802AC400 002A2180  7C 7C 1B 78 */	mr r28, r3
/* 802AC404 002A2184  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802AC408 002A2188  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AC40C 002A218C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802AC410 002A2190  7D 89 03 A6 */	mtctr r12
/* 802AC414 002A2194  4E 80 04 21 */	bctrl
/* 802AC418 002A2198  7C 7E 1B 79 */	mr. r30, r3
/* 802AC41C 002A219C  38 00 00 28 */	li r0, 0x28
/* 802AC420 002A21A0  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802AC424 002A21A4  7F DF F3 78 */	mr r31, r30
/* 802AC428 002A21A8  41 82 00 4C */	beq .L_802AC474
/* 802AC42C 002A21AC  38 00 00 01 */	li r0, 0x1
/* 802AC430 002A21B0  3C C0 80 48 */	lis r6, lbl_804869E4@ha
/* 802AC434 002A21B4  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802AC438 002A21B8  3C 80 00 01 */	lis r4, 0x1
/* 802AC43C 002A21BC  38 04 FF FF */	subi r0, r4, 0x1
/* 802AC440 002A21C0  38 C6 69 E4 */	addi r6, r6, lbl_804869E4@l
/* 802AC444 002A21C4  93 A3 00 08 */	stw r29, 0x8(r3)
/* 802AC448 002A21C8  38 9E 00 14 */	addi r4, r30, 0x14
/* 802AC44C 002A21CC  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 802AC450 002A21D0  90 C3 00 00 */	stw r6, 0x0(r3)
/* 802AC454 002A21D4  B0 03 00 0C */	sth r0, 0xc(r3)
/* 802AC458 002A21D8  B0 03 00 0E */	sth r0, 0xe(r3)
/* 802AC45C 002A21DC  B0 03 00 10 */	sth r0, 0x10(r3)
/* 802AC460 002A21E0  38 65 00 10 */	addi r3, r5, 0x10
/* 802AC464 002A21E4  48 07 8E D1 */	bl fn_80325334
/* 802AC468 002A21E8  3C 60 80 48 */	lis r3, lbl_804869A8@ha
/* 802AC46C 002A21EC  38 63 69 A8 */	addi r3, r3, lbl_804869A8@l
/* 802AC470 002A21F0  90 7E 00 00 */	stw r3, 0x0(r30)
.L_802AC474:
/* 802AC474 002A21F4  7F E3 FB 78 */	mr r3, r31
/* 802AC478 002A21F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AC47C 002A21FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802AC480 002A2200  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802AC484 002A2204  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802AC488 002A2208  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AC48C 002A220C  7C 08 03 A6 */	mtlr r0
/* 802AC490 002A2210  38 21 00 20 */	addi r1, r1, 0x20
/* 802AC494 002A2214  4E 80 00 20 */	blr
.endfn fn_802AC3D8
