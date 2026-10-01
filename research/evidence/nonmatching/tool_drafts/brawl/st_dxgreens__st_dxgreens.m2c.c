// m2c draft (machine output, NOT source): rewrite by hand against the headers.
typedef struct CameraController {
    /* 0x000 */ char pad0[0x1D8];
    /* 0x1D8 */ f32 unk1D8;                         /* inferred */
    /* 0x1DC */ f32 unk1DC;                         /* inferred */
    /* 0x1E0 */ f32 unk1E0;                         /* inferred */
    /* 0x1E4 */ f32 unk1E4;                         /* inferred */
    /* 0x1E8 */ f32 unk1E8;                         /* inferred */
    /* 0x1EC */ f32 unk1EC;                         /* inferred */
} CameraController;                                 /* size >= 0x1F0 */

typedef struct Ground {
    /* 0x00 */ char pad0[0x3C];
    /* 0x3C */ void *unk3C;                         /* inferred */
} Ground;                                           /* size >= 0x40 */

typedef struct Stage {
    /* 0x000 */ char pad0[0x3C];
    /* 0x03C */ void *unk3C;                        /* inferred */
    /* 0x040 */ char pad40[0x5C];                   /* maybe part of unk3C[0x18]? */
    /* 0x09C */ void *unk9C;                        /* inferred */
    /* 0x0A0 */ char padA0[0x1C];                   /* maybe part of unk9C[8]? */
    /* 0x0BC */ s32 unkBC;                          /* inferred */
    /* 0x0C0 */ char padC0[0xE0];                   /* maybe part of unkBC[0x39]? */
    /* 0x1A0 */ gfArchive *unk1A0;                  /* inferred */
    /* 0x1A4 */ char pad1A4[0x34];                  /* maybe part of unk1A0[0xE]? */
    /* 0x1D8 */ ? unk1D8;                           /* inferred */
    /* 0x1D8 */ char pad1D8[0x1C];
    /* 0x1F4 */ ? unk1F4;                           /* inferred */
    /* 0x1F4 */ char pad1F4[0x348];
    /* 0x53C */ ? unk53C;                           /* inferred */
    /* 0x53C */ char pad53C[0x1B4];
    /* 0x6F0 */ s32 unk6F0;                         /* inferred */
    /* 0x6F4 */ s32 unk6F4;                         /* inferred */
} Stage;                                            /* size >= 0x6F8 */

typedef struct grGimmickWindData {
    /* 0x00 */ s32 unk0;                            /* inferred */
    /* 0x04 */ s32 unk4;                            /* inferred */
    /* 0x08 */ s8 unk8;                             /* inferred */
    /* 0x09 */ char pad9[0xF];                      /* maybe part of unk8[0x10]? */
    /* 0x18 */ f32 unk18;                           /* inferred */
    /* 0x1C */ f32 unk1C;                           /* inferred */
    /* 0x20 */ f32 unk20;                           /* inferred */
    /* 0x24 */ f32 unk24;                           /* inferred */
    /* 0x28 */ f32 unk28;                           /* inferred */
    /* 0x2C */ f32 unk2C;                           /* inferred */
    /* 0x30 */ f32 unk30;                           /* inferred */
    /* 0x34 */ f32 unk34;                           /* inferred */
    /* 0x38 */ f32 unk38;                           /* inferred */
} grGimmickWindData;                                /* size >= 0x3C */

typedef struct stClassInfo {
    /* 0x0 */ ? *unk0;                              /* inferred */
} stClassInfo;                                      /* size >= 0x4 */

typedef struct stCommonGimmick {
    /* 0x000 */ char pad0[0x3C];
    /* 0x03C */ ? *unk3C;                           /* inferred */
    /* 0x040 */ char pad40[0x664];                  /* maybe part of unk3C[0x19A]? */
    /* 0x6A4 */ ? unk6A4;                           /* inferred */
    /* 0x6A4 */ char pad6A4[0x50];
    /* 0x6F4 */ void *unk6F4;                       /* inferred */
    /* 0x6F8 */ gfArchive unk6F8;                   /* inferred */
    /* 0x6F8 */ char pad6F8[0x80];
    /* 0x778 */ gfArchive unk778;                   /* inferred */
    /* 0x778 */ char pad778[1];
} stCommonGimmick;                                  /* size >= 0x779 */

typedef struct stMelee {
    /* 0x000 */ char pad0[0x3C];
    /* 0x03C */ ? *unk3C;                           /* inferred */
    /* 0x040 */ char pad40[0x198];                  /* maybe part of unk3C[0x67]? */
    /* 0x1D8 */ ? unk1D8;                           /* inferred */
    /* 0x1D8 */ char pad1D8[0x18];
    /* 0x1F0 */ f32 unk1F0;                         /* inferred */
    /* 0x1F4 */ ? unk1F4;                           /* inferred */
    /* 0x1F4 */ char pad1F4[0x348];
    /* 0x53C */ ? unk53C;                           /* inferred */
    /* 0x53C */ char pad53C[0x168];
    /* 0x6A4 */ ? unk6A4;                           /* inferred */
    /* 0x6A4 */ char pad6A4[0x48];
    /* 0x6EC */ s8 unk6EC;                          /* inferred */
    /* 0x6ED */ char pad6ED[3];                     /* maybe part of unk6EC[4]? */
    /* 0x6F0 */ s32 unk6F0;                         /* inferred */
    /* 0x6F4 */ s32 unk6F4;                         /* inferred */
    /* 0x6F8 */ gfArchive unk6F8;                   /* inferred */
    /* 0x6F8 */ char pad6F8[0x80];
    /* 0x778 */ gfArchive unk778;                   /* inferred */
    /* 0x778 */ char pad778[0x80];
    /* 0x7F8 */ s32 unk7F8;                         /* inferred */
    /* 0x7FC */ s32 unk7FC;                         /* inferred */
    /* 0x800 */ s32 unk800;                         /* inferred */
} stMelee;                                          /* size >= 0x804 */

? Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode(nw4r::ut::detail::LinkListImpl *this, nw4r::ut::LinkListNode *arg0); /* extern */
? Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode(nw4r::ut::detail::LinkListImpl *this, nw4r::ut::detail::LinkListImpl::Iterator arg0, nw4r::ut::LinkListNode *arg1); /* extern */
? __construct_array(? *, void (*)(void *), void *(*)(void *, s32), ?, ?); /* extern */
void *__ct__11stClassInfoFv(stClassInfo *this);     /* extern */
void *__ct__7stMeleeFPCcQ26Stages11srStageKind(stMelee *this, s8 *arg0, Stages::srStageKind arg1); /* extern */
void *__ct__9gfArchiveFv(gfArchive *this);          /* extern */
? __destroy_arr(? *, void *(*)(void *, s32), ?, ?); /* extern */
? __dl__FPv(void *arg0);                            /* extern */
void *__dt__11stClassInfoFv(stClassInfo *this, s16 destroyFlag); /* extern */
void *__dt__7stMeleeFv(stMelee *this, s16 destroyFlag); /* extern */
void *__dt__9gfArchiveFv(gfArchive *this, s16 destroyFlag); /* extern */
grGimmickWindData *__nw__FUlQ25Heaps8HeapType(u32 arg0, Heaps::HeapType arg1); /* extern */
? __register_global_object(stClassInfo *, stClassInfo *(*)(stClassInfo *, s32), ? *); /* extern */
? addGround__5StageFP6Ground(Stage *this, Ground *arg0); /* extern */
? createCollision__5StageFP9gfArchiveiP6Ground(Stage *this, gfArchive *arg0, s32 arg1, Ground *arg2); /* extern */
? createStagePositions__5StageFPQ34nw4r3g3d7ResFile(Stage *this, nw4r::g3d::ResFile *arg0); /* extern */
? createStagePositions__5StageFv(Stage *this);      /* extern */
stTrigger *createTrigger__12stTriggerMngFQ27Gimmick8AreaKindi(stTriggerMng *this, Gimmick::AreaKind arg0, s32 arg1); /* extern */
grCollision *fn_27_222878(void *, ?);               /* extern */
Ground *fn_79_1998(?, s8 *, s8 *);                  /* extern */
Ground *fn_79_1B98(?, ? *, ? *);                    /* extern */
Ground *fn_79_A6B0(?, ? *, ? *, void *, s32);       /* extern */
Ground *fn_79_ACD0(?, ? *, ? *);                    /* extern */
? fn_8015C238(?);                                   /* extern */
? fn_8015C2BC(void *, void **);                     /* extern */
void *getData__9gfArchiveF11ARCNodeTypeiPiUs(gfArchive *this, ARCNodeType arg0, s32 arg1, s32 *arg2, u16 arg3); /* extern */
nw4r::g3d::ResFileData *getData__9gfArchiveF11ARCNodeTypeiUs(gfArchive *this, ARCNodeType arg0, s32 arg1, u16 arg2); /* extern */
void *getInstance__16CameraControllerFv(CameraController *this); /* extern */
void *getJoint__11grCollisionFUs(grCollision *this, u16 arg0); /* extern */
? initPosPokeTrainer__5StageFii(Stage *this, s32 arg0, s32 arg1); /* extern */
? loadStageAttrParam__5StageFP9gfArchivei(Stage *this, gfArchive *arg0, s32 arg1); /* extern */
? memset(? *, ?, ?);                                /* extern */
f32 randf__Fv();                                    /* extern */
? registScnAnim__5StageFPQ34nw4r3g3d11ResFileDataUl(Stage *this, nw4r::g3d::ResFileData *arg0, u32 arg1); /* extern */
? releaseArchive__15stCommonGimmickFv(stCommonGimmick *this); /* extern */
? setAreaSleep__9stTriggerFb(stTrigger *this, s32 arg0); /* extern */
? setClassInfo__11stClassInfoFQ26Stages11srStageKindP11stClassInfo(stClassInfo *this, Stages::srStageKind arg0, stClassInfo *arg1); /* extern */
? setFileImage__9gfArchiveFPviQ25Heaps8HeapType(gfArchive *this, void *arg0, s32 arg1, Heaps::HeapType arg2); /* extern */
? setWindTrigger__9stTriggerFP17grGimmickWindData(stTrigger *this, grGimmickWindData *arg0); /* extern */
? testStageDataInit__5StageFP9gfArchiveii(Stage *this, gfArchive *arg0, s32 arg1, s32 arg2); /* extern */
? testStageParamInit__5StageFP9gfArchivei(Stage *this, gfArchive *arg0, s32 arg1); /* extern */
void fn_79_178(void *arg0);                         /* static */
stClassInfo *fn_79_18EC(stClassInfo *arg0, s32 arg1); /* static */
void *fn_79_198(void *arg0, s32 arg1);              /* static */
stMelee *fn_79_A4(stMelee *arg0);                   /* static */
extern stTriggerMng *g_stTriggerMng;
static s8 lbl_79_data_0[0xB] = "stDxGreens";
static ? lbl_79_data_C;                             /* unable to generate initializer: unknown type */
static ? lbl_79_data_1C;                            /* unable to generate initializer: unknown type */
static ? lbl_79_data_78;                            /* unable to generate initializer: unknown type */
static ? lbl_79_data_8C;                            /* unable to generate initializer: unknown type */
static ? lbl_79_data_A0;                            /* unable to generate initializer: unknown type */
static ? lbl_79_data_BC;                            /* unable to generate initializer: unknown type */
static ? lbl_79_data_D0;                            /* unable to generate initializer: unknown type */
static ? lbl_79_data_E8;                            /* unable to generate initializer: unknown type */
static ? lbl_79_data_F8;                            /* unable to generate initializer: unknown type */
static ? lbl_79_data_428;                           /* unable to generate initializer: unknown type */
static ? lbl_79_bss_8;
static stClassInfo lbl_79_bss_14;

