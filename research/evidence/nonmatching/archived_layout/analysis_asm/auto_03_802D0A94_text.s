.include "macros.inc"
.file "auto_03_802D0A94_text"

# 0x802D0A94..0x802D0AD4 | size: 0x40
.text
.balign 4

# .text:0x0 | 0x802D0A94 | size: 0x2C
.fn fn_802D0A94, global
/* 802D0A94 002C6814  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D0A98 002C6818  4D 82 00 20 */	beqlr
/* 802D0A9C 002C681C  3C A0 80 48 */	lis r5, lbl_80487488@ha
/* 802D0AA0 002C6820  3C 80 80 48 */	lis r4, lbl_804873E8@ha
/* 802D0AA4 002C6824  38 A5 74 88 */	addi r5, r5, lbl_80487488@l
/* 802D0AA8 002C6828  38 00 00 01 */	li r0, 0x1
/* 802D0AAC 002C682C  38 84 73 E8 */	addi r4, r4, lbl_804873E8@l
/* 802D0AB0 002C6830  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802D0AB4 002C6834  90 A3 00 00 */	stw r5, 0x0(r3)
/* 802D0AB8 002C6838  90 83 00 10 */	stw r4, 0x10(r3)
/* 802D0ABC 002C683C  4E 80 00 20 */	blr
.endfn fn_802D0A94

# .text:0x2C | 0x802D0AC0 | size: 0x14
.fn fn_802D0AC0, global
/* 802D0AC0 002C6840  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D0AC4 002C6844  38 80 FF FF */	li r4, -0x1
/* 802D0AC8 002C6848  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802D0ACC 002C684C  7D 89 03 A6 */	mtctr r12
/* 802D0AD0 002C6850  4E 80 04 20 */	bctr
.endfn fn_802D0AC0
