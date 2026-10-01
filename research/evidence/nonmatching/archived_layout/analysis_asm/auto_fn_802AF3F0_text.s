.include "macros.inc"
.file "auto_fn_802AF3F0_text"

# 0x800070F0..0x80007118 | size: 0x28
.section extab, "a"
.balign 4

# extab:0x0 | 0x800070F0 | size: 0x28
.obj "@etb_800070F0", local
.hidden "@etb_800070F0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 * 
 * PC actions:
 * PC=0000006C, Action: 000018
 * PC=000000B8, Action: 000020
 * 
 * Exception actions:
 * 000018:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A0DA4"
 * Has end bit
 * 000020:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A1FD4"
 * Has end bit
 */
	.4byte 0x28080000
	.4byte 0x0000006C
	.4byte 0x00000018
	.4byte 0x000000B8
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x8A80001F
	.4byte dtor_802A0DA4
	.4byte 0x8A80001F
	.4byte dtor_802A1FD4
.endobj "@etb_800070F0"

# 0x8000A27C..0x8000A288 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A27C | size: 0xC
.obj "@eti_8000A27C", local
.hidden "@eti_8000A27C"
	.4byte fn_802AF3F0
	.4byte 0x000000D0
	.4byte "@etb_800070F0"
.endobj "@eti_8000A27C"

# 0x802AF3F0..0x802AF4C0 | size: 0xD0
.text
.balign 4

# .text:0x0 | 0x802AF3F0 | size: 0xD0
.fn fn_802AF3F0, global
/* 802AF3F0 002A5170  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AF3F4 002A5174  7C 08 02 A6 */	mflr r0
/* 802AF3F8 002A5178  2C 06 00 00 */	cmpwi r6, 0x0
/* 802AF3FC 002A517C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AF400 002A5180  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802AF404 002A5184  7C 7B 1B 78 */	mr r27, r3
/* 802AF408 002A5188  7C 9C 23 78 */	mr r28, r4
/* 802AF40C 002A518C  7C BD 2B 78 */	mr r29, r5
/* 802AF410 002A5190  7C DE 33 78 */	mr r30, r6
/* 802AF414 002A5194  41 82 00 50 */	beq .L_802AF464
/* 802AF418 002A5198  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802AF41C 002A519C  38 80 00 80 */	li r4, 0x80
/* 802AF420 002A51A0  38 A0 00 1D */	li r5, 0x1d
/* 802AF424 002A51A4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AF428 002A51A8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802AF42C 002A51AC  7D 89 03 A6 */	mtctr r12
/* 802AF430 002A51B0  4E 80 04 21 */	bctrl
/* 802AF434 002A51B4  38 00 00 80 */	li r0, 0x80
/* 802AF438 002A51B8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802AF43C 002A51BC  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802AF440 002A51C0  7C 7F 1B 78 */	mr r31, r3
/* 802AF444 002A51C4  41 82 00 18 */	beq .L_802AF45C
/* 802AF448 002A51C8  7F 64 DB 78 */	mr r4, r27
/* 802AF44C 002A51CC  7F 85 E3 78 */	mr r5, r28
/* 802AF450 002A51D0  7F A6 EB 78 */	mr r6, r29
/* 802AF454 002A51D4  7F C7 F3 78 */	mr r7, r30
/* 802AF458 002A51D8  4B FF FC F1 */	bl fn_802AF148
.L_802AF45C:
/* 802AF45C 002A51DC  7F E3 FB 78 */	mr r3, r31
/* 802AF460 002A51E0  48 00 00 4C */	b .L_802AF4AC
.L_802AF464:
/* 802AF464 002A51E4  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802AF468 002A51E8  38 80 00 20 */	li r4, 0x20
/* 802AF46C 002A51EC  38 A0 00 1D */	li r5, 0x1d
/* 802AF470 002A51F0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AF474 002A51F4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802AF478 002A51F8  7D 89 03 A6 */	mtctr r12
/* 802AF47C 002A51FC  4E 80 04 21 */	bctrl
/* 802AF480 002A5200  38 00 00 20 */	li r0, 0x20
/* 802AF484 002A5204  2C 03 00 00 */	cmpwi r3, 0x0
/* 802AF488 002A5208  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802AF48C 002A520C  7C 7F 1B 78 */	mr r31, r3
/* 802AF490 002A5210  41 82 00 18 */	beq .L_802AF4A8
/* 802AF494 002A5214  7F 64 DB 78 */	mr r4, r27
/* 802AF498 002A5218  7F 85 E3 78 */	mr r5, r28
/* 802AF49C 002A521C  7F A6 EB 78 */	mr r6, r29
/* 802AF4A0 002A5220  7F C7 F3 78 */	mr r7, r30
/* 802AF4A4 002A5224  48 00 93 15 */	bl fn_802B87B8
.L_802AF4A8:
/* 802AF4A8 002A5228  7F E3 FB 78 */	mr r3, r31
.L_802AF4AC:
/* 802AF4AC 002A522C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802AF4B0 002A5230  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AF4B4 002A5234  7C 08 03 A6 */	mtlr r0
/* 802AF4B8 002A5238  38 21 00 20 */	addi r1, r1, 0x20
/* 802AF4BC 002A523C  4E 80 00 20 */	blr
.endfn fn_802AF3F0
