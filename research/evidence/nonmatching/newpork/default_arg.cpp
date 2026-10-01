#include <memory.h>
#include <mt/mt_prng.h>
#include <st_newpork/gr_newpork.h>

namespace {
struct SoundEvent {
    u32 index;
    float frame;
    u32 flags;
};
static_assert(sizeof(SoundEvent) == 12, "Event is wrong size!");
// Four event banks: 26, 34, 2 and 36 entries. Writable in the original.
SoundEvent soundEvents[] = {
    { 2, 29.0f, 0 },
    { 3, 62.0f, 0 },
    { 2, 73.0f, 0 },
    { 3, 106.0f, 0 },
    { 2, 152.0f, 0 },
    { 3, 186.0f, 0 },
    { 2, 211.0f, 0 },
    { 3, 242.0f, 0 },
    { 2, 287.0f, 0 },
    { 3, 341.0f, 0 },
    { 2, 382.0f, 0 },
    { 3, 414.0f, 0 },
    { 2, 455.0f, 0 },
    { 3, 483.0f, 0 },
    { 2, 520.0f, 0 },
    { 3, 553.0f, 0 },
    { 2, 557.0f, 0 },
    { 3, 606.0f, 0 },
    { 2, 630.0f, 0 },
    { 3, 662.0f, 0 },
    { 2, 697.0f, 0 },
    { 3, 721.0f, 0 },
    { 2, 743.0f, 0 },
    { 3, 788.0f, 0 },
    { 2, 812.0f, 0 },
    { 3, 837.0f, 0 },
    { 2, 31.0f, 0 },
    { 3, 61.0f, 0 },
    { 2, 93.0f, 0 },
    { 3, 119.0f, 0 },
    { 2, 161.0f, 0 },
    { 3, 183.0f, 0 },
    { 2, 210.0f, 0 },
    { 3, 250.0f, 0 },
    { 2, 279.0f, 0 },
    { 3, 303.0f, 0 },
    { 2, 331.0f, 0 },
    { 3, 362.0f, 0 },
    { 2, 391.0f, 0 },
    { 3, 420.0f, 0 },
    { 2, 470.0f, 0 },
    { 3, 483.0f, 0 },
    { 2, 511.0f, 0 },
    { 3, 540.0f, 0 },
    { 2, 572.0f, 0 },
    { 3, 600.0f, 0 },
    { 2, 633.0f, 0 },
    { 3, 660.0f, 0 },
    { 2, 692.0f, 0 },
    { 3, 722.0f, 0 },
    { 2, 750.0f, 0 },
    { 3, 783.0f, 0 },
    { 2, 813.0f, 0 },
    { 3, 841.0f, 0 },
    { 2, 895.0f, 0 },
    { 3, 932.0f, 0 },
    { 2, 962.0f, 0 },
    { 3, 992.0f, 0 },
    { 2, 1024.0f, 0 },
    { 3, 1051.0f, 0 },
    { 2, 7.0f, 0 },
    { 3, 40.0f, 0 },
    { 2, 31.0f, 0 },
    { 3, 61.0f, 0 },
    { 2, 93.0f, 0 },
    { 3, 121.0f, 0 },
    { 2, 160.0f, 0 },
    { 3, 192.0f, 0 },
    { 2, 214.0f, 0 },
    { 3, 245.0f, 0 },
    { 2, 271.0f, 0 },
    { 3, 302.0f, 0 },
    { 2, 332.0f, 0 },
    { 3, 361.0f, 0 },
    { 2, 393.0f, 0 },
    { 3, 423.0f, 0 },
    { 2, 452.0f, 0 },
    { 3, 483.0f, 0 },
    { 2, 512.0f, 0 },
    { 3, 550.0f, 0 },
    { 2, 571.0f, 0 },
    { 3, 602.0f, 0 },
    { 2, 633.0f, 0 },
    { 3, 661.0f, 0 },
    { 2, 691.0f, 0 },
    { 3, 722.0f, 0 },
    { 2, 752.0f, 0 },
    { 3, 784.0f, 0 },
    { 2, 812.0f, 0 },
    { 3, 848.0f, 0 },
    { 2, 873.0f, 0 },
    { 3, 905.0f, 0 },
    { 2, 930.0f, 0 },
    { 3, 966.0f, 0 },
    { 2, 992.0f, 0 },
    { 3, 1023.0f, 0 },
    { 2, 1053.0f, 0 },
    { 3, 1078.0f, 0 },
};
}

// grSeqYakumono sequence allocation/registration. Source names not established.
extern "C" void fn_27_27C150(grSeqYakumono*, int count);
extern "C" void fn_27_27C1E8(grSeqYakumono*, u32 index, SoundEvent* events, u32 count);

