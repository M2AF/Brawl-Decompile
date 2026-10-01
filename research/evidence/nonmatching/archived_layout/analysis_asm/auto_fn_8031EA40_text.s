.include "macros.inc"
.file "auto_fn_8031EA40_text"

# 0x80008CB4..0x80008CBC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008CB4 | size: 0x8
.obj "@etb_80008CB4", local
.hidden "@etb_80008CB4"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80008CB4"

# 0x8000BC44..0x8000BC50 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BC44 | size: 0xC
.obj "@eti_8000BC44", local
.hidden "@eti_8000BC44"
	.4byte fn_8031EA40
	.4byte 0x0000004C
	.4byte "@etb_80008CB4"
.endobj "@eti_8000BC44"

# 0x8031EA40..0x8031EA8C | size: 0x4C
.text
.balign 4

# .text:0x0 | 0x8031EA40 | size: 0x4C
.fn fn_8031EA40, global
/* 8031EA40 003147C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031EA44 003147C4  3C 80 41 C6 */	lis r4, 0x41c6
/* 8031EA48 003147C8  3C 00 43 30 */	lis r0, 0x4330
/* 8031EA4C 003147CC  C8 42 B3 F8 */	lfd f2, lbl_805A4718@sda21(r0)
/* 8031EA50 003147D0  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8031EA54 003147D4  38 84 4E 6D */	addi r4, r4, 0x4e6d
/* 8031EA58 003147D8  90 01 00 08 */	stw r0, 0x8(r1)
/* 8031EA5C 003147DC  7C 85 21 D6 */	mullw r4, r5, r4
/* 8031EA60 003147E0  C0 02 B3 F4 */	lfs f0, lbl_805A4714@sda21(r0)
/* 8031EA64 003147E4  38 04 30 39 */	addi r0, r4, 0x3039
/* 8031EA68 003147E8  54 04 00 7E */	clrlwi r4, r0, 1
/* 8031EA6C 003147EC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8031EA70 003147F0  90 83 00 00 */	stw r4, 0x0(r3)
/* 8031EA74 003147F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8031EA78 003147F8  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 8031EA7C 003147FC  EC 21 10 28 */	fsubs f1, f1, f2
/* 8031EA80 00314800  EC 21 00 24 */	fdivs f1, f1, f0
/* 8031EA84 00314804  38 21 00 10 */	addi r1, r1, 0x10
/* 8031EA88 00314808  4E 80 00 20 */	blr
.endfn fn_8031EA40
