// m2c draft (machine output, NOT source): rewrite by hand against the headers.
typedef struct CameraController {
    /* 0x000 */ char pad0[0x3C];
    /* 0x03C */ void *unk3C;                        /* inferred */
    /* 0x040 */ char pad40[0x160];                  /* maybe part of unk3C[0x59]? */
    /* 0x1A0 */ gfArchive *unk1A0;                  /* inferred */
    /* 0x1A4 */ char pad1A4[0x3C];                  /* maybe part of unk1A0[0x10]? */
    /* 0x1E0 */ f32 unk1E0;                         /* inferred */
    /* 0x1E4 */ f32 unk1E4;                         /* inferred */
    /* 0x1E8 */ f32 unk1E8;                         /* inferred */
    /* 0x1EC */ f32 unk1EC;                         /* inferred */
    /* 0x1F0 */ f32 unk1F0;                         /* inferred */
    /* 0x1F4 */ f32 unk1F4;                         /* inferred */
    /* 0x1F8 */ char pad1F8[0xA40];                 /* maybe part of unk1F4[0x291]? */
    /* 0xC38 */ s8 unkC38;                          /* inferred */
} CameraController;                                 /* size >= 0xC39 */

typedef struct Ground {
    /* 0x00 */ char pad0[0x3C];
    /* 0x3C */ void *unk3C;                         /* inferred */
    /* 0x40 */ char pad40[0x20];                    /* maybe part of unk3C[9]? */
    /* 0x60 */ void *unk60;                         /* inferred */
} Ground;                                           /* size >= 0x64 */

typedef struct Stage {
    /* 0x000 */ char pad0[0x3C];
    /* 0x03C */ void *unk3C;                        /* inferred */
    /* 0x040 */ char pad40[0x5C];                   /* maybe part of unk3C[0x18]? */
    /* 0x09C */ void *unk9C;                        /* inferred */
    /* 0x0A0 */ char padA0[0x1C];                   /* maybe part of unk9C[8]? */
    /* 0x0BC */ s32 unkBC;                          /* inferred */
    /* 0x0C0 */ char padC0[0xE0];                   /* maybe part of unkBC[0x39]? */
    /* 0x1A0 */ gfArchive *unk1A0;                  /* inferred */
    /* 0x1A4 */ char pad1A4[0x3C];                  /* maybe part of unk1A0[0x10]? */
    /* 0x1E0 */ ? unk1E0;                           /* inferred */
    /* 0x1E0 */ char pad1E0[0x1C];
    /* 0x1FC */ ? unk1FC;                           /* inferred */
    /* 0x1FC */ char pad1FC[0xC];
    /* 0x208 */ ? unk208;                           /* inferred */
    /* 0x208 */ char pad208[0x28];
    /* 0x230 */ ? unk230;                           /* inferred */
    /* 0x230 */ char pad230[0x12C];
    /* 0x35C */ ? unk35C;                           /* inferred */
    /* 0x35C */ char pad35C[0x18];
    /* 0x374 */ ? unk374;                           /* inferred */
    /* 0x374 */ char pad374[0x708];
    /* 0xA7C */ ? unkA7C;                           /* inferred */
    /* 0xA7C */ char padA7C[0x1E];
    /* 0xA9A */ ? unkA9A;                           /* inferred */
    /* 0xA9A */ char padA9A[0x56];
    /* 0xAF0 */ u8 unkAF0;                          /* inferred */
    /* 0xAF1 */ u8 unkAF1;                          /* inferred */
    /* 0xAF2 */ char padAF2[2];                     /* maybe part of unkAF1[3]? */
    /* 0xAF4 */ f32 unkAF4;                         /* inferred */
    /* 0xAF8 */ s32 unkAF8;                         /* inferred */
    /* 0xAFC */ s32 unkAFC;                         /* inferred */
    /* 0xB00 */ char padB00[0x9C];                  /* maybe part of unkAFC[0x28]? */
    /* 0xB9C */ ? unkB9C;                           /* inferred */
    /* 0xB9C */ char padB9C[0x2C];
    /* 0xBC8 */ f32 unkBC8;                         /* inferred */
    /* 0xBCC */ char padBCC[4];
    /* 0xBD0 */ ? unkBD0;                           /* inferred */
    /* 0xBD0 */ char padBD0[0x2C];
    /* 0xBFC */ f32 unkBFC;                         /* inferred */
    /* 0xC00 */ char padC00[4];
    /* 0xC04 */ ? unkC04;                           /* inferred */
    /* 0xC04 */ char padC04[0x2C];
    /* 0xC30 */ f32 unkC30;                         /* inferred */
} Stage;                                            /* size >= 0xC34 */

typedef struct nw4r::ut::LinkListNode {
    /* 0x0 */ s32 unk0;                             /* inferred */
    /* 0x4 */ s32 unk4;                             /* inferred */
    /* 0x8 */ s8 unk8;                              /* inferred */
} nw4r::ut::LinkListNode;                           /* size >= 0x9 */

typedef struct nw4r::ut::detail::LinkListImpl {
    /* 0x0 */ char pad0[4];
    /* 0x4 */ s32 unk4;                             /* inferred */
} nw4r::ut::detail::LinkListImpl;                   /* size >= 0x8 */

typedef struct stClassInfo {
    /* 0x0 */ ? *unk0;                              /* inferred */
} stClassInfo;                                      /* size >= 0x4 */

typedef struct stCommonGimmick {
    /* 0x000 */ char pad0[0x3C];
    /* 0x03C */ ? *unk3C;                           /* inferred */
    /* 0x040 */ char pad40[0x320];                  /* maybe part of unk3C[0xC9]? */
    /* 0x360 */ ? unk360;                           /* inferred */
    /* 0x360 */ char pad360[0x740];
    /* 0xAA0 */ ? unkAA0;                           /* inferred */
    /* 0xAA0 */ char padAA0[1];
} stCommonGimmick;                                  /* size >= 0xAA1 */

typedef struct stMelee {
    /* 0x000 */ char pad0[0x3C];
    /* 0x03C */ ? *unk3C;                           /* inferred */
    /* 0x040 */ char pad40[0x198];                  /* maybe part of unk3C[0x67]? */
    /* 0x1D8 */ s8 unk1D8;                          /* inferred */
    /* 0x1D9 */ char pad1D9[3];                     /* maybe part of unk1D8[4]? */
    /* 0x1DC */ f32 unk1DC;                         /* inferred */
    /* 0x1E0 */ ? unk1E0;                           /* inferred */
    /* 0x1E0 */ char pad1E0[0x18];
    /* 0x1F8 */ s8 unk1F8;                          /* inferred */
    /* 0x1F9 */ char pad1F9[3];                     /* maybe part of unk1F8[4]? */
    /* 0x1FC */ ? unk1FC;                           /* inferred */
    /* 0x1FC */ char pad1FC[0xC];
    /* 0x208 */ ? unk208;                           /* inferred */
    /* 0x208 */ char pad208[0xC];
    /* 0x214 */ f32 unk214;                         /* inferred */
    /* 0x218 */ s8 unk218;                          /* inferred */
    /* 0x219 */ char pad219[3];                     /* maybe part of unk218[4]? */
    /* 0x21C */ ? unk21C;                           /* inferred */
    /* 0x21C */ char pad21C[0xC];
    /* 0x228 */ s8 unk228;                          /* inferred */
    /* 0x229 */ char pad229[3];                     /* maybe part of unk228[4]? */
    /* 0x22C */ f32 unk22C;                         /* inferred */
    /* 0x230 */ char pad230[0x12C];                 /* maybe part of unk22C[0x4C]? */
    /* 0x35C */ s8 unk35C;                          /* inferred */
    /* 0x35D */ char pad35D[3];                     /* maybe part of unk35C[4]? */
    /* 0x360 */ s32 unk360;                         /* inferred */
    /* 0x364 */ ? *unk364;                          /* inferred */
    /* 0x368 */ ? *unk368;                          /* inferred */
    /* 0x36C */ s8 unk36C;                          /* inferred */
    /* 0x36D */ char pad36D[3];                     /* maybe part of unk36C[4]? */
    /* 0x370 */ f32 unk370;                         /* inferred */
    /* 0x374 */ char pad374[0x708];                 /* maybe part of unk370[0x1C3]? */
    /* 0xA7C */ ? unkA7C;                           /* inferred */
    /* 0xA7C */ char padA7C[0x1E];
    /* 0xA9A */ s8 unkA9A;                          /* inferred */
    /* 0xA9B */ s8 unkA9B;                          /* inferred */
    /* 0xA9C */ char padA9C[1];
    /* 0xA9D */ s8 unkA9D;                          /* inferred */
    /* 0xA9E */ char padA9E[2];                     /* maybe part of unkA9D[3]? */
    /* 0xAA0 */ ? unkAA0;                           /* inferred */
    /* 0xAA0 */ char padAA0[8];
    /* 0xAA8 */ s32 unkAA8;                         /* inferred */
    /* 0xAAC */ s8 unkAAC;                          /* inferred */
    /* 0xAAD */ char padAAD[0xB];                   /* maybe part of unkAAC[0xC]? */
    /* 0xAB8 */ s32 unkAB8;                         /* inferred */
    /* 0xABC */ s8 unkABC;                          /* inferred */
    /* 0xABD */ char padABD[0xB];                   /* maybe part of unkABC[0xC]? */
    /* 0xAC8 */ s32 unkAC8;                         /* inferred */
    /* 0xACC */ s8 unkACC;                          /* inferred */
    /* 0xACD */ char padACD[0xB];                   /* maybe part of unkACC[0xC]? */
    /* 0xAD8 */ s32 unkAD8;                         /* inferred */
    /* 0xADC */ s8 unkADC;                          /* inferred */
    /* 0xADD */ char padADD[0xB];                   /* maybe part of unkADC[0xC]? */
    /* 0xAE8 */ s32 unkAE8;                         /* inferred */
    /* 0xAEC */ s8 unkAEC;                          /* inferred */
    /* 0xAED */ char padAED[3];                     /* maybe part of unkAEC[4]? */
    /* 0xAF0 */ s8 unkAF0;                          /* inferred */
    /* 0xAF1 */ s8 unkAF1;                          /* inferred */
    /* 0xAF2 */ char padAF2[2];                     /* maybe part of unkAF1[3]? */
    /* 0xAF4 */ f32 unkAF4;                         /* inferred */
    /* 0xAF8 */ s32 unkAF8;                         /* inferred */
    /* 0xAFC */ s32 unkAFC;                         /* inferred */
    /* 0xB00 */ char padB00[0x138];                 /* maybe part of unkAFC[0x4F]? */
    /* 0xC38 */ s8 unkC38;                          /* inferred */
} stMelee;                                          /* size >= 0xC39 */