void fn_79_70(void) {
    if (__nw__FUlQ25Heaps8HeapType(0x804U, (Heaps::HeapType) 0xF) != NULL) {
        fn_79_A4();
    }
}

stMelee *fn_79_A4(stMelee *arg0) {
    __ct__7stMeleeFPCcQ26Stages11srStageKind(arg0, "stDxGreens", (Stages::srStageKind) 0x2D);
    arg0->unk3C = &lbl_79_data_F8;
    __construct_array(&arg0->unk6A4, fn_79_178, fn_79_198, 0xC, 6);
    __ct__9gfArchiveFv(&arg0->unk6F8);
    __ct__9gfArchiveFv(&arg0->unk778);
    memset(&arg0->unk1D8, 0, 0x18);
    memset(&arg0->unk1F4, 0, 0x348);
    memset(&arg0->unk53C, 0, 0x168);
    arg0->unk6EC = 1;
    arg0->unk1F0 = 0.0f;
    arg0->unk6F0 = 0;
    arg0->unk6F4 = 0;
    arg0->unk7F8 = 0;
    arg0->unk7FC = 0;
    arg0->unk800 = 0;
    return arg0;
}

void fn_79_178(void *arg0) {
    s32 temp_r4;

    temp_r4 = arg0 + 4;
    arg0->unk4 = 0;
    arg0->unk8 = 0;
    arg0->unk0 = 0;
    arg0->unk4 = temp_r4;
    arg0->unk8 = temp_r4;
}

void *fn_79_198(void *arg0, s32 arg1) {
    if (arg0 != NULL) {
        fn_8015C238(0);
        if (arg1 > 0) {
            __dl__FPv(arg0);
        }
    }
    return arg0;
}

stCommonGimmick *fn_79_1F0(stCommonGimmick *arg0, s32 arg1) {
    u8 var_r31;
    void *temp_r3;

    if (arg0 != NULL) {
        var_r31 = 0;
        arg0->unk3C = &lbl_79_data_F8;
        do {
            arg0->unk3C->unk254(arg0, arg0 + (var_r31 * 0xC) + 0x6A4);
            var_r31 += 1;
        } while (var_r31 < 6U);
        temp_r3 = arg0->unk6F4;
        if (temp_r3 != NULL) {
            __dl__FPv(temp_r3);
        }
        releaseArchive__15stCommonGimmickFv(arg0);
        __dt__9gfArchiveFv(&arg0->unk778, -1);
        __dt__9gfArchiveFv(&arg0->unk6F8, -1);
        __destroy_arr(&arg0->unk6A4, fn_79_198, 0xC, 6);
        __dt__7stMeleeFv((stMelee *) arg0, 0);
        if (arg1 > 0) {
            __dl__FPv(arg0);
        }
    }
    return arg0;
}

s32 fn_79_2DC(void) {
    return 1;
}

void fn_79_2E4(Stage *arg0) {
    s32 spC;
    nw4r::g3d::ResFileData *sp8;
    nw4r::g3d::ResFileData *temp_r3_3;
    void *temp_r3;
    void *temp_r3_2;

    temp_r3 = getData__9gfArchiveF11ARCNodeTypeiPiUs(arg0->unk1A0, (ARCNodeType) 1, 0x2711, &spC, 0xFFFEU);
    if (temp_r3 != NULL) {
        setFileImage__9gfArchiveFPviQ25Heaps8HeapType(arg0 + 0x778, temp_r3, spC, (Heaps::HeapType) 0x11);
    }
    temp_r3_2 = getData__9gfArchiveF11ARCNodeTypeiPiUs(arg0->unk1A0, (ARCNodeType) 1, 0x2712, &spC, 0xFFFEU);
    if (temp_r3_2 != NULL) {
        setFileImage__9gfArchiveFPviQ25Heaps8HeapType(arg0 + 0x6F8, temp_r3_2, spC, (Heaps::HeapType) 0x11);
    }
    testStageParamInit__5StageFP9gfArchivei(arg0, arg0->unk1A0, 0xA);
    testStageDataInit__5StageFP9gfArchiveii(arg0, arg0->unk1A0, 0x14, 0x78);
    arg0->unk3C->unk230(arg0);
    arg0->unk3C->unk21C(arg0, 1);
    arg0->unk3C->unk21C(arg0, 0);
    createCollision__5StageFP9gfArchiveiP6Ground(arg0, arg0->unk1A0, 2, NULL);
    arg0->unk3C->unk220(arg0, 2);
    arg0->unk3C->unk224(arg0, 3);
    arg0->unk3C->unk228(arg0);
    arg0->unk3C->unkC4(arg0);
    temp_r3_3 = getData__9gfArchiveF11ARCNodeTypeiUs(arg0->unk1A0, (ARCNodeType) 2, 0x64, 0xFFFEU);
    if (temp_r3_3 != NULL) {
        sp8 = temp_r3_3;
        createStagePositions__5StageFPQ34nw4r3g3d7ResFile(arg0, (nw4r::g3d::ResFile *) &sp8);
    } else {
        createStagePositions__5StageFv(arg0);
    }
    arg0->unk3C->unk1F4(arg0);
    loadStageAttrParam__5StageFP9gfArchivei(arg0, arg0->unk1A0, 0x1E);
    registScnAnim__5StageFPQ34nw4r3g3d11ResFileDataUl(arg0, getData__9gfArchiveF11ARCNodeTypeiUs(arg0->unk1A0, (ARCNodeType) 5, 0, 0xFFFEU), 0U);
    initPosPokeTrainer__5StageFii(arg0, 2, 0);
    arg0->unk3C->unk68(arg0, arg0->unk1A0, 0x65, "PokeTrainer00", arg0->unkBC, 0);
    arg0->unk3C->unk68(arg0, arg0->unk1A0, 0x66, &lbl_79_data_1C, arg0->unkBC + 0x18, 0);
}

