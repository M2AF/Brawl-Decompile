.include "macros.inc"
.file "auto_03_80307238_text"

# 0x80307238..0x80307260 | size: 0x28
.text
.balign 4

# .text:0x0 | 0x80307238 | size: 0x28
.fn fn_80307238, global
/* 80307238 002FCFB8  80 03 00 00 */	lwz r0, 0x0(r3)
/* 8030723C 002FCFBC  38 83 00 10 */	addi r4, r3, 0x10
/* 80307240 002FCFC0  3C 60 2A AB */	lis r3, 0x2aab
/* 80307244 002FCFC4  7C 04 00 50 */	subf r0, r4, r0
/* 80307248 002FCFC8  38 63 AA AB */	subi r3, r3, 0x5555
/* 8030724C 002FCFCC  7C 03 00 96 */	mulhw r0, r3, r0
/* 80307250 002FCFD0  7C 00 1E 70 */	srawi r0, r0, 3
/* 80307254 002FCFD4  54 03 0F FE */	srwi r3, r0, 31
/* 80307258 002FCFD8  7C 60 1A 14 */	add r3, r0, r3
/* 8030725C 002FCFDC  4E 80 00 20 */	blr
.endfn fn_80307238
