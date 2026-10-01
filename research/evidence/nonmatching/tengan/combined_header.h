#pragma once
#include <gr/gr_yakumono.h>
#include <string.h>

class grTengan : public grYakumono {
public:
    char m_nodeName[128];
    grTengan(const char* taskName);
    // Matching-only overload: inline factory construction, external base construction.
    grTengan(const char* taskName, bool) : grYakumono(taskName) { memset(m_nodeName, 0, sizeof(m_nodeName)); }
    virtual ~grTengan();
    virtual void update(float deltaFrame);
    virtual void setTgtNode(const char* nodeName);
    virtual char* getTgtNode() { return m_nodeName; }
    static grTengan* create(int mdlIndex, const char* nodeName, const char* taskName);
};
static_assert(sizeof(grTengan) == 0x1D0, "grTengan layout");

class grTenganBg : public grTengan {
public:
    Vec3f* m_dialgaPosition;
    Vec3f* m_platformPositions;
    grTenganBg(const char* taskName) : grTengan(taskName), m_dialgaPosition(NULL), m_platformPositions(NULL) {}
    virtual ~grTenganBg();
    virtual void update(float deltaFrame);
    virtual void setDialgaPosition(Vec3f* p) { m_dialgaPosition = p; }
    virtual void setPlatformPositions(Vec3f* p) { m_platformPositions = p; }
    static grTenganBg* create(int mdlIndex, const char* nodeName, const char* taskName);
};
static_assert(sizeof(grTenganBg) == 0x1D8, "grTenganBg layout");

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

class grTenganAshiba : public grTengan {
public:
    u8 m_state;
    float m_timer;
    float* m_bounds;
    float m_x, m_y, m_z, m_previousY, m_speed;
    bool m_up, m_checked;
    grTenganAshiba(const char* taskName);
    virtual ~grTenganAshiba();
    virtual void update(float deltaFrame);
    virtual void updatePlatform(float deltaFrame);
    virtual void updatePosition(float deltaFrame);
    virtual void setBounds(float* p) { m_bounds = p; }
    static grTenganAshiba* create(int mdlIndex, const char* nodeName, const char* taskName);
};
static_assert(sizeof(grTenganAshiba) == 0x1F4, "grTenganAshiba layout");
