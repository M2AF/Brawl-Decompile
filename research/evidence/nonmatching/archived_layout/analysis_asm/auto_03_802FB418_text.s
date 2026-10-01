.include "macros.inc"
.file "auto_03_802FB418_text"

# 0x802FB418..0x802FB464 | size: 0x4C
.text
.balign 4

# .text:0x0 | 0x802FB418 | size: 0x44
.fn fn_802FB418, global
/* 802FB418 002F1198  88 04 00 21 */	lbz r0, 0x21(r4)
/* 802FB41C 002F119C  7C 83 23 78 */	mr r3, r4
/* 802FB420 002F11A0  38 C0 00 00 */	li r6, 0x0
/* 802FB424 002F11A4  7C 09 03 A6 */	mtctr r0
/* 802FB428 002F11A8  2C 00 00 00 */	cmpwi r0, 0x0
/* 802FB42C 002F11AC  4C 81 00 20 */	blelr
.L_802FB430:
/* 802FB430 002F11B0  A0 03 00 02 */	lhz r0, 0x2(r3)
/* 802FB434 002F11B4  28 00 FF FF */	cmplwi r0, 0xffff
/* 802FB438 002F11B8  40 82 00 14 */	bne .L_802FB44C
/* 802FB43C 002F11BC  54 C0 10 3A */	slwi r0, r6, 2
/* 802FB440 002F11C0  7C 64 02 14 */	add r3, r4, r0
/* 802FB444 002F11C4  B0 A3 00 02 */	sth r5, 0x2(r3)
/* 802FB448 002F11C8  4E 80 00 20 */	blr
.L_802FB44C:
/* 802FB44C 002F11CC  38 63 00 04 */	addi r3, r3, 0x4
/* 802FB450 002F11D0  38 C6 00 01 */	addi r6, r6, 0x1
/* 802FB454 002F11D4  42 00 FF DC */	bdnz .L_802FB430
/* 802FB458 002F11D8  4E 80 00 20 */	blr
.endfn fn_802FB418

# .text:0x44 | 0x802FB45C | size: 0x4
.fn fn_802FB45C, global
/* 802FB45C 002F11DC  4E 80 00 20 */	blr
.endfn fn_802FB45C

# .text:0x48 | 0x802FB460 | size: 0x4
.fn fn_802FB460, global
/* 802FB460 002F11E0  4B FF FE C4 */	b fn_802FB324
.endfn fn_802FB460