inline void grNewpork::setSoundInfo(u32 index, SndID id, u32 repeatFrame,
                                   short nodeIndex, u32 endFrame, Vec2f offsetPos) {
        m_soundEffects[index].m_id = id;
        m_soundEffects[index].m_repeatFrame = repeatFrame;
        m_soundEffects[index].m_nodeIndex = nodeIndex;
        m_soundEffects[index].m_endFrame = endFrame;
        m_soundEffects[index].m_offsetPos = offsetPos;
    }

grNewpork* grNewpork::create(int mdlIndex, const char* tgtNodeName, const char* taskName) {
    grNewpork* ground = new (Heaps::StageInstance) grNewpork(taskName);
    if (ground != nullptr) {
        ground->setMdlIndex(mdlIndex);
        ground->m_heapType = Heaps::StageInstance;
        ground->makeCalcuCallback(1, Heaps::StageInstance);
        ground->setCalcuCallbackRoot(7);
    }
    return ground;
}

grNewpork::~grNewpork() { }

void grNewpork::setupAttack(float size, Vec3f* offsetPos, u32 nodeIndex, bool enableSound) {
    SoundEvent* sequences = soundEvents;
    setAttack(size, offsetPos);
    m_attackInfo->m_preset = Attack_Overwrite;
    createAttackPointNormal(getOverwriteAttackData());
    getOverwriteAttackData()->m_power = 100;
    getOverwriteAttackData()->m_reactionEffect = 50;
    getOverwriteAttackData()->m_reactionFix = 0;
    getOverwriteAttackData()->m_reactionAdd = 70;
    getOverwriteAttackData()->m_hitStopFrame = 2.0f;
    getOverwriteAttackData()->m_nodeIndex = nodeIndex;
    getOverwriteAttackData()->m_shapeType = soCollision::Shape_Sphere;
    getOverwriteAttackData()->m_attribute = soCollisionAttackData::Attribute_Cutup;
    getOverwriteAttackData()->m_soundLevel = soCollisionAttackData::Sound_Level_Large;
    getOverwriteAttackData()->m_soundAttribute = soCollisionAttackData::Sound_Attribute_Cutup;
    getOverwriteAttackData()->m_isShieldable = false;
    setSleepAttack(true);
    if (enableSound) {
        createSoundWork(7, 1);
        setSoundInfo(0, static_cast<SndID>(0x1CEF), 0, 0, 0);
        setSoundInfo(1, static_cast<SndID>(0x1CEE), 0, 0, 0);
        setSoundInfo(2, static_cast<SndID>(0x1CEA), 0, 0, 0);
        setSoundInfo(3, static_cast<SndID>(0x1CEB), 0, 0, 0);
        setSoundInfo(4, static_cast<SndID>(0x1CEC), 0, 0, 0);
        setSoundInfo(5, static_cast<SndID>(0x1CE9), 0, 0, 0);
        setSoundInfo(6, static_cast<SndID>(0x1CED), 0, 0, 0);
        fn_27_27C150(this, 4);
        fn_27_27C1E8(this, 0, sequences, 26);
        fn_27_27C1E8(this, 1, sequences + 26, 34);
        fn_27_27C1E8(this, 2, sequences + 62, 36);
        fn_27_27C1E8(this, 3, sequences + 60, 2);
    }
}

void grNewpork::playAppearSE() { startGimmickSE(5); }
void grNewpork::playDisappearSE() { startGimmickSE(6); }
void grNewpork::playAttackSE() { startGimmickSE(1); }
void grNewpork::playLoopSE() { startGimmickSE(4); }
void grNewpork::stopLoopSE() { stopGimmickSE(4); }

void grNewpork::setupCitySound() {
    createSoundWork(4, 1);
    setSoundInfo(0, static_cast<SndID>(0x1CF0), 0, 0, 0);
    setSoundInfo(1, static_cast<SndID>(0x1CF1), 0, 0, 0);
    setSoundInfo(2, static_cast<SndID>(0x1CF2), 0, 0, 0);
    setSoundInfo(3, static_cast<SndID>(0x1CF3), 0, 0, 0);
}

void grNewpork::playRandomCitySE() { startGimmickSE(randi(255) & 1); }
void grNewpork::playCitySE2() { startGimmickSE(2); }
void grNewpork::playCitySE3() { startGimmickSE(3); }

void grNewpork::setupBreakSound() {
    createSoundWork(1, 1);
    setSoundInfo(0, static_cast<SndID>(0x1CF4), 0, 0, 0);
}

void grNewpork::playBreakSE() { startGimmickSE(0); }
void grNewpork::stopBreakSE() { stopGimmickSE(0); }
