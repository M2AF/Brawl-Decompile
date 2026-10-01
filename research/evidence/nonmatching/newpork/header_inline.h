#pragma once

#include <gr/gr_madein.h>

// Class name recovered from RTTI; descriptive method names are inferred.
class grNewpork : public grMadein {
public:
    grNewpork(const char* taskName) : grMadein(taskName) { setupMelee(); }
    virtual ~grNewpork();
    static grNewpork* create(int mdlIndex, const char* tgtNodeName, const char* taskName);
    void setupAttack(float size, Vec3f* offsetPos, u32 nodeIndex, bool enableSound);
    void playAppearSE();
    void playDisappearSE();
    void playAttackSE();
    void playLoopSE();
    void stopLoopSE();
    void setupCitySound();
    void playRandomCitySE();
    void playCitySE2();
    void playCitySE3();
    void setupBreakSound();
    void playBreakSE();
    void stopBreakSE();
private:
    // Descriptive helper; the original inline name is not known.
    void setSoundInfo(u32 index, SndID id, u32 repeatFrame, short nodeIndex,
                      u32 endFrame, Vec2f offsetPos) {
        m_soundEffects[index].m_id = id;
        m_soundEffects[index].m_repeatFrame = repeatFrame;
        m_soundEffects[index].m_nodeIndex = nodeIndex;
        m_soundEffects[index].m_endFrame = endFrame;
        m_soundEffects[index].m_offsetPos = offsetPos;
    }
};
static_assert(sizeof(grNewpork) == 0x1A4, "Class is wrong size!");
