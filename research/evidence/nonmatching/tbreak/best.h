#pragma once
#include <st/st_melee.h>
#include <st/st_class_info.h>
#include <st/st_madein_static_pair.h>
#include <st_tbreak/gr_tbreak.h>

class grGimmickTargetBreakSpring : public grGimmickSpring {
public:
    grGimmickTargetBreakSpring(const char* name) : grGimmickSpring(name) {}
    virtual ~grGimmickTargetBreakSpring();
    virtual void setMotionOff();
};

template<typename T>
class stClassInfoImpl<Stages::TargetBreak, T> : public stClassInfo {
public:
    stClassInfoImpl() { setClassInfo(Stages::TargetBreak, this); }
    virtual ~stClassInfoImpl() { setClassInfo(Stages::TargetBreak, 0); }
    virtual T* create() { return T::create(); }
    virtual void preload() {}
};
struct stTargetSequence { int value; };
class stTargetBreak : public stMelee {
public:
    grTargetBreak* m_ground;                  // 1D8
    grTargetBreak* m_targets[10];             // 1DC
    grTargetBreak* m_targetNodes;             // 204
    grTargetBreak* m_moveTargets[10];         // 208
    grTargetBreak* m_itemNodes;               // 230
    grTargetBreak* m_steps[12];               // 234
    grTargetBreak* m_locators[12];            // 264
    grTargetBreak* m_ice;                     // 294
    int m_locatorNodes[12];                  // 298
    char _2c8[0x30];
    grGimmickBeltConveyorData* m_belts[4];     // 2F8
    stTrigger* m_beltTriggers[4];             // 308
    int m_beltStartNodes[4];                  // 318
    int m_beltEndNodes[4];                    // 328
    grTargetBreak* m_block;                   // 338
    grGimmickCatapultData* m_catapultData;     // 33C
    grGimmickCatapult* m_catapult;             // 340
    int m_springNode;                         // 344
    grGimmickSpringData* m_springData;         // 348
    grGimmickTargetBreakSpring* m_spring;      // 34C
    int m_level;                             // 350
    int m_brokenCount;                       // 354
    int m_remainingCount;                    // 358
    stTargetSequence m_seq;                  // 35C
    int m_state;                             // 360
    float m_chainTimers[10];                 // 364
    float m_chainRadiusSq;                   // 38C
    float m_totalDamage;                     // 390
    int m_playerBreakCount[2];               // 394
    u32 m_lastPlayers[10];                   // 39C
    stTargetBreak();
    virtual ~stTargetBreak();
    virtual void createObj();
    virtual bool loading();
    virtual void update(float deltaFrame);
    virtual bool isReStartSamePoint() { return false; }
    virtual int getBgmID() { return 10002; }
    bool createItems(); // inferred helper name
    static stTargetBreak* create();
    static stClassInfoImpl<Stages::TargetBreak, stTargetBreak> bss_loc_24;
};
static_assert(sizeof(stTargetBreak) == 0x3C4, "stTargetBreak layout");
