.include "macros.inc"
.file "auto_dtor_80312FD8_text"

# 0x80008B34..0x80008B3C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008B34 | size: 0x8
.obj "@etb_80008B34", local
.hidden "@etb_80008B34"
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
.endobj "@etb_80008B34"

# 0x8000BA04..0x8000BA10 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BA04 | size: 0xC
.obj "@eti_8000BA04", local
.hidden "@eti_8000BA04"
	.4byte dtor_80312FD8
	.4byte 0x000000A8
	.4byte "@etb_80008B34"
.endobj "@eti_8000BA04"

# 0x80312FD8..0x80313080 | size: 0xA8
.text
.balign 4

# .text:0x0 | 0x80312FD8 | size: 0xA8
.fn dtor_80312FD8, global
/* 80312FD8 00308D58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80312FDC 00308D5C  7C 08 02 A6 */	mflr r0
/* 80312FE0 00308D60  2C 03 00 00 */	cmpwi r3, 0x0
/* 80312FE4 00308D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80312FE8 00308D68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80312FEC 00308D6C  7C 9F 23 78 */	mr r31, r4
/* 80312FF0 00308D70  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80312FF4 00308D74  7C 7E 1B 78 */	mr r30, r3
/* 80312FF8 00308D78  41 82 00 6C */	beq .L_80313064
/* 80312FFC 00308D7C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80313000 00308D80  3C A0 80 49 */	lis r5, lbl_80488988@ha
/* 80313004 00308D84  38 A5 89 88 */	addi r5, r5, lbl_80488988@l
/* 80313008 00308D88  2C 04 00 00 */	cmpwi r4, 0x0
/* 8031300C 00308D8C  90 A3 00 00 */	stw r5, 0x0(r3)
/* 80313010 00308D90  41 82 00 2C */	beq .L_8031303C
/* 80313014 00308D94  41 82 00 20 */	beq .L_80313034
/* 80313018 00308D98  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 8031301C 00308D9C  38 A0 00 01 */	li r5, 0x1
/* 80313020 00308DA0  38 C0 00 13 */	li r6, 0x13
/* 80313024 00308DA4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80313028 00308DA8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8031302C 00308DAC  7D 89 03 A6 */	mtctr r12
/* 80313030 00308DB0  4E 80 04 21 */	bctrl
.L_80313034:
/* 80313034 00308DB4  38 00 00 00 */	li r0, 0x0
/* 80313038 00308DB8  90 1E 00 10 */	stw r0, 0x10(r30)
.L_8031303C:
/* 8031303C 00308DBC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80313040 00308DC0  40 81 00 24 */	ble .L_80313064
/* 80313044 00308DC4  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 80313048 00308DC8  7F C4 F3 78 */	mr r4, r30
/* 8031304C 00308DCC  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 80313050 00308DD0  38 C0 00 1F */	li r6, 0x1f
/* 80313054 00308DD4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80313058 00308DD8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8031305C 00308DDC  7D 89 03 A6 */	mtctr r12
/* 80313060 00308DE0  4E 80 04 21 */	bctrl
.L_80313064:
/* 80313064 00308DE4  7F C3 F3 78 */	mr r3, r30
/* 80313068 00308DE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031306C 00308DEC  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80313070 00308DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80313074 00308DF4  7C 08 03 A6 */	mtlr r0
/* 80313078 00308DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8031307C 00308DFC  4E 80 00 20 */	blr
.endfn dtor_80312FD8
