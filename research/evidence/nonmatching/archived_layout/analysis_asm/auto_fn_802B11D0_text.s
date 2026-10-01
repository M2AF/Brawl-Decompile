.include "macros.inc"
.file "auto_fn_802B11D0_text"

# 0x800072D8..0x800072F0 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x800072D8 | size: 0x18
.obj "@etb_800072D8", local
.hidden "@etb_800072D8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * 
 * PC actions:
 * PC=00000038, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYLOCAL
 * Local: 0x8(SP)
 * Dtor: "dtor_802A3938"
 * Has end bit
 */
	.4byte 0x00080000
	.4byte 0x00000038
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte dtor_802A3938
.endobj "@etb_800072D8"

# 0x8000A36C..0x8000A378 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A36C | size: 0xC
.obj "@eti_8000A36C", local
.hidden "@eti_8000A36C"
	.4byte fn_802B11D0
	.4byte 0x00000048
	.4byte "@etb_800072D8"
.endobj "@eti_8000A36C"

# 0x802B11D0..0x802B1218 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802B11D0 | size: 0x48
.fn fn_802B11D0, global
/* 802B11D0 002A6F50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B11D4 002A6F54  7C 08 02 A6 */	mflr r0
/* 802B11D8 002A6F58  3D 00 80 48 */	lis r8, lbl_80487178@ha
/* 802B11DC 002A6F5C  7C 89 23 78 */	mr r9, r4
/* 802B11E0 002A6F60  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B11E4 002A6F64  38 00 00 00 */	li r0, 0x0
/* 802B11E8 002A6F68  39 08 71 78 */	addi r8, r8, lbl_80487178@l
/* 802B11EC 002A6F6C  7C A4 2B 78 */	mr r4, r5
/* 802B11F0 002A6F70  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802B11F4 002A6F74  7D 25 4B 78 */	mr r5, r9
/* 802B11F8 002A6F78  38 E1 00 08 */	addi r7, r1, 0x8
/* 802B11FC 002A6F7C  98 01 00 0C */	stb r0, 0xc(r1)
/* 802B1200 002A6F80  91 01 00 08 */	stw r8, 0x8(r1)
/* 802B1204 002A6F84  48 00 7B 6D */	bl fn_802B8D70
/* 802B1208 002A6F88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B120C 002A6F8C  7C 08 03 A6 */	mtlr r0
/* 802B1210 002A6F90  38 21 00 20 */	addi r1, r1, 0x20
/* 802B1214 002A6F94  4E 80 00 20 */	blr
.endfn fn_802B11D0
