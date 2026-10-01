.include "macros.inc"
.file "auto_dtor_8031F3C8_text"

# 0x80008CF4..0x80008CFC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008CF4 | size: 0x8
.obj "@etb_80008CF4", local
.hidden "@etb_80008CF4"
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
.endobj "@etb_80008CF4"

# 0x8000BC74..0x8000BC80 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BC74 | size: 0xC
.obj "@eti_8000BC74", local
.hidden "@eti_8000BC74"
	.4byte dtor_8031F3C8
	.4byte 0x00000090
	.4byte "@etb_80008CF4"
.endobj "@eti_8000BC74"

# 0x8031F3C8..0x8031F458 | size: 0x90
.text
.balign 4

# .text:0x0 | 0x8031F3C8 | size: 0x90
.fn dtor_8031F3C8, global
/* 8031F3C8 00315148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031F3CC 0031514C  7C 08 02 A6 */	mflr r0
/* 8031F3D0 00315150  2C 03 00 00 */	cmpwi r3, 0x0
/* 8031F3D4 00315154  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031F3D8 00315158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031F3DC 0031515C  7C 9F 23 78 */	mr r31, r4
/* 8031F3E0 00315160  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8031F3E4 00315164  7C 7E 1B 78 */	mr r30, r3
/* 8031F3E8 00315168  41 82 00 54 */	beq .L_8031F43C
/* 8031F3EC 0031516C  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8031F3F0 00315170  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 8031F3F4 00315174  90 83 00 10 */	stw r4, 0x10(r3)
/* 8031F3F8 00315178  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8031F3FC 0031517C  7C 04 00 40 */	cmplw r4, r0
/* 8031F400 00315180  40 82 00 14 */	bne .L_8031F414
/* 8031F404 00315184  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8031F408 00315188  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8031F40C 0031518C  7D 89 03 A6 */	mtctr r12
/* 8031F410 00315190  4E 80 04 21 */	bctrl
.L_8031F414:
/* 8031F414 00315194  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8031F418 00315198  40 81 00 24 */	ble .L_8031F43C
/* 8031F41C 0031519C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 8031F420 003151A0  7F C4 F3 78 */	mr r4, r30
/* 8031F424 003151A4  38 A0 00 08 */	li r5, 0x8
/* 8031F428 003151A8  38 C0 00 15 */	li r6, 0x15
/* 8031F42C 003151AC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8031F430 003151B0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8031F434 003151B4  7D 89 03 A6 */	mtctr r12
/* 8031F438 003151B8  4E 80 04 21 */	bctrl
.L_8031F43C:
/* 8031F43C 003151BC  7F C3 F3 78 */	mr r3, r30
/* 8031F440 003151C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031F444 003151C4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8031F448 003151C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031F44C 003151CC  7C 08 03 A6 */	mtlr r0
/* 8031F450 003151D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8031F454 003151D4  4E 80 00 20 */	blr
.endfn dtor_8031F3C8
