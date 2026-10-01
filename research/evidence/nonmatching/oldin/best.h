#pragma once
#include <st/st_melee.h>
#include <st/st_class_info.h>
#include <st/st_madein_static_pair.h> // shared definition; no pair emitted by this module
#include <st_oldin/gr_oldin.h>
#include <nw4r/ut/ut_Color.h>

// These DOL interfaces remain unnamed. The constructor registers a linked
// object globally; the destructor removes it. Its semantic class is not known.
extern "C" void* fn_8009ED40(void*, u32, bool);
extern "C" void* fn_8009EE60(void*, s16);
struct stOldinOpaque84 {
    u32 words[0x84/4];
    stOldinOpaque84() { fn_8009ED40(this,0,true); }
    ~stOldinOpaque84() { fn_8009EE60(this,-1); }
};
static_assert(sizeof(stOldinOpaque84)==0x84,"unnamed embedded object size");
struct stOldinSequence { int value; };
struct stOldinDefaults { stOldinSequence sequence;float parameters[13]; };
struct stOldinData {
    char name_38[0x8];
    char name_40[0x4];
    char name_44[0x10];
    char name_54[0x14];
    char name_68[0x10];
    char name_78[0x10];
    char name_88[0x10];
    char name_98[0x10];
    char name_A8[0x10];
    char name_B8[0x10];
    char name_C8[0xC];
    char name_D4[0x14];
    char name_E8[0x14];
    char name_FC[0x10];
    char name_10C[0x18];
    char name_124[0x18];
    char name_13C[0x14];
    char name_150[0x14];
    char name_164[0x1C];
    char name_180[0x1C];
    char name_19C[0x18];
    char name_1B4[0xC];
    char name_1C0[0x14];
    char name_1D4[0x14];
    char name_1E8[0x10];
    char name_1F8[0x10];
    stOldinSequence lordSeq0[2];
    float footsteps[5];
    stOldinSequence lordSeq1[2];
    char debugLord[32];
    stOldinSequence spawnSeq[8];
    stOldinSequence bulblinSeq[13];
    stOldinSequence bombSeq[6];
    char debugThrow[44];
    u32 pad2e4[1];
    char debugDrop[40];
    char debugExplosion[40];
    stOldinSequence bridgeSeq[16];
};
static_assert(sizeof(stOldinData)==0x340,"owned data pool size");
extern stOldinDefaults s_oldinDefaults;
extern stOldinData s_oldinPool;
struct stOldinState {
    stOldinSequence seq;
    int state;
    stOldinState() { seq.value=s_oldinDefaults.sequence.value;state=0; }
};
template<typename T>
class stClassInfoImpl<Stages::Oldin, T> : public stClassInfo {
public:
    stClassInfoImpl() { setClassInfo(Stages::Oldin,this); }
    virtual ~stClassInfoImpl() { setClassInfo(Stages::Oldin,0); }
    virtual T* create() { return T::create(); }
    virtual void preload() {}
};
class stOldin : public stMelee {
public:
    float* m_parameters;                  // 1D8
    grOldin* m_ground[15];                 // 1DC..218
    u32 m_nodes[4];                       // 218..228
    bool m_flag228,m_flag229;
    stOldinState m_state22c;
    Matrix m_matrix234,m_matrix264,m_matrix294;
    u32 m_counters2c4[3];
    float m_floats2d0[4];
    stOldinOpaque84 m_object2e0;
    stOldinState m_state364;
    float m_float36c;
    bool m_flags370[6];
    float m_floats378[3];
    u32 m_counter384;
    bool m_flag388,m_flag389;
    stOldinState m_state38c;
    float m_float394;
    Matrix m_matrix398,m_matrix3c8;
    u32 m_counter3f8;
    float m_floats3fc[4];
    u32 m_counter40c;
    float m_float410;
    bool m_flag414;
    stOldinState m_state418;
    float m_float420;
    u32 m_counters424[2];
    stOldinOpaque84 m_object42c;
    bool m_flag4b0;
    stOldinState m_state4b4;
    float m_float4bc;
    stOldinOpaque84 m_object4c0,m_object544;
    snd3DGenerator m_sound5c8;
    u32 m_counters5d0[2];
    float m_float5d8;
    u32 m_counters5dc[2];
    snd3DGenerator m_sound5e4;
    u32 m_counters5ec[2];
    bool m_flag5f4;
    u32 m_counter5f8;
    snd3DGenerator m_sound5fc;
    s8 m_flag604;
    stOldin();
    virtual ~stOldin();
    virtual bool loading();
    virtual void createObj(); // not recovered yet; no stub implementation
    virtual void update(float deltaFrame);
    virtual bool isBamperVector() { return true; }
    virtual GXColor getFinalTechniqColor() { return nw4r::ut::Color(0x14000496); }
    static stOldin* create();
    static stClassInfoImpl<Stages::Oldin,stOldin> bss_loc_14;
};
static_assert(sizeof(stOldin)==0x608,"stOldin layout");
