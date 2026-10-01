.include "macros.inc"
.file "auto_fn_802D4DBC_text"

# 0x8000856C..0x80008574 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000856C | size: 0x8
.obj "@etb_8000856C", local
.hidden "@etb_8000856C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000856C"

# 0x8000B374..0x8000B380 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B374 | size: 0xC
.obj "@eti_8000B374", local
.hidden "@eti_8000B374"
	.4byte fn_802D4DBC
	.4byte 0x00000050
	.4byte "@etb_8000856C"
.endobj "@eti_8000B374"

# 0x802D4DBC..0x802D4E0C | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802D4DBC | size: 0x50
.fn fn_802D4DBC, global
/* 802D4DBC 002CAB3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D4DC0 002CAB40  7C 08 02 A6 */	mflr r0
/* 802D4DC4 002CAB44  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D4DC8 002CAB48  4B FF FF 49 */	bl fn_802D4D10
/* 802D4DCC 002CAB4C  3D 00 80 41 */	lis r8, lbl_804109E0@ha
/* 802D4DD0 002CAB50  3C E0 80 53 */	lis r7, lbl_80532858@ha
/* 802D4DD4 002CAB54  3C C0 80 2D */	lis r6, fn_802D4CE4@ha
/* 802D4DD8 002CAB58  3C 80 80 2D */	lis r4, fn_802D4CFC@ha
/* 802D4DDC 002CAB5C  39 08 09 E0 */	addi r8, r8, lbl_804109E0@l
/* 802D4DE0 002CAB60  38 A7 28 58 */	addi r5, r7, lbl_80532858@l
/* 802D4DE4 002CAB64  38 C6 4C E4 */	addi r6, r6, fn_802D4CE4@l
/* 802D4DE8 002CAB68  38 84 4C FC */	addi r4, r4, fn_802D4CFC@l
/* 802D4DEC 002CAB6C  91 07 28 58 */	stw r8, lbl_80532858@l(r7)
/* 802D4DF0 002CAB70  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802D4DF4 002CAB74  90 85 00 08 */	stw r4, 0x8(r5)
/* 802D4DF8 002CAB78  90 65 00 0C */	stw r3, 0xc(r5)
/* 802D4DFC 002CAB7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D4E00 002CAB80  7C 08 03 A6 */	mtlr r0
/* 802D4E04 002CAB84  38 21 00 10 */	addi r1, r1, 0x10
/* 802D4E08 002CAB88  4E 80 00 20 */	blr
.endfn fn_802D4DBC

# 0x80406688..0x8040668C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D4DBC
