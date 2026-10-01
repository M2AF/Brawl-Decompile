.fn fn_43_70, global
stwu r1, -0x10(r1)
mflr r0
li r3, 0x25c
li r4, 0xf
stw r0, 0x14(r1)
bl __nw__FUlQ25Heaps8HeapType
cmpwi r3, 0x0
beq .L_00000094
bl fn_43_A4
.L_00000094:
lwz r0, 0x14(r1)
mtlr r0
addi r1, r1, 0x10
blr
.endfn fn_43_70
.fn fn_43_A4, global
stwu r1, -0x10(r1)
mflr r0
lis r4, lbl_43_data_0@ha
li r5, 0x1
stw r0, 0x14(r1)
addi r4, r4, lbl_43_data_0@l
stw r31, 0xc(r1)
mr r31, r3
bl __ct__7stMeleeFPCcQ26Stages11srStageKind
lis r3, lbl_43_rodata_0@ha
lis r4, lbl_43_data_1F4@ha
lfs f0, lbl_43_rodata_0@l(r3)
addi r4, r4, lbl_43_data_1F4@l
stw r4, 0x3c(r31)
mr r3, r31
stfs f0, 0x1d8(r31)
stfs f0, 0x1dc(r31)
stfs f0, 0x1e0(r31)
stfs f0, 0x1e4(r31)
stfs f0, 0x1e8(r31)
stfs f0, 0x1ec(r31)
stfs f0, 0x1f0(r31)
stfs f0, 0x1f4(r31)
stfs f0, 0x1f8(r31)
stfs f0, 0x1fc(r31)
stfs f0, 0x200(r31)
stfs f0, 0x204(r31)
stfs f0, 0x208(r31)
stfs f0, 0x20c(r31)
stfs f0, 0x210(r31)
stfs f0, 0x214(r31)
stfs f0, 0x218(r31)
stfs f0, 0x21c(r31)
stfs f0, 0x220(r31)
stfs f0, 0x224(r31)
stfs f0, 0x228(r31)
stfs f0, 0x22c(r31)
stfs f0, 0x230(r31)
stfs f0, 0x234(r31)
stfs f0, 0x238(r31)
stfs f0, 0x23c(r31)
stfs f0, 0x240(r31)
stfs f0, 0x244(r31)
stfs f0, 0x248(r31)
stfs f0, 0x24c(r31)
stfs f0, 0x250(r31)
stfs f0, 0x254(r31)
stfs f0, 0x258(r31)
lwz r31, 0xc(r1)
lwz r0, 0x14(r1)
mtlr r0
addi r1, r1, 0x10
blr
.endfn fn_43_A4
.fn fn_43_178, global
stwu r1, -0x10(r1)
mflr r0
cmpwi r3, 0x0
stw r0, 0x14(r1)
stw r31, 0xc(r1)
mr r31, r4
stw r30, 0x8(r1)
mr r30, r3
beq .L_000001C8
lis r4, lbl_43_data_1F4@ha
addi r4, r4, lbl_43_data_1F4@l
stw r4, 0x3c(r3)
bl releaseArchive__15stCommonGimmickFv
mr r3, r30
li r4, 0x0
bl __dt__7stMeleeFv
cmpwi r31, 0x0
ble .L_000001C8
mr r3, r30
bl __dl__FPv
.L_000001C8:
mr r3, r30
lwz r31, 0xc(r1)
lwz r30, 0x8(r1)
lwz r0, 0x14(r1)
mtlr r0
addi r1, r1, 0x10
blr
.endfn fn_43_178
.fn fn_43_1E4, global
li r3, 0x1
blr
.endfn fn_43_1E4
.fn fn_43_1EC, global
stwu r1, -0xf0(r1)
mflr r0
stw r0, 0xf4(r1)
addi r11, r1, 0xf0
bl _savegpr_27
lis r30, lbl_43_data_0@ha
lwz r4, 0x1a0(r3)
mr r27, r3
li r5, 0xa
addi r30, r30, lbl_43_data_0@l
bl testStageParamInit__5StageFP9gfArchivei
lwz r4, 0x1a0(r27)
mr r3, r27
li r5, 0x14
li r6, 0x1
bl testStageDataInit__5StageFP9gfArchiveii
lwz r12, 0x3c(r27)
mr r3, r27
lwz r12, 0xc4(r12)
mtctr r12
bctrl
addi r4, r30, 0x10
addi r5, r30, 0x14
li r3, 0x2
bl fn_43_B5C
mr r4, r3
mr r3, r27
bl addGround__5StageFP6Ground
addi r4, r30, 0x10
addi r5, r30, 0x28
li r3, 0x3
bl fn_43_B5C
mr r4, r3
mr r3, r27
bl addGround__5StageFP6Ground
addi r4, r30, 0x10
addi r5, r30, 0x3c
li r3, 0x4
bl fn_43_B5C
mr r4, r3
mr r3, r27
bl addGround__5StageFP6Ground
addi r4, r30, 0x10
addi r5, r30, 0x50
li r3, 0x5
bl fn_43_B5C
mr r4, r3
mr r3, r27
bl addGround__5StageFP6Ground
addi r4, r30, 0x10
addi r5, r30, 0x64
li r3, 0x6
bl fn_43_B5C
mr r4, r3
mr r3, r27
bl addGround__5StageFP6Ground
addi r4, r30, 0x10
addi r5, r30, 0x78
li r3, 0x1
bl fn_43_B5C
mr r4, r3
mr r3, r27
bl addGround__5StageFP6Ground
addi r4, r30, 0x10
addi r5, r30, 0x8c
li r3, 0x7
bl fn_43_B5C
mr r4, r3
mr r3, r27
bl addGround__5StageFP6Ground
addi r4, r30, 0x10
addi r5, r30, 0xa4
li r3, 0x9
bl fn_43_B5C
mr r4, r3
mr r3, r27
bl addGround__5StageFP6Ground
addi r4, r30, 0xb8
addi r5, r30, 0xd0
li r3, 0xa
bl fn_43_B5C
mr r4, r3
mr r3, r27
bl addGround__5StageFP6Ground
addi r4, r30, 0xe8
addi r5, r30, 0x100
li r3, 0xb
bl fn_43_B5C
mr r4, r3
mr r3, r27
bl addGround__5StageFP6Ground
addi r4, r30, 0x118
addi r5, r30, 0x130
li r3, 0xc
bl fn_43_B5C
mr r4, r3
mr r3, r27
bl addGround__5StageFP6Ground
addi r4, r30, 0x148
addi r5, r30, 0x160
li r3, 0xd
bl fn_43_B5C
mr r4, r3
mr r3, r27
bl addGround__5StageFP6Ground
addi r4, r30, 0x10
addi r5, r30, 0x178
li r3, 0x8
bl fn_43_B5C
mr r4, r3
mr r3, r27
bl addGround__5StageFP6Ground
mr r3, r27
li r28, 0x0
bl getGroundNum__5StageFv
mr r31, r3
b .L_00000418
.L_000003C0:
mr r3, r27
mr r4, r28
bl getGround__5StageFi
cmpwi r3, 0x0
mr r29, r3
beq .L_00000414
lwz r12, 0x3c(r3)
li r5, 0x0
lwz r4, 0x1a0(r27)
li r6, 0x0
lwz r12, 0x9c(r12)
mtctr r12
bctrl
lwz r12, 0x3c(r29)
mr r3, r29
lwz r4, 0x9c(r27)
lwz r12, 0xa4(r12)
mtctr r12
bctrl
mr r3, r29
bl setDontMoveGround__6GroundFv
.L_00000414:
addi r28, r28, 0x1
.L_00000418:
cmplw r28, r31
bne .L_000003C0
lwz r4, 0x1a0(r27)
mr r3, r27
li r5, 0x2
li r6, 0x0
bl createCollision__5StageFP9gfArchiveiP6Ground
addi r4, r30, 0x10
addi r5, r30, 0x18c
li r3, 0xc8
li r6, 0xf
bl create__8grMadeinFiPCcPCcQ25Heaps8HeapType
cmpwi r3, 0x0
mr r28, r3
beq .L_000005A0
lwz r12, 0x3c(r3)
li r5, 0x0
lwz r4, 0x1a0(r27)
li r6, 0x0
lwz r12, 0x9c(r12)
mtctr r12
bctrl
mr r3, r28
bl initializeEntity__8grMadeinFv
mr r3, r28
bl startEntity__8grMadeinFv
lwz r12, 0x3c(r28)
mr r3, r28
lwz r12, 0x124(r12)
mtctr r12
bctrl
addi r31, r27, 0x1d8
li r29, 0x0
.L_0000049C:
mr r5, r29
addi r3, r1, 0x90
addi r4, r30, 0x198
crclr cr1eq
bl sprintf
lwz r12, 0x3c(r28)
mr r3, r28
mr r4, r31
addi r6, r1, 0x90
lwz r12, 0xcc(r12)
li r5, 0x0
mtctr r12
bctrl
addi r29, r29, 0x1
addi r31, r31, 0xc
cmpwi r29, 0x5
blt .L_0000049C
addi r31, r27, 0x214
li r29, 0x0
.L_000004E8:
mr r5, r29
addi r3, r1, 0x50
addi r4, r30, 0x1b0
crclr cr1eq
bl sprintf
lwz r12, 0x3c(r28)
mr r3, r28
mr r4, r31
addi r6, r1, 0x50
lwz r12, 0xcc(r12)
li r5, 0x0
mtctr r12
bctrl
addi r29, r29, 0x1
addi r31, r31, 0xc
cmpwi r29, 0x4
blt .L_000004E8
addi r31, r27, 0x244
li r29, 0x0
.L_00000534:
mr r5, r29
addi r3, r1, 0x10
addi r4, r30, 0x1c8
crclr cr1eq
bl sprintf
lwz r12, 0x3c(r28)
mr r3, r28
mr r4, r31
addi r6, r1, 0x10
lwz r12, 0xcc(r12)
li r5, 0x0
mtctr r12
bctrl
addi r29, r29, 0x1
addi r31, r31, 0xc
cmpwi r29, 0x2
blt .L_00000534
mr r3, r28
bl endEntity__8grMadeinFv
cmpwi r28, 0x0
beq .L_000005A0
lwz r12, 0x3c(r28)
mr r3, r28
li r4, 0x1
lwz r12, 0x60(r12)
mtctr r12
bctrl
.L_000005A0:
lis r4, 0x1
lwz r3, 0x1a0(r27)
subi r0, r4, 0x2
li r5, 0x64
li r4, 0x2
clrlwi r6, r0, 16
bl getData__9gfArchiveF11ARCNodeTypeiUs
cmpwi r3, 0x0
beq .L_000005D8
stw r3, 0x8(r1)
mr r3, r27
addi r4, r1, 0x8
bl createStagePositions__5StageFPQ34nw4r3g3d7ResFile
b .L_000005E0
.L_000005D8:
mr r3, r27
bl createStagePositions__5StageFv
.L_000005E0:
lwz r12, 0x3c(r27)
mr r3, r27
lwz r12, 0x1f4(r12)
mtctr r12
bctrl
lis r4, 0x1
lwz r3, 0x1a0(r27)
subi r0, r4, 0x2
li r5, 0x0
li r4, 0x5
clrlwi r6, r0, 16
bl getData__9gfArchiveF11ARCNodeTypeiUs
mr r4, r3
mr r3, r27
li r5, 0x0
bl registScnAnim__5StageFPQ34nw4r3g3d11ResFileDataUl
lwz r4, 0x1a0(r27)
mr r3, r27
li r5, 0x1e
bl loadStageAttrParam__5StageFP9gfArchivei
mr r3, r27
li r4, 0x1
li r5, 0x0
bl initPosPokeTrainer__5StageFii
lwz r12, 0x3c(r27)
mr r3, r27
addi r6, r30, 0x1e4
li r5, 0x65
lwz r12, 0x68(r12)
li r8, 0x0
lwz r4, 0x1a0(r27)
lwz r7, 0xbc(r27)
mtctr r12
bctrl
addi r11, r1, 0xf0
bl _restgpr_27
lwz r0, 0xf4(r1)
mtlr r0
addi r1, r1, 0xf0
blr
.endfn fn_43_1EC
.fn fn_43_680, global
stw r4, 0x60(r3)
blr
.endfn fn_43_680
.fn fn_43_688, global
stwu r1, -0x40(r1)
mflr r0
stw r0, 0x44(r1)
stfd f31, 0x30(r1)
psq_st f31, 0x38(r1), 0, qr0
stw r31, 0x2c(r1)
lis r31, lbl_43_rodata_0@ha
addi r31, r31, lbl_43_rodata_0@l
stw r30, 0x28(r1)
stw r29, 0x24(r1)
mr r29, r3
lwz r30, 0x98(r3)
cmpwi r30, 0x0
beq .L_000007AC
lis r3, g_gfSceneRoot@ha
lfs f31, 0x0(r31)
lwz r3, g_gfSceneRoot@l(r3)
lwz r3, 0x54(r3)
cmpwi r3, 0x0
beq .L_000006EC
lwz r12, 0x0(r3)
lwz r12, 0x20(r12)
mtctr r12
bctrl
fmr f31, f1
.L_000006EC:
lfs f1, 0x0(r31)
fcmpo cr0, f31, f1
cror eq, gt, eq
bne .L_00000798
lfs f0, 0x4(r31)
fcmpo cr0, f31, f0
cror eq, lt, eq
bne .L_00000798
fdivs f4, f31, f0
lfs f2, 0x8(r31)
lfs f0, 0xc(r31)
fsubs f3, f4, f1
fsel f3, f3, f4, f1
fsubs f1, f3, f2
fsel f1, f1, f2, f3
fmuls f0, f0, f1
fctiwz f0, f0
stfd f0, 0x10(r1)
lwz r0, 0x14(r1)
sth r0, 0x8(r1)
psq_l f1, 0x8(r1), 1, qr3
lfs f0, 0x10(r31)
fmuls f1, f0, f1
bl SinFIdx__Q24nw4r4mathFf
lfs f1, 0x4(r31)
li r0, 0x1
lfs f0, 0x24(r31)
fdivs f5, f31, f1
lfs f3, 0x0(r31)
stfs f0, 0x18(r30)
lfs f4, 0x8(r31)
lfs f2, 0x20(r31)
lfs f1, 0x1c(r31)
fsubs f0, f5, f3
fsel f5, f0, f5, f3
fsubs f0, f5, f4
fsel f0, f0, f4, f5
fmuls f0, f2, f0
fadds f0, f1, f0
stfs f0, 0x1c(r30)
stfs f3, 0x20(r30)
stb r0, 0xe8(r29)
b .L_000007AC
.L_00000798:
lfs f1, 0x14(r31)
lfs f0, 0x0(r31)
stfs f1, 0x18(r30)
stfs f0, 0x1c(r30)
stfs f0, 0x20(r30)
.L_000007AC:
psq_l f31, 0x38(r1), 0, qr0
lwz r0, 0x44(r1)
lfd f31, 0x30(r1)
lwz r31, 0x2c(r1)
lwz r30, 0x28(r1)
lwz r29, 0x24(r1)
mtlr r0
addi r1, r1, 0x40
blr
.endfn fn_43_688
.fn fn_43_7D0, global
lis r6, g_GameGlobal@ha
lwz r6, g_GameGlobal@l(r6)
lwz r6, 0x8(r6)
lbz r0, 0x8(r6)
extrwi r0, r0, 6, 24
cmplwi r0, 0xa
beq .L_000007F4
cmplwi r0, 0x10
bne .L_000008AC
.L_000007F4:
cmplwi r5, 0x14
blt .L_0000083C
lis r6, 0xcccd
subi r5, r5, 0x14
subi r0, r6, 0x3333
mulhwu r0, r0, r5
srwi r0, r0, 2
mulli r0, r0, 0x5
subf r0, r0, r5
mulli r0, r0, 0xc
add r3, r3, r0
lfs f0, 0x1d8(r3)
stfs f0, 0x0(r4)
lfs f0, 0x1dc(r3)
stfs f0, 0x4(r4)
lfs f0, 0x1e0(r3)
stfs f0, 0x8(r4)
blr
.L_0000083C:
cmplwi r5, 0xa
blt .L_00000884
lis r6, 0xcccd
subi r5, r5, 0xa
subi r0, r6, 0x3333
mulhwu r0, r0, r5
srwi r0, r0, 2
mulli r0, r0, 0x5
subf r0, r0, r5
mulli r0, r0, 0xc
add r3, r3, r0
lfs f0, 0x214(r3)
stfs f0, 0x0(r4)
lfs f0, 0x218(r3)
stfs f0, 0x4(r4)
lfs f0, 0x21c(r3)
stfs f0, 0x8(r4)
blr
.L_00000884:
clrlwi r0, r5, 31
mulli r0, r0, 0xc
add r3, r3, r0
lfs f0, 0x244(r3)
stfs f0, 0x0(r4)
lfs f0, 0x248(r3)
stfs f0, 0x4(r4)
lfs f0, 0x24c(r3)
stfs f0, 0x8(r4)
blr
.L_000008AC:
b getFighterStartPos__7stMeleeFP5Vec3fi
.endfn fn_43_7D0
.fn fn_43_8B0, global
blr
.endfn fn_43_8B0
.fn fn_43_8B4, global
blr
.endfn fn_43_8B4
.fn fn_43_8B8, global
li r3, 0x0
blr
.endfn fn_43_8B8
.fn fn_43_8C0, global
li r3, 0x0
blr
.endfn fn_43_8C0
.fn fn_43_8C8, global
li r3, 0x0
blr
.endfn fn_43_8C8
.fn fn_43_8D0, global
li r3, 0x0
blr
.endfn fn_43_8D0
.fn fn_43_8D8, global
li r3, 0x1
blr
.endfn fn_43_8D8
.fn fn_43_8E0, global
blr
.endfn fn_43_8E0
.fn fn_43_8E4, global
lfs f1, 0x190(r3)
blr
.endfn fn_43_8E4
.fn fn_43_8EC, global
stfs f1, 0x190(r3)
blr
.endfn fn_43_8EC
.fn fn_43_8F4, global
li r3, 0x0
blr
.endfn fn_43_8F4
.fn fn_43_8FC, global
lis r3, lbl_43_rodata_0@ha
lfs f1, lbl_43_rodata_0@l(r3)
blr
.endfn fn_43_8FC
.fn fn_43_908, global
lis r3, lbl_43_rodata_8@ha
lfs f1, lbl_43_rodata_8@l(r3)
blr
.endfn fn_43_908
.fn fn_43_914, global
stb r4, 0x184(r3)
stw r5, 0x188(r3)
stfs f1, 0x18c(r3)
blr
.endfn fn_43_914
.fn fn_43_924, global
lwz r0, 0x188(r3)
stw r0, 0x0(r4)
lfs f0, 0x18c(r3)
stfs f0, 0x0(r5)
blr
.endfn fn_43_924
.fn fn_43_938, global
lbz r3, 0x184(r3)
blr
.endfn fn_43_938
.fn fn_43_940, global
li r3, 0x0
blr
.endfn fn_43_940
.fn fn_43_948, global
li r3, 0x0
blr
.endfn fn_43_948
.fn fn_43_950, global
li r3, 0x0
blr
.endfn fn_43_950
.fn fn_43_958, global
li r3, 0x0
blr
.endfn fn_43_958
.fn fn_43_960, global
blr
.endfn fn_43_960
.fn fn_43_964, global
lis r5, lbl_43_rodata_0@ha
li r3, 0x0
lfs f0, lbl_43_rodata_0@l(r5)
stfs f0, 0x0(r4)
stfs f0, 0x4(r4)
stfs f0, 0x8(r4)
blr
.endfn fn_43_964
.fn fn_43_980, global
li r3, 0x14
blr
.endfn fn_43_980
.fn fn_43_988, global
addi r3, r3, 0x68
blr
.endfn fn_43_988
.fn fn_43_990, global
li r3, 0x0
blr
.endfn fn_43_990
.fn fn_43_998, global
li r3, 0x0
blr
.endfn fn_43_998
.fn fn_43_9A0, global
lis r3, lbl_43_rodata_0@ha
lfs f1, lbl_43_rodata_0@l(r3)
blr
.endfn fn_43_9A0
.fn fn_43_9AC, global
blr
.endfn fn_43_9AC
.fn fn_43_9B0, global
li r3, 0x0
blr
.endfn fn_43_9B0
.fn fn_43_9B8, global
li r3, 0x1
blr
.endfn fn_43_9B8
.fn fn_43_9C0, global
lwz r3, 0x1c8(r3)
blr
.endfn fn_43_9C0
.fn fn_43_9C8, global
li r3, 0x1
blr
.endfn fn_43_9C8
.fn fn_43_A34, global
stwu r1, -0x10(r1)
mflr r0
cmpwi r3, 0x0
stw r0, 0x14(r1)
stw r31, 0xc(r1)
mr r31, r4
stw r30, 0x8(r1)
mr r30, r3
beq .L_00000A8C
lis r6, lbl_43_data_4E0@ha
li r4, 0x1
addi r6, r6, lbl_43_data_4E0@l
li r5, 0x0
stw r6, 0x0(r3)
bl setClassInfo__11stClassInfoFQ26Stages11srStageKindP11stClassInfo
mr r3, r30
li r4, 0x0
bl __dt__11stClassInfoFv
cmpwi r31, 0x0
ble .L_00000A8C
mr r3, r30
bl __dl__FPv
.L_00000A8C:
mr r3, r30
lwz r31, 0xc(r1)
lwz r30, 0x8(r1)
lwz r0, 0x14(r1)
mtlr r0
addi r1, r1, 0x10
blr
.endfn fn_43_A34
.fn fn_43_AA8, global
stwu r1, -0x10(r1)
mflr r0
li r3, 0x25c
li r4, 0xf
stw r0, 0x14(r1)
bl __nw__FUlQ25Heaps8HeapType
cmpwi r3, 0x0
beq .L_00000ACC
bl fn_43_A4
.L_00000ACC:
lwz r0, 0x14(r1)
mtlr r0
addi r1, r1, 0x10
blr
.endfn fn_43_AA8
.fn fn_43_ADC, global
blr
.endfn fn_43_ADC
.fn fn_43_AE0, global
li r3, 0x0
blr
.endfn fn_43_AE0
.fn fn_43_AE8, global
li r3, 0x0
blr
.endfn fn_43_AE8
.fn fn_43_AF0, global
blr
.endfn fn_43_AF0
.fn fn_43_AF4, global
blr
.endfn fn_43_AF4
.fn fn_43_AF8, global
lbz r0, 0x6c(r3)
rlwinm r0, r0, 0, 29, 27
stb r0, 0x6c(r3)
blr
.endfn fn_43_AF8
.fn fn_43_B08, global
lbz r0, 0x6c(r3)
ori r0, r0, 0x8
stb r0, 0x6c(r3)
blr
.endfn fn_43_B08
.fn fn_43_B18, global
lbz r0, 0x6c(r3)
extrwi r3, r0, 1, 28
blr
.endfn fn_43_B18
.fn fn_43_B24, global
lha r3, 0x5c(r3)
blr
.endfn fn_43_B24
.fn fn_43_B2C, global
sth r4, 0x5c(r3)
blr
.endfn fn_43_B2C
.fn fn_43_B34, global
blr
.endfn fn_43_B34
.fn fn_43_B38, global
lwz r3, 0x60(r3)
blr
.endfn fn_43_B38
.fn fn_43_B40, global
lwz r0, 0x40(r3)
cmpwi r0, 0x0
beq .L_00000B54
addi r3, r3, 0x40
b GetResMdlNumEntries__Q34nw4r3g3d7ResFileCFv
.L_00000B54:
li r3, 0x0
blr
.endfn fn_43_B40
.fn fn_43_B5C, global
stwu r1, -0x20(r1)
mflr r0
stw r0, 0x24(r1)
stw r31, 0x1c(r1)
stw r30, 0x18(r1)
mr r30, r5
stw r29, 0x14(r1)
mr r29, r4
li r4, 0xf
stw r28, 0x10(r1)
mr r28, r3
li r3, 0x154
bl __nw__FUlQ25Heaps8HeapType
cmpwi r3, 0x0
mr r31, r3
beq .L_00000BD8
mr r4, r30
bl __ct__10grYakumonoFPCc
lis r4, lbl_43_data_578@ha
mr r3, r31
addi r4, r4, lbl_43_data_578@l
stw r4, 0x3c(r31)
lwz r12, 0x3c(r31)
lwz r12, 0x70(r12)
mtctr r12
bctrl
lbz r3, 0x6d(r31)
li r0, 0x0
ori r3, r3, 0x20
stb r3, 0x6d(r31)
stw r0, 0x150(r31)
.L_00000BD8:
cmpwi r31, 0x0
beq .L_00000C10
lwz r12, 0x3c(r31)
mr r3, r31
mr r4, r28
lwz r12, 0xb0(r12)
mtctr r12
bctrl
lwz r12, 0x3c(r31)
mr r3, r31
mr r4, r29
lwz r12, 0x140(r12)
mtctr r12
bctrl
.L_00000C10:
mr r3, r31
lwz r31, 0x1c(r1)
lwz r30, 0x18(r1)
lwz r29, 0x14(r1)
lwz r28, 0x10(r1)
lwz r0, 0x24(r1)
mtlr r0
addi r1, r1, 0x20
blr
.endfn fn_43_B5C
.fn fn_43_C34, global
stwu r1, -0x10(r1)
mflr r0
cmpwi r3, 0x0
stw r0, 0x14(r1)
stw r31, 0xc(r1)
mr r31, r4
stw r30, 0x8(r1)
mr r30, r3
beq .L_00000C70
li r4, 0x0
bl __dt__10grYakumonoFv
cmpwi r31, 0x0
ble .L_00000C70
mr r3, r30
bl __dl__FPv
.L_00000C70:
mr r3, r30
lwz r31, 0xc(r1)
lwz r30, 0x8(r1)
lwz r0, 0x14(r1)
mtlr r0
addi r1, r1, 0x10
blr
.endfn fn_43_C34
.fn fn_43_C8C, global
stwu r1, -0xa0(r1)
mflr r0
stw r0, 0xa4(r1)
stfd f31, 0x90(r1)
psq_st f31, 0x98(r1), 0, qr0
addi r11, r1, 0x90
bl _savegpr_27
lbz r0, 0xc8(r3)
lis r31, lbl_43_rodata_28@ha
mr r30, r3
cmpwi r0, 0x0
addi r31, r31, lbl_43_rodata_28@l
beq .L_00000F4C
lwz r0, 0x150(r3)
cmpwi r0, 0x0
bne .L_00000D48
li r0, 0x0
stw r0, 0x24(r1)
lwz r3, 0x44(r3)
lwz r3, 0x0(r3)
cmpwi r3, 0x0
beq .L_00000F4C
lwz r0, 0xe8(r3)
cmpwi r0, 0x0
stw r0, 0x24(r1)
beq .L_00000F4C
addi r3, r1, 0x24
li r27, 0x0
bl fn_8018F394
mr r28, r3
lis r29, lbl_43_data_568@ha
b .L_00000D30
.L_00000D0C:
addi r3, r1, 0x24
addi r4, r29, lbl_43_data_568@l
bl GetResMat__Q34nw4r3g3d6ResMdlCFPCc
cmpwi r3, 0x0
beq .L_00000D2C
lwz r0, 0xc(r3)
stw r0, 0x150(r30)
b .L_00000D38
.L_00000D2C:
addi r27, r27, 0x1
.L_00000D30:
cmplw r27, r28
bne .L_00000D0C
.L_00000D38:
cmplw r27, r28
bne .L_00000D48
li r0, 0xff
stw r0, 0x150(r30)
.L_00000D48:
lwz r0, 0x150(r30)
cmplwi r0, 0xff
beq .L_00000F4C
lis r3, g_gfSceneRoot@ha
lfs f1, 0x0(r31)
lwz r3, g_gfSceneRoot@l(r3)
lwz r3, 0x54(r3)
cmpwi r3, 0x0
beq .L_00000D7C
lwz r12, 0x0(r3)
lwz r12, 0x20(r12)
mtctr r12
bctrl
.L_00000D7C:
lfs f0, 0x4(r31)
fcmpo cr0, f1, f0
cror eq, gt, eq
bne .L_00000DC4
lfs f0, 0x8(r31)
fcmpo cr0, f1, f0
cror eq, lt, eq
bne .L_00000DC4
fsubs f1, f0, f1
lfs f0, 0xc(r31)
lfs f2, 0x0(r31)
lfs f3, 0x10(r31)
fdivs f1, f1, f0
fsubs f0, f1, f2
fsel f1, f0, f1, f2
fsubs f0, f1, f3
fsel f31, f0, f3, f1
b .L_00000E2C
.L_00000DC4:
lfs f0, 0xc(r31)
fcmpo cr0, f1, f0
cror eq, gt, eq
bne .L_00000DEC
lfs f0, 0x4(r31)
fcmpo cr0, f1, f0
cror eq, lt, eq
bne .L_00000DEC
lfs f31, 0x10(r31)
b .L_00000E2C
.L_00000DEC:
lfs f2, 0x0(r31)
fcmpo cr0, f1, f2
cror eq, gt, eq
bne .L_00000E28
lfs f0, 0xc(r31)
fcmpo cr0, f1, f0
cror eq, lt, eq
bne .L_00000E28
fdivs f3, f1, f0
lfs f0, 0x10(r31)
fsubs f1, f3, f2
fsel f2, f1, f3, f2
fsubs f1, f2, f0
fsel f31, f1, f0, f2
b .L_00000E2C
.L_00000E28:
lfs f31, 0x0(r31)
.L_00000E2C:
li r29, 0x0
li r0, -0x1
stw r29, 0x20(r1)
stw r29, 0x1c(r1)
stw r29, 0x18(r1)
stw r29, 0x14(r1)
stw r0, 0x10(r1)
stw r0, 0xc(r1)
lwz r3, 0x44(r30)
lwz r27, 0x0(r3)
cmpwi r27, 0x0
beq .L_00000F4C
lwz r0, 0xe8(r27)
cmpwi r0, 0x0
stw r0, 0x20(r1)
beq .L_00000F4C
lwz r4, 0x150(r30)
addi r3, r1, 0x20
bl fn_8018F340
cmpwi r3, 0x0
stw r3, 0x1c(r1)
beq .L_00000F4C
lwz r5, 0xc(r3)
mr r4, r27
addi r3, r1, 0x28
bl __ct__Q44nw4r3g3d6ScnMdl15CopiedMatAccessFPQ34nw4r3g3d6ScnMdlUl
addi r3, r1, 0x28
li r4, 0x0
bl GetResMatTevColor__Q44nw4r3g3d6ScnMdl15CopiedMatAccessFb
cmpwi r3, 0x0
stw r3, 0x18(r1)
beq .L_00000F4C
lwz r3, 0x1c(r1)
lwz r0, 0x38(r3)
cmpwi r0, 0x0
beq .L_00000EC0
add r29, r3, r0
.L_00000EC0:
addic. r0, r29, 0x20
stw r0, 0x14(r1)
beq .L_00000F4C
addi r3, r1, 0x14
addi r5, r1, 0xc
li r4, 0x1
bl fn_80191314
addi r3, r1, 0x18
addi r5, r1, 0x10
li r4, 0x1
bl fn_80191314
lbz r4, 0xf(r1)
lis r0, 0x4330
stw r0, 0x60(r1)
addi r3, r1, 0x18
lfd f1, 0x18(r31)
addi r5, r1, 0x8
stw r4, 0x64(r1)
li r4, 0x1
lfd f0, 0x60(r1)
fsubs f0, f0, f1
fmuls f0, f0, f31
fctiwz f0, f0
stfd f0, 0x68(r1)
lwz r0, 0x6c(r1)
stb r0, 0x13(r1)
lwz r0, 0x10(r1)
stw r0, 0x8(r1)
bl GXSetTevColor__Q34nw4r3g3d14ResMatTevColorFUl8_GXColor
addi r3, r1, 0x18
li r4, 0x0
bl fn_80190A3C
addi r3, r1, 0x1c
li r4, 0x0
bl DCStore__Q34nw4r3g3d6ResMatFb
.L_00000F4C:
psq_l f31, 0x98(r1), 0, qr0
addi r11, r1, 0x90
lfd f31, 0x90(r1)
bl _restgpr_27
lwz r0, 0xa4(r1)
mtlr r0
addi r1, r1, 0xa0
blr
.endfn fn_43_C8C
.fn fn_43_F6C, global
lbz r3, 0xe1(r3)
blr
.endfn fn_43_F6C
.fn fn_43_F74, global
lwz r3, 0xbc(r3)
blr
.endfn fn_43_F74
.fn fn_43_F7C, global
stw r4, 0xbc(r3)
blr
.endfn fn_43_F7C
.fn fn_43_9D0, global
stwu r1, -0x10(r1)
mflr r0
stw r0, 0x14(r1)
stw r31, 0xc(r1)
lis r31, lbl_43_bss_14@ha
addi r3, r31, lbl_43_bss_14@l
bl __ct__11stClassInfoFv
lis r5, lbl_43_data_4E0@ha
addi r3, r31, lbl_43_bss_14@l
addi r5, r5, lbl_43_data_4E0@l
li r4, 0x1
stw r5, lbl_43_bss_14@l(r31)
mr r5, r3
bl setClassInfo__11stClassInfoFQ26Stages11srStageKindP11stClassInfo
lis r4, fn_43_A34@ha
lis r5, lbl_43_bss_8@ha
addi r3, r31, lbl_43_bss_14@l
addi r4, r4, fn_43_A34@l
addi r5, r5, lbl_43_bss_8@l
bl __register_global_object
lwz r0, 0x14(r1)
lwz r31, 0xc(r1)
mtlr r0
addi r1, r1, 0x10
blr
.endfn fn_43_9D0
.section .ctors, "a"
	.4byte fn_43_9D0