f32 CosFIdx__Q24nw4r4mathFf(nw4r::math *this, f32 arg0); /* extern */
? Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode(nw4r::ut::detail::LinkListImpl *this, nw4r::ut::LinkListNode *arg0); /* extern */
? Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode(nw4r::ut::detail::LinkListImpl *this, nw4r::ut::detail::LinkListImpl::Iterator arg0, nw4r::ut::LinkListNode *arg1); /* extern */
? __construct_array(? *, snd3DGenerator *(*)(snd3DGenerator *), snd3DGenerator *(*)(snd3DGenerator *, s32), ?, ?, ? *); /* extern */
void *__ct__11stClassInfoFv(stClassInfo *this);     /* extern */
void *__ct__14snd3DGeneratorFv(snd3DGenerator *this); /* extern */
void *__ct__7stMeleeFPCcQ26Stages11srStageKind(stMelee *this, s8 *arg0, Stages::srStageKind arg1); /* extern */
? __destroy_arr(? *, snd3DGenerator *(*)(snd3DGenerator *, s32), ?, ?); /* extern */
? __dl__FPv(void *arg0);                            /* extern */
void *__dt__11stClassInfoFv(stClassInfo *this, s16 destroyFlag); /* extern */
void *__dt__14snd3DGeneratorFv(snd3DGenerator *this, s16 destroyFlag); /* extern */
void *__dt__7stMeleeFv(stMelee *this, s16 destroyFlag); /* extern */
nw4r::ut::LinkListNode *__nw__FUlQ25Heaps8HeapType(u32 arg0, Heaps::HeapType arg1); /* extern */
? __register_global_object(stClassInfo *, stClassInfo *(*)(stClassInfo *, s32), ? *); /* extern */
? addGround__5StageFP6Ground(Stage *this, Ground *arg0); /* extern */
? createCollision__5StageFP9gfArchiveiP6Ground(Stage *this, gfArchive *arg0, s32 arg1, Ground *arg2); /* extern */
? createStagePositions__5StageFPQ34nw4r3g3d7ResFile(Stage *this, nw4r::g3d::ResFile *arg0); /* extern */
? createStagePositions__5StageFv(Stage *this);      /* extern */
grCollision *fn_27_222878(void *, ? *, f32, f32, f32, f32); /* extern */
u32 fn_27_2249E0(Stage *);                          /* extern */
nw4r::math *fn_8003DE70(f32 *, f32, f32, f32, f32, ?); /* extern */
s32 fn_800797A4(void *);                            /* extern */
? fn_8015C238(? *, ?);                              /* extern */
? fn_8015C2BC(void *, void **);                     /* extern */
f32 fn_80162540(f32, f32);                          /* extern */
Ground *fn_81_42C8(?, s8 *, s8 *);                  /* extern */
Ground *fn_81_4650(?, s8 *, s8 *);                  /* extern */
Ground *fn_81_5184(?, s8 *, s8 *);                  /* extern */
Ground *fn_81_578C(?, ? *, ? *);                    /* extern */
Ground *fn_81_5DE8(?, ? *, ? *);                    /* extern */
Ground *fn_81_6334(?, ? *, ? *);                    /* extern */
Ground *fn_81_6858(s16, ? *, ? *, ? *, u8);         /* extern */
Ground *fn_81_78F8(?, s8 *, s8 *);                  /* extern */
nw4r::g3d::ResFileData *getData__9gfArchiveF11ARCNodeTypeiUs(gfArchive *this, ARCNodeType arg0, s32 arg1, u16 arg2); /* extern */
void *getInstance__16CameraControllerFv(CameraController *this); /* extern */
? initPosPokeTrainer__5StageFii(Stage *this, s32 arg0, s32 arg1); /* extern */
? loadStageAttrParam__5StageFP9gfArchivei(Stage *this, gfArchive *arg0, s32 arg1); /* extern */
? memset(? *, ?, ?);                                /* extern */
s32 playSE__14snd3DGeneratorF5SndIDiii(snd3DGenerator *this, SndID arg0, s32 arg1, s32 arg2, s32 arg3); /* extern */
f32 randf__Fv();                                    /* extern */
? registScnAnim__5StageFPQ34nw4r3g3d11ResFileDataUl(Stage *this, nw4r::g3d::ResFileData *arg0, u32 arg1); /* extern */
? releaseArchive__15stCommonGimmickFv(stCommonGimmick *this); /* extern */
? setClassInfo__11stClassInfoFQ26Stages11srStageKindP11stClassInfo(stClassInfo *this, Stages::srStageKind arg0, stClassInfo *arg1); /* extern */
? setPos__14snd3DGeneratorFP5Vec3f(snd3DGenerator *this, Vec3f *arg0); /* extern */
s32 stRayCheck__FP5Vec3fP5Vec3fP5Vec3fP5Vec3fbP11grCollisionbUc(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2, Vec3f *arg3, s32 arg4, grCollision *arg5, s32 arg6, u8 arg7); /* extern */
? stopSE__14snd3DGeneratorFll(snd3DGenerator *this, s32 arg0, s32 arg1); /* extern */
? testStageDataInit__5StageFP9gfArchiveii(Stage *this, gfArchive *arg0, s32 arg1, s32 arg2); /* extern */
? testStageParamInit__5StageFP9gfArchivei(Stage *this, gfArchive *arg0, s32 arg1); /* extern */
stClassInfo *fn_81_40CC(stClassInfo *arg0, s32 arg1); /* static */
snd3DGenerator *fn_81_4E8(snd3DGenerator *arg0);    /* static */
snd3DGenerator *fn_81_518(snd3DGenerator *arg0, s32 arg1); /* static */
stMelee *fn_81_A4(stMelee *arg0);                   /* static */
extern void *g_GameGlobal;
static s8 lbl_81_data_0[0xC8] = {
    0x73,
    0x74,
    0x44,
    0x78,
    0x42,
    0x69,
    0x67,
    0x42,
    0x6C,
    0x75,
    0x65,
    0,
    0,
    0,
    0,
    0,
    0x53,
    0x74,
    0x67,
    0x44,
    0x78,
    0x42,
    0x69,
    0x67,
    0x42,
    0x6C,
    0x75,
    0x65,
    0x53,
    0x65,
    0x61,
    0,
    0x67,
    0x72,
    0x44,
    0x78,
    0x42,
    0x69,
    0x67,
    0x42,
    0x6C,
    0x75,
    0x65,
    0x53,
    0x65,
    0x61,
    0,
    0,
    0x53,
    0x74,
    0x67,
    0x44,
    0x78,
    0x42,
    0x69,
    0x67,
    0x42,
    0x6C,
    0x75,
    0x65,
    0x53,
    0x6B,
    0x79,
    0,
    0x67,
    0x72,
    0x44,
    0x78,
    0x42,
    0x69,
    0x67,
    0x42,
    0x6C,
    0x75,
    0x65,
    0x53,
    0x6B,
    0x79,
    0,
    0,
    0x53,
    0x74,
    0x67,
    0x44,
    0x78,
    0x42,
    0x69,
    0x67,
    0x42,
    0x6C,
    0x75,
    0x65,
    0x42,
    0x61,
    0x73,
    0x65,
    0x41,
    0,
    0,
    0,
    0x67,
    0x72,
    0x44,
    0x78,
    0x42,
    0x69,
    0x67,
    0x42,
    0x6C,
    0x75,
    0x65,
    0x41,
    0x73,
    0x68,
    0x69,
    0x62,
    0x61,
    0x41,
    0,
    0,
    0x53,
    0x74,
    0x67,
    0x44,
    0x78,
    0x42,
    0x69,
    0x67,
    0x42,
    0x6C,
    0x75,
    0x65,
    0x42,
    0x61,
    0x73,
    0x65,
    0x42,
    0,
    0,
    0,
    0x67,
    0x72,
    0x44,
    0x78,
    0x42,
    0x69,
    0x67,
    0x42,
    0x6C,
    0x75,
    0x65,
    0x41,
    0x73,
    0x68,
    0x69,
    0x62,
    0x61,
    0x42,
    0,
    0,
    0x53,
    0x74,
    0x67,
    0x44,
    0x78,
    0x42,
    0x69,
    0x67,
    0x42,
    0x6C,
    0x75,
    0x65,
    0x42,
    0x61,
    0x73,
    0x65,
    0x43,
    0,
    0,
    0,
    0x67,
    0x72,
    0x44,
    0x78,
    0x42,
    0x69,
    0x67,
    0x42,
    0x6C,
    0x75,
    0x65,
    0x41,
    0x73,
    0x68,
    0x69,
    0x62,
    0x61,
    0x43,
    0,
    0,
};
static ? lbl_81_data_C8;                            /* unable to generate initializer: unknown type */
static ? lbl_81_data_DC;                            /* unable to generate initializer: unknown type */
static ? lbl_81_data_F0;                            /* unable to generate initializer: unknown type */
static ? lbl_81_data_104;                           /* unable to generate initializer: unknown type */
static ? lbl_81_data_118;                           /* unable to generate initializer: unknown type */
static ? lbl_81_data_130;                           /* unable to generate initializer: unknown type */
static ? lbl_81_data_380;                           /* unable to generate initializer: unknown type */
static ? lbl_81_data_388;                           /* unable to generate initializer: unknown type */
static ? lbl_81_data_3C4;                           /* unable to generate initializer: unknown type */
static ? lbl_81_data_740;                           /* unable to generate initializer: unknown type */
static ? lbl_81_bss_8;
static stClassInfo lbl_81_bss_14;

void fn_81_70(void) {
    if (__nw__FUlQ25Heaps8HeapType(0xC3CU, (Heaps::HeapType) 0xF) != NULL) {
        fn_81_A4();
    }
}

stMelee *fn_81_A4(stMelee *arg0) {
    ? *temp_r8;
    s32 temp_r4_3;
    s32 temp_r4_4;
    s32 var_ctr;
    s32 var_ctr_2;
    s32 var_ctr_3;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 temp_r4;
    u8 temp_r6_4;
    u8 temp_r6_5;
    u8 temp_r7;
    u8 temp_r7_2;
    u8 var_r6;
    u8 var_r6_2;
    u8 var_r7;
    void *temp_r4_2;
    void *temp_r5;
    void *temp_r5_2;
    void *temp_r5_3;
    void *temp_r5_4;
    void *temp_r6;
    void *temp_r6_2;
    void *temp_r6_3;

    __ct__7stMeleeFPCcQ26Stages11srStageKind(arg0, lbl_81_data_0, (Stages::srStageKind) 0x31);
    arg0->unk364 = NULL;
    temp_r8 = &arg0->unk364;
    arg0->unk368 = NULL;
    arg0->unk3C = &lbl_81_data_3C4;
    arg0->unk360 = 0;
    arg0->unk364 = temp_r8;
    arg0->unk368 = temp_r8;
    __construct_array(&arg0->unkAA0, fn_81_4E8, fn_81_518, 0x10, 5, temp_r8);
    arg0->unk1D8 = 0;
    arg0->unk1DC = 0.0f;
    memset(&arg0->unk1E0, 0, 0x18);
    arg0->unk1F8 = 0;
    memset(&arg0->unk1FC, 0, 0xC);
    memset(&arg0->unk21C, 0, 0xC);
    memset(&arg0->unk208, 0, 0xC);
    var_r6 = 0;
    arg0->unk214 = 0.0f;
    arg0->unk218 = 0;
    var_ctr = 2;
    do {
        temp_r4 = var_r6;
        var_r6 += 6;
        temp_r5 = arg0 + temp_r4;
        temp_r4_2 = arg0 + (temp_r4 * 0x18);
        temp_r4_2->unk230 = 0.0f;
        temp_r4_2->unk234 = 0.0f;
        temp_r4_2->unk238 = 0.0f;
        temp_r4_2->unk23C = 0.0f;
        temp_r4_2->unk240 = 0.0f;
        temp_r4_2->unk244 = 0.0f;
        temp_r5->unk350 = 0xC;
        temp_r4_2->unk248 = 0.0f;
        temp_r4_2->unk24C = 0.0f;
        temp_r4_2->unk250 = 0.0f;
        temp_r4_2->unk254 = 0.0f;
        temp_r4_2->unk258 = 0.0f;
        temp_r4_2->unk25C = 0.0f;
        temp_r5->unk351 = 0xC;
        temp_r4_2->unk260 = 0.0f;
        temp_r4_2->unk264 = 0.0f;
        temp_r4_2->unk268 = 0.0f;
        temp_r4_2->unk26C = 0.0f;
        temp_r4_2->unk270 = 0.0f;
        temp_r4_2->unk274 = 0.0f;
        temp_r5->unk352 = 0xC;
        temp_r4_2->unk278 = 0.0f;
        temp_r4_2->unk27C = 0.0f;
        temp_r4_2->unk280 = 0.0f;
        temp_r4_2->unk284 = 0.0f;
        temp_r4_2->unk288 = 0.0f;
        temp_r4_2->unk28C = 0.0f;
        temp_r5->unk353 = 0xC;
        temp_r4_2->unk290 = 0.0f;
        temp_r4_2->unk294 = 0.0f;
        temp_r4_2->unk298 = 0.0f;
        temp_r4_2->unk29C = 0.0f;
        temp_r4_2->unk2A0 = 0.0f;
        temp_r4_2->unk2A4 = 0.0f;
        temp_r5->unk354 = 0xC;
        temp_r4_2->unk2A8 = 0.0f;
        temp_r4_2->unk2AC = 0.0f;
        temp_r4_2->unk2B0 = 0.0f;
        temp_r4_2->unk2B4 = 0.0f;
        temp_r4_2->unk2B8 = 0.0f;
        temp_r4_2->unk2BC = 0.0f;
        temp_r5->unk355 = 0xC;
        var_ctr -= 1;
    } while (var_ctr != 0);
    arg0->unk228 = 0;
    var_r7 = 0;
    arg0->unk22C = 0.0f;
    arg0->unk35C = 0xC;
    var_ctr_2 = 0xA;
    do {
        temp_r7 = var_r7 + 1;
        temp_r7_2 = temp_r7 + 1;
        temp_r6 = arg0 + (var_r7 * 0x3C);
        temp_r6->unk374 = 0xA;
        temp_r4_3 = temp_r7 * 0x3C;
        temp_r0 = temp_r7_2;
        temp_r6->unk378 = 0.0f;
        var_r7 = temp_r7_2 + 1;
        temp_r6->unk37C = 0.0f;
        temp_r6->unk380 = 0.0f;
        temp_r6->unk384 = 0.0f;
        temp_r6->unk388 = 0.0f;
        temp_r6->unk38C = 0.0f;
        temp_r6->unk390 = 0.0f;
        temp_r6->unk394 = 0.0f;
        temp_r6->unk398 = 0.0f;
        temp_r6->unk39C = 0.0f;
        temp_r6->unk3A0 = 0.0f;
        temp_r6->unk3A4 = 0;
        temp_r6->unk3A8 = 0.0f;
        temp_r6->unk3AC = 0;
        temp_r6_2 = arg0 + temp_r4_3;
        temp_r6_2->unk374 = 0xA;
        temp_r6_2->unk378 = 0.0f;
        temp_r6_2->unk37C = 0.0f;
        temp_r6_2->unk380 = 0.0f;
        temp_r6_2->unk384 = 0.0f;
        temp_r6_2->unk388 = 0.0f;
        temp_r6_2->unk38C = 0.0f;
        temp_r6_2->unk390 = 0.0f;
        temp_r6_2->unk394 = 0.0f;
        temp_r6_2->unk398 = 0.0f;
        temp_r6_2->unk39C = 0.0f;
        temp_r6_2->unk3A0 = 0.0f;
        temp_r6_2->unk3A4 = 0;
        temp_r6_2->unk3A8 = 0.0f;
        temp_r6_2->unk3AC = 0;
        temp_r6_3 = arg0 + (temp_r0 * 0x3C);
        temp_r6_3->unk374 = 0xA;
        temp_r6_3->unk378 = 0.0f;
        temp_r6_3->unk37C = 0.0f;
        temp_r6_3->unk380 = 0.0f;
        temp_r6_3->unk384 = 0.0f;
        temp_r6_3->unk388 = 0.0f;
        temp_r6_3->unk38C = 0.0f;
        temp_r6_3->unk390 = 0.0f;
        temp_r6_3->unk394 = 0.0f;
        temp_r6_3->unk398 = 0.0f;
        temp_r6_3->unk39C = 0.0f;
        temp_r6_3->unk3A0 = 0.0f;
        temp_r6_3->unk3A4 = 0;
        temp_r6_3->unk3A8 = 0.0f;
        temp_r6_3->unk3AC = 0;
        var_ctr_2 -= 1;
    } while (var_ctr_2 != 0);
    arg0->unk36C = 0;
    arg0->unk370 = 0.0f;
    memset(&arg0->unkA7C, 0, 0x1E);
    arg0->unkA9A = 0;
    var_r6_2 = 0;
    arg0->unkA9B = 0;
    arg0->unkA9D = 0;
    arg0->unkAA8 = -1;
    arg0->unkAAC = 0;
    arg0->unkAB8 = -1;
    arg0->unkABC = 0;
    arg0->unkAC8 = -1;
    arg0->unkACC = 0;
    arg0->unkAD8 = -1;
    arg0->unkADC = 0;
    arg0->unkAE8 = -1;
    arg0->unkAEC = 0;
    arg0->unkAF0 = 0;
    var_ctr_3 = 2;
    do {
        temp_r6_4 = var_r6_2 + 1;
        temp_r6_5 = temp_r6_4 + 1;
        temp_r5_2 = arg0 + (var_r6_2 * 0x34);
        temp_r5_2->unkB00 = 0xA;
        temp_r4_4 = temp_r6_4 * 0x34;
        temp_r0_2 = temp_r6_5;
        temp_r5_2->unkB04 = 0.0f;
        var_r6_2 = temp_r6_5 + 1;
        temp_r5_2->unkB08 = 0.0f;
        temp_r5_2->unkB0C = 0.0f;
        temp_r5_2->unkB10 = 0.0f;
        temp_r5_2->unkB14 = 0.0f;
        temp_r5_2->unkB18 = 0.0f;
        temp_r5_2->unkB1C = 0.0f;
        temp_r5_2->unkB20 = 0.0f;
        temp_r5_2->unkB24 = 0.0f;
        temp_r5_2->unkB28 = 0.0f;
        temp_r5_2->unkB2C = 0.0f;
        temp_r5_2->unkB30 = 0;
        temp_r5_2->unkB31 = 0;
        temp_r5_3 = arg0 + temp_r4_4;
        temp_r5_3->unkB00 = 0xA;
        temp_r5_3->unkB04 = 0.0f;
        temp_r5_3->unkB08 = 0.0f;
        temp_r5_3->unkB0C = 0.0f;
        temp_r5_3->unkB10 = 0.0f;
        temp_r5_3->unkB14 = 0.0f;
        temp_r5_3->unkB18 = 0.0f;
        temp_r5_3->unkB1C = 0.0f;
        temp_r5_3->unkB20 = 0.0f;
        temp_r5_3->unkB24 = 0.0f;
        temp_r5_3->unkB28 = 0.0f;
        temp_r5_3->unkB2C = 0.0f;
        temp_r5_3->unkB30 = 0;
        temp_r5_3->unkB31 = 0;
        temp_r5_4 = arg0 + (temp_r0_2 * 0x34);
        temp_r5_4->unkB00 = 0xA;
        temp_r5_4->unkB04 = 0.0f;
        temp_r5_4->unkB08 = 0.0f;
        temp_r5_4->unkB0C = 0.0f;
        temp_r5_4->unkB10 = 0.0f;
        temp_r5_4->unkB14 = 0.0f;
        temp_r5_4->unkB18 = 0.0f;
        temp_r5_4->unkB1C = 0.0f;
        temp_r5_4->unkB20 = 0.0f;
        temp_r5_4->unkB24 = 0.0f;
        temp_r5_4->unkB28 = 0.0f;
        temp_r5_4->unkB2C = 0.0f;
        temp_r5_4->unkB30 = 0;
        temp_r5_4->unkB31 = 0;
        var_ctr_3 -= 1;
    } while (var_ctr_3 != 0);
    arg0->unkAF1 = 0;
    arg0->unkAF4 = 0.0f;
    arg0->unkAF8 = 0;
    arg0->unkAFC = 0;
    arg0->unkC38 = 0;
    return arg0;
}

