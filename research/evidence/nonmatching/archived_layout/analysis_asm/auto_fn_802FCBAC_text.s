.include "macros.inc"
.file "auto_fn_802FCBAC_text"

# 0x800086CC..0x800086D4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800086CC | size: 0x8
.obj "@etb_800086CC", local
.hidden "@etb_800086CC"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x180A0000
	.4byte 0x00000000
.endobj "@etb_800086CC"

# 0x8000B584..0x8000B590 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B584 | size: 0xC
.obj "@eti_8000B584", local
.hidden "@eti_8000B584"
	.4byte fn_802FCBAC
	.4byte 0x000000E8
	.4byte "@etb_800086CC"
.endobj "@eti_8000B584"

# 0x802FCBAC..0x802FCC94 | size: 0xE8
.text
.balign 4

# .text:0x0 | 0x802FCBAC | size: 0xE8
.fn fn_802FCBAC, global
/* 802FCBAC 002F292C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FCBB0 002F2930  7C 08 02 A6 */	mflr r0
/* 802FCBB4 002F2934  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FCBB8 002F2938  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802FCBBC 002F293C  7C BF 2B 78 */	mr r31, r5
/* 802FCBC0 002F2940  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802FCBC4 002F2944  7C 9E 23 78 */	mr r30, r4
/* 802FCBC8 002F2948  38 84 00 20 */	addi r4, r4, 0x20
/* 802FCBCC 002F294C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802FCBD0 002F2950  7C 7D 1B 78 */	mr r29, r3
/* 802FCBD4 002F2954  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 802FCBD8 002F2958  80 63 00 08 */	lwz r3, 0x8(r3)
/* 802FCBDC 002F295C  80 C6 00 08 */	lwz r6, 0x8(r6)
/* 802FCBE0 002F2960  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 802FCBE4 002F2964  38 66 00 40 */	addi r3, r6, 0x40
/* 802FCBE8 002F2968  4B F8 91 BD */	bl fn_80285DA4
/* 802FCBEC 002F296C  80 BD 00 04 */	lwz r5, 0x4(r29)
/* 802FCBF0 002F2970  38 9E 00 60 */	addi r4, r30, 0x60
/* 802FCBF4 002F2974  80 7D 00 08 */	lwz r3, 0x8(r29)
/* 802FCBF8 002F2978  80 A5 00 08 */	lwz r5, 0x8(r5)
/* 802FCBFC 002F297C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 802FCC00 002F2980  38 65 00 40 */	addi r3, r5, 0x40
/* 802FCC04 002F2984  4B F8 91 A1 */	bl fn_80285DA4
/* 802FCC08 002F2988  38 1E 00 10 */	addi r0, r30, 0x10
/* 802FCC0C 002F298C  93 DF 00 00 */	stw r30, 0x0(r31)
/* 802FCC10 002F2990  2C 1E 00 00 */	cmpwi r30, 0x0
/* 802FCC14 002F2994  90 1F 00 04 */	stw r0, 0x4(r31)
/* 802FCC18 002F2998  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802FCC1C 002F299C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802FCC20 002F29A0  80 1D 00 08 */	lwz r0, 0x8(r29)
/* 802FCC24 002F29A4  90 1F 00 08 */	stw r0, 0x8(r31)
/* 802FCC28 002F29A8  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 802FCC2C 002F29AC  80 03 00 04 */	lwz r0, 0x4(r3)
/* 802FCC30 002F29B0  80 63 00 00 */	lwz r3, 0x0(r3)
/* 802FCC34 002F29B4  90 7E 00 00 */	stw r3, 0x0(r30)
/* 802FCC38 002F29B8  90 1E 00 04 */	stw r0, 0x4(r30)
/* 802FCC3C 002F29BC  41 82 00 14 */	beq .L_802FCC50
/* 802FCC40 002F29C0  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 802FCC44 002F29C4  38 1E 00 20 */	addi r0, r30, 0x20
/* 802FCC48 002F29C8  90 7E 00 0C */	stw r3, 0xc(r30)
/* 802FCC4C 002F29CC  90 1E 00 08 */	stw r0, 0x8(r30)
.L_802FCC50:
/* 802FCC50 002F29D0  34 9E 00 10 */	addic. r4, r30, 0x10
/* 802FCC54 002F29D4  41 82 00 14 */	beq .L_802FCC68
/* 802FCC58 002F29D8  80 7D 00 04 */	lwz r3, 0x4(r29)
/* 802FCC5C 002F29DC  38 1E 00 60 */	addi r0, r30, 0x60
/* 802FCC60 002F29E0  90 64 00 0C */	stw r3, 0xc(r4)
/* 802FCC64 002F29E4  90 04 00 08 */	stw r0, 0x8(r4)
.L_802FCC68:
/* 802FCC68 002F29E8  38 7F 00 10 */	addi r3, r31, 0x10
/* 802FCC6C 002F29EC  38 9E 00 20 */	addi r4, r30, 0x20
/* 802FCC70 002F29F0  38 BE 00 60 */	addi r5, r30, 0x60
/* 802FCC74 002F29F4  4B F8 A9 8D */	bl fn_80287600
/* 802FCC78 002F29F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FCC7C 002F29FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802FCC80 002F2A00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802FCC84 002F2A04  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802FCC88 002F2A08  7C 08 03 A6 */	mtlr r0
/* 802FCC8C 002F2A0C  38 21 00 20 */	addi r1, r1, 0x20
/* 802FCC90 002F2A10  4E 80 00 20 */	blr
.endfn fn_802FCBAC
