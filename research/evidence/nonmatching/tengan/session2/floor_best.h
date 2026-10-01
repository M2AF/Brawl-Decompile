#pragma once
#include <gr/gr_yakumono.h>

class grTenganFloor : public grYakumono {
public:
    Vec3f m_position;
    u8 m_state;
    float m_timer;
    float* m_eventTime;
    u8* m_eventFlags;
    u8 m_kind;
    u8 m_16D;
    float m_170;
    u8 m_animIndex;
    float m_animTimer;
    grTenganFloor(const char* taskName) : grYakumono(taskName), m_state(0), m_timer(0), m_eventTime(NULL), m_eventFlags(NULL), m_kind(0), m_16D(0), m_170(0), m_animIndex(2), m_animTimer(0) { m_position.m_x = 0; m_position.m_y = 0; m_position.m_z = 0; }
    virtual ~grTenganFloor();
    virtual void update(float deltaFrame);
    virtual void updateFloor(float deltaFrame);
    virtual void updateVisibility(float deltaFrame);
    virtual void changeAnimation(u32 index, bool loop, bool force, float* frameCount);
    virtual void setEventTime(float* p) { m_eventTime = p; }
    virtual void setEventFlags(u8* p) { m_eventFlags = p; }
    virtual void setKind(u8 kind) { m_kind = kind; }
    static grTenganFloor* create(int mdlIndex, const char* nodeName, const char* taskName);
};
static_assert(sizeof(grTenganFloor) == 0x17C, "grTenganFloor layout");