snd3DGenerator *fn_81_4E8(snd3DGenerator *arg0) {
    __ct__14snd3DGeneratorFv(arg0);
    return arg0;
}

snd3DGenerator *fn_81_518(snd3DGenerator *arg0, s32 arg1) {
    if (arg0 != NULL) {
        __dt__14snd3DGeneratorFv(arg0, -1);
        if (arg1 > 0) {
            __dl__FPv(arg0);
        }
    }
    return arg0;
}

stCommonGimmick *fn_81_570(stCommonGimmick *arg0, s32 arg1) {
    ? *temp_r3;

    if (arg0 != NULL) {
        arg0->unk3C = &lbl_81_data_3C4;
        lbl_81_data_3C4.unk2A4(arg0 + 0x360);
        releaseArchive__15stCommonGimmickFv(arg0);
        __destroy_arr(&arg0->unkAA0, fn_81_518, 0x10, 5);
        temp_r3 = &arg0->unk360;
        if (temp_r3 != NULL) {
            fn_8015C238(temp_r3, 0);
        }
        __dt__7stMeleeFv((stMelee *) arg0, 0);
        if (arg1 > 0) {
            __dl__FPv(arg0);
        }
    }
    return arg0;
}

s32 fn_81_618(void) {
    return 1;
}

void fn_81_620(CameraController *arg0) {
    nw4r::g3d::ResFileData *sp8;
    nw4r::g3d::ResFileData *temp_r3_2;
    void *temp_r3;
    void *temp_r3_3;

    temp_r3 = getInstance__16CameraControllerFv(arg0);
    temp_r3->unk44 = (u8) (temp_r3->unk44 | 4);
    testStageParamInit__5StageFP9gfArchivei((Stage *) arg0, arg0->unk1A0, 0xA);
    testStageDataInit__5StageFP9gfArchiveii((Stage *) arg0, arg0->unk1A0, 0x14, 0x144);
    initPosPokeTrainer__5StageFii((Stage *) arg0, 4, 1);
    arg0->unk3C->unk21C(arg0, 0);
    arg0->unk3C->unk21C(arg0, 1);
    arg0->unk3C->unk230(arg0, 2);
    arg0->unk3C->unk230(arg0, 3);
    arg0->unk3C->unk230(arg0, 4);
    arg0->unk3C->unk230(arg0, 5);
    arg0->unk3C->unk230(arg0, 6);
    arg0->unk3C->unk230(arg0, 7);
    arg0->unk3C->unk230(arg0, 8);
    arg0->unk3C->unk230(arg0, 9);
    arg0->unk3C->unk230(arg0, 0xA);
    arg0->unk3C->unk230(arg0, 0xB);
    arg0->unk3C->unk230(arg0, 0xC);
    arg0->unk3C->unk230(arg0, 0xD);
    createCollision__5StageFP9gfArchiveiP6Ground((Stage *) arg0, arg0->unk1A0, 2, NULL);
    arg0->unk3C->unk220(arg0, 0xE);
    arg0->unk3C->unk220(arg0, 0xF);
    arg0->unk3C->unk220(arg0, 0x10);
    arg0->unk3C->unk224(arg0, 0x11);
    arg0->unk3C->unk228(arg0, 0x12);
    arg0->unk3C->unk22C(arg0, 0x13);
    createCollision__5StageFP9gfArchiveiP6Ground((Stage *) arg0, arg0->unk1A0, 3, NULL);
    arg0->unk3C->unk234(arg0);
    arg0->unk3C->unkC4(arg0);
    temp_r3_2 = getData__9gfArchiveF11ARCNodeTypeiUs(arg0->unk1A0, (ARCNodeType) 2, 0x64, 0xFFFEU);
    if (temp_r3_2 != NULL) {
        sp8 = temp_r3_2;
        createStagePositions__5StageFPQ34nw4r3g3d7ResFile((Stage *) arg0, (nw4r::g3d::ResFile *) &sp8);
    } else {
        createStagePositions__5StageFv((Stage *) arg0);
    }
    arg0->unk3C->unk1F4(arg0);
    loadStageAttrParam__5StageFP9gfArchivei((Stage *) arg0, arg0->unk1A0, 0x46);
    registScnAnim__5StageFPQ34nw4r3g3d11ResFileDataUl((Stage *) arg0, getData__9gfArchiveF11ARCNodeTypeiUs(arg0->unk1A0, (ARCNodeType) 5, 0, 0xFFFEU), 0U);
    temp_r3_3 = g_GameGlobal->unk8;
    if ((temp_r3_3 != NULL) && ((u32) (((u8) temp_r3_3->unk8 >> 2U) & 0x3F) == 7) && ((u8) temp_r3_3->unk10 == 0x9F)) {
        arg0->unkC38 = 1;
    }
}

void fn_81_984(Stage *arg0, s32 arg1) {
    Ground *var_r31;

    switch (arg1) {                                 /* irregular */
    case 0:
        var_r31 = fn_81_42C8(1, &lbl_81_data_0[0x10], &lbl_81_data_0[0x20]);
        break;
    case 1:
        var_r31 = fn_81_42C8(2, &lbl_81_data_0[0x30], &lbl_81_data_0[0x40]);
        break;
    default:
        var_r31 = NULL;
        break;
    }
    if (var_r31 != NULL) {
        addGround__5StageFP6Ground(arg0, var_r31);
        var_r31->unk3C->unk9C(var_r31, arg0->unk1A0, 0, 0);
        var_r31->unk3C->unkA4(var_r31, arg0->unk9C);
        var_r31->unk3C->unk1CC(var_r31, &arg0->unk1FC);
        var_r31->unk3C->unk1D0(var_r31, &arg0->unk1E0);
        var_r31->unk3C->unk1D4(var_r31, &arg0->unk208);
    }
}

/* Ground::setStageData (void *) */
void setStageData__6GroundFPv(Ground *this, void *arg0) {
    this->unk60 = arg0;
}

void fn_81_AA4(void *arg0, s32 arg1) {
    arg0->unk158 = arg1;
}

void fn_81_AAC(void *arg0, s32 arg1) {
    arg0->unk15C = arg1;
}

void fn_81_AB4(void *arg0, s32 arg1) {
    arg0->unk160 = arg1;
}

void fn_81_ABC(Stage *arg0, s32 arg1) {
    Ground *var_r31;
    s32 var_r30;

    var_r30 = saved_reg_r30;
    switch (arg1) {                                 /* irregular */
    case 14:
        var_r31 = fn_81_5184(0xB, &lbl_81_data_0[0x50], &lbl_81_data_0[0x64]);
        var_r30 = arg0 + 0xB00;
        break;
    case 15:
        var_r31 = fn_81_5184(0xC, &lbl_81_data_0[0x78], &lbl_81_data_0[0x8C]);
        var_r30 = arg0 + 0xB34;
        break;
    case 16:
        var_r31 = fn_81_5184(0xD, &lbl_81_data_0[0xA0], &lbl_81_data_0[0xB4]);
        var_r30 = arg0 + 0xB68;
        break;
    default:
        var_r31 = NULL;
        break;
    }
    if (var_r31 != NULL) {
        addGround__5StageFP6Ground(arg0, var_r31);
        var_r31->unk3C->unk9C(var_r31, arg0->unk1A0, 0, 0);
        var_r31->unk3C->unkA4(var_r31, arg0->unk9C);
        var_r31->unk3C->unk1D0(var_r31, &arg0->unk1E0);
        var_r31->unk3C->unk1D4(var_r31, var_r30);
    }
}

void fn_81_BF4(void *arg0, s32 arg1) {
    arg0->unk15C = arg1;
}

void fn_81_BFC(void *arg0, s32 arg1) {
    arg0->unk164 = arg1;
}

void fn_81_C04(Stage *arg0, s32 arg1) {
    Ground *var_r31;

    if (arg1 != 0x11) {
        var_r31 = NULL;
    } else {
        var_r31 = fn_81_578C(0xE, "StgDxBigBluePTBase", "grDxBigBlueAshibaT");
    }
    if (var_r31 != NULL) {
        addGround__5StageFP6Ground(arg0, var_r31);
        var_r31->unk3C->unk9C(var_r31, arg0->unk1A0, 0, 0);
        var_r31->unk3C->unkA4(var_r31, arg0->unk9C);
        var_r31->unk3C->unk1DC(var_r31, arg0->unkBC);
        var_r31->unk3C->unk1D0(var_r31, &arg0->unk1E0);
        var_r31->unk3C->unk1D4(var_r31, &arg0->unkB9C);
        var_r31->unk3C->unk74(var_r31, fn_27_2249E0(arg0));
    }
}

void fn_81_D18(void *arg0, s32 arg1) {
    arg0->unk17C = arg1;
}

void fn_81_D20(Stage *arg0, s32 arg1) {
    Ground *var_r31;

    if (arg1 != 0x12) {
        var_r31 = NULL;
    } else {
        var_r31 = fn_81_5DE8(0x15, "StgDxBigBlueFalcon", "grDxBigBlueFalcon");
    }
    if (var_r31 != NULL) {
        addGround__5StageFP6Ground(arg0, var_r31);
        var_r31->unk3C->unk9C(var_r31, arg0->unk1A0, 0, 0);
        var_r31->unk3C->unkA4(var_r31, arg0->unk9C);
        var_r31->unk3C->unk1D0(var_r31, &arg0->unk1E0);
        var_r31->unk3C->unk1D4(var_r31, &arg0->unkBD0);
    }
}

void fn_81_DFC(Stage *arg0, s32 arg1) {
    Ground *var_r31;

    if (arg1 != 0x13) {
        var_r31 = NULL;
    } else {
        var_r31 = fn_81_6334(0x16, "StgDxBigBlueTyukeisha", &lbl_81_data_130);
    }
    if (var_r31 != NULL) {
        addGround__5StageFP6Ground(arg0, var_r31);
        var_r31->unk3C->unk9C(var_r31, arg0->unk1A0, 0, 0);
        var_r31->unk3C->unkA4(var_r31, arg0->unk9C);
        var_r31->unk3C->unk1D0(var_r31, &arg0->unk1E0);
        var_r31->unk3C->unk1D4(var_r31, &arg0->unkC04);
    }
}

void fn_81_ED8(Stage *arg0, u32 arg1) {
    Ground *var_r31;
    s32 var_r30;

    var_r30 = saved_reg_r30;
    switch (arg1) {
    case 2:
        var_r31 = fn_81_4650(0x1F, lbl_81_data_0 + 0x144, lbl_81_data_0 + 0x158);
        var_r30 = 0;
        break;
    case 3:
        var_r31 = fn_81_4650(0x20, lbl_81_data_0 + 0x16C, lbl_81_data_0 + 0x180);
        var_r30 = 1;
        break;
    case 4:
        var_r31 = fn_81_4650(0x21, lbl_81_data_0 + 0x194, lbl_81_data_0 + 0x1A8);
        var_r30 = 2;
        break;
    case 5:
        var_r31 = fn_81_4650(0x22, lbl_81_data_0 + 0x1BC, lbl_81_data_0 + 0x1D0);
        var_r30 = 3;
        break;
    case 6:
        var_r31 = fn_81_78F8(0x23, lbl_81_data_0 + 0x1E4, lbl_81_data_0 + 0x1F8);
        var_r30 = 4;
        break;
    case 7:
        var_r31 = fn_81_4650(0x24, lbl_81_data_0 + 0x20C, lbl_81_data_0 + 0x220);
        var_r30 = 5;
        break;
    case 8:
        var_r31 = fn_81_4650(0x25, lbl_81_data_0 + 0x234, lbl_81_data_0 + 0x248);
        var_r30 = 6;
        break;
    case 9:
        var_r31 = fn_81_4650(0x26, lbl_81_data_0 + 0x260, lbl_81_data_0 + 0x278);
        var_r30 = 7;
        break;
    case 10:
        var_r31 = fn_81_4650(0x27, lbl_81_data_0 + 0x290, lbl_81_data_0 + 0x2A8);
        var_r30 = 8;
        break;
    case 11:
        var_r31 = fn_81_4650(0x28, lbl_81_data_0 + 0x2C0, lbl_81_data_0 + 0x2D8);
        var_r30 = 9;
        break;
    case 12:
        var_r31 = fn_81_4650(0x29, lbl_81_data_0 + 0x2F0, lbl_81_data_0 + 0x308);
        var_r30 = 0xA;
        break;
    case 13:
        var_r31 = fn_81_4650(0x2A, lbl_81_data_0 + 0x320, lbl_81_data_0 + 0x334);
        var_r30 = 0xB;
        break;
    default:
        var_r31 = NULL;
        break;
    }
    if (var_r31 != NULL) {
        addGround__5StageFP6Ground(arg0, var_r31);
        var_r31->unk3C->unk9C(var_r31, arg0->unk1A0, 0, 0);
        var_r31->unk3C->unkA4(var_r31, arg0->unk9C);
        var_r31->unk3C->unk1D8(var_r31, &arg0->unk230);
        var_r31->unk3C->unk1DC(var_r31, &arg0->unk1E0);
        var_r31->unk3C->unk1E0(var_r31, &arg0->unk1FC);
        var_r31->unk3C->unk1E4(var_r31, &arg0->unk208);
        var_r31->unk3C->unk1E8(var_r31, var_r30);
        var_r31->unk3C->unk1EC(var_r31, &arg0->unk35C);
        var_r31->unk3C->unk1F0(var_r31, arg0 + var_r30 + 0x350);
    }
}

