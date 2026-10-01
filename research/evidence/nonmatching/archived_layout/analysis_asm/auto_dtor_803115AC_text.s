.include "macros.inc"
.file "auto_dtor_803115AC_text"

# 0x80008AB8..0x80008AC0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008AB8 | size: 0x8
.obj "@etb_80008AB8", local
.hidden "@etb_80008AB8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80008AB8"

# 0x8000B998..0x8000B9A4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B998 | size: 0xC
.obj "@eti_8000B998", local
.hidden "@eti_8000B998"
	.4byte dtor_803115AC
	.4byte 0x00000090
	.4byte "@etb_80008AB8"
.endobj "@eti_8000B998"

# 0x803115AC..0x8031163C | size: 0x90
.text
.balign 4

# .text:0x0 | 0x803115AC | size: 0x90
.fn dtor_803115AC, global
/* 803115AC 0030732C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803115B0 00307330  7C 08 02 A6 */	mflr r0
/* 803115B4 00307334  2C 03 00 00 */	cmpwi r3, 0x0
/* 803115B8 00307338  90 01 00 14 */	stw r0, 0x14(r1)
/* 803115BC 0030733C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803115C0 00307340  7C 9F 23 78 */	mr r31, r4
/* 803115C4 00307344  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803115C8 00307348  7C 7E 1B 78 */	mr r30, r3
/* 803115CC 0030734C  41 82 00 54 */	beq .L_80311620
/* 803115D0 00307350  80 83 00 00 */	lwz r4, 0x0(r3)
/* 803115D4 00307354  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 803115D8 00307358  90 83 00 10 */	stw r4, 0x10(r3)
/* 803115DC 0030735C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 803115E0 00307360  7C 04 00 40 */	cmplw r4, r0
/* 803115E4 00307364  40 82 00 14 */	bne .L_803115F8
/* 803115E8 00307368  81 83 00 00 */	lwz r12, 0x0(r3)
/* 803115EC 0030736C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 803115F0 00307370  7D 89 03 A6 */	mtctr r12
/* 803115F4 00307374  4E 80 04 21 */	bctrl
.L_803115F8:
/* 803115F8 00307378  2C 1F 00 00 */	cmpwi r31, 0x0
/* 803115FC 0030737C  40 81 00 24 */	ble .L_80311620
/* 80311600 00307380  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 80311604 00307384  7F C4 F3 78 */	mr r4, r30
/* 80311608 00307388  38 A0 00 08 */	li r5, 0x8
/* 8031160C 0030738C  38 C0 00 15 */	li r6, 0x15
/* 80311610 00307390  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80311614 00307394  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80311618 00307398  7D 89 03 A6 */	mtctr r12
/* 8031161C 0030739C  4E 80 04 21 */	bctrl
.L_80311620:
/* 80311620 003073A0  7F C3 F3 78 */	mr r3, r30
/* 80311624 003073A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80311628 003073A8  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8031162C 003073AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80311630 003073B0  7C 08 03 A6 */	mtlr r0
/* 80311634 003073B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80311638 003073B8  4E 80 00 20 */	blr
.endfn dtor_803115AC