void fn_79_554(Stage *arg0, s32 arg1) {
    Ground *var_r31;
    s8 *temp_r5;

    temp_r5 = "stDxGreens";
    switch (arg1) {                                 /* irregular */
    case 0:
        var_r31 = fn_79_1998(0, temp_r5 + 0x2C, temp_r5 + 0x40);
        break;
    case 1:
        var_r31 = fn_79_1998(1, temp_r5 + 0x50, temp_r5 + 0x68);
        break;
    default:
        var_r31 = NULL;
        break;
    }
    if (var_r31 != NULL) {
        addGround__5StageFP6Ground(arg0, var_r31);
        var_r31->unk3C->unk9C(var_r31, arg0->unk1A0, 0, 0);
        var_r31->unk3C->unkA4(var_r31, arg0->unk9C);
    }
}

void fn_79_624(void *arg0, s32 arg1) {
    arg0->unk60 = arg1;
}

void fn_79_62C(Stage *arg0) {
    Ground *temp_r3;

    temp_r3 = fn_79_ACD0(2, "StgDxGreensWhispy", "grDxGreensWhispy");
    if (temp_r3 != NULL) {
        addGround__5StageFP6Ground(arg0, temp_r3);
        temp_r3->unk3C->unk9C(temp_r3, arg0->unk1A0, 0, 0);
        temp_r3->unk3C->unkA4(temp_r3, arg0->unk9C);
        temp_r3->unk3C->unk1D4(temp_r3, arg0->unk6F0);
        temp_r3->unk3C->unk1D8(temp_r3, arg0->unk6F4);
    }
}

void fn_79_6F4(void *arg0, s32 arg1) {
    arg0->unk16C = arg1;
}

void fn_79_6FC(void *arg0, s32 arg1) {
    arg0->unk170 = arg1;
}

void fn_79_704(Stage *arg0) {
    Ground *temp_r3;

    temp_r3 = fn_79_1B98(3, "StgDxGreensBlockPosition", "grDxGreensBlockPos");
    if (temp_r3 != NULL) {
        addGround__5StageFP6Ground(arg0, temp_r3);
        temp_r3->unk3C->unk9C(temp_r3, arg0->unk1A0, 0, 0);
        temp_r3->unk3C->unkA4(temp_r3, arg0->unk9C);
        temp_r3->unk3C->unk1D8(temp_r3, &arg0->unk1F4);
        temp_r3->unk3C->unk1DC(temp_r3, &arg0->unk53C);
    }
}

void fn_79_7CC(void *arg0, s32 arg1) {
    arg0->unk150 = arg1;
}

void fn_79_7D4(void *arg0, s32 arg1) {
    arg0->unk154 = arg1;
}

void fn_79_7DC(void *arg0) {
    f32 temp_f31;
    u8 var_r30;
    u8 var_r31;
    void *temp_r30;

    var_r31 = 0;
    do {
        var_r30 = 0;
loop_2:
        arg0->unk3C->unk22C(arg0, var_r31, var_r30);
        var_r30 += 1;
        if (var_r30 < 5U) {
            goto loop_2;
        }
        var_r31 += 1;
    } while (var_r31 < 6U);
    temp_r30 = arg0->unk9C;
    if (temp_r30 != NULL) {
        temp_f31 = temp_r30->unk4 * (temp_r30 + ((arg0->unk3C->unk248(arg0) * 4) & 0x3FC))->unk8;
        arg0->unk1F0 = (f32) (temp_r30->unk0 + (randf__Fv() * temp_f31));
    }
}

void fn_79_8A8(Stage *arg0, u32 arg1, u32 arg2) {
    Ground *temp_r3;
    s32 temp_r7;
    void *temp_r30;
    void *temp_r31;
    void *temp_r6;

    if ((arg1 < 6U) && (arg2 < 5U)) {
        temp_r31 = arg0->unk9C;
        if (temp_r31 != NULL) {
            temp_r7 = arg1 * 0x8C;
            temp_r6 = arg0 + temp_r7 + (arg2 * 0x1C);
            temp_r30 = temp_r6 + 0x1F4;
            temp_r3 = fn_79_A6B0(4, "StgDxGreensBlock", "grDxGreensBlock", temp_r6, temp_r7);
            if (temp_r3 != NULL) {
                addGround__5StageFP6Ground(arg0, temp_r3);
                temp_r3->unk3C->unk9C(temp_r3, arg0->unk1A0, 0, 0);
                temp_r3->unk3C->unkA4(temp_r3, arg0->unk9C);
                temp_r3->unk3C->unk1D8(temp_r3, temp_r30);
                temp_r3->unk3C->unk1DC(temp_r3, &arg0->unk1D8);
                if (randf__Fv() < temp_r31->unk1C) {
                    temp_r30->unk1A = 1;
                } else {
                    temp_r30->unk1A = 0;
                }
                temp_r30->unk19 = 7;
                createCollision__5StageFP9gfArchiveiP6Ground(arg0, arg0->unk1A0, 3, temp_r3);
            }
        }
    }
}

void fn_79_9F0(void *arg0, s32 arg1) {
    arg0->unk160 = arg1;
}

void fn_79_9F8(void *arg0, s32 arg1) {
    arg0->unk15C = arg1;
}