void fn_81_1184(void *arg0, s32 arg1) {
    arg0->unk164 = arg1;
}

void fn_81_118C(void *arg0, s32 arg1) {
    arg0->unk168 = arg1;
}

void fn_81_1194(void *arg0, s32 arg1) {
    arg0->unk16C = arg1;
}

void fn_81_119C(void *arg0, s32 arg1) {
    arg0->unk170 = arg1;
}

void fn_81_11A4(void *arg0, s8 arg1) {
    arg0->unk174 = arg1;
}

void fn_81_11AC(void *arg0, s32 arg1) {
    arg0->unk178 = arg1;
}

void fn_81_11B4(void *arg0, s32 arg1) {
    arg0->unk17C = arg1;
}

void fn_81_11BC(void *arg0) {
    s32 temp_r5_2;
    s32 var_ctr;
    s8 temp_r0;
    s8 temp_r4;
    s8 temp_r5;
    s8 temp_r6;
    u8 temp_r3;
    u8 temp_r5_3;
    u8 var_r28;
    u8 var_r29;
    u8 var_r4;
    u8 var_r9;
    void *temp_r3_2;
    void *temp_r4_2;
    void *temp_r8;

    var_r9 = 0;
    var_ctr = 5;
    do {
        temp_r8 = arg0 + var_r9;
        temp_r6 = var_r9 + 2;
        temp_r8->unkA7C = var_r9;
        temp_r5 = var_r9 + 3;
        temp_r4 = var_r9 + 4;
        temp_r0 = var_r9 + 5;
        temp_r8->unkA7D = (s8) (var_r9 + 1);
        var_r9 += 6;
        temp_r8->unkA7E = temp_r6;
        temp_r8->unkA7F = temp_r5;
        temp_r8->unkA80 = temp_r4;
        temp_r8->unkA81 = temp_r0;
        var_ctr -= 1;
    } while (var_ctr != 0);
    var_r28 = 0;
    do {
        var_r4 = 0x1D;
        temp_r5_2 = (s32) ((f32) 0x1D * randf__Fv());
        temp_r3 = temp_r5_2 & ((s32) (-(s32) (u8) temp_r5_2 | (u8) temp_r5_2) >> 0x1F);
        if (temp_r3 < 0x1DU) {
            var_r4 = temp_r3;
        }
        temp_r3_2 = arg0 + var_r28;
        var_r28 += 1;
        temp_r4_2 = arg0 + var_r4;
        temp_r5_3 = temp_r3_2->unkA7C;
        temp_r3_2->unkA7C = (u8) temp_r4_2->unkA7C;
        temp_r4_2->unkA7C = temp_r5_3;
    } while (var_r28 < 0x1EU);
    var_r29 = 0;
    do {
        arg0->unk3C->unk238(arg0, var_r29);
        var_r29 += 1;
    } while (var_r29 < 0x1EU);
}

void fn_81_130C(Stage *arg0, s32 arg1) {
    ? *temp_r6;
    Ground *temp_r3;
    u8 temp_r7;

    temp_r7 = arg1 + 0x1E;
    temp_r6 = "TopN";
    temp_r3 = fn_81_6858((s16) (arg1 + 0x82), temp_r6, "grDxBigBlueCar", temp_r6, temp_r7);
    if (temp_r3 != NULL) {
        addGround__5StageFP6Ground(arg0, temp_r3);
        temp_r3->unk3C->unk9C(temp_r3, arg0->unk1A0, 0, 0);
        temp_r3->unk3C->unkA4(temp_r3, arg0->unk9C);
        temp_r3->unk3C->unk1E0(temp_r3, &arg0->unk1E0);
        temp_r3->unk3C->unk1E4(temp_r3, &arg0->unk1FC);
        temp_r3->unk3C->unk1E8(temp_r3, arg1);
        temp_r3->unk3C->unk1EC(temp_r3, &arg0->unkA9A);
        temp_r3->unk3C->unk1F0(temp_r3, &arg0->unkA7C);
        temp_r3->unk3C->unk1F4(temp_r3, &arg0->unk374);
        createCollision__5StageFP9gfArchiveiP6Ground(arg0, arg0->unk1A0, (s32) temp_r7, temp_r3);
    }
}

void fn_81_1468(void *arg0, s32 arg1) {
    arg0->unk158 = arg1;
}

void fn_81_1470(void *arg0, s32 arg1) {
    arg0->unk15C = arg1;
}

void fn_81_1478(void *arg0, s8 arg1) {
    arg0->unk16C = arg1;
}

void fn_81_1480(void *arg0, s32 arg1) {
    arg0->unk170 = arg1;
}

void fn_81_1488(void *arg0, s32 arg1) {
    arg0->unk174 = arg1;
}

void fn_81_1490(void *arg0, s32 arg1) {
    arg0->unk178 = arg1;
}

void fn_81_1498(void *arg0, f32 farg0) {
    arg0->unk3C->unk23C();
    arg0->unk3C->unk240(arg0, farg0);
    arg0->unk3C->unk250(arg0, farg0);
    arg0->unk3C->unk254(arg0, farg0);
    arg0->unk3C->unk26C(arg0, farg0);
}

void fn_81_153C(CameraController *arg0) {
    void *temp_r3;

    temp_r3 = getInstance__16CameraControllerFv(arg0);
    arg0->unk1E0 = temp_r3->unk158;
    arg0->unk1E4 = temp_r3->unk160;
    arg0->unk1E8 = 0.0f;
    arg0->unk1EC = temp_r3->unk15C;
    arg0->unk1F0 = temp_r3->unk164;
    arg0->unk1F4 = 0.0f;
}

void fn_81_1598(void *arg0, f32 farg0) {
    f32 temp_f1;
    u8 temp_r0;

    temp_f1 = arg0->unk22C - farg0;
    arg0->unk22C = temp_f1;
    if (temp_f1 < 0.0f) {
        arg0->unk22C = 0.0f;
    }
    temp_r0 = arg0->unk228;
    switch ((s32) temp_r0) {                        /* irregular */
    case 0:
        arg0->unk3C->unk298(arg0, 0xB, arg0 + 0x360);
        arg0->unk35B = 0xD;
        arg0->unk228 = 1U;
        return;
    case 1:
        arg0->unk228 = 3U;
        return;
    case 3:
        arg0->unk3C->unk244(arg0, farg0);
        arg0->unk3C->unk248(arg0, farg0);
        arg0->unk3C->unk24C(arg0, farg0);
        /* fallthrough */
    case 2:
        return;
    }
}

void fn_81_16A4(void *arg0) {
    void *temp_r3;

    temp_r3 = arg0->unk3C->unk2AC(arg0 + 0x360);
    if ((temp_r3 != NULL) && ((u8) (arg0 + temp_r3->unk8)->unk350 == 0xC)) {
        arg0->unk3C->unk2A0(arg0, arg0 + 0x360);
    }
}

void fn_81_1714(void *arg0, ? arg_sp0) {
    f32 sp10;
    f32 spC;
    f32 sp8;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f3;
    s32 var_r28;
    u8 temp_r4;
    void *temp_r27;
    void *temp_r3;
    void *temp_r3_2;
    void *temp_r3_3;
    void *temp_r3_4;
    void *temp_r3_5;

    temp_r3 = arg0->unk3C->unk2B0(arg0 + 0x360);
    if ((temp_r3 != NULL) && (temp_r4 = temp_r3->unk8, temp_r3_2 = arg0 + (temp_r4 * 0x18), temp_f3 = temp_r3_2->unk230, sp8 = temp_f3, spC = temp_r3_2->unk234, sp10 = temp_r3_2->unk238, ((temp_f3 > arg0->unk1EC) == 0))) {
        if (temp_r4 == 0xB) {
            var_r28 = 1;
            goto block_17;
        }
        temp_r27 = arg0->unk9C;
        if ((temp_r27 != NULL) && (var_r28 = (s32) (lbl_81_rodata_0.unk10 * randf__Fv()), ((arg0->unk3C->unk2A8(arg0, (u8) var_r28, arg0 + 0x360) == 0) != 0))) {
            temp_r3_3 = arg0 + (temp_r3->unk8 * 0x18);
            temp_f1 = temp_r3_3->unk240;
            sp8 = temp_r3_3->unk23C;
            spC = temp_f1;
            sp10 = temp_r3_3->unk244;
            switch ((u8) var_r28) {
            case 4:
                if (!(temp_f1 > lbl_81_rodata_0.unk14)) {
                    arg0->unk1F8 = 0U;
                default:
block_13:
                    if (((u8) temp_r3->unk8 != 4) || ((s32) arg0->unk1F8 != 0)) {
                        temp_r3_4 = arg0 + ((u8) var_r28 * 0x18);
                        temp_f1_2 = spC + (temp_r3_4->unk240 - temp_r3_4->unk234);
                        spC = temp_f1_2;
                        if (!(temp_f1_2 < 0.0f) && !(temp_f1_2 > lbl_81_rodata_0.unk18)) {
block_17:
                            temp_r3_5 = arg0->unk3C->unk2B0(arg0, arg0 + 0x360);
                            if (temp_r3_5 != NULL) {
                                arg0->unk3C->unk298(arg0, (u8) var_r28, arg0 + 0x360);
                                (arg0 + (u8) var_r28)->unk350 = (u8) temp_r3_5->unk8;
                            }
                        }
                    }
                }
                break;
            case 0:
            case 7:
            case 8:
                M2C_ERROR(/* unknown instruction: cror eq, lt, eq */);
                if (temp_f1 == temp_r27->unk8) {
                    return;
                }
                goto block_13;
            case 2:
            case 3:
            case 9:
            case 10:
                M2C_ERROR(/* unknown instruction: cror eq, gt, eq */);
                if (temp_f1 != temp_r27->unk4) {
                    goto block_13;
                }
                break;
            }
        }
    }
}

void fn_81_191C(void *arg0) {
    void *temp_r3;

    temp_r3 = arg0->unk3C->unk2AC(arg0 + 0x360);
    if (temp_r3 != NULL) {
        arg0->unk35C = (u8) temp_r3->unk8;
        if ((u8) temp_r3->unk8 == 4) {
            if (arg0->unk210 == 360.0f) {
                arg0->unk1F8 = 1;
            }
        } else {
            arg0->unk1F8 = 0;
            arg0->unk210 = 0.0f;
        }
    }
}

void fn_81_19A8(void *arg0, f32 farg0) {
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    Vec3f sp44;
    Vec3f sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 sp1C;
    f32 sp18;
    f32 sp14;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f2;
    f32 temp_f3;
    f32 temp_f3_2;
    f32 temp_f3_3;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f4_4;
    u8 temp_r0;
    void *temp_r30;

    temp_f1 = arg0->unk1DC - farg0;
    arg0->unk1DC = temp_f1;
    if (temp_f1 < 0.0f) {
        arg0->unk1DC = 0.0f;
    }
    temp_r0 = arg0->unk1D8;
    switch ((s32) temp_r0) {                        /* irregular */
    case 0:
        arg0->unk1D8 = 1U;
        return;
    case 1:
        temp_r30 = arg0->unk9C;
        if (temp_r30 != NULL) {
            sp5C = 0.0f;
            sp60 = lbl_81_rodata_0.unk20;
            sp64 = 0.0f;
            sp50 = 0.0f;
            sp54 = lbl_81_rodata_0.unk24;
            sp58 = 0.0f;
            if ((stRayCheck__FP5Vec3fP5Vec3fP5Vec3fP5Vec3fbP11grCollisionbUc((Vec3f *) &sp5C, (Vec3f *) &sp50, &sp44, &sp38, 1, fn_27_222878(arg0, NULL, lbl_81_rodata_0.unk20, 0.0f), 0, 1U) == 0) || (M2C_ERROR(/* unknown instruction: cror eq, lt, eq */), ((sp3C == 0.0f) != 0))) {
                if ((s32) arg0->unk218 == 0) {
                    temp_f4 = -arg0->unk200;
                    arg0->unk218 = 1U;
                    sp28 = 0.0f;
                    temp_f3 = temp_r30->unk6C;
                    sp34 = 0.0f;
                    sp20 = 0.0f;
                    M2C_ERROR(/* unknown instruction: ps_sub $f0, $f0, $f5 */);
                    sp24 = -arg0->unk220;
                    sp2C = temp_f3;
                    sp30 = temp_f4;
                    sp1C = sp10;
                    M2C_ERROR(/* unknown instruction: ps_sub $f0, $f1, $f2 */);
                    sp14 = sp8;
                    sp18 = spC;
                    fn_8003DE70(&sp14, sp8, M2C_ERROR(/* psq_l unimplemented */), temp_f3, temp_f4, M2C_ERROR(/* psq_l unimplemented */));
                    temp_f3_2 = temp_r30->unk7C;
                    temp_f1_2 = sp18 * temp_f3_2;
                    sp14 *= temp_f3_2;
                    sp18 = temp_f1_2;
                    sp1C *= temp_f3_2;
                    arg0->unk214 = temp_f1_2;
                }
                temp_f4_2 = arg0->unk214 - (temp_r30->unk78 * farg0);
                arg0->unk21C = (f32) arg0->unk1FC;
                arg0->unk220 = (f32) arg0->unk200;
                arg0->unk214 = temp_f4_2;
                arg0->unk224 = (f32) arg0->unk204;
                arg0->unk200 = (f32) (arg0->unk200 - (temp_f4_2 * farg0));
                return;
            }
            if ((u8) arg0->unk218 == 1) {
                temp_f3_3 = arg0->unk200;
                temp_f4_3 = arg0->unk214 - (temp_r30->unk78 * farg0);
                arg0->unk21C = (f32) arg0->unk1FC;
                arg0->unk220 = temp_f3_3;
                arg0->unk214 = temp_f4_3;
                temp_f0 = arg0->unk200 - (temp_f4_3 * farg0);
                arg0->unk224 = (f32) arg0->unk204;
                arg0->unk200 = temp_f0;
                if (temp_r30->unk0 < (sp48 + (temp_f0 - temp_f3_3))) {
                    arg0->unk218 = 0U;
                    arg0->unk200 = (f32) (temp_f3_3 + (temp_r30->unk0 - sp48));
                }
            } else {
                temp_f4_4 = arg0->unk200;
                arg0->unk21C = (f32) arg0->unk1FC;
                arg0->unk220 = temp_f4_4;
                arg0->unk224 = (f32) arg0->unk204;
                temp_f2 = arg0->unk200 + (temp_r30->unk0 - sp48);
                arg0->unk200 = temp_f2;
                if ((temp_f2 - temp_f4_4) > lbl_81_rodata_0.unk28) {
                    arg0->unk214 = 0.0f;
                    arg0->unk218 = 1U;
                    arg0->unk200 = temp_f4_4;
                }
            }
            arg0->unkAF0 = 1;
        } else {
            return;
        }
        break;
    }
}

