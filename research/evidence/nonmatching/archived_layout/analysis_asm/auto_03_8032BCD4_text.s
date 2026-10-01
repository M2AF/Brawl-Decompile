.include "macros.inc"
.file "auto_03_8032BCD4_text"

# 0x8032BCD4..0x8032BD00 | size: 0x2C
.text
.balign 4

# .text:0x0 | 0x8032BCD4 | size: 0x2C
.fn fn_8032BCD4, global
/* 8032BCD4 00321A54  80 86 00 18 */	lwz r4, 0x18(r6)
/* 8032BCD8 00321A58  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 8032BCDC 00321A5C  90 83 00 10 */	stw r4, 0x10(r3)
/* 8032BCE0 00321A60  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8032BCE4 00321A64  7C 04 00 40 */	cmplw r4, r0
/* 8032BCE8 00321A68  4C 82 00 20 */	bnelr
/* 8032BCEC 00321A6C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8032BCF0 00321A70  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8032BCF4 00321A74  7D 89 03 A6 */	mtctr r12
/* 8032BCF8 00321A78  4E 80 04 20 */	bctr
/* 8032BCFC 00321A7C  4E 80 00 20 */	blr
.endfn fn_8032BCD4
