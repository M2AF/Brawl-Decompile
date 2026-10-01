.include "macros.inc"
.file "auto_fn_802D5FBC_text"

# 0x800085EC..0x800085F4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800085EC | size: 0x8
.obj "@etb_800085EC", local
.hidden "@etb_800085EC"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_800085EC"

# 0x8000B434..0x8000B440 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B434 | size: 0xC
.obj "@eti_8000B434", local
.hidden "@eti_8000B434"
	.4byte fn_802D5FBC
	.4byte 0x00000048
	.4byte "@etb_800085EC"
.endobj "@eti_8000B434"

# 0x802D5FBC..0x802D6004 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802D5FBC | size: 0x48
.fn fn_802D5FBC, global
/* 802D5FBC 002CBD3C  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802D5FC0 002CBD40  7C 2C 0B 78 */	mr r12, r1
/* 802D5FC4 002CBD44  21 6B FF E0 */	subfic r11, r11, -0x20
/* 802D5FC8 002CBD48  C0 02 AE 40 */	lfs f0, lbl_805A4160@sda21(r0)
/* 802D5FCC 002CBD4C  7C 21 59 6E */	stwux r1, r1, r11
/* 802D5FD0 002CBD50  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 802D5FD4 002CBD54  7C 83 23 78 */	mr r3, r4
/* 802D5FD8 002CBD58  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802D5FDC 002CBD5C  D0 04 00 00 */	stfs f0, 0x0(r4)
/* 802D5FE0 002CBD60  D0 04 00 04 */	stfs f0, 0x4(r4)
/* 802D5FE4 002CBD64  D0 04 00 08 */	stfs f0, 0x8(r4)
/* 802D5FE8 002CBD68  D0 24 00 0C */	stfs f1, 0xc(r4)
/* 802D5FEC 002CBD6C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802D5FF0 002CBD70  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802D5FF4 002CBD74  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 802D5FF8 002CBD78  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802D5FFC 002CBD7C  7D 41 53 78 */	mr r1, r10
/* 802D6000 002CBD80  4E 80 00 20 */	blr
.endfn fn_802D5FBC