void fn_81_1C84(void *arg0, f32 farg0) {
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f2;
    u8 temp_r0;
    void *temp_r31;

    temp_r31 = arg0->unk9C;
    if (temp_r31 != NULL) {
        temp_f1 = arg0->unk370 - farg0;
        arg0->unk370 = temp_f1;
        if (temp_f1 < 0.0f) {
            arg0->unk370 = 0.0f;
        }
        temp_r0 = arg0->unk36C;
        switch ((s32) temp_r0) {                    /* irregular */
        case 0:
            if ((s32) arg0->unkAF0 != 0) {
                arg0->unk3C->unk268(arg0, farg0);
                arg0->unk36C = 1U;
            case 1:
                temp_f1_2 = randf__Fv();
                temp_f2 = temp_r31->unk10;
                arg0->unk36C = 3U;
                arg0->unk370 = (f32) (temp_f2 + ((temp_r31->unk14 - temp_f2) * temp_f1_2));
            case 3:
                arg0->unk3C->unk258(arg0, farg0);
                arg0->unk3C->unk25C(arg0, farg0);
                arg0->unk3C->unk260(arg0, farg0);
                if (arg0->unk370 != 0.0f) {
                    arg0->unk3C->unk264(arg0, farg0);
                }
            }
            break;
        }
    } else {
    case 2:
    }
}

void fn_81_1DE4(void *arg0, f32 farg0) {
    ? sp48;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 sp1C;
    f32 sp18;
    s16 sp8;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f1_3;
    f32 temp_f1_4;
    f32 temp_f20;
    f32 temp_f21;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f26;
    f32 temp_f27;
    f32 temp_f28;
    f32 temp_f29;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f30;
    f32 temp_f31;
    f32 temp_f3;
    f32 var_f1;
    nw4r::math *var_r3_2;
    u32 temp_r26;
    u32 var_r27;
    u32 var_r3;
    u8 temp_r6;
    void *temp_r28;
    void *temp_r29;

    temp_r28 = arg0->unk9C;
    if (temp_r28 != NULL) {
        temp_r26 = temp_r28->unk18;
        var_r27 = 0U;
        temp_f24 = lbl_81_rodata_0.unk2C;
        temp_f26 = lbl_81_rodata_0.unk30;
        temp_f27 = lbl_81_rodata_0.unk34;
        temp_f29 = lbl_81_rodata_0.unk3C;
        temp_f28 = lbl_81_rodata_0.unk38;
        temp_f30 = lbl_81_rodata_0.unk40;
        temp_f31 = lbl_81_rodata_0.unk44;
        temp_f20 = lbl_81_rodata_0.unk48;
        temp_f21 = lbl_81_rodata_0.unk4C;
        temp_f22 = lbl_81_rodata_0.unk28;
loop_26:
        if (var_r27 != temp_r26) {
            var_r3 = arg0->unkA9A + var_r27;
            if (var_r3 >= 0x1EU) {
                var_r3 -= 0x1E;
            }
            temp_r6 = (arg0 + var_r3)->unkA7C;
            temp_r29 = arg0 + (temp_r6 * 0x3C);
            var_r3_2 = arg0->unk3C->unk280(arg0, &sp48, &sp3C, temp_r6);
            if ((var_r3_2 == NULL) || (M2C_ERROR(/* unknown instruction: cror eq, lt, eq */), ((sp40 == 0.0f) != 0))) {
                if ((s32) temp_r29->unk3A4 == 0) {
                    sp2C = 0.0f;
                    sp38 = 0.0f;
                    temp_r29->unk3A4 = 1U;
                    M2C_ERROR(/* unknown instruction: ps_sub $f3, $f3, $f4 */);
                    temp_f2 = temp_r29->unk37C;
                    sp24 = 0.0f;
                    sp28 = temp_r29->unk388;
                    sp30 = temp_r28->unk6C;
                    sp34 = temp_f2;
                    sp20 = sp14;
                    M2C_ERROR(/* unknown instruction: ps_sub $f0, $f1, $f3 */);
                    sp18 = spC;
                    sp1C = sp10;
                    var_r3_2 = fn_8003DE70(&sp18, spC, temp_f2, M2C_ERROR(/* psq_l unimplemented */), M2C_ERROR(/* psq_l unimplemented */));
                    temp_f3 = temp_r28->unk84;
                    temp_f1 = sp1C * temp_f3;
                    sp18 *= temp_f3;
                    sp1C = temp_f1;
                    sp20 *= temp_f3;
                    temp_r29->unk39C = temp_f1;
                }
                temp_r29->unk39C = 0.0f;
                temp_r29->unk384 = (f32) temp_r29->unk378;
                temp_r29->unk388 = (f32) temp_r29->unk37C;
                temp_r29->unk38C = (f32) temp_r29->unk380;
                temp_f1_2 = temp_r29->unk37C;
                if (temp_f1_2 > 0.0f) {
                    temp_f1_3 = temp_r29->unk378;
                    if (temp_f1_3 > 0.0f) {
                        var_f1 = temp_f1_3 / arg0->unk1EC;
                    } else {
                        var_f1 = temp_f1_3 / arg0->unk1E0;
                    }
                    temp_f1_4 = ((var_f1 - 0.0f) >= 0.0f) ? var_f1 : 0.0f;
                    sp8 = (s16) (temp_f26 * (((temp_f1_4 - temp_f24) >= 0.0f) ? temp_f24 : temp_f1_4));
                    temp_f0 = temp_r29->unk37C - ((temp_f28 + (temp_f28 * (temp_f24 - CosFIdx__Q24nw4r4mathFf(var_r3_2, temp_f27 * M2C_ERROR(/* psq_l unimplemented */))))) * farg0);
                    temp_r29->unk37C = temp_f0;
                    if (temp_f0 < 0.0f) {
                        temp_r29->unk37C = 0.0f;
                    }
                } else if (temp_f1_2 < 0.0f) {
                    temp_f0_2 = temp_f1_2 + (temp_f29 * farg0);
                    temp_r29->unk37C = temp_f0_2;
                    if (temp_f0_2 > 0.0f) {
                        temp_r29->unk37C = 0.0f;
                    }
                }
                temp_r29->unk398 = (f32) temp_r28->unk58;
            } else if ((u8) temp_r29->unk3A4 == 1) {
                temp_f0_3 = temp_r29->unk39C - (temp_f30 * temp_r28->unk80 * farg0);
                temp_r29->unk39C = temp_f0_3;
                if (temp_f0_3 < temp_f31) {
                    temp_r29->unk39C = temp_f31;
                }
                temp_r29->unk384 = (f32) temp_r29->unk378;
                temp_r29->unk388 = (f32) temp_r29->unk37C;
                temp_r29->unk38C = (f32) temp_r29->unk380;
                temp_f2_2 = temp_r29->unk37C + (temp_r29->unk39C * farg0);
                temp_r29->unk37C = temp_f2_2;
                if ((sp4C + temp_r28->unk2C) > temp_f2_2) {
                    temp_r29->unk3A4 = 0U;
                    temp_r29->unk37C = (f32) (sp4C + temp_r28->unk2C);
                }
            } else {
                temp_r29->unk384 = (f32) temp_r29->unk378;
                temp_r29->unk388 = (f32) temp_r29->unk37C;
                temp_r29->unk38C = (f32) temp_r29->unk380;
                temp_r29->unk37C = (f32) (sp4C + temp_r28->unk2C);
                temp_r29->unk398 = (f32) ((temp_f20 * fn_80162540(sp40, sp3C)) - temp_f21);
                if (fabs(temp_r29->unk37C - temp_r29->unk388) > temp_f22) {
                    temp_r29->unk3A4 = 1U;
                    temp_r29->unk39C = 0.0f;
                    temp_r29->unk37C = (f32) temp_r29->unk388;
                }
            }
            var_r27 += 1;
            goto loop_26;
        }
    }
}

void fn_81_21EC(void *arg0, ? arg_sp0) {
    s32 temp_cr0_eq;
    s32 var_cr0_eq;
    s32 var_r31;
    u32 var_r28;
    u8 temp_r0;
    void *temp_r29;
    void *temp_r5;

    if ((s32) arg0->unk9C != 0) {
        var_r28 = 0U;
        var_r31 = 0;
loop_15:
        if (var_r28 != 5U) {
            temp_r29 = arg0 + var_r31;
            var_cr0_eq = (s32) temp_r29->unkAA8 == -1;
            if (var_cr0_eq == 0) {
                var_cr0_eq = fn_800797A4(temp_r29 + 0xAA0) == 0;
                if (var_cr0_eq != 0) {
                    temp_r29->unkAA8 = -1;
                }
            }
            M2C_ERROR(/* "cmpwi $cr1, $r4, -0x1" is not supported, the first arg is not $cr0 */);
            if (var_cr0_eq != 0) {
                var_r28 += 1;
                var_r31 += 0x10;
            } else {
                temp_r5 = arg0 + ((arg0 + temp_r29->unkAAC)->unkA7C * 0x3C);
                temp_r0 = temp_r5->unk374;
                temp_cr0_eq = (s32) temp_r0 == 8;
                if (temp_cr0_eq == 0) {
                    if ((s32) temp_r0 < 8) {
                        if ((s32) temp_r0 < 4) {

                        } else {
                            setPos__14snd3DGeneratorFP5Vec3f(arg0 + var_r31 + 0xAA0, temp_r5 + 0x378);
                        }
                    }
                } else if (temp_cr0_eq == 0) {
                    stopSE__14snd3DGeneratorFll(arg0 + var_r31 + 0xAA0, temp_r29->unkAA8, 0x78);
                }
                var_r28 += 1;
                var_r31 += 0x10;
            }
            goto loop_15;
        }
    }
}

void fn_81_22DC(void *arg0, ? arg_sp0) {
    f32 temp_f2;
    u32 temp_r26;
    u32 var_r27;
    u32 var_r4;
    u8 temp_r0;
    u8 temp_r3;
    u8 temp_r3_2;
    u8 temp_r3_3;
    u8 temp_r3_4;
    u8 temp_r5;
    void *temp_r28;
    void *temp_r29;

    temp_r28 = arg0->unk9C;
    if (temp_r28 != NULL) {
        temp_r26 = temp_r28->unk18;
        var_r27 = 0U;
loop_26:
        if (var_r27 != temp_r26) {
            temp_r5 = arg0->unkA9A;
            var_r4 = temp_r5 + var_r27;
            if (var_r4 >= 0x1EU) {
                var_r4 -= 0x1E;
            }
            temp_r29 = arg0 + ((arg0 + var_r4)->unkA7C * 0x3C);
            temp_r0 = temp_r29->unk374;
            switch ((s32) temp_r0) {                /* irregular */
            case 7:
                break;
            case 6:
                if (arg0->unk3C->unk284(arg0) == 0) {
                    temp_r29->unk374 = 5U;
                } else {
                    temp_r29->unk374 = 7U;
                }
                break;
            case 8:
                if (var_r4 == temp_r5) {
                    temp_r3 = arg0->unkA9A + 1;
                    arg0->unkA9A = temp_r3;
                    if (temp_r3 == 0x1E) {
                        arg0->unkA9A = 0U;
                    }
                    temp_r3_2 = arg0->unkA9C;
                    arg0->unkA9D = 1;
                    if ((s32) temp_r3_2 != 0) {
                        arg0->unkA9C = (u8) (temp_r3_2 - 1);
                    }
                } else {
                    temp_r3_3 = arg0->unkA9B;
                    if (var_r4 == temp_r3_3) {
                        if ((s32) temp_r3_3 == 0) {
                            arg0->unkA9B = 0x1DU;
                        } else {
                            arg0->unkA9B = (u8) (temp_r3_3 - 1);
                        }
                        temp_r3_4 = arg0->unkA9C;
                        arg0->unkA9D = 0;
                        if ((s32) temp_r3_4 != 0) {
                            arg0->unkA9C = (u8) (temp_r3_4 - 1);
                        }
                    }
                }
                temp_r29->unk374 = 9U;
                temp_f2 = temp_r28->unk10;
                arg0->unk370 = (f32) (temp_f2 + ((temp_r28->unk14 - temp_f2) * randf__Fv()));
                break;
            }
            var_r27 += 1;
            goto loop_26;
        }
    }
}

