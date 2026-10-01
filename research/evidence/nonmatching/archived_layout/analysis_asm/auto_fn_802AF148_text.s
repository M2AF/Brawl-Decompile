.include "macros.inc"
.file "auto_fn_802AF148_text"

# 0x8000709C..0x800070D0 | size: 0x34
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000709C | size: 0x34
.obj "@etb_8000709C", local
.hidden "@etb_8000709C"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r24-r31
 * 
 * PC actions:
 * PC=0000009C, Action: 000018
 * PC=000000F8:0000010C, Action: 000020
 * 
 * Exception actions:
 * 000018:
 * Type: DESTROYLOCAL
 * Local: 0x28(SP)
 * Dtor: "dtor_802AF394"
 * Has end bit
 * 000020:
 * Type: DESTROYLOCAL
 * Local: 0x10(SP)
 * Dtor: "dtor_802AF280"
 * 000028:
 * Type: DESTROYBASE
 * Member: 0x0(r31)
 * Dtor: "dtor_802AF338"
 * Has end bit
 */
	.4byte 0x400A0000
	.4byte 0x0000009C
	.4byte 0x00000018
	.4byte 0x000000F8
	.4byte 0x00050020
	.4byte 0x00000000
	.4byte 0x82000028
	.4byte dtor_802AF394
	.4byte 0x02000010
	.4byte dtor_802AF280
	.4byte 0x8680001F
	.4byte 0x00000000
	.4byte dtor_802AF338
.endobj "@etb_8000709C"

# 0x8000A240..0x8000A24C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A240 | size: 0xC
.obj "@eti_8000A240", local
.hidden "@eti_8000A240"
	.4byte fn_802AF148
	.4byte 0x00000138
	.4byte "@etb_8000709C"
.endobj "@eti_8000A240"

# 0x802AF148..0x802AF280 | size: 0x138
.text
.balign 4

