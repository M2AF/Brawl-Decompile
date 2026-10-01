.include "macros.inc"
.file "auto_fn_802C7064_text"

# 0x80007F08..0x80007F2C | size: 0x24
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007F08 | size: 0x24
.obj "@etb_80007F08", local
.hidden "@etb_80007F08"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 * 
 * PC actions:
 * PC=00000088, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYBASE
 * Member: 0x0(r30)
 * Dtor: "dtor_802A0E20"
 * 00001C:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A0DA4"
 * Has end bit
 */
	.4byte 0x20080000
	.4byte 0x00000088
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0680001E
	.4byte 0x00000000
	.4byte dtor_802A0E20
	.4byte 0x8A80001F
	.4byte dtor_802A0DA4
.endobj "@etb_80007F08"

# 0x8000AC54..0x8000AC60 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AC54 | size: 0xC
.obj "@eti_8000AC54", local
.hidden "@eti_8000AC54"
	.4byte fn_802C7064
	.4byte 0x000000B8
	.4byte "@etb_80007F08"
.endobj "@eti_8000AC54"

# 0x802C7064..0x802C711C | size: 0xB8
.text
.balign 4

# .text:0x0 | 0x802C7064 | size: 0xB8
.fn fn_802C7064, global
/* 802C7064 002BCDE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C7068 002BCDE8  7C 08 02 A6 */	mflr r0
/* 802C706C 002BCDEC  38 80 00 20 */	li r4, 0x20
/* 802C7070 002BCDF0  38 A0 00 1D */	li r5, 0x1d
/* 802C7074 002BCDF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C7078 002BCDF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C707C 002BCDFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C7080 002BCE00  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802C7084 002BCE04  7C DD 33 78 */	mr r29, r6
/* 802C7088 002BCE08  93 81 00 10 */	stw r28, 0x10(r1)
/* 802C708C 002BCE0C  7C 7C 1B 78 */	mr r28, r3
/* 802C7090 002BCE10  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C7094 002BCE14  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C7098 002BCE18  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C709C 002BCE1C  7D 89 03 A6 */	mtctr r12
/* 802C70A0 002BCE20  4E 80 04 21 */	bctrl
/* 802C70A4 002BCE24  7C 7E 1B 79 */	mr. r30, r3
/* 802C70A8 002BCE28  38 00 00 20 */	li r0, 0x20
/* 802C70AC 002BCE2C  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802C70B0 002BCE30  7F DF F3 78 */	mr r31, r30
/* 802C70B4 002BCE34  41 82 00 44 */	beq .L_802C70F8
/* 802C70B8 002BCE38  38 00 00 01 */	li r0, 0x1
/* 802C70BC 002BCE3C  3C C0 80 48 */	lis r6, lbl_8048712C@ha
/* 802C70C0 002BCE40  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802C70C4 002BCE44  3C 80 00 01 */	lis r4, 0x1
/* 802C70C8 002BCE48  38 04 FF FF */	subi r0, r4, 0x1
/* 802C70CC 002BCE4C  38 C6 71 2C */	addi r6, r6, lbl_8048712C@l
/* 802C70D0 002BCE50  93 A3 00 08 */	stw r29, 0x8(r3)
/* 802C70D4 002BCE54  38 9E 00 10 */	addi r4, r30, 0x10
/* 802C70D8 002BCE58  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 802C70DC 002BCE5C  90 C3 00 00 */	stw r6, 0x0(r3)
/* 802C70E0 002BCE60  B0 03 00 0C */	sth r0, 0xc(r3)
/* 802C70E4 002BCE64  38 65 00 10 */	addi r3, r5, 0x10
/* 802C70E8 002BCE68  48 05 E0 9D */	bl fn_80325184
/* 802C70EC 002BCE6C  3C 60 80 48 */	lis r3, lbl_804870F0@ha
/* 802C70F0 002BCE70  38 63 70 F0 */	addi r3, r3, lbl_804870F0@l
/* 802C70F4 002BCE74  90 7E 00 00 */	stw r3, 0x0(r30)
.L_802C70F8:
/* 802C70F8 002BCE78  7F E3 FB 78 */	mr r3, r31
/* 802C70FC 002BCE7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C7100 002BCE80  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C7104 002BCE84  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802C7108 002BCE88  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802C710C 002BCE8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C7110 002BCE90  7C 08 03 A6 */	mtlr r0
/* 802C7114 002BCE94  38 21 00 20 */	addi r1, r1, 0x20
/* 802C7118 002BCE98  4E 80 00 20 */	blr
.endfn fn_802C7064