void fn_81_245C(void *arg0) {
    u8 temp_r3;
    u8 temp_r5;
    u8 temp_r5_2;
    u8 var_r6;
    void *temp_r31;
    void *temp_r4;

    temp_r31 = arg0->unk9C;
    if ((temp_r31 != NULL) && ((u8) arg0->unkA9C != (u32) temp_r31->unk18)) {
        if (randf__Fv() < 0.5f) {
            arg0->unkA9D = 1U;
        } else {
            arg0->unkA9D = 0U;
        }
        temp_r5 = arg0->unkA9D;
        if (temp_r5 == 1) {
            var_r6 = arg0->unkA9B + 1;
            if (var_r6 >= 0x1EU) {
                var_r6 -= 0x1E;
            }
        } else {
            temp_r3 = arg0->unkA9A;
            var_r6 = 0x1D;
            if ((s32) temp_r3 != 0) {
                var_r6 = temp_r3 - 1;
            }
        }
        temp_r4 = arg0 + ((arg0 + var_r6)->unkA7C * 0x3C);
        if ((u8) temp_r4->unk374 == 0xA) {
            if (temp_r5 == 1) {
                temp_r4->unk374 = 4U;
                temp_r4->unk3AC = 0;
                temp_r4->unk378 = (f32) (arg0->unk1EC + temp_r31->unk68);
                temp_r4->unk37C = (f32) arg0->unk200;
                temp_r4->unk380 = 0.0f;
                arg0->unkA9B = var_r6;
            } else {
                temp_r4->unk374 = 4U;
                temp_r4->unk3AC = 1;
                temp_r4->unk378 = (f32) (arg0->unk1E0 - temp_r31->unk68);
                temp_r4->unk37C = (f32) arg0->unk200;
                temp_r4->unk380 = 0.0f;
                arg0->unkA9A = var_r6;
            }
            temp_r5_2 = arg0->unkA9C;
            arg0->unkA9C = (u8) (temp_r5_2 + 1);
            arg0->unk3C->unk294(arg0, var_r6, temp_r5_2);
        }
    }
}

void fn_81_25C4(void *arg0) {
    ? sp14;
    ? sp8;
    f32 temp_f1;
    f32 temp_f29;
    f32 temp_f2;
    f32 temp_f3;
    f32 temp_f4;
    s8 temp_r3;
    u32 temp_r25;
    u32 temp_r31;
    u32 var_r26;
    u32 var_r3;
    u8 temp_r3_2;
    u8 var_r0;
    u8 var_r27;
    u8 var_r27_2;
    u8 var_r28;
    u8 var_r28_2;
    void *temp_r27;
    void *temp_r30;
    void *temp_r6;
    void *temp_r9;
    void *temp_r9_2;
    void *temp_r9_3;
    void *temp_r9_4;

    temp_r30 = arg0->unk9C;
    if (temp_r30 != NULL) {
        var_r0 = 0x1D;
        temp_r3 = (s8) (lbl_81_rodata_0.unk54 * randf__Fv());
        arg0->unkA9A = temp_r3;
        temp_r3_2 = (u8) temp_r3 & ((s32) (-(s32) (u8) temp_r3 | (u8) temp_r3) >> 0x1F);
        if (temp_r3_2 < 0x1DU) {
            var_r0 = temp_r3_2;
        }
        var_r28 = var_r0;
        arg0->unkA9A = (s8) var_r0;
        if (var_r28 >= 0x1EU) {
            var_r28 -= 0x1E;
        }
        temp_r9 = arg0 + ((arg0 + var_r28)->unkA7C * 0x3C);
        temp_r9->unk374 = 5;
        temp_r9->unk3AC = 1;
        temp_r9->unk378 = (f32) (arg0->unk1E0 - temp_r30->unk68);
        temp_r9->unk37C = (f32) arg0->unk200;
        temp_r9->unk380 = 0.0f;
        arg0->unkAA8 = playSE__14snd3DGeneratorF5SndIDiii(arg0 + 0xAA0, (SndID) 0x1DC9, 0, 0, -1);
        var_r27 = (u8) arg0->unkA9A + 1;
        arg0->unkAAC = var_r28;
        if (var_r27 >= 0x1EU) {
            var_r27 -= 0x1E;
        }
        temp_r9_2 = arg0 + ((arg0 + var_r27)->unkA7C * 0x3C);
        temp_r9_2->unk374 = 5;
        temp_r9_2->unk3AC = 1;
        temp_r9_2->unk378 = (f32) (arg0->unk1E0 - temp_r30->unk68);
        temp_r9_2->unk37C = (f32) arg0->unk200;
        temp_r9_2->unk380 = 0.0f;
        arg0->unkAB8 = playSE__14snd3DGeneratorF5SndIDiii(arg0 + 0xAB0, (SndID) 0x1DCA, 0, 0, -1);
        var_r28_2 = (u8) arg0->unkA9A + 2;
        arg0->unkABC = var_r27;
        if (var_r28_2 >= 0x1EU) {
            var_r28_2 -= 0x1E;
        }
        temp_r9_3 = arg0 + ((arg0 + var_r28_2)->unkA7C * 0x3C);
        temp_r9_3->unk374 = 5;
        temp_r9_3->unk3AC = 0;
        temp_r9_3->unk378 = (f32) (arg0->unk1EC + temp_r30->unk68);
        temp_r9_3->unk37C = (f32) arg0->unk200;
        temp_r9_3->unk380 = 0.0f;
        arg0->unkAC8 = playSE__14snd3DGeneratorF5SndIDiii(arg0 + 0xAC0, (SndID) 0x1DCB, 0, 0, -1);
        var_r27_2 = (u8) arg0->unkA9A + 3;
        arg0->unkACC = var_r28_2;
        if (var_r27_2 >= 0x1EU) {
            var_r27_2 -= 0x1E;
        }
        temp_r9_4 = arg0 + ((arg0 + var_r27_2)->unkA7C * 0x3C);
        temp_r9_4->unk374 = 5;
        temp_r9_4->unk3AC = 0;
        temp_r9_4->unk378 = (f32) (arg0->unk1EC + temp_r30->unk68);
        temp_r9_4->unk37C = (f32) arg0->unk200;
        temp_r9_4->unk380 = 0.0f;
        arg0->unkAD8 = playSE__14snd3DGeneratorF5SndIDiii(arg0 + 0xAD0, (SndID) 0x1DCC, 0, 0, -1);
        temp_f29 = lbl_81_rodata_0.unk50;
        var_r26 = 0U;
        arg0->unkADC = var_r27_2;
        arg0->unkA9B = var_r27_2;
        arg0->unkA9C = 4;
        temp_r25 = temp_r30->unk18;
        temp_r31 = temp_r25 + 1;
loop_18:
        if (var_r26 != temp_r25) {
            var_r3 = (u8) arg0->unkA9A + var_r26;
            if (var_r3 >= 0x1EU) {
                var_r3 -= 0x1E;
            }
            temp_r6 = arg0 + var_r3;
            temp_f4 = temp_f29 * -temp_r30->unk1C;
            temp_r27 = arg0 + (temp_r6->unkA7C * 0x3C);
            temp_f3 = (f32) (var_r26 + 1);
            temp_r27->unk378 = temp_f4;
            temp_f2 = temp_f3 / (f32) temp_r31;
            temp_f1 = temp_r30->unk1C * temp_f2;
            temp_r27->unk378 = (f32) ((f32) temp_f4 + temp_f1);
            temp_r27->unk380 = 0.0f;
            if (arg0->unk3C->unk280(arg0, &sp14, &sp8, temp_r6->unkA7C, temp_f1, temp_f2, temp_f3, temp_f4) != 0) {
                M2C_ERROR(/* unknown instruction: cror eq, lt, eq */);
                if (spC != 0.0f) {
                    temp_r27->unk37C = (f32) (sp18 + temp_r30->unk2C);
                }
            }
            var_r26 += 1;
            goto loop_18;
        }
    }
}

void fn_81_293C(Stage *arg0, f32 farg0) {
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f1_3;
    f32 temp_f1_4;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r28_5;
    s32 var_r0;
    u32 temp_r28;
    u32 temp_r28_2;
    u32 temp_r28_3;
    u32 temp_r28_4;
    u8 temp_r0;
    void *temp_r30;
    void *temp_r3;

    temp_r30 = arg0->unk9C;
    if (temp_r30 != NULL) {
        temp_f1 = arg0->unkAF4 - farg0;
        arg0->unkAF4 = temp_f1;
        if (temp_f1 < 0.0f) {
            arg0->unkAF4 = 0.0f;
        }
        temp_r0 = arg0->unkAF1;
        switch ((s32) temp_r0) {                    /* irregular */
        case 0:
            if ((s32) arg0->unkAF0 != 0) {
                arg0->unkBD0 = 1U;
                arg0->unkBFC = temp_r30->unkCC;
                if (fn_27_2249E0(arg0) == 1U) {
                    arg0->unkB9C = 1;
                    arg0->unkBC8 = temp_r30->unkCC;
                }
                arg0->unkAF1 = 1;
            case 1:
                temp_r28 = temp_r30->unkDC;
                arg0->unkAF8 = (s32) ((f32) temp_r28 + ((f32) (temp_r30->unkE0 - temp_r28) * randf__Fv()));
                temp_r28_2 = temp_r30->unk11C;
                temp_f1_2 = randf__Fv();
                arg0->unkAF1 = 2;
                arg0->unkAFC = (s32) ((f32) temp_r28_2 + ((f32) (temp_r30->unk120 - temp_r28_2) * temp_f1_2));
            case 2:
                temp_f1_3 = randf__Fv();
                temp_f2 = temp_r30->unk88;
                arg0->unkAF1 = 3;
                arg0->unkAF4 = temp_f2 + ((temp_r30->unk8C - temp_f2) * temp_f1_3);
            case 3:
                if (arg0->unkAF4 == 0.0f) {
                    if ((u8) arg0->unkBD0 == 0xA) {
                        if ((s32) arg0->unkAF8 == 0) {
                            arg0->unkBD0 = 1U;
                            arg0->unkBFC = temp_r30->unkCC;
                            temp_r28_3 = temp_r30->unkDC;
                            arg0->unkAF8 = (s32) ((f32) temp_r28_3 + ((f32) (temp_r30->unkE0 - temp_r28_3) * randf__Fv()));
                        } else if ((s32) arg0->unkAFC == 0) {
                            arg0->unkC04 = 1;
                            temp_f2_2 = temp_r30->unkF4;
                            arg0->unkC30 = temp_f2_2 + ((temp_r30->unkF8 - temp_f2_2) * randf__Fv());
                            temp_r28_4 = temp_r30->unk11C;
                            arg0->unkAFC = (s32) ((f32) temp_r28_4 + ((f32) (temp_r30->unk120 - temp_r28_4) * randf__Fv()));
                        } else {
                            temp_f1_4 = randf__Fv();
                            if (temp_f1_4 < lbl_81_rodata_0.unk60) {
                                var_r0 = 0;
                            } else if (temp_f1_4 < lbl_81_rodata_0.unk64) {
                                var_r0 = 1;
                            } else {
                                var_r0 = 2;
                            }
                            temp_r28_5 = var_r0 * 0x34;
                            temp_r3 = arg0 + temp_r28_5;
                            if ((u8) temp_r3->unkB00 == 0xA) {
                                temp_r3->unkB00 = 1U;
                                temp_f2_3 = temp_r30->unk90;
                                (arg0 + temp_r28_5)->unkB2C = (f32) (temp_f2_3 + ((temp_r30->unk94 - temp_f2_3) * randf__Fv()));
                                temp_r0_2 = arg0->unkAF8 - 1;
                                arg0->unkAF8 = temp_r0_2;
                                if (temp_r0_2 < 0) {
                                    arg0->unkAF8 = 0;
                                }
                                temp_r0_3 = arg0->unkAFC - 1;
                                arg0->unkAFC = temp_r0_3;
                                if (temp_r0_3 < 0) {
                                    arg0->unkAFC = 0;
                                }
                            }
                        }
                    }
                    arg0->unkAF1 = 2;
                }
                arg0->unk3C->unk270(arg0, farg0);
            }
            break;
        }
    }
}

void fn_81_2CA0(void *arg0, f32 farg0) {
    if ((u8) arg0->unkB00 != 0xA) {
        arg0->unk3C->unk274(0);
    }
    if ((u8) arg0->unkB34 != 0xA) {
        arg0->unk3C->unk274(arg0, 1, farg0);
    }
    if ((u8) arg0->unkB68 != 0xA) {
        arg0->unk3C->unk274(arg0, 2, farg0);
    }
    if ((u8) arg0->unkB9C != 0xA) {
        arg0->unk3C->unk274(arg0, 3, farg0);
    }
    if ((u8) arg0->unkBD0 != 0xA) {
        arg0->unk3C->unk278(arg0, farg0);
    }
    if ((u8) arg0->unkC04 != 0xA) {
        arg0->unk3C->unk27C(arg0, farg0);
    }
}

