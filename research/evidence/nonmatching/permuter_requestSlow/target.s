.include "macros.inc"
.text
.fn requestSlow__13gfSlowManagerFUc, global
/* 80033360 000290E0  3C C0 80 49 */	lis r6, s_gfSlowManager@ha
/* 80033364 000290E4  38 00 00 10 */	li r0, 0x10
/* 80033368 000290E8  38 C6 53 B0 */	addi r6, r6, s_gfSlowManager@l
/* 8003336C 000290EC  38 80 00 FF */	li r4, 0xff
/* 80033370 000290F0  39 00 00 00 */	li r8, 0x0
/* 80033374 000290F4  7C 09 03 A6 */	mtctr r0
.L_80033378:
/* 80033378 000290F8  55 00 0D FC */	clrlslwi r0, r8, 24, 1
/* 8003337C 000290FC  7C A6 00 AE */	lbzx r5, r6, r0
/* 80033380 00029100  7C E6 02 14 */	add r7, r6, r0
/* 80033384 00029104  2C 05 00 00 */	cmpwi r5, 0x0
/* 80033388 00029108  40 82 00 20 */	bne .L_800333A8
/* 8003338C 0002910C  38 00 00 01 */	li r0, 0x1
/* 80033390 00029110  7D 04 43 78 */	mr r4, r8
/* 80033394 00029114  50 05 06 3E */	rlwimi r5, r0, 0, 24, 31
/* 80033398 00029118  98 0D BC 60 */	stb r0, s_needsUpdate@sda21(r0)
/* 8003339C 0002911C  98 A7 00 00 */	stb r5, 0x0(r7)
/* 800333A0 00029120  98 67 00 01 */	stb r3, 0x1(r7)
/* 800333A4 00029124  48 00 00 0C */	b .L_800333B0
.L_800333A8:
/* 800333A8 00029128  39 08 00 01 */	addi r8, r8, 0x1
/* 800333AC 0002912C  42 00 FF CC */	bdnz .L_80033378
.L_800333B0:
/* 800333B0 00029130  54 83 C0 0E */	slwi r3, r4, 24
/* 800333B4 00029134  4E 80 00 20 */	blr
.endfn requestSlow__13gfSlowManagerFUc
