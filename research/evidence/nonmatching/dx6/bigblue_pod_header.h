#pragma once
#include <memory.h>
#include <nw4r/math/math_types.h>
#include <nw4r/ut/ut_LinkList.h>
#include <snd/snd_3d_generator.h>
#include <st/st_class_info.h>
#include <st/st_melee.h>

template<typename T>
class stClassInfoImpl<Stages::DxBigBlue, T> : public stClassInfo {
public:
    stClassInfoImpl() { setClassInfo(Stages::DxBigBlue, this); }
    virtual ~stClassInfoImpl() { setClassInfo(Stages::DxBigBlue, 0); }
    virtual T* create() { return T::create(); }
    virtual void preload() {}
};

// Parameter names retain byte offsets until their meanings are confirmed.
struct stDxBigBlueData {
    float f00, f04, f08, f0C, f10, f14;
    u32 count18;
    float f1C, f20, f24, f28, f2C, f30, f34, f38, f3C;
    float f40, f44, f48, f4C, f50, f54, f58, f5C;
    float f60, f64, f68, f6C, f70, f74, f78, f7C;
    float f80, f84, f88, f8C, f90, f94, f98, f9C;
    float fA0, fA4, fA8, fAC, fB0, fB4, fB8, fBC;
    float fC0, fC4, fC8, fCC, fD0, fD4, fD8;
    u32 countDC, countE0;
    float fE4, fE8, fEC, fF0, fF4, fF8, fFC;
    float f100, f104, f108, f10C, f110, f114, f118;
    u32 count11C, count120;
    float f124, f128, f12C, f130, f134, f138, f13C, f140;
};
struct stDxBigBlueTrack {
    nw4r::math::_VEC3 start, end;
};
struct stDxBigBlueCar {
    u8 state;
    nw4r::math::_VEC3 position, previous, motion;
    float speed, f2C;
    u8 falling;
    float f34;
    u8 direction;
};
struct stDxBigBluePlatform {
    u8 state;
    nw4r::math::_VEC3 position, previous;
    float f1C, f20, angle, speed, target;
    u8 falling, flag31;
};
struct stDxBigBlueSound {
    snd3DGenerator generator;
    s32 handle;
    u8 ordinal;
    stDxBigBlueSound();
    ~stDxBigBlueSound();
};
struct stDxBigBlueNode {
    nw4r::ut::LinkListNode link;
    u8 index;
};
typedef nw4r::ut::LinkList<stDxBigBlueNode, 0> stDxBigBlueList;

class stDxBigBlue : public stMelee {
    u8 m_worldState;
    float m_worldTimer;
    nw4r::math::_VEC3 m_bounds[2];
    u8 m_trackFlag;
    nw4r::math::_VEC3 m_position, m_motion;
    float m_worldSpeed;
    u8 m_worldFalling;
    nw4r::math::_VEC3 m_previous;
    u8 m_trackState;
    float m_trackTimer;
    stDxBigBlueTrack m_tracks[12];
    u8 m_predecessor[12], m_selectedTrack;
    stDxBigBlueList m_trackOrder;
    u8 m_carState;
    float m_carTimer;
    stDxBigBlueCar m_cars[30];
    u8 m_carOrder[30], m_firstCar, m_lastCar, m_carCount, m_carDirection;
    stDxBigBlueSound m_sounds[5];
    u8 m_worldReady, m_platformState;
    float m_platformTimer;
    s32 m_falconCount, m_broadcastCount;
    stDxBigBluePlatform m_platforms[6];
    u8 m_eventEnd;
public:
    stDxBigBlue();
    virtual ~stDxBigBlue();
    virtual bool loading();
    virtual void createObj();
    virtual void update(float deltaFrame);
    virtual bool isEventEnd(int event, int* p1, int* p2);
    // Unknown original names: labels preserve the stage vtable order.
    virtual void fn_81_984(int index);
    virtual void fn_81_ABC(int index);
    virtual void fn_81_C04(int index);
    virtual void fn_81_D20(int index);
    virtual void fn_81_DFC(int index);
    virtual void fn_81_ED8(u32 index);
    virtual void fn_81_11BC();
    virtual void fn_81_130C(int index);
    virtual void fn_81_153C(float deltaFrame);
    virtual void fn_81_1598(float deltaFrame);
    virtual void fn_81_16A4(float deltaFrame);
    virtual void fn_81_1714(float deltaFrame);
    virtual void fn_81_191C(float deltaFrame);
    virtual void fn_81_19A8(float deltaFrame);
    virtual void fn_81_1C84(float deltaFrame);
    virtual void fn_81_1DE4(float deltaFrame);
    virtual void fn_81_21EC(float deltaFrame);
    virtual void fn_81_22DC(float deltaFrame);
    virtual void fn_81_245C(float deltaFrame);
    virtual void fn_81_25C4(float deltaFrame);
    virtual void fn_81_293C(float deltaFrame);
    virtual void fn_81_2CA0(float deltaFrame);
    virtual void fn_81_2DB4(int index, float deltaFrame);
    virtual void fn_81_31C0(float deltaFrame);
    virtual void fn_81_344C(float deltaFrame);
    virtual bool fn_81_37E0(Vec3f* position, Vec3f* normal, int car);
    virtual bool fn_81_387C(u32 ordinal);
    virtual bool fn_81_3900(nw4r::math::_VEC3* position);
    virtual bool fn_81_399C(float* height, nw4r::math::_VEC3* position, u32 above);
    virtual bool fn_81_3B04(float* height, nw4r::math::_VEC3* position, u32 above);
    virtual void fn_81_3C1C(u8 ordinal);
    virtual void fn_81_3CFC(u8 index, stDxBigBlueList* list);
    virtual void fn_81_3D74(u8 index, stDxBigBlueList* list);
    virtual void fn_81_3DEC(u8 index, stDxBigBlueList* list);
    virtual void fn_81_3E54(stDxBigBlueList* list);
    virtual stDxBigBlueNode* fn_81_3ED0(u32 index, stDxBigBlueList* list);
    virtual stDxBigBlueNode* fn_81_3F00(stDxBigBlueList* list);
    virtual stDxBigBlueNode* fn_81_3F08(stDxBigBlueList* list);
    static stDxBigBlue* create();
    static stClassInfoImpl<Stages::DxBigBlue, stDxBigBlue> bss_loc_14;
};
static_assert(sizeof(stDxBigBlueData) == 0x144, "Big Blue parameters");
static_assert(sizeof(stDxBigBlueTrack) == 0x18, "track pair");
static_assert(sizeof(stDxBigBlueCar) == 0x3C, "car record");
static_assert(sizeof(stDxBigBluePlatform) == 0x34, "platform record");
static_assert(sizeof(stDxBigBlueSound) == 0x10, "sound record");
static_assert(sizeof(stDxBigBlue) == 0xC3C, "stage layout");
