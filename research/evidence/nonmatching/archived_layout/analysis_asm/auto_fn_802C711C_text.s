.include "macros.inc"
.file "auto_fn_802C711C_text"

# 0x80007F2C..0x80007F34 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007F2C | size: 0x8
.obj "@etb_80007F2C", local
.hidden "@etb_80007F2C"
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
.endobj "@etb_80007F2C"

# 0x8000AC60..0x8000AC6C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AC60 | size: 0xC
.obj "@eti_8000AC60", local
.hidden "@eti_8000AC60"
	.4byte fn_802C711C
	.4byte 0x0000005C
	.4byte "@etb_80007F2C"
.endobj "@eti_8000AC60"

# 0x802C711C..0x802C7178 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802C711C | size: 0x5C
.fn fn_802C711C, global
/* 802C711C 002BCE9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C7120 002BCEA0  7C 08 02 A6 */	mflr r0
/* 802C7124 002BCEA4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C7128 002BCEA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C712C 002BCEAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C7130 002BCEB0  7C 7F 1B 78 */	mr r31, r3
/* 802C7134 002BCEB4  41 82 00 2C */	beq .L_802C7160
/* 802C7138 002BCEB8  2C 04 00 00 */	cmpwi r4, 0x0
/* 802C713C 002BCEBC  40 81 00 24 */	ble .L_802C7160
/* 802C7140 002BCEC0  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C7144 002BCEC4  7F E4 FB 78 */	mr r4, r31
/* 802C7148 002BCEC8  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802C714C 002BCECC  38 C0 00 1D */	li r6, 0x1d
/* 802C7150 002BCED0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C7154 002BCED4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C7158 002BCED8  7D 89 03 A6 */	mtctr r12
/* 802C715C 002BCEDC  4E 80 04 21 */	bctrl
.L_802C7160:
/* 802C7160 002BCEE0  7F E3 FB 78 */	mr r3, r31
/* 802C7164 002BCEE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C7168 002BCEE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C716C 002BCEEC  7C 08 03 A6 */	mtlr r0
/* 802C7170 002BCEF0  38 21 00 10 */	addi r1, r1, 0x10
/* 802C7174 002BCEF4  4E 80 00 20 */	blr
.endfn fn_802C711C
