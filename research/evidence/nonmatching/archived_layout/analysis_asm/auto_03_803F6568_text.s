.include "macros.inc"
.file "auto_03_803F6568_text"

# 0x803F6568..0x803F6578 | size: 0x10
.text
.balign 4

# .text:0x0 | 0x803F6568 | size: 0x10
.fn __stdio_atexit, global
/* 803F6568 003EC2E8  3C 60 80 3F */	lis r3, __close_all@ha
/* 803F656C 003EC2EC  38 63 35 5C */	addi r3, r3, __close_all@l
/* 803F6570 003EC2F0  90 6D CE D4 */	stw r3, __stdio_exit@sda21(r0)
/* 803F6574 003EC2F4  4E 80 00 20 */	blr
.endfn __stdio_atexit
