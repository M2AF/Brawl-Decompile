.include "macros.inc"
.file "auto_fn_802CD054_text"

# 0x80008288..0x80008290 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008288 | size: 0x8
.obj "@etb_80008288", local
.hidden "@etb_80008288"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008288"

# 0x8000AF54..0x8000AF60 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AF54 | size: 0xC
.obj "@eti_8000AF54", local
.hidden "@eti_8000AF54"
	.4byte fn_802CD054
	.4byte 0x0000005C
	.4byte "@etb_80008288"
.endobj "@eti_8000AF54"

# 0x802CD054..0x802CD0B0 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802CD054 | size: 0x5C
.fn fn_802CD054, global
/* 802CD054 002C2DD4  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802CD058 002C2DD8  7C 2C 0B 78 */	mr r12, r1
/* 802CD05C 002C2DDC  21 6B FF 50 */	subfic r11, r11, -0xb0
/* 802CD060 002C2DE0  7C 21 59 6E */	stwux r1, r1, r11
/* 802CD064 002C2DE4  34 01 00 10 */	addic. r0, r1, 0x10
/* 802CD068 002C2DE8  41 82 00 38 */	beq .L_802CD0A0
/* 802CD06C 002C2DEC  3C C0 80 48 */	lis r6, lbl_804872B8@ha
/* 802CD070 002C2DF0  38 00 00 01 */	li r0, 0x1
/* 802CD074 002C2DF4  38 C6 72 B8 */	addi r6, r6, lbl_804872B8@l
/* 802CD078 002C2DF8  B0 01 00 16 */	sth r0, 0x16(r1)
/* 802CD07C 002C2DFC  38 A6 00 10 */	addi r5, r6, 0x10
/* 802CD080 002C2E00  38 86 00 20 */	addi r4, r6, 0x20
/* 802CD084 002C2E04  38 66 00 30 */	addi r3, r6, 0x30
/* 802CD088 002C2E08  38 06 00 40 */	addi r0, r6, 0x40
/* 802CD08C 002C2E0C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802CD090 002C2E10  90 A1 00 18 */	stw r5, 0x18(r1)
/* 802CD094 002C2E14  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802CD098 002C2E18  90 61 00 20 */	stw r3, 0x20(r1)
/* 802CD09C 002C2E1C  90 01 00 24 */	stw r0, 0x24(r1)
.L_802CD0A0:
/* 802CD0A0 002C2E20  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802CD0A4 002C2E24  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802CD0A8 002C2E28  7D 41 53 78 */	mr r1, r10
/* 802CD0AC 002C2E2C  4E 80 00 20 */	blr
.endfn fn_802CD054
