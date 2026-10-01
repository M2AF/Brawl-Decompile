.include "macros.inc"
.file "auto_fn_803CD484_text"

# 0x80009274..0x8000927C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009274 | size: 0x8
.obj "@etb_80009274", local
.hidden "@etb_80009274"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80009274"

# 0x8000C148..0x8000C154 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C148 | size: 0xC
.obj "@eti_8000C148", local
.hidden "@eti_8000C148"
	.4byte fn_803CD484
	.4byte 0x00000114
	.4byte "@etb_80009274"
.endobj "@eti_8000C148"

# 0x803CD484..0x803CD598 | size: 0x114
.text
.balign 4

# .text:0x0 | 0x803CD484 | size: 0x114
.fn fn_803CD484, global
/* 803CD484 003C3204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CD488 003C3208  7C 08 02 A6 */	mflr r0
/* 803CD48C 003C320C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CD490 003C3210  4B FF FE 51 */	bl fn_803CD2E0
/* 803CD494 003C3214  38 00 00 00 */	li r0, 0x0
/* 803CD498 003C3218  B0 03 00 00 */	sth r0, 0x0(r3)
/* 803CD49C 003C321C  B0 03 00 02 */	sth r0, 0x2(r3)
/* 803CD4A0 003C3220  90 03 00 04 */	stw r0, 0x4(r3)
/* 803CD4A4 003C3224  B0 03 00 08 */	sth r0, 0x8(r3)
/* 803CD4A8 003C3228  B0 03 00 0A */	sth r0, 0xa(r3)
/* 803CD4AC 003C322C  90 03 00 0C */	stw r0, 0xc(r3)
/* 803CD4B0 003C3230  B0 03 00 10 */	sth r0, 0x10(r3)
/* 803CD4B4 003C3234  B0 03 00 12 */	sth r0, 0x12(r3)
/* 803CD4B8 003C3238  90 03 00 14 */	stw r0, 0x14(r3)
/* 803CD4BC 003C323C  B0 03 00 18 */	sth r0, 0x18(r3)
/* 803CD4C0 003C3240  B0 03 00 1A */	sth r0, 0x1a(r3)
/* 803CD4C4 003C3244  90 03 00 1C */	stw r0, 0x1c(r3)
/* 803CD4C8 003C3248  B0 03 00 20 */	sth r0, 0x20(r3)
/* 803CD4CC 003C324C  B0 03 00 22 */	sth r0, 0x22(r3)
/* 803CD4D0 003C3250  90 03 00 24 */	stw r0, 0x24(r3)
/* 803CD4D4 003C3254  B0 03 00 28 */	sth r0, 0x28(r3)
/* 803CD4D8 003C3258  B0 03 00 2A */	sth r0, 0x2a(r3)
/* 803CD4DC 003C325C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 803CD4E0 003C3260  B0 03 00 30 */	sth r0, 0x30(r3)
/* 803CD4E4 003C3264  B0 03 00 32 */	sth r0, 0x32(r3)
/* 803CD4E8 003C3268  90 03 00 34 */	stw r0, 0x34(r3)
/* 803CD4EC 003C326C  B0 03 00 38 */	sth r0, 0x38(r3)
/* 803CD4F0 003C3270  B0 03 00 3A */	sth r0, 0x3a(r3)
/* 803CD4F4 003C3274  90 03 00 3C */	stw r0, 0x3c(r3)
/* 803CD4F8 003C3278  B0 03 00 40 */	sth r0, 0x40(r3)
/* 803CD4FC 003C327C  B0 03 00 42 */	sth r0, 0x42(r3)
/* 803CD500 003C3280  90 03 00 44 */	stw r0, 0x44(r3)
/* 803CD504 003C3284  B0 03 00 48 */	sth r0, 0x48(r3)
/* 803CD508 003C3288  B0 03 00 4A */	sth r0, 0x4a(r3)
/* 803CD50C 003C328C  90 03 00 4C */	stw r0, 0x4c(r3)
/* 803CD510 003C3290  B0 03 00 50 */	sth r0, 0x50(r3)
/* 803CD514 003C3294  B0 03 00 52 */	sth r0, 0x52(r3)
/* 803CD518 003C3298  90 03 00 54 */	stw r0, 0x54(r3)
/* 803CD51C 003C329C  B0 03 00 58 */	sth r0, 0x58(r3)
/* 803CD520 003C32A0  B0 03 00 5A */	sth r0, 0x5a(r3)
/* 803CD524 003C32A4  90 03 00 5C */	stw r0, 0x5c(r3)
/* 803CD528 003C32A8  B0 03 00 60 */	sth r0, 0x60(r3)
/* 803CD52C 003C32AC  B0 03 00 62 */	sth r0, 0x62(r3)
/* 803CD530 003C32B0  90 03 00 64 */	stw r0, 0x64(r3)
/* 803CD534 003C32B4  B0 03 00 68 */	sth r0, 0x68(r3)
/* 803CD538 003C32B8  B0 03 00 6A */	sth r0, 0x6a(r3)
/* 803CD53C 003C32BC  90 03 00 6C */	stw r0, 0x6c(r3)
/* 803CD540 003C32C0  B0 03 00 70 */	sth r0, 0x70(r3)
/* 803CD544 003C32C4  B0 03 00 72 */	sth r0, 0x72(r3)
/* 803CD548 003C32C8  90 03 00 74 */	stw r0, 0x74(r3)
/* 803CD54C 003C32CC  B0 03 00 78 */	sth r0, 0x78(r3)
/* 803CD550 003C32D0  B0 03 00 7A */	sth r0, 0x7a(r3)
/* 803CD554 003C32D4  90 03 00 7C */	stw r0, 0x7c(r3)
/* 803CD558 003C32D8  B0 03 00 80 */	sth r0, 0x80(r3)
/* 803CD55C 003C32DC  B0 03 00 82 */	sth r0, 0x82(r3)
/* 803CD560 003C32E0  90 03 00 84 */	stw r0, 0x84(r3)
/* 803CD564 003C32E4  B0 03 00 88 */	sth r0, 0x88(r3)
/* 803CD568 003C32E8  B0 03 00 8A */	sth r0, 0x8a(r3)
/* 803CD56C 003C32EC  90 03 00 8C */	stw r0, 0x8c(r3)
/* 803CD570 003C32F0  90 03 00 90 */	stw r0, 0x90(r3)
/* 803CD574 003C32F4  90 03 00 94 */	stw r0, 0x94(r3)
/* 803CD578 003C32F8  90 03 00 98 */	stw r0, 0x98(r3)
/* 803CD57C 003C32FC  B0 03 00 9C */	sth r0, 0x9c(r3)
/* 803CD580 003C3300  90 03 00 A0 */	stw r0, 0xa0(r3)
/* 803CD584 003C3304  90 03 00 A4 */	stw r0, 0xa4(r3)
/* 803CD588 003C3308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CD58C 003C330C  7C 08 03 A6 */	mtlr r0
/* 803CD590 003C3310  38 21 00 10 */	addi r1, r1, 0x10
/* 803CD594 003C3314  4E 80 00 20 */	blr
.endfn fn_803CD484
