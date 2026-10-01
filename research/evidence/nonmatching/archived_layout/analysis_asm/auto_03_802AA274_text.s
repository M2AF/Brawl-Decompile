.include "macros.inc"
.file "auto_03_802AA274_text"

# 0x802AA274..0x802AA35C | size: 0xE8
.text
.balign 4

# .text:0x0 | 0x802AA274 | size: 0xC
.fn fn_802AA274, global
/* 802AA274 0029FFF4  3C 60 80 53 */	lis r3, lbl_80532448@ha
/* 802AA278 0029FFF8  38 63 24 48 */	addi r3, r3, lbl_80532448@l
/* 802AA27C 0029FFFC  4E 80 00 20 */	blr
.endfn fn_802AA274

# .text:0xC | 0x802AA280 | size: 0x1C
.fn fn_802AA280, global
/* 802AA280 002A0000  80 03 00 04 */	lwz r0, 0x4(r3)
/* 802AA284 002A0004  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802AA288 002A0008  7C 60 02 78 */	xor r0, r3, r0
/* 802AA28C 002A000C  7C 00 00 34 */	cntlzw r0, r0
/* 802AA290 002A0010  7C 60 00 30 */	slw r0, r3, r0
/* 802AA294 002A0014  54 03 C9 CE */	rlwinm r3, r0, 25, 7, 7
/* 802AA298 002A0018  4E 80 00 20 */	blr
.endfn fn_802AA280

# .text:0x28 | 0x802AA29C | size: 0x8
.fn fn_802AA29C, global
/* 802AA29C 002A001C  80 63 00 04 */	lwz r3, 0x4(r3)
/* 802AA2A0 002A0020  4E 80 00 20 */	blr
.endfn fn_802AA29C

# .text:0x30 | 0x802AA2A4 | size: 0xC
.fn fn_802AA2A4, global
/* 802AA2A4 002A0024  7C 0C 42 E6 */	mftb r0, 268
/* 802AA2A8 002A0028  90 03 00 04 */	stw r0, 0x4(r3)
/* 802AA2AC 002A002C  4E 80 00 20 */	blr
.endfn fn_802AA2A4

# .text:0x3C | 0x802AA2B0 | size: 0x8
.fn fn_802AA2B0, global
/* 802AA2B0 002A0030  90 83 00 04 */	stw r4, 0x4(r3)
/* 802AA2B4 002A0034  4E 80 00 20 */	blr
.endfn fn_802AA2B0

# .text:0x44 | 0x802AA2B8 | size: 0x8
.fn fn_802AA2B8, global
/* 802AA2B8 002A0038  80 63 00 08 */	lwz r3, 0x8(r3)
/* 802AA2BC 002A003C  4E 80 00 20 */	blr
.endfn fn_802AA2B8

# .text:0x4C | 0x802AA2C0 | size: 0x4
.fn fn_802AA2C0, global
/* 802AA2C0 002A0040  4E 80 00 20 */	blr
.endfn fn_802AA2C0

# .text:0x50 | 0x802AA2C4 | size: 0x4
.fn fn_802AA2C4, global
/* 802AA2C4 002A0044  4E 80 00 20 */	blr
.endfn fn_802AA2C4

# .text:0x54 | 0x802AA2C8 | size: 0x8
.fn fn_802AA2C8, global
/* 802AA2C8 002A0048  80 63 00 00 */	lwz r3, 0x0(r3)
/* 802AA2CC 002A004C  4E 80 00 20 */	blr
.endfn fn_802AA2C8

# .text:0x5C | 0x802AA2D0 | size: 0x2C
.fn fn_802AA2D0, global
/* 802AA2D0 002A0050  80 AD CA 98 */	lwz r5, lbl_805A0EB8@sda21(r0)
/* 802AA2D4 002A0054  80 85 00 28 */	lwz r4, 0x28(r5)
/* 802AA2D8 002A0058  80 65 00 14 */	lwz r3, 0x14(r5)
/* 802AA2DC 002A005C  80 05 00 08 */	lwz r0, 0x8(r5)
/* 802AA2E0 002A0060  7C 64 1A 14 */	add r3, r4, r3
/* 802AA2E4 002A0064  7C 00 18 00 */	cmpw r0, r3
/* 802AA2E8 002A0068  41 81 00 0C */	bgt .L_802AA2F4
/* 802AA2EC 002A006C  38 60 00 00 */	li r3, 0x0
/* 802AA2F0 002A0070  4E 80 00 20 */	blr
.L_802AA2F4:
/* 802AA2F4 002A0074  7C 63 00 50 */	subf r3, r3, r0
/* 802AA2F8 002A0078  4E 80 00 20 */	blr
.endfn fn_802AA2D0

# .text:0x88 | 0x802AA2FC | size: 0x8
.fn fn_802AA2FC, global
/* 802AA2FC 002A007C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802AA300 002A0080  4E 80 00 20 */	blr
.endfn fn_802AA2FC

# .text:0x90 | 0x802AA304 | size: 0x4
.fn fn_802AA304, global
/* 802AA304 002A0084  4E 80 00 20 */	blr
.endfn fn_802AA304

# .text:0x94 | 0x802AA308 | size: 0x1C
.fn fn_802AA308, global
/* 802AA308 002A0088  3C A0 80 00 */	lis r5, 0x8000
/* 802AA30C 002A008C  38 C3 00 0C */	addi r6, r3, 0xc
/* 802AA310 002A0090  38 05 00 80 */	addi r0, r5, 0x80
/* 802AA314 002A0094  90 C3 00 00 */	stw r6, 0x0(r3)
/* 802AA318 002A0098  90 83 00 04 */	stw r4, 0x4(r3)
/* 802AA31C 002A009C  90 03 00 08 */	stw r0, 0x8(r3)
/* 802AA320 002A00A0  4E 80 00 20 */	blr
.endfn fn_802AA308

# .text:0xB0 | 0x802AA324 | size: 0x20
.fn fn_802AA324, global
/* 802AA324 002A00A4  80 A3 00 04 */	lwz r5, 0x4(r3)
/* 802AA328 002A00A8  80 E4 00 00 */	lwz r7, 0x0(r4)
/* 802AA32C 002A00AC  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 802AA330 002A00B0  54 A0 10 3A */	slwi r0, r5, 2
/* 802AA334 002A00B4  38 85 00 01 */	addi r4, r5, 0x1
/* 802AA338 002A00B8  7C E6 01 2E */	stwx r7, r6, r0
/* 802AA33C 002A00BC  90 83 00 04 */	stw r4, 0x4(r3)
/* 802AA340 002A00C0  4E 80 00 20 */	blr
.endfn fn_802AA324

# .text:0xD0 | 0x802AA344 | size: 0x8
.fn fn_802AA344, global
/* 802AA344 002A00C4  80 63 00 04 */	lwz r3, 0x4(r3)
/* 802AA348 002A00C8  4E 80 00 20 */	blr
.endfn fn_802AA344

# .text:0xD8 | 0x802AA34C | size: 0x8
.fn fn_802AA34C, global
/* 802AA34C 002A00CC  80 63 00 04 */	lwz r3, 0x4(r3)
/* 802AA350 002A00D0  4E 80 00 20 */	blr
.endfn fn_802AA34C

# .text:0xE0 | 0x802AA354 | size: 0x8
.fn fn_802AA354, global
/* 802AA354 002A00D4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 802AA358 002A00D8  4E 80 00 20 */	blr
.endfn fn_802AA354
