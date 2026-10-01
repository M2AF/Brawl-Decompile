.include "macros.inc"
.file "auto_03_803F5060_text"

# 0x803F5060..0x803F5098 | size: 0x38
.text
.balign 4

# .text:0x0 | 0x803F5060 | size: 0x10
.fn fn_803F5060, global
/* 803F5060 003EADE0  7C 64 FE 70 */	srawi r4, r3, 31
/* 803F5064 003EADE4  7C 80 1A 78 */	xor r0, r4, r3
/* 803F5068 003EADE8  7C 64 00 50 */	subf r3, r4, r0
/* 803F506C 003EADEC  4E 80 00 20 */	blr
.endfn fn_803F5060

# .text:0x10 | 0x803F5070 | size: 0x28
.fn __prep_buffer, global
/* 803F5070 003EADF0  80 83 00 18 */	lwz r4, 0x18(r3)
/* 803F5074 003EADF4  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 803F5078 003EADF8  80 C3 00 1C */	lwz r6, 0x1c(r3)
/* 803F507C 003EADFC  80 A3 00 20 */	lwz r5, 0x20(r3)
/* 803F5080 003EAE00  7C 80 00 38 */	and r0, r4, r0
/* 803F5084 003EAE04  90 C3 00 24 */	stw r6, 0x24(r3)
/* 803F5088 003EAE08  7C 00 28 50 */	subf r0, r0, r5
/* 803F508C 003EAE0C  90 03 00 28 */	stw r0, 0x28(r3)
/* 803F5090 003EAE10  90 83 00 34 */	stw r4, 0x34(r3)
/* 803F5094 003EAE14  4E 80 00 20 */	blr
.endfn __prep_buffer