void fn_81_2DB4(void *arg0, s32 arg1, f32 farg0) {
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    Vec3f sp1C;
    Vec3f sp10;
    f32 spC;
    f32 sp8;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f3;
    f32 temp_f3_2;
    f32 temp_f4;
    f32 var_f2;
    f32 var_f31;
    f32 var_f3;
    void *temp_r29;
    void *temp_r31;

    temp_r29 = arg0->unk9C;
    if (temp_r29 != NULL) {
        temp_r31 = arg0 + (arg1 * 0x34);
        temp_f4 = temp_r31->unkB0C;
        temp_f3 = temp_r31->unkB04;
        sp34 = temp_f3;
        sp38 = lbl_81_rodata_0.unk68;
        sp3C = temp_f4;
        sp28 = 0.0f;
        sp2C = lbl_81_rodata_0.unk6C;
        sp30 = 0.0f;
        if ((stRayCheck__FP5Vec3fP5Vec3fP5Vec3fP5Vec3fbP11grCollisionbUc((Vec3f *) &sp34, (Vec3f *) &sp28, &sp1C, &sp10, 1, fn_27_222878(NULL, NULL, lbl_81_rodata_0.unk68, temp_f3, temp_f4), 0, 1U) == 0) || (var_f31 = 0.0f, M2C_ERROR(/* unknown instruction: cror eq, lt, eq */), ((sp14 == 0.0f) != 0))) {
            temp_r31->unkB30 = 1;
            temp_r31->unkB24 = 0.0f;
            temp_r31->unkB10 = (f32) temp_r31->unkB04;
            temp_r31->unkB14 = (f32) temp_r31->unkB08;
            temp_r31->unkB18 = (f32) temp_r31->unkB0C;
            arg0->unk3C->unk288(arg0, temp_r31 + 0xB04);
            arg0->unk3C->unk28C(arg0, &spC, temp_r31 + 0xB04, 1);
            temp_f0 = temp_r31->unkB08 - temp_r31->unkB2C;
            if ((u8) temp_r31->unkB31 == 1) {
                if (temp_f0 > 0.0f) {
                    var_f3 = 0.0f - (temp_r29->unkA8 * farg0);
                } else {
                    var_f3 = 0.0f + (temp_r29->unkAC * farg0);
                }
            } else if (temp_f0 > 0.0f) {
                var_f3 = 0.0f - (temp_r29->unk98 * farg0);
            } else {
                var_f3 = 0.0f + (temp_r29->unk98 * farg0);
            }
            temp_r31->unkB28 = var_f3;
            temp_f3_2 = temp_r31->unkB08 + ((f32) var_f3 * farg0);
            temp_r31->unkB08 = temp_f3_2;
            temp_f2 = temp_r29->unk90;
            if (temp_f3_2 < (temp_f2 + (lbl_81_rodata_0.unk50 * (temp_r29->unk94 - temp_f2)) + fabs(temp_r29->unk0))) {
                temp_r31->unkB2C = (f32) (temp_r31->unkB2C + temp_r29->unk98);
                return;
            }
            temp_r31->unkB2C = (f32) (temp_r31->unkB2C - temp_r29->unk98);
            return;
        }
        if (arg0->unk3C->unk288(arg0, temp_r31 + 0xB04) == 1U) {
            var_f31 = 0.0f + lbl_81_rodata_0.unk28;
        }
        if (arg0->unk3C->unk28C(arg0, &sp8, temp_r31 + 0xB04, 1) == 1U) {
            var_f31 += sp8;
        }
        if ((u8) arg0->unkBD0 != 0xA) {
            var_f31 += arg0->unkBD8;
        }
        temp_r31->unkB10 = (f32) temp_r31->unkB04;
        temp_r31->unkB14 = (f32) temp_r31->unkB08;
        temp_r31->unkB18 = (f32) temp_r31->unkB0C;
        temp_f0_2 = temp_r31->unkB08 - (var_f31 + (sp20 + temp_r31->unkB2C));
        if ((u8) temp_r31->unkB31 == 1) {
            if (temp_f0_2 > 0.0f) {
                var_f2 = 0.0f - (lbl_81_rodata_0.unk50 * temp_r29->unkA8 * farg0);
            } else {
                var_f2 = 0.0f + (lbl_81_rodata_0.unk50 * temp_r29->unkAC * farg0);
            }
        } else if (temp_f0_2 > 0.0f) {
            var_f2 = 0.0f - (lbl_81_rodata_0.unk50 * temp_r29->unk98 * farg0);
        } else {
            var_f2 = 0.0f + (lbl_81_rodata_0.unk50 * temp_r29->unk98 * farg0);
        }
        temp_r31->unkB28 = var_f2;
        temp_f2_2 = temp_r31->unkB08 + ((f32) var_f2 * farg0);
        temp_r31->unkB08 = temp_f2_2;
        if ((sp20 + temp_r31->unkB2C) > temp_f2_2) {
            temp_r31->unkB30 = 0;
            temp_r31->unkB08 = (f32) (sp20 + temp_r31->unkB2C);
        }
        temp_r31->unkB24 = (f32) ((lbl_81_rodata_0.unk48 * fn_80162540(sp14, (bitwise f32) sp10)) - lbl_81_rodata_0.unk4C);
        if (var_f31 != 0.0f) {
            temp_r31->unkB2C = (f32) (temp_r31->unkB2C + fabs(temp_r31->unkB28));
        } else {
            temp_r31->unkB2C = (f32) (temp_r31->unkB2C - fabs(temp_r31->unkB28));
        }
        temp_f1 = temp_r29->unk90;
        temp_f0_3 = temp_r31->unkB2C;
        temp_f2_3 = temp_r29->unk94;
        temp_f1_2 = ((temp_f0_3 - temp_f1) >= 0.0f) ? temp_f0_3 : temp_f1;
        temp_r31->unkB2C = (f32) (((temp_f1_2 - temp_f2_3) >= 0.0f) ? temp_f2_3 : temp_f1_2);
    }
}

void fn_81_31C0(void *arg0, f32 farg0) {
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    Vec3f sp14;
    Vec3f sp8;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f1_3;
    f32 temp_f2;
    f32 temp_f3;
    f32 temp_f4;
    f32 var_f1;
    f32 var_f2;
    void *temp_r30;

    temp_r30 = arg0->unk9C;
    if (temp_r30 != NULL) {
        temp_f4 = arg0->unkBDC;
        temp_f3 = arg0->unkBD4;
        sp2C = temp_f3;
        sp30 = lbl_81_rodata_0.unk68;
        sp34 = temp_f4;
        sp20 = 0.0f;
        sp24 = lbl_81_rodata_0.unk6C;
        sp28 = 0.0f;
        if ((stRayCheck__FP5Vec3fP5Vec3fP5Vec3fP5Vec3fbP11grCollisionbUc((Vec3f *) &sp2C, (Vec3f *) &sp20, &sp14, &sp8, 1, fn_27_222878(NULL, NULL, lbl_81_rodata_0.unk68, temp_f3, temp_f4), 0, 1U) == 0) || (M2C_ERROR(/* unknown instruction: cror eq, lt, eq */), ((spC == 0.0f) != 0))) {
            arg0->unkC00 = 1;
            arg0->unkBF4 = 0.0f;
            if ((arg0->unkBD8 - arg0->unkBFC) > 0.0f) {
                var_f2 = 0.0f - (lbl_81_rodata_0.unk50 * temp_r30->unkD0 * farg0);
            } else {
                var_f2 = 0.0f + (lbl_81_rodata_0.unk50 * temp_r30->unkD0 * farg0);
            }
            arg0->unkBF8 = var_f2;
            temp_f1 = arg0->unkBD8 + ((f32) var_f2 * farg0);
            arg0->unkBD8 = temp_f1;
            if (temp_f1 < (temp_r30->unkCC + fabs(temp_r30->unk0))) {
                arg0->unkBFC = (f32) (arg0->unkBFC + (temp_r30->unkD0 * farg0));
                return;
            }
            arg0->unkBFC = (f32) (arg0->unkBFC - (temp_r30->unkD0 * farg0));
            return;
        }
        arg0->unkBE0 = (f32) arg0->unkBD4;
        arg0->unkBE4 = (f32) arg0->unkBD8;
        arg0->unkBE8 = (f32) arg0->unkBDC;
        if ((arg0->unkBD8 - (sp18 + arg0->unkBFC)) > 0.0f) {
            var_f1 = 0.0f - (lbl_81_rodata_0.unk50 * temp_r30->unkD0 * farg0);
        } else {
            var_f1 = 0.0f + (lbl_81_rodata_0.unk50 * temp_r30->unkD0 * farg0);
        }
        arg0->unkBF8 = var_f1;
        temp_f1_2 = arg0->unkBFC;
        temp_f2 = arg0->unkBD8 + ((f32) var_f1 * farg0);
        arg0->unkBD8 = temp_f2;
        if ((sp18 + temp_f1_2) > temp_f2) {
            arg0->unkC00 = 0;
            arg0->unkBD8 = (f32) (sp18 + temp_f1_2);
        }
        temp_f1_3 = arg0->unkBFC - fabs(arg0->unkBF8);
        arg0->unkBF4 = (f32) ((lbl_81_rodata_0.unk48 * fn_80162540(spC, (bitwise f32) sp8)) - lbl_81_rodata_0.unk4C);
        arg0->unkBFC = temp_f1_3;
        temp_f0 = temp_r30->unkCC;
        M2C_ERROR(/* unknown instruction: cror eq, lt, eq */);
        if (temp_f1_3 == temp_f0) {
            arg0->unkBFC = temp_f0;
        }
        arg0->unkBF4 = (f32) ((lbl_81_rodata_0.unk48 * fn_80162540(spC, (bitwise f32) sp8)) - lbl_81_rodata_0.unk4C);
    }
}

void fn_81_344C(void *arg0, f32 farg0) {
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    Vec3f sp1C;
    Vec3f sp10;
    f32 spC;
    f32 sp8;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f1_3;
    f32 temp_f1_4;
    f32 temp_f1_5;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f3;
    f32 temp_f4;
    f32 var_f2;
    f32 var_f31;
    f32 var_f31_2;
    f32 var_f3;
    void *temp_r30;

    temp_r30 = arg0->unk9C;
    if (temp_r30 != NULL) {
        temp_f4 = arg0->unkC10;
        temp_f3 = arg0->unkC08;
        sp34 = temp_f3;
        sp38 = lbl_81_rodata_0.unk68;
        sp3C = temp_f4;
        sp28 = 0.0f;
        sp2C = lbl_81_rodata_0.unk6C;
        sp30 = 0.0f;
        if ((stRayCheck__FP5Vec3fP5Vec3fP5Vec3fP5Vec3fbP11grCollisionbUc((Vec3f *) &sp34, (Vec3f *) &sp28, &sp1C, &sp10, 1, fn_27_222878(NULL, NULL, lbl_81_rodata_0.unk68, temp_f3, temp_f4), 0, 1U) == 0) || (var_f31 = 0.0f, M2C_ERROR(/* unknown instruction: cror eq, lt, eq */), ((sp14 == 0.0f) != 0))) {
            temp_f2 = arg0->unkC08;
            temp_f1 = arg0->unkC0C;
            arg0->unkC34 = 1;
            var_f31_2 = 0.0f;
            arg0->unkC14 = temp_f2;
            arg0->unkC18 = temp_f1;
            arg0->unkC1C = (f32) arg0->unkC10;
            if (arg0->unk3C->unk288(arg0, arg0 + 0xC08, temp_f1, temp_f2) == 1U) {
                var_f31_2 = 0.0f + lbl_81_rodata_0.unk28;
            }
            if (arg0->unk3C->unk28C(arg0, &spC, arg0 + 0xC08, 1) == 1U) {
                var_f31_2 += spC;
            }
            if ((u8) arg0->unkBD0 != 0xA) {
                var_f31_2 += arg0->unkBD8;
            }
            if ((arg0->unkC0C - (arg0->unkC30 + var_f31_2)) > 0.0f) {
                var_f2 = 0.0f + (arg0->unkC2C * farg0);
            } else {
                var_f2 = 0.0f - (arg0->unkC2C * farg0);
            }
            temp_f2_2 = arg0->unkC0C + (var_f2 * farg0);
            arg0->unkC0C = temp_f2_2;
            temp_f1_2 = temp_r30->unkF4;
            if (temp_f2_2 < (temp_f1_2 + (lbl_81_rodata_0.unk50 * (temp_r30->unkF8 - temp_f1_2)) + fabs(temp_r30->unk0))) {
                arg0->unkC30 = (f32) (arg0->unkC30 + (farg0 * (lbl_81_rodata_0.unk50 * (temp_r30->unk108 - temp_r30->unk104))));
                return;
            }
            arg0->unkC30 = (f32) (arg0->unkC30 - (farg0 * (lbl_81_rodata_0.unk50 * (temp_r30->unk108 - temp_r30->unk104))));
            return;
        }
        if (arg0->unk3C->unk288(arg0, arg0 + 0xC08) == 1U) {
            var_f31 = 0.0f + lbl_81_rodata_0.unk28;
        }
        if (arg0->unk3C->unk28C(arg0, &sp8, arg0 + 0xC08, 1) == 1U) {
            var_f31 += sp8;
        }
        if ((u8) arg0->unkBD0 != 0xA) {
            var_f31 += arg0->unkBD8;
        }
        arg0->unkC14 = (f32) arg0->unkC08;
        arg0->unkC18 = (f32) arg0->unkC0C;
        arg0->unkC1C = (f32) arg0->unkC10;
        if ((arg0->unkC0C - (var_f31 + (sp20 + arg0->unkC30))) > 0.0f) {
            var_f3 = 0.0f + (lbl_81_rodata_0.unk50 * arg0->unkC2C * farg0);
        } else {
            var_f3 = 0.0f - (lbl_81_rodata_0.unk50 * arg0->unkC2C * farg0);
        }
        temp_f1_3 = arg0->unkC30;
        temp_f2_3 = arg0->unkC0C + (var_f3 * farg0);
        arg0->unkC0C = temp_f2_3;
        if ((sp20 + temp_f1_3) > temp_f2_3) {
            arg0->unkC34 = 0;
            arg0->unkC0C = (f32) (sp20 + temp_f1_3);
        }
        if (var_f31 != 0.0f) {
            arg0->unkC30 = (f32) (arg0->unkC30 + fabs(arg0->unkC2C));
        } else {
            arg0->unkC30 = (f32) (arg0->unkC30 - fabs(arg0->unkC2C));
        }
        temp_f1_4 = temp_r30->unkF4;
        temp_f0 = arg0->unkC30;
        temp_f2_4 = temp_r30->unkF8;
        temp_f1_5 = ((temp_f0 - temp_f1_4) >= 0.0f) ? temp_f0 : temp_f1_4;
        arg0->unkC30 = (f32) (((temp_f1_5 - temp_f2_4) >= 0.0f) ? temp_f2_4 : temp_f1_5);
    }
}

void fn_81_37E0(s32 arg0, Vec3f *arg1, Vec3f *arg2, s32 arg3) {
    f32 sp1C;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp8;
    f32 temp_f3;
    f32 temp_f4;
    void *temp_r4;

    temp_r4 = arg0 + (arg3 * 0x3C);
    temp_f4 = temp_r4->unk380;
    temp_f3 = temp_r4->unk378;
    sp14 = temp_f3;
    sp18 = lbl_81_rodata_0.unk20;
    sp1C = temp_f4;
    sp8 = 0.0f;
    spC = lbl_81_rodata_0.unk24;
    sp10 = 0.0f;
    stRayCheck__FP5Vec3fP5Vec3fP5Vec3fP5Vec3fbP11grCollisionbUc((Vec3f *) &sp14, (Vec3f *) &sp8, arg1, arg2, 1, fn_27_222878(NULL, &lbl_81_rodata_0, 0.0f, lbl_81_rodata_0.unk20, temp_f3, temp_f4), 0, 1U);
}

