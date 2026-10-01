.include "macros.inc"
.file "auto_dtor_8030F998_text"

# 0x800089F4..0x800089FC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800089F4 | size: 0x8
.obj "@etb_800089F4", local
.hidden "@etb_800089F4"
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
.endobj "@etb_800089F4"

# 0x8000B920..0x8000B92C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B920 | size: 0xC
.obj "@eti_8000B920", local
.hidden "@eti_8000B920"
	.4byte dtor_8030F998
	.4byte 0x000000BC
	.4byte "@etb_800089F4"
.endobj "@eti_8000B920"

# 0x8030F998..0x8030FA54 | size: 0xBC
.text
.balign 4

# .text:0x0 | 0x8030F998 | size: 0xBC
.fn dtor_8030F998, global
/* 8030F998 00305718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030F99C 0030571C  7C 08 02 A6 */	mflr r0
/* 8030F9A0 00305720  2C 03 00 00 */	cmpwi r3, 0x0
/* 8030F9A4 00305724  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030F9A8 00305728  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030F9AC 0030572C  7C 9F 23 78 */	mr r31, r4
/* 8030F9B0 00305730  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8030F9B4 00305734  7C 7E 1B 78 */	mr r30, r3
/* 8030F9B8 00305738  41 82 00 80 */	beq .L_8030FA38
/* 8030F9BC 0030573C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8030F9C0 00305740  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 8030F9C4 00305744  90 83 00 10 */	stw r4, 0x10(r3)
/* 8030F9C8 00305748  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8030F9CC 0030574C  7C 04 00 40 */	cmplw r4, r0
/* 8030F9D0 00305750  40 82 00 14 */	bne .L_8030F9E4
/* 8030F9D4 00305754  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8030F9D8 00305758  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8030F9DC 0030575C  7D 89 03 A6 */	mtctr r12
/* 8030F9E0 00305760  4E 80 04 21 */	bctrl
.L_8030F9E4:
/* 8030F9E4 00305764  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8030F9E8 00305768  41 82 00 28 */	beq .L_8030FA10
/* 8030F9EC 0030576C  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 8030F9F0 00305770  54 00 00 01 */	clrrwi. r0, r0, 31
/* 8030F9F4 00305774  40 82 00 1C */	bne .L_8030FA10
/* 8030F9F8 00305778  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 8030F9FC 0030577C  38 C0 00 15 */	li r6, 0x15
/* 8030FA00 00305780  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 8030FA04 00305784  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8030FA08 00305788  54 05 10 3A */	slwi r5, r0, 2
/* 8030FA0C 0030578C  4B F6 F0 B1 */	bl fn_8027EABC
.L_8030FA10:
/* 8030FA10 00305790  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8030FA14 00305794  40 81 00 24 */	ble .L_8030FA38
/* 8030FA18 00305798  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 8030FA1C 0030579C  7F C4 F3 78 */	mr r4, r30
/* 8030FA20 003057A0  38 A0 00 10 */	li r5, 0x10
/* 8030FA24 003057A4  38 C0 00 15 */	li r6, 0x15
/* 8030FA28 003057A8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8030FA2C 003057AC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8030FA30 003057B0  7D 89 03 A6 */	mtctr r12
/* 8030FA34 003057B4  4E 80 04 21 */	bctrl
.L_8030FA38:
/* 8030FA38 003057B8  7F C3 F3 78 */	mr r3, r30
/* 8030FA3C 003057BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030FA40 003057C0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8030FA44 003057C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030FA48 003057C8  7C 08 03 A6 */	mtlr r0
/* 8030FA4C 003057CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8030FA50 003057D0  4E 80 00 20 */	blr
.endfn dtor_8030F998
