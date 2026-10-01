.include "macros.inc"
.file "auto_fn_803201D8_text"

# 0x80008D1C..0x80008D24 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008D1C | size: 0x8
.obj "@etb_80008D1C", local
.hidden "@etb_80008D1C"
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
.endobj "@etb_80008D1C"

# 0x8000BCB0..0x8000BCBC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BCB0 | size: 0xC
.obj "@eti_8000BCB0", local
.hidden "@eti_8000BCB0"
	.4byte fn_803201D8
	.4byte 0x000000B0
	.4byte "@etb_80008D1C"
.endobj "@eti_8000BCB0"

# 0x803201D8..0x80320288 | size: 0xB0
.text
.balign 4

# .text:0x0 | 0x803201D8 | size: 0xB0
.fn fn_803201D8, global
/* 803201D8 00315F58  94 21 FE 40 */	stwu r1, -0x1c0(r1)
/* 803201DC 00315F5C  7C 08 02 A6 */	mflr r0
/* 803201E0 00315F60  3C E0 80 00 */	lis r7, 0x8000
/* 803201E4 00315F64  90 01 01 C4 */	stw r0, 0x1c4(r1)
/* 803201E8 00315F68  38 07 00 64 */	addi r0, r7, 0x64
/* 803201EC 00315F6C  39 01 00 18 */	addi r8, r1, 0x18
/* 803201F0 00315F70  38 E0 00 00 */	li r7, 0x0
/* 803201F4 00315F74  93 E1 01 BC */	stw r31, 0x1bc(r1)
/* 803201F8 00315F78  7C BF 2B 78 */	mr r31, r5
/* 803201FC 00315F7C  93 C1 01 B8 */	stw r30, 0x1b8(r1)
/* 80320200 00315F80  7C 9E 23 78 */	mr r30, r4
/* 80320204 00315F84  7F C5 F3 78 */	mr r5, r30
/* 80320208 00315F88  38 81 00 0C */	addi r4, r1, 0xc
/* 8032020C 00315F8C  93 A1 01 B4 */	stw r29, 0x1b4(r1)
/* 80320210 00315F90  7C 7D 1B 78 */	mr r29, r3
/* 80320214 00315F94  90 C1 00 08 */	stw r6, 0x8(r1)
/* 80320218 00315F98  91 01 00 0C */	stw r8, 0xc(r1)
/* 8032021C 00315F9C  90 E1 00 10 */	stw r7, 0x10(r1)
/* 80320220 00315FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80320224 00315FA4  48 00 00 65 */	bl fn_80320288
/* 80320228 00315FA8  7F A3 EB 78 */	mr r3, r29
/* 8032022C 00315FAC  7F C5 F3 78 */	mr r5, r30
/* 80320230 00315FB0  7F E6 FB 78 */	mr r6, r31
/* 80320234 00315FB4  38 81 00 0C */	addi r4, r1, 0xc
/* 80320238 00315FB8  38 E1 00 08 */	addi r7, r1, 0x8
/* 8032023C 00315FBC  48 00 02 C5 */	bl fn_80320500
/* 80320240 00315FC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80320244 00315FC4  7C 7F 1B 78 */	mr r31, r3
/* 80320248 00315FC8  54 00 00 01 */	clrrwi. r0, r0, 31
/* 8032024C 00315FCC  40 82 00 1C */	bne .L_80320268
/* 80320250 00315FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80320254 00315FD4  38 C0 00 15 */	li r6, 0x15
/* 80320258 00315FD8  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 8032025C 00315FDC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80320260 00315FE0  54 05 10 3A */	slwi r5, r0, 2
/* 80320264 00315FE4  4B F5 E8 59 */	bl fn_8027EABC
.L_80320268:
/* 80320268 00315FE8  7F E3 FB 78 */	mr r3, r31
/* 8032026C 00315FEC  83 E1 01 BC */	lwz r31, 0x1bc(r1)
/* 80320270 00315FF0  83 C1 01 B8 */	lwz r30, 0x1b8(r1)
/* 80320274 00315FF4  83 A1 01 B4 */	lwz r29, 0x1b4(r1)
/* 80320278 00315FF8  80 01 01 C4 */	lwz r0, 0x1c4(r1)
/* 8032027C 00315FFC  7C 08 03 A6 */	mtlr r0
/* 80320280 00316000  38 21 01 C0 */	addi r1, r1, 0x1c0
/* 80320284 00316004  4E 80 00 20 */	blr
.endfn fn_803201D8