void fn_79_A00(void *arg0) {
    grGimmickWindData *temp_r3;
    grGimmickWindData *temp_r6;
    grGimmickWindData *temp_r6_2;
    stTrigger *temp_r3_2;

    temp_r3 = __nw__FUlQ25Heaps8HeapType(0x40U, (Heaps::HeapType) 0xF);
    arg0->unk6F4 = temp_r3;
    if (temp_r3 != NULL) {
        memset(NULL, 0x40);
        temp_r6 = arg0->unk6F4;
        temp_r6->unk28 = 0.0f;
        temp_r6->unk2C = 0.0f;
        temp_r6->unk30 = 0.0f;
        arg0->unk6F4->unk34 = 10.0f;
        arg0->unk6F4->unk38 = 0.0f;
        temp_r6_2 = arg0->unk6F4;
        temp_r6_2->unk18 = 0.0f;
        temp_r6_2->unk1C = 0.0f;
        temp_r6_2->unk20 = 0.0f;
        temp_r6_2->unk24 = 0.0f;
        temp_r3_2 = createTrigger__12stTriggerMngFQ27Gimmick8AreaKindi(g_stTriggerMng, (Gimmick::AreaKind) 0xC, -1);
        arg0->unk6F0 = temp_r3_2;
        setWindTrigger__9stTriggerFP17grGimmickWindData(temp_r3_2, arg0->unk6F4);
        setAreaSleep__9stTriggerFb(arg0->unk6F0, 1);
    }
}

void fn_79_ABC(void *arg0, f32 farg0) {
    arg0->unk3C->unk234();
    arg0->unk3C->unk238(arg0, farg0);
    arg0->unk3C->unk23C(arg0, farg0);
    arg0->unk3C->unk240(arg0, farg0);
    arg0->unk3C->unk244(arg0, farg0);
}

void fn_79_B60(CameraController *arg0) {
    void *temp_r3;

    temp_r3 = getInstance__16CameraControllerFv(arg0);
    arg0->unk1D8 = temp_r3->unk158;
    arg0->unk1DC = temp_r3->unk160;
    arg0->unk1E0 = 0.0f;
    arg0->unk1E4 = temp_r3->unk15C;
    arg0->unk1E8 = temp_r3->unk164;
    arg0->unk1EC = 0.0f;
}

void fn_79_BBC(void *arg0, ? arg_sp0) {
    s32 temp_r3;
    u8 var_r23;
    u8 var_r24;
    void *temp_r25;
    void *temp_r26;
    void *temp_r28;
    void *temp_r4;

    if (((s32) arg0->unk6EC != 0) && (arg0->unk53C != 0.0f)) {
        temp_r26 = arg0->unk9C;
        if (temp_r26 != NULL) {
            var_r24 = 0;
            do {
                var_r23 = 0;
                temp_r28 = arg0 + (var_r24 * 0x8C) + 0x1F4;
loop_5:
                temp_r3 = var_r23 * 0x1C;
                temp_r4 = arg0 + (var_r24 * 0x3C) + (var_r23 * 0xC);
                temp_r25 = temp_r28 + temp_r3;
                *(temp_r28 + temp_r3) = temp_r4->unk53C;
                temp_r25->unk4 = (f32) temp_r4->unk540;
                temp_r25->unk8 = (f32) temp_r4->unk544;
                temp_r25->unkC = (f32) temp_r4->unk53C;
                temp_r25->unk10 = (f32) temp_r4->unk540;
                temp_r25->unk14 = (f32) temp_r4->unk544;
                temp_r25->unk18 = var_r23;
                if (randf__Fv() < temp_r26->unk1C) {
                    temp_r25->unk1A = 1;
                } else {
                    temp_r25->unk1A = 0;
                }
                var_r23 += 1;
                if (var_r23 < 5U) {
                    goto loop_5;
                }
                var_r24 += 1;
            } while (var_r24 < 6U);
            arg0->unk20D = 1;
            arg0->unk229 = 1;
            arg0->unk245 = 1;
            arg0->unk261 = 1;
            arg0->unk3C->unk24C(arg0, 0, arg0 + 0x6A4);
            arg0->unk3C->unk24C(arg0, 1, arg0 + 0x6A4);
            arg0->unk3C->unk24C(arg0, 2, arg0 + 0x6A4);
            arg0->unk3C->unk24C(arg0, 3, arg0 + 0x6A4);
            arg0->unk299 = 1;
            arg0->unk2B5 = 1;
            arg0->unk2D1 = 1;
            arg0->unk3C->unk24C(arg0, 0, arg0 + 0x6B0);
            arg0->unk3C->unk24C(arg0, 1, arg0 + 0x6B0);
            arg0->unk3C->unk24C(arg0, 2, arg0 + 0x6B0);
            arg0->unk325 = 1;
            arg0->unk341 = 1;
            arg0->unk3C->unk24C(arg0, 0, arg0 + 0x6BC);
            arg0->unk3C->unk24C(arg0, 1, arg0 + 0x6BC);
            arg0->unk3B1 = 1;
            arg0->unk3CD = 1;
            arg0->unk3C->unk24C(arg0, 0, arg0 + 0x6C8);
            arg0->unk3C->unk24C(arg0, 1, arg0 + 0x6C8);
            arg0->unk43D = 1;
            arg0->unk459 = 1;
            arg0->unk475 = 1;
            arg0->unk3C->unk24C(arg0, 0, arg0 + 0x6D4);
            arg0->unk3C->unk24C(arg0, 1, arg0 + 0x6D4);
            arg0->unk3C->unk24C(arg0, 2, arg0 + 0x6D4);
            arg0->unk4C9 = 1;
            arg0->unk4E5 = 1;
            arg0->unk501 = 1;
            arg0->unk51D = 1;
            arg0->unk3C->unk24C(arg0, 0, arg0 + 0x6E0);
            arg0->unk3C->unk24C(arg0, 1, arg0 + 0x6E0);
            arg0->unk3C->unk24C(arg0, 2, arg0 + 0x6E0);
            arg0->unk3C->unk24C(arg0, 3, arg0 + 0x6E0);
            arg0->unk6EC = 0U;
        }
    }
}