s32 fn_81_387C(void *arg0, u32 arg1) {
    s32 var_r6;
    u32 temp_r0;
    u32 var_ctr;
    u32 var_r5;
    u8 temp_r0_2;
    void *temp_r5;

    temp_r5 = arg0->unk9C;
    if (temp_r5 == NULL) {
        return 0;
    }
    temp_r0 = temp_r5->unk18;
    var_r6 = 0;
    var_ctr = temp_r0;
    if (temp_r0 != 0U) {
loop_3:
        var_r5 = arg0->unkA9A + var_r6;
        if (var_r5 >= 0x1EU) {
            var_r5 -= 0x1E;
        }
        if (var_r5 != arg1) {
            temp_r0_2 = (arg0 + ((arg0 + var_r5)->unkA7C * 0x3C))->unk374;
            if ((s32) temp_r0_2 < 0xA) {
                if ((s32) temp_r0_2 < 6) {
                    goto block_10;
                }
                return 0;
            }
        }
block_10:
        var_r6 += 1;
        var_ctr -= 1;
        if (var_ctr == 0U) {
            /* Duplicate return node #11. Try simplifying control flow for better match */
            return 1;
        }
        goto loop_3;
    }
    return 1;
}

s32 fn_81_3900(void *arg0, f32 *arg1) {
    f32 temp_f2;
    f32 temp_f3;
    s32 var_r6;
    u32 temp_r0;
    u32 var_ctr;
    u32 var_r5;
    void *temp_r5;

    if (arg1 == NULL) {
        return 0;
    }
    temp_r5 = arg0->unk9C;
    if (temp_r5 == NULL) {
        return 0;
    }
    temp_r0 = temp_r5->unk18;
    var_r6 = 0;
    var_ctr = temp_r0;
    if (temp_r0 != 0U) {
loop_5:
        var_r5 = arg0->unkA9A + var_r6;
        if (var_r5 >= 0x1EU) {
            var_r5 -= 0x1E;
        }
        temp_f3 = *arg1;
        temp_f2 = (arg0 + ((arg0 + var_r5)->unkA7C * 0x3C))->unk378;
        if ((temp_f3 > (temp_f2 - 75.0f)) && (temp_f3 < (75.0f + temp_f2))) {
            return 1;
        }
        var_r6 += 1;
        var_ctr -= 1;
        if (var_ctr == 0U) {
            /* Duplicate return node #11. Try simplifying control flow for better match */
            return 0;
        }
        goto loop_5;
    }
    return 0;
}

s32 fn_81_399C(s32 arg0, f32 *arg1, void *arg2, u32 arg3, f32 farg5, f32 farg6) {
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f3;
    f32 temp_f5;
    f32 var_f6;
    f32 var_f7;
    f32 var_f8;
    s32 var_ctr;
    s32 var_r8;
    void *var_r3;

    var_f6 = farg5;
    var_f7 = farg6;
    if (arg1 == NULL) {
        return 0;
    }
    if (arg2 == NULL) {
        return 0;
    }
    var_f8 = 0.0f;
    var_r3 = arg0 + 0xB00;
    *arg1 = 0.0f;
    var_r8 = 0;
    var_ctr = 6;
    do {
        if ((u8) var_r3->unk0 != 0xA) {
            switch (var_r8) {                       /* irregular */
            case 0:
                var_f6 = lbl_81_rodata_0.unk74;
                var_f7 = lbl_81_rodata_0.unk78;
                break;
            case 1:
                var_f6 = lbl_81_rodata_0.unk7C;
                var_f7 = lbl_81_rodata_0.unk78;
                break;
            case 2:
                var_f6 = lbl_81_rodata_0.unk7C;
                var_f7 = lbl_81_rodata_0.unk78;
                break;
            case 3:
                var_f6 = lbl_81_rodata_0.unk7C;
                var_f7 = lbl_81_rodata_0.unk78;
                break;
            case 4:
                var_f6 = lbl_81_rodata_0.unk80;
                var_f7 = lbl_81_rodata_0.unk7C;
                break;
            case 5:
                var_f6 = lbl_81_rodata_0.unk84;
                var_f7 = var_f6;
                break;
            }
            temp_f3 = lbl_81_rodata_0.unk88 * var_f6;
            temp_f2 = var_r3->unk4;
            temp_f5 = arg2->unk0;
            if ((temp_f5 > (temp_f2 - temp_f3)) && (temp_f5 < (temp_f2 + temp_f3))) {
                if (arg3 == 1U) {
                    temp_f2_2 = var_r3->unk8;
                    if ((arg2->unk4 > temp_f2_2) && (var_f8 < temp_f2_2)) {
                        var_f8 = temp_f2_2 + (lbl_81_rodata_0.unk50 * var_f7);
                    }
                } else {
                    temp_f2_3 = var_r3->unk8;
                    if ((arg2->unk4 < temp_f2_3) && (var_f8 < temp_f2_3)) {
                        var_f8 = temp_f2_3 + (lbl_81_rodata_0.unk50 * var_f7);
                    }
                }
            }
        }
        var_r3 += 0x34;
        var_r8 += 1;
        var_ctr -= 1;
    } while (var_ctr != 0);
    if (var_f8 == 0.0f) {
        return 0;
    }
    *arg1 = var_f8;
    return 1;
}

s32 fn_81_3B04(s32 arg0, f32 *arg1, void *arg2, u32 arg3) {
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f3;
    f32 temp_f5;
    f32 var_f8;
    s32 var_r7;
    u32 var_r10;
    void *temp_r8;

    if (arg1 == NULL) {
        return 0;
    }
    if (arg2 == NULL) {
        return 0;
    }
    var_f8 = 0.0f;
    var_r10 = 0U;
    var_r7 = 0;
    *arg1 = 0.0f;
loop_20:
    if (var_r10 != 6U) {
        temp_r8 = arg0 + var_r7;
        if ((u8) temp_r8->unkB00 != 0xA) {
            if ((s32) var_r10 != 4) {
                var_r10 += 1;
                var_r7 += 0x34;
            } else {
                temp_f3 = lbl_81_rodata_0.unk88 * lbl_81_rodata_0.unk80;
                temp_f2 = temp_r8->unkB04;
                temp_f5 = arg2->unk0;
                if ((temp_f5 > (temp_f2 - temp_f3)) && (temp_f5 < (temp_f2 + temp_f3))) {
                    if (arg3 == 1U) {
                        temp_f2_2 = temp_r8->unkB08;
                        if ((arg2->unk4 > temp_f2_2) && (var_f8 < temp_f2_2)) {
                            var_f8 = temp_f2_2 + (lbl_81_rodata_0.unk50 * lbl_81_rodata_0.unk7C);
                        }
                    } else {
                        temp_f2_3 = temp_r8->unkB08;
                        if ((arg2->unk4 < temp_f2_3) && (var_f8 < temp_f2_3)) {
                            var_f8 = temp_f2_3 + (lbl_81_rodata_0.unk50 * lbl_81_rodata_0.unk7C);
                        }
                    }
                }
                goto block_19;
            }
        } else {
block_19:
            var_r10 += 1;
            var_r7 += 0x34;
        }
        goto loop_20;
    }
    if (var_f8 == 0.0f) {
        return 0;
    }
    *arg1 = var_f8;
    return 1;
}

void fn_81_3C1C(void *arg0, s8 arg1) {
    s32 temp_r31;
    s32 var_ctr;
    s32 var_r6;
    s8 temp_r30;
    s8 var_r4;
    void *temp_r4;
    void *var_r5;

    var_r4 = arg1;
    var_r6 = 0;
    temp_r30 = var_r4;
    var_r5 = arg0;
    var_ctr = 5;
loop_1:
    if ((s32) var_r5->unkAA8 == -1) {
        switch (var_r6) {                           /* irregular */
        case 0:
            var_r4 = 0x1DC9;
            break;
        case 1:
            var_r4 = 0x1DCA;
            break;
        case 2:
            var_r4 = 0x1DCB;
            break;
        case 3:
            var_r4 = 0x1DCC;
            break;
        case 4:
            var_r4 = 0x1DC9;
            break;
        }
        temp_r31 = var_r6 * 0x10;
        temp_r4 = arg0 + temp_r31;
        temp_r4->unkAA8 = playSE__14snd3DGeneratorF5SndIDiii(arg0 + temp_r31 + 0xAA0, (SndID) var_r4, 0, 0x78, -1);
        temp_r4->unkAAC = temp_r30;
        return;
    }
    var_r5 += 0x10;
    var_r6 += 1;
    var_ctr -= 1;
    if (var_ctr == 0) {
        return;
    }
    goto loop_1;
}

void fn_81_3CFC(s8 arg1, nw4r::ut::detail::LinkListImpl *arg2) {
    s32 sp8;
    nw4r::ut::LinkListNode *temp_r3;

    temp_r3 = __nw__FUlQ25Heaps8HeapType(0xCU, (Heaps::HeapType) 0x11);
    if (temp_r3 != NULL) {
        temp_r3->unk0 = 0;
        temp_r3->unk4 = 0;
    }
    if (temp_r3 != NULL) {
        temp_r3->unk8 = arg1;
        sp8 = arg2 + 4;
        Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode(arg2, (nw4r::ut::detail::LinkListImpl::Iterator) &sp8, temp_r3);
    }
}

void fn_81_3D74(s8 arg1, nw4r::ut::detail::LinkListImpl *arg2) {
    s32 sp8;
    nw4r::ut::LinkListNode *temp_r3;

    temp_r3 = __nw__FUlQ25Heaps8HeapType(0xCU, (Heaps::HeapType) 0x11);
    if (temp_r3 != NULL) {
        temp_r3->unk0 = 0;
        temp_r3->unk4 = 0;
    }
    if (temp_r3 != NULL) {
        temp_r3->unk8 = arg1;
        sp8 = arg2->unk4;
        Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode(arg2, (nw4r::ut::detail::LinkListImpl::Iterator) &sp8, temp_r3);
    }
}

void fn_81_3DEC(void *arg0, nw4r::ut::detail::LinkListImpl *arg2) {
    nw4r::ut::LinkListNode *temp_r3;

    temp_r3 = arg0->unk3C->unk2A8();
    if (temp_r3 != NULL) {
        Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode(arg2, temp_r3);
        if (temp_r3 != NULL) {
            __dl__FPv(temp_r3);
        }
    }
}

void fn_81_3E54(void *arg1) {
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

void *fn_81_3ED0(u32 arg1, void *arg2) {
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

s32 fn_81_3F00(void *arg1) {
    return arg1->unk4;
}

? *fn_81_3F08(void *arg1) {
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

s32 fn_81_3F40(void *arg0) {
    return arg0->unkC38 != 0;
}

void fn_81_3F54(void) {

}

s32 fn_81_3F58(void) {
    return 0;
}

s32 fn_81_3F60(void) {
    return 0;
}

s32 fn_81_3F68(void) {
    return 0;
}

s32 fn_81_3F70(void) {
    return 0;
}

s32 fn_81_3F78(void) {
    return 1;
}

void fn_81_3F80(void) {

}

f32 fn_81_3F84(void *arg0) {
    return arg0->unk190;
}

void fn_81_3F8C(void *arg0, f32 farg0) {
    arg0->unk190 = farg0;
}

s32 fn_81_3F94(void) {
    return 0;
}

f32 fn_81_3F9C(void) {
    return 0.0f;
}

f32 fn_81_3FA8(void) {
    return 1.0f;
}

void fn_81_3FB4(void *arg0, s8 arg1, s32 arg2, f32 farg0) {
    arg0->unk184 = arg1;
    arg0->unk188 = arg2;
    arg0->unk18C = farg0;
}

void fn_81_3FC4(void *arg0, s32 *arg1, f32 *arg2) {
    *arg1 = arg0->unk188;
    *arg2 = arg0->unk18C;
}

u8 fn_81_3FD8(void *arg0) {
    return arg0->unk184;
}

s32 fn_81_3FE0(void) {
    return 0;
}

s32 fn_81_3FE8(void) {
    return 0;
}

s32 fn_81_3FF0(void) {
    return 0;
}

s32 fn_81_3FF8(void) {
    return 0;
}

void fn_81_4000(void) {

}

s32 fn_81_4004(void *arg1) {
    arg1->unk0 = 0.0f;
    arg1->unk4 = 0.0f;
    arg1->unk8 = 0.0f;
    return 0;
}

s32 fn_81_4020(void) {
    return 0x14;
}

s32 fn_81_4028(s32 arg0) {
    return arg0 + 0x68;
}

s32 fn_81_4030(void) {
    return 0;
}

s32 fn_81_4038(void) {
    return 0;
}

f32 fn_81_4040(void) {
    return 0.0f;
}

void fn_81_404C(void) {

}

s32 fn_81_4050(void) {
    return 0;
}

s32 fn_81_4058(void) {
    return 1;
}

s32 fn_81_4060(void *arg0) {
    return arg0->unk1C8;
}

void fn_81_4068(void) {
    __ct__11stClassInfoFv(&lbl_81_bss_14);
    lbl_81_bss_14.unk0 = &lbl_81_data_740;
    setClassInfo__11stClassInfoFQ26Stages11srStageKindP11stClassInfo(&lbl_81_bss_14, (Stages::srStageKind) 0x31, &lbl_81_bss_14);
    __register_global_object(&lbl_81_bss_14, fn_81_40CC, &lbl_81_bss_8);
}

stClassInfo *fn_81_40CC(stClassInfo *arg0, s32 arg1) {
    if (arg0 != NULL) {
        arg0->unk0 = &lbl_81_data_740;
        setClassInfo__11stClassInfoFQ26Stages11srStageKindP11stClassInfo(arg0, (Stages::srStageKind) 0x31, NULL);
        __dt__11stClassInfoFv(arg0, 0);
        if (arg1 > 0) {
            __dl__FPv(arg0);
        }
    }
    return arg0;
}

void fn_81_4140(void) {
    if (__nw__FUlQ25Heaps8HeapType(0xC3CU, (Heaps::HeapType) 0xF) != NULL) {
        fn_81_A4();
    }
}

void fn_81_4174(void) {

}