# .text:0x0 | 0x802AF148 | size: 0x138
.fn fn_802AF148, global
/* 802AF148 002A4EC8  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802AF14C 002A4ECC  7C 2C 0B 78 */	mr r12, r1
/* 802AF150 002A4ED0  21 6B FF 50 */	subfic r11, r11, -0xb0
/* 802AF154 002A4ED4  7C 21 59 6E */	stwux r1, r1, r11
/* 802AF158 002A4ED8  7C 08 02 A6 */	mflr r0
/* 802AF15C 002A4EDC  7D 8B 63 78 */	mr r11, r12
/* 802AF160 002A4EE0  90 0C 00 04 */	stw r0, 0x4(r12)
/* 802AF164 002A4EE4  48 14 21 B1 */	bl _savegpr_24
/* 802AF168 002A4EE8  80 05 00 08 */	lwz r0, 0x8(r5)
/* 802AF16C 002A4EEC  3F C0 80 48 */	lis r30, lbl_80486AA8@ha
/* 802AF170 002A4EF0  C0 0D AB 88 */	lfs f0, lbl_8059EFA8@sda21(r0)
/* 802AF174 002A4EF4  3B DE 6A A8 */	addi r30, r30, lbl_80486AA8@l
/* 802AF178 002A4EF8  3B 80 00 01 */	li r28, 0x1
/* 802AF17C 002A4EFC  3B A0 00 00 */	li r29, 0x0
/* 802AF180 002A4F00  90 A1 00 34 */	stw r5, 0x34(r1)
/* 802AF184 002A4F04  7C DA 33 78 */	mr r26, r6
/* 802AF188 002A4F08  81 25 00 00 */	lwz r9, 0x0(r5)
/* 802AF18C 002A4F0C  7C E6 3B 78 */	mr r6, r7
/* 802AF190 002A4F10  90 01 00 30 */	stw r0, 0x30(r1)
/* 802AF194 002A4F14  39 01 00 38 */	addi r8, r1, 0x38
/* 802AF198 002A4F18  81 45 00 04 */	lwz r10, 0x4(r5)
/* 802AF19C 002A4F1C  7C B9 2B 78 */	mr r25, r5
/* 802AF1A0 002A4F20  B3 81 00 3E */	sth r28, 0x3e(r1)
/* 802AF1A4 002A4F24  7C 7F 1B 78 */	mr r31, r3
/* 802AF1A8 002A4F28  7C 98 23 78 */	mr r24, r4
/* 802AF1AC 002A4F2C  38 A1 00 28 */	addi r5, r1, 0x28
/* 802AF1B0 002A4F30  93 A1 00 40 */	stw r29, 0x40(r1)
/* 802AF1B4 002A4F34  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 802AF1B8 002A4F38  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802AF1BC 002A4F3C  81 69 00 14 */	lwz r11, 0x14(r9)
/* 802AF1C0 002A4F40  80 EB 00 00 */	lwz r7, 0x0(r11)
/* 802AF1C4 002A4F44  C0 07 00 0C */	lfs f0, 0xc(r7)
/* 802AF1C8 002A4F48  91 61 00 48 */	stw r11, 0x48(r1)
/* 802AF1CC 002A4F4C  80 09 00 18 */	lwz r0, 0x18(r9)
/* 802AF1D0 002A4F50  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802AF1D4 002A4F54  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 802AF1D8 002A4F58  91 01 00 28 */	stw r8, 0x28(r1)
/* 802AF1DC 002A4F5C  91 41 00 2C */	stw r10, 0x2c(r1)
/* 802AF1E0 002A4F60  48 00 36 91 */	bl fn_802B2870
/* 802AF1E4 002A4F64  3C 60 80 48 */	lis r3, lbl_80486AE8@ha
/* 802AF1E8 002A4F68  80 D9 00 00 */	lwz r6, 0x0(r25)
/* 802AF1EC 002A4F6C  38 63 6A E8 */	addi r3, r3, lbl_80486AE8@l
/* 802AF1F0 002A4F70  83 78 00 00 */	lwz r27, 0x0(r24)
/* 802AF1F4 002A4F74  90 7F 00 00 */	stw r3, 0x0(r31)
/* 802AF1F8 002A4F78  38 61 00 50 */	addi r3, r1, 0x50
/* 802AF1FC 002A4F7C  80 98 00 08 */	lwz r4, 0x8(r24)
/* 802AF200 002A4F80  80 1A 00 00 */	lwz r0, 0x0(r26)
/* 802AF204 002A4F84  80 B9 00 08 */	lwz r5, 0x8(r25)
/* 802AF208 002A4F88  90 1F 00 74 */	stw r0, 0x74(r31)
/* 802AF20C 002A4F8C  9B 9F 00 78 */	stb r28, 0x78(r31)
/* 802AF210 002A4F90  9B BF 00 79 */	stb r29, 0x79(r31)
/* 802AF214 002A4F94  80 E6 00 14 */	lwz r7, 0x14(r6)
/* 802AF218 002A4F98  80 06 00 18 */	lwz r0, 0x18(r6)
/* 802AF21C 002A4F9C  80 C7 00 00 */	lwz r6, 0x0(r7)
/* 802AF220 002A4FA0  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 802AF224 002A4FA4  B3 81 00 16 */	sth r28, 0x16(r1)
/* 802AF228 002A4FA8  93 A1 00 18 */	stw r29, 0x18(r1)
/* 802AF22C 002A4FAC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802AF230 002A4FB0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802AF234 002A4FB4  90 E1 00 20 */	stw r7, 0x20(r1)
/* 802AF238 002A4FB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AF23C 002A4FBC  4B FD 83 C5 */	bl fn_80287600
/* 802AF240 002A4FC0  7F 64 DB 78 */	mr r4, r27
/* 802AF244 002A4FC4  38 7F 00 0C */	addi r3, r31, 0xc
/* 802AF248 002A4FC8  38 A1 00 10 */	addi r5, r1, 0x10
/* 802AF24C 002A4FCC  38 C1 00 50 */	addi r6, r1, 0x50
/* 802AF250 002A4FD0  48 06 DB 15 */	bl fn_8031CD64
/* 802AF254 002A4FD4  C0 02 AB FC */	lfs f0, lbl_805A3F1C@sda21(r0)
/* 802AF258 002A4FD8  7F E3 FB 78 */	mr r3, r31
/* 802AF25C 002A4FDC  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 802AF260 002A4FE0  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 802AF264 002A4FE4  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802AF268 002A4FE8  7D 4B 53 78 */	mr r11, r10
/* 802AF26C 002A4FEC  48 14 20 F5 */	bl _restgpr_24
/* 802AF270 002A4FF0  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802AF274 002A4FF4  7C 08 03 A6 */	mtlr r0
/* 802AF278 002A4FF8  7D 41 53 78 */	mr r1, r10
/* 802AF27C 002A4FFC  4E 80 00 20 */	blr
.endfn fn_802AF148