void fn_79_F08(void *arg0, f32 farg0) {
    f32 temp_f1;
    f32 temp_f31;
    s32 temp_r0;
    s32 temp_r28;
    u32 var_r27;
    u8 var_r6;
    void *temp_r29;
    void *temp_r30;
    void *temp_r31;
    void *temp_r3;
    void *temp_r3_2;
    void *temp_r3_3;
    void *temp_r4;
    void *temp_r5;

    if ((u8) arg0->unk6EC != 1) {
        temp_f1 = arg0->unk1F0 - farg0;
        arg0->unk1F0 = temp_f1;
        if (temp_f1 < 0.0f) {
            arg0->unk1F0 = 0.0f;
        }
        if (arg0->unk1F0 == 0.0f) {
            temp_r30 = arg0->unk9C;
            if (temp_r30 != NULL) {
                temp_f31 = temp_r30->unk4 * (temp_r30 + ((arg0->unk3C->unk248(arg0) * 4) & 0x3FC))->unk8;
                arg0->unk1F0 = (f32) (temp_r30->unk0 + (randf__Fv() * temp_f31));
                temp_r28 = (s32) (6.0f * randf__Fv());
                temp_r3 = arg0 + ((u8) temp_r28 * 0xC);
                temp_r31 = temp_r3 + 0x6A4;
                if (((u32) temp_r3->unk6A4 != 5U) && ((temp_r3_2 = arg0->unk3C->unk260(arg0, temp_r31), ((temp_r3_2 == NULL) != 0)) || ((arg0 + ((u8) temp_r28 * 0x3C))->unk570 != (arg0 + ((u8) temp_r28 * 0x8C) + (temp_r3_2->unk8 * 0x1C))->unk204))) {
                    var_r27 = 0;
                    temp_r5 = arg0 + ((u8) temp_r28 * 0x8C) + 0x1F4;
                    if ((u8) (temp_r5 + (0 * 0x1C))->unk19 != 7) {
                        var_r27 = 1;
                        if ((u8) (temp_r5 + (1 * 0x1C))->unk19 != 7) {
                            var_r27 = 2;
                            if ((u8) (temp_r5 + (2 * 0x1C))->unk19 != 7) {
                                var_r27 = 3;
                                if ((u8) (temp_r5 + (3 * 0x1C))->unk19 != 7) {
                                    var_r27 = 4;
                                    if ((u8) (temp_r5 + (4 * 0x1C))->unk19 != 7) {
                                        var_r27 = 5;
                                    }
                                }
                            }
                        }
                    }
                    if (var_r27 != 5) {
                        temp_r29 = temp_r5 + (var_r27 * 0x1C);
                        if (temp_r3_2 != NULL) {
                            var_r6 = (temp_r5 + (temp_r3_2->unk8 * 0x1C))->unk18 + 1;
                        } else {
                            var_r6 = 0;
                        }
                        temp_r4 = arg0 + ((u8) temp_r28 * 0x3C);
                        temp_r0 = var_r6 * 0xC;
                        temp_r29->unk0 = (f32) temp_r4->unk53C;
                        temp_r3_3 = temp_r4 + temp_r0;
                        temp_r29->unk4 = (f32) temp_r4->unk540;
                        temp_r29->unk8 = (f32) temp_r4->unk544;
                        temp_r29->unkC = (f32) *(temp_r4 + 0x53C + temp_r0);
                        temp_r29->unk10 = (f32) temp_r3_3->unk540;
                        temp_r29->unk14 = (f32) temp_r3_3->unk544;
                        temp_r29->unk18 = var_r6;
                        temp_r29->unk19 = 0;
                        if (randf__Fv() < temp_r30->unk1C) {
                            temp_r29->unk1A = 1;
                        } else {
                            temp_r29->unk1A = 0;
                        }
                        arg0->unk3C->unk24C(arg0, var_r27, temp_r31);
                    }
                }
            }
        }
    }
}

void fn_79_11AC(void *arg0, ? arg_sp0) {
    s32 temp_r29;
    s32 temp_r4;
    s8 var_r25;
    u8 temp_r0;
    u8 var_ctr;
    u8 var_r26;
    u8 var_r27;
    void *temp_r22;
    void *temp_r28;
    void *temp_r30;
    void *temp_r4_2;
    void *temp_r7;
    void *var_r3;

    if ((u8) arg0->unk6EC != 1) {
        var_r27 = 0;
        do {
            var_r25 = -1;
            temp_r29 = var_r27 * 0xC;
            var_r26 = 0;
            temp_r30 = arg0 + temp_r29;
            temp_r28 = arg0 + (var_r27 * 0x8C) + 0x1F4;
loop_3:
            temp_r22 = temp_r28 + (var_r26 * 0x1C);
            if ((u8) temp_r22->unk19 == 5) {
                if (var_r25 == -1) {
                    var_r25 = (s8) temp_r22->unk18;
                }
                if (var_r25 > (s32) var_r26) {
                    var_r25 = (s8) temp_r22->unk18;
                }
                arg0->unk3C->unk250(arg0, var_r26, temp_r30 + 0x6A4);
                temp_r22->unk19 = 7U;
            }
            var_r26 += 1;
            if (var_r26 < 5U) {
                goto loop_3;
            }
            if (var_r25 >= 0) {
                temp_r4 = (arg0 + temp_r29)->unk6A4;
                var_r3 = temp_r30->unk6A8;
                var_ctr = (u8) temp_r4;
                if ((u8) temp_r4 != 0) {
                    do {
                        temp_r7 = temp_r28 + (var_r3->unk8 * 0x1C);
                        temp_r0 = temp_r7->unk19;
                        switch ((s32) temp_r0) {    /* irregular */
                        case 1:
                            break;
                        case 2:
                            var_r25 = temp_r7->unk18 + 1;
                            break;
                        case 0:
                            if ((s32) temp_r7->unk18 > var_r25) {
                                temp_r4_2 = arg0 + (var_r27 * 0x3C) + (var_r25 * 0xC);
                                temp_r7->unkC = (f32) temp_r4_2->unk53C;
                                temp_r7->unk10 = (f32) temp_r4_2->unk540;
                                temp_r7->unk14 = (f32) temp_r4_2->unk544;
                                temp_r7->unk18 = (u8) var_r25;
                                var_r25 += 1;
                            }
                            break;
                        }
                        var_r3 = var_r3->unk0;
                        var_ctr -= 1;
                    } while (var_ctr != 0);
                }
            }
            var_r27 += 1;
        } while (var_r27 < 6U);
    }
}

