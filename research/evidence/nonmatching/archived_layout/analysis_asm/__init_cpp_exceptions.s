.include "macros.inc"
.file "__init_cpp_exceptions.cpp"

# 0x803F1A08..0x803F1A78 | size: 0x70
.text
.balign 4

# .text:0x0 | 0x803F1A08 | size: 0x3C
.fn __init_cpp_exceptions, global
/* 803F1A08 003E7788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F1A0C 003E778C  7C 08 02 A6 */	mflr r0
/* 803F1A10 003E7790  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F1A14 003E7794  80 0D BB 28 */	lwz r0, fragmentID_8059FF48@sda21(r0)
/* 803F1A18 003E7798  2C 00 FF FE */	cmpwi r0, -0x2
/* 803F1A1C 003E779C  40 82 00 18 */	bne .L_803F1A34
/* 803F1A20 003E77A0  3C 60 80 01 */	lis r3, _eti_init_info@ha
/* 803F1A24 003E77A4  7C 44 13 78 */	mr r4, r2
/* 803F1A28 003E77A8  38 63 C8 2C */	addi r3, r3, _eti_init_info@l
/* 803F1A2C 003E77AC  48 00 00 4D */	bl __register_fragment
/* 803F1A30 003E77B0  90 6D BB 28 */	stw r3, fragmentID_8059FF48@sda21(r0)
.L_803F1A34:
/* 803F1A34 003E77B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F1A38 003E77B8  7C 08 03 A6 */	mtlr r0
/* 803F1A3C 003E77BC  38 21 00 10 */	addi r1, r1, 0x10
/* 803F1A40 003E77C0  4E 80 00 20 */	blr
.endfn __init_cpp_exceptions

# .text:0x3C | 0x803F1A44 | size: 0x34
.fn __fini_cpp_exceptions, global
/* 803F1A44 003E77C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F1A48 003E77C8  7C 08 02 A6 */	mflr r0
/* 803F1A4C 003E77CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F1A50 003E77D0  80 6D BB 28 */	lwz r3, fragmentID_8059FF48@sda21(r0)
/* 803F1A54 003E77D4  2C 03 FF FE */	cmpwi r3, -0x2
/* 803F1A58 003E77D8  41 82 00 10 */	beq .L_803F1A68
/* 803F1A5C 003E77DC  48 00 00 51 */	bl __unregister_fragment
/* 803F1A60 003E77E0  38 00 FF FE */	li r0, -0x2
/* 803F1A64 003E77E4  90 0D BB 28 */	stw r0, fragmentID_8059FF48@sda21(r0)
.L_803F1A68:
/* 803F1A68 003E77E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F1A6C 003E77EC  7C 08 03 A6 */	mtlr r0
/* 803F1A70 003E77F0  38 21 00 10 */	addi r1, r1, 0x10
/* 803F1A74 003E77F4  4E 80 00 20 */	blr
.endfn __fini_cpp_exceptions

# 0x804064E0..0x804064E4 | size: 0x4
.section .ctors, "a"
.balign 4

# .ctors:0x0 | 0x804064E0 | size: 0x4
.obj __init_cpp_exceptions_reference, global
	.4byte __init_cpp_exceptions
.endobj __init_cpp_exceptions_reference

# 0x804067E0..0x804067E8 | size: 0x8
.section .dtors, "a"
.balign 4

# .dtors:0x0 | 0x804067E0 | size: 0x4
.obj __destroy_global_chain_reference, global
	.4byte __destroy_global_chain
.endobj __destroy_global_chain_reference

# .dtors:0x4 | 0x804067E4 | size: 0x4
.obj __fini_cpp_exceptions_reference, global
	.4byte __fini_cpp_exceptions
.endobj __fini_cpp_exceptions_reference
