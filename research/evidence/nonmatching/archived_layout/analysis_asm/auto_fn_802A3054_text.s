.include "macros.inc"
.file "auto_fn_802A3054_text"

# 0x80006940..0x80006948 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006940 | size: 0x8
.obj "@etb_80006940", local
.hidden "@etb_80006940"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006940"

# 0x80009D00..0x80009D0C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009D00 | size: 0xC
.obj "@eti_80009D00", local
.hidden "@eti_80009D00"
	.4byte fn_802A3054
	.4byte 0x000000E4
	.4byte "@etb_80006940"
.endobj "@eti_80009D00"

# 0x802A3054..0x802A3138 | size: 0xE4
.text
.balign 4

# .text:0x0 | 0x802A3054 | size: 0xE4
.fn fn_802A3054, global
/* 802A3054 00298DD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A3058 00298DD8  7C 08 02 A6 */	mflr r0
/* 802A305C 00298DDC  3D 40 80 53 */	lis r10, lbl_80532448@ha
/* 802A3060 00298DE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A3064 00298DE4  39 4A 24 48 */	addi r10, r10, lbl_80532448@l
/* 802A3068 00298DE8  81 2A 00 04 */	lwz r9, 0x4(r10)
/* 802A306C 00298DEC  81 0A 00 0C */	lwz r8, 0xc(r10)
/* 802A3070 00298DF0  7D 00 4A 78 */	xor r0, r8, r9
/* 802A3074 00298DF4  7C 00 00 34 */	cntlzw r0, r0
/* 802A3078 00298DF8  7D 00 00 30 */	slw r0, r8, r0
/* 802A307C 00298DFC  54 00 0F FE */	srwi r0, r0, 31
/* 802A3080 00298E00  7C 00 07 75 */	extsb. r0, r0
/* 802A3084 00298E04  41 82 00 24 */	beq .L_802A30A8
/* 802A3088 00298E08  3D 00 80 41 */	lis r8, lbl_8040FB60@ha
/* 802A308C 00298E0C  39 08 FB 60 */	addi r8, r8, lbl_8040FB60@l
/* 802A3090 00298E10  38 08 00 26 */	addi r0, r8, 0x26
/* 802A3094 00298E14  90 09 00 00 */	stw r0, 0x0(r9)
/* 802A3098 00298E18  7D 0C 42 E6 */	mftb r8, 268
/* 802A309C 00298E1C  38 09 00 0C */	addi r0, r9, 0xc
/* 802A30A0 00298E20  91 09 00 04 */	stw r8, 0x4(r9)
/* 802A30A4 00298E24  90 0A 00 04 */	stw r0, 0x4(r10)
.L_802A30A8:
/* 802A30A8 00298E28  80 04 00 08 */	lwz r0, 0x8(r4)
/* 802A30AC 00298E2C  90 81 00 14 */	stw r4, 0x14(r1)
/* 802A30B0 00298E30  81 04 00 00 */	lwz r8, 0x0(r4)
/* 802A30B4 00298E34  90 01 00 10 */	stw r0, 0x10(r1)
/* 802A30B8 00298E38  80 04 00 04 */	lwz r0, 0x4(r4)
/* 802A30BC 00298E3C  38 81 00 08 */	addi r4, r1, 0x8
/* 802A30C0 00298E40  81 08 00 0C */	lwz r8, 0xc(r8)
/* 802A30C4 00298E44  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A30C8 00298E48  91 01 00 08 */	stw r8, 0x8(r1)
/* 802A30CC 00298E4C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802A30D0 00298E50  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A30D4 00298E54  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A30D8 00298E58  7D 89 03 A6 */	mtctr r12
/* 802A30DC 00298E5C  4E 80 04 21 */	bctrl
/* 802A30E0 00298E60  3C A0 80 53 */	lis r5, lbl_80532448@ha
/* 802A30E4 00298E64  38 A5 24 48 */	addi r5, r5, lbl_80532448@l
/* 802A30E8 00298E68  80 85 00 04 */	lwz r4, 0x4(r5)
/* 802A30EC 00298E6C  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802A30F0 00298E70  7C 60 22 78 */	xor r0, r3, r4
/* 802A30F4 00298E74  7C 00 00 34 */	cntlzw r0, r0
/* 802A30F8 00298E78  7C 60 00 30 */	slw r0, r3, r0
/* 802A30FC 00298E7C  54 00 0F FE */	srwi r0, r0, 31
/* 802A3100 00298E80  7C 00 07 75 */	extsb. r0, r0
/* 802A3104 00298E84  41 82 00 24 */	beq .L_802A3128
/* 802A3108 00298E88  3C 60 80 41 */	lis r3, lbl_8040FB60@ha
/* 802A310C 00298E8C  38 63 FB 60 */	addi r3, r3, lbl_8040FB60@l
/* 802A3110 00298E90  38 03 00 32 */	addi r0, r3, 0x32
/* 802A3114 00298E94  90 04 00 00 */	stw r0, 0x0(r4)
/* 802A3118 00298E98  7C 6C 42 E6 */	mftb r3, 268
/* 802A311C 00298E9C  38 04 00 0C */	addi r0, r4, 0xc
/* 802A3120 00298EA0  90 64 00 04 */	stw r3, 0x4(r4)
/* 802A3124 00298EA4  90 05 00 04 */	stw r0, 0x4(r5)
.L_802A3128:
/* 802A3128 00298EA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A312C 00298EAC  7C 08 03 A6 */	mtlr r0
/* 802A3130 00298EB0  38 21 00 20 */	addi r1, r1, 0x20
/* 802A3134 00298EB4  4E 80 00 20 */	blr
.endfn fn_802A3054
