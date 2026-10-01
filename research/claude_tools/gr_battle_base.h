#pragma once

#include <gr/gr_yakumono.h>

class grBattleField : public grYakumono {
protected:
    u32 m_shadowMaterialId;

public:
    grBattleField(const char* taskName) : grYakumono(taskName) {
        setupMelee();
        m_noUpdateAnim = true;
        m_shadowMaterialId = 0;
    };
    virtual ~grBattleField();
    virtual void update(float deltaFrame);

    static grBattleField* create(int mdlIndex, const char* tgtNodeName, const char* taskName);
};
