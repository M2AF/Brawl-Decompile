.include "macros.inc"
.file "auto_03_8028980C_text"

# 0x8028980C..0x80289850 | size: 0x44
.text
.balign 4

# .text:0x0 | 0x8028980C | size: 0x8
.fn fn_8028980C, global
/* 8028980C 0027F58C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 80289810 0027F590  4E 80 00 20 */	blr
.endfn fn_8028980C

# .text:0x8 | 0x80289814 | size: 0x8
.fn fn_80289814, global
/* 80289814 0027F594  80 63 00 00 */	lwz r3, 0x0(r3)
/* 80289818 0027F598  4E 80 00 20 */	blr
.endfn fn_80289814

# .text:0x10 | 0x8028981C | size: 0x8
.fn fn_8028981C, global
/* 8028981C 0027F59C  A0 63 00 00 */	lhz r3, 0x0(r3)
/* 80289820 0027F5A0  4E 80 00 20 */	blr
.endfn fn_8028981C

# .text:0x18 | 0x80289824 | size: 0x20
.fn fn_80289824, global
/* 80289824 0027F5A4  80 C7 00 08 */	lwz r6, 0x8(r7)
/* 80289828 0027F5A8  7C E5 3B 78 */	mr r5, r7
/* 8028982C 0027F5AC  81 83 00 04 */	lwz r12, 0x4(r3)
/* 80289830 0027F5B0  38 06 FF E8 */	subi r0, r6, 0x18
/* 80289834 0027F5B4  80 63 00 08 */	lwz r3, 0x8(r3)
/* 80289838 0027F5B8  90 07 00 08 */	stw r0, 0x8(r7)
/* 8028983C 0027F5BC  7D 89 03 A6 */	mtctr r12
/* 80289840 0027F5C0  4E 80 04 20 */	bctr
.endfn fn_80289824

# .text:0x38 | 0x80289844 | size: 0xC
.fn fn_80289844, global
/* 80289844 0027F5C4  3C 60 00 02 */	lis r3, 0x2
/* 80289848 0027F5C8  38 63 86 A0 */	subi r3, r3, 0x7960
/* 8028984C 0027F5CC  4E 80 00 20 */	blr
.endfn fn_80289844