void fn_79_133C(void *arg0) {
    grCollision *temp_r3;
    s16 var_r4;
    s16 var_r6;
    s32 var_ctr;
    u16 var_r5;
    u8 var_r10;
    u8 var_r11;
    void *temp_r8;
    void *temp_r9;

    temp_r9 = arg0->unk7F8;
    if ((temp_r9 != NULL) && ((void *) arg0->unk7FC != NULL) && ((void *) arg0->unk800 != NULL)) {
        var_r4 = 0;
        var_r5 = 0;
        var_r6 = 0;
        var_r10 = 0;
        var_ctr = 6;
        do {
            var_r11 = 0;
loop_24:
            if (var_r11 != 5) {
                temp_r8 = arg0 + (var_r10 * 0x8C) + (var_r11 * 0x1C);
                if ((u8) temp_r8->unk20D != 2) {
                    var_r11 += 1;
                } else {
                    switch ((s32) var_r10) {        /* irregular */
                    case 1:
                        break;
                    case 0:
                        if ((s32) temp_r8->unk20C == 0) {
                            var_r4 |= 0x4000;
                        }
                        break;
                    case 2:
                        if ((u8) temp_r8->unk20C <= 1U) {
                            var_r5 |= 0x2000;
                        }
                        break;
                    case 3:
                        if ((u8) temp_r8->unk20C <= 1U) {
                            var_r5 |= 0x4000;
                        }
                        break;
                    case 5:
                        if ((s32) temp_r8->unk20C == 0) {
                            var_r6 |= 0x2000;
                        }
                        break;
                    }
                    var_r11 += 1;
                }
                goto loop_24;
            }
            var_r10 += 1;
            var_ctr -= 1;
        } while (var_ctr != 0);
        temp_r9->unk52 = var_r4;
        arg0->unk7FC->unk52 = var_r5;
        arg0->unk800->unk52 = var_r6;
        return;
    }
    temp_r3 = fn_27_222878(arg0, 0);
    if (temp_r3 != NULL) {
        arg0->unk7F8 = getJoint__11grCollisionFUs(temp_r3, 0U);
        arg0->unk7FC = getJoint__11grCollisionFUs(temp_r3, 1U);
        arg0->unk800 = getJoint__11grCollisionFUs(temp_r3, 2U);
    }
}

u8 fn_79_14D4(s32 arg0) {
    u32 temp_r0;
    u32 temp_r0_2;
    u32 temp_r0_3;
    u32 temp_r0_4;
    u32 temp_r0_5;
    u32 temp_r0_6;
    u8 var_r5;

    var_r5 = 0;
    temp_r0 = (arg0 + (0 * 0xC))->unk6A4;
    if (temp_r0 > 0U) {
        var_r5 = (u8) temp_r0;
    }
    temp_r0_2 = (arg0 + (1 * 0xC))->unk6A4;
    if (var_r5 < temp_r0_2) {
        var_r5 = (u8) temp_r0_2;
    }
    temp_r0_3 = (arg0 + (2 * 0xC))->unk6A4;
    if (var_r5 < temp_r0_3) {
        var_r5 = (u8) temp_r0_3;
    }
    temp_r0_4 = (arg0 + (3 * 0xC))->unk6A4;
    if (var_r5 < temp_r0_4) {
        var_r5 = (u8) temp_r0_4;
    }
    temp_r0_5 = (arg0 + (4 * 0xC))->unk6A4;
    if (var_r5 < temp_r0_5) {
        var_r5 = (u8) temp_r0_5;
    }
    temp_r0_6 = (arg0 + (5 * 0xC))->unk6A4;
    if (var_r5 < temp_r0_6) {
        var_r5 = (u8) temp_r0_6;
    }
    return var_r5;
}

void fn_79_1584(s32 arg0, s32 *arg1, s32 *arg2, s32 arg3) {
    if (arg3 == 0x4A) {
        *arg1 = arg0 + 0x778;
        *arg2 = arg0 + 0x6F8;
    }
}

void fn_79_15A0(s8 arg1, nw4r::ut::detail::LinkListImpl *arg2) {
    s32 sp8;
    grGimmickWindData *temp_r3;

    temp_r3 = __nw__FUlQ25Heaps8HeapType(0xCU, (Heaps::HeapType) 0x11);
    if (temp_r3 != NULL) {
        temp_r3->unk0 = 0;
        temp_r3->unk4 = 0;
    }
    if (temp_r3 != NULL) {
        temp_r3->unk8 = arg1;
        sp8 = arg2 + 4;
        Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode(arg2, (nw4r::ut::detail::LinkListImpl::Iterator) &sp8, (nw4r::ut::LinkListNode *) temp_r3);
    }
}

