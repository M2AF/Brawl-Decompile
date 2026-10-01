.include "macros.inc"
.file "auto_03_8028D898_text"

# 0x8028D898..0x8028D8C0 | size: 0x28
.text
.balign 4

# .text:0x0 | 0x8028D898 | size: 0x8
.fn fn_8028D898, global
/* 8028D898 00283618  38 60 00 00 */	li r3, 0x0
/* 8028D89C 0028361C  4E 80 00 20 */	blr
.endfn fn_8028D898

# .text:0x8 | 0x8028D8A0 | size: 0x4
.fn fn_8028D8A0, global
/* 8028D8A0 00283620  4E 80 00 20 */	blr
.endfn fn_8028D8A0

# .text:0xC | 0x8028D8A4 | size: 0x8
.fn fn_8028D8A4, global
/* 8028D8A4 00283624  7C 63 22 14 */	add r3, r3, r4
/* 8028D8A8 00283628  4E 80 00 20 */	blr
.endfn fn_8028D8A4

# .text:0x14 | 0x8028D8AC | size: 0x8
.fn fn_8028D8AC, global
/* 8028D8AC 0028362C  7C 63 22 14 */	add r3, r3, r4
/* 8028D8B0 00283630  4E 80 00 20 */	blr
.endfn fn_8028D8AC

# .text:0x1C | 0x8028D8B4 | size: 0x8
.fn fn_8028D8B4, global
/* 8028D8B4 00283634  90 83 00 00 */	stw r4, 0x0(r3)
/* 8028D8B8 00283638  4E 80 00 20 */	blr
.endfn fn_8028D8B4

# .text:0x24 | 0x8028D8BC | size: 0x4
.fn fn_8028D8BC, global
/* 8028D8BC 0028363C  4E 80 00 20 */	blr
.endfn fn_8028D8BC