void fn_79_1618(void *arg0, nw4r::ut::detail::LinkListImpl *arg2) {
    nw4r::ut::LinkListNode *temp_r3;

    temp_r3 = arg0->unk3C->unk258();
    if (temp_r3 != NULL) {
        Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode(arg2, temp_r3);
        if (temp_r3 != NULL) {
            __dl__FPv(temp_r3);
        }
    }
}

void fn_79_1680(void *arg1) {
    void *sp8;
    u32 temp_r29;
    u32 var_r30;
    void *temp_r31;

    var_r30 = 0U;
    temp_r29 = arg1->unk0;
loop_4:
    if (var_r30 != temp_r29) {
        temp_r31 = arg1->unk4;
        sp8 = temp_r31;
        fn_8015C2BC(arg1, &sp8);
        if (temp_r31 != NULL) {
            __dl__FPv(temp_r31);
        }
        var_r30 += 1;
        goto loop_4;
    }
}

void *fn_79_16FC(u32 arg1, void *arg2) {
    u32 temp_r0;
    u32 var_ctr;
    void *var_r3;

    temp_r0 = arg2->unk0;
    var_r3 = arg2->unk4;
    var_ctr = temp_r0;
    if (temp_r0 != 0U) {
loop_1:
        if (arg1 != (u8) var_r3->unk8) {
            var_r3 = var_r3->unk0;
            var_ctr -= 1;
            if (var_ctr == 0U) {
                /* Duplicate return node #3. Try simplifying control flow for better match */
                return NULL;
            }
            goto loop_1;
        }
        return var_r3;
    }
    return NULL;
}

s32 fn_79_172C(void *arg1) {
    return arg1->unk4;
}

? *fn_79_1734(void *arg1) {
    ? *var_r3;
    u32 temp_r4;
    u32 var_ctr;
    u32 var_r5;

    var_r3 = arg1->unk4;
    var_r5 = 0U;
    temp_r4 = arg1->unk0;
    var_ctr = temp_r4;
    if (temp_r4 != 0U) {
loop_1:
        if (var_r5 != (u32) (temp_r4 - 1)) {
            var_r3 = *var_r3;
            var_r5 += 1;
            var_ctr -= 1;
            if (var_ctr == 0U) {
                /* Duplicate return node #3. Try simplifying control flow for better match */
                return NULL;
            }
            goto loop_1;
        }
        return var_r3;
    }
    return NULL;
}

void fn_79_176C(void) {

}

s32 fn_79_1770(void) {
    return 0;
}

s32 fn_79_1778(void) {
    return 0;
}

s32 fn_79_1780(void) {
    return 0;
}

s32 fn_79_1788(void) {
    return 0;
}

s32 fn_79_1790(void) {
    return 1;
}

void fn_79_1798(void) {

}

f32 fn_79_179C(void *arg0) {
    return arg0->unk190;
}

void fn_79_17A4(void *arg0, f32 farg0) {
    arg0->unk190 = farg0;
}

s32 fn_79_17AC(void) {
    return 0;
}

f32 fn_79_17B4(void) {
    return 0.0f;
}

f32 fn_79_17C0(void) {
    return 1.0f;
}

void fn_79_17CC(void *arg0, s8 arg1, s32 arg2, f32 farg0) {
    arg0->unk184 = arg1;
    arg0->unk188 = arg2;
    arg0->unk18C = farg0;
}

void fn_79_17DC(void *arg0, s32 *arg1, f32 *arg2) {
    *arg1 = arg0->unk188;
    *arg2 = arg0->unk18C;
}

u8 fn_79_17F0(void *arg0) {
    return arg0->unk184;
}

s32 fn_79_17F8(void) {
    return 0;
}

s32 fn_79_1800(void) {
    return 0;
}

s32 fn_79_1808(void) {
    return 0;
}

s32 fn_79_1810(void) {
    return 0;
}

void fn_79_1818(void) {

}

s32 fn_79_181C(void *arg1) {
    arg1->unk0 = 0.0f;
    arg1->unk4 = 0.0f;
    arg1->unk8 = 0.0f;
    return 0;
}

s32 fn_79_1838(void) {
    return 0x14;
}

s32 fn_79_1840(s32 arg0) {
    return arg0 + 0x68;
}

s32 fn_79_1848(void) {
    return 0;
}

s32 fn_79_1850(void) {
    return 0;
}

f32 fn_79_1858(void) {
    return 0.0f;
}

void fn_79_1864(void) {

}

s32 fn_79_1868(void) {
    return 0;
}

s32 fn_79_1870(void) {
    return 1;
}

s32 fn_79_1878(void *arg0) {
    return arg0->unk1C8;
}

s32 fn_79_1880(void) {
    return 1;
}

void fn_79_1888(void) {
    __ct__11stClassInfoFv(&lbl_79_bss_14);
    lbl_79_bss_14.unk0 = &lbl_79_data_428;
    setClassInfo__11stClassInfoFQ26Stages11srStageKindP11stClassInfo(&lbl_79_bss_14, (Stages::srStageKind) 0x2D, &lbl_79_bss_14);
    __register_global_object(&lbl_79_bss_14, fn_79_18EC, &lbl_79_bss_8);
}

stClassInfo *fn_79_18EC(stClassInfo *arg0, s32 arg1) {
    if (arg0 != NULL) {
        arg0->unk0 = &lbl_79_data_428;
        setClassInfo__11stClassInfoFQ26Stages11srStageKindP11stClassInfo(arg0, (Stages::srStageKind) 0x2D, NULL);
        __dt__11stClassInfoFv(arg0, 0);
        if (arg1 > 0) {
            __dl__FPv(arg0);
        }
    }
    return arg0;
}

void fn_79_1960(void) {
    if (__nw__FUlQ25Heaps8HeapType(0x804U, (Heaps::HeapType) 0xF) != NULL) {
        fn_79_A4();
    }
}

void fn_79_1994(void) {

}
