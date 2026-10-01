#include <st_tengan/gr_tengan.h>
#include <ec/ec_mgr.h>
#include <snd/snd_system.h>
#include <math.h>

using namespace nw4r::g3d;
extern "C" float randf__Fv();
// Imported routines retain the existing symbol names pending independent naming evidence.
extern "C" ResAnmChr fn_8018D6D8(ResFile*, u32);
extern "C" ResAnmVis fn_8018D8E0(ResFile*, u32);
extern "C" ResAnmTexPat fn_8018DCF0(ResFile*, u32);
extern "C" ResAnmTexSrt fn_8018DEF8(ResFile*, u32);
extern "C" ResAnmClr fn_8018DAE8(ResFile*, u32);
// Existing binary labels have misleading suffixes; preserve the observed ABI.
extern "C" void setFrame__16gfModelAnimationFd(gfModelAnimation*, float);
extern "C" void setLoop__16gfModelAnimationFd(gfModelAnimation*, bool);
extern "C" u32 getFrameCount__16gfModelAnimationFd(gfModelAnimation*);

static char backgroundNodeNames[] = "dialgaPosition\0\0ashibaA_Up\0\0ashibaA_Down\0\0\0\0ashibaA_Up1\0\0ashibaA_Down1";

grTengan* grTengan::create(int mdlIndex, const char* nodeName, const char* taskName) {
    grTengan* ground = new (Heaps::StageInstance) grTengan(taskName, true);
    if (ground) { ground->setMdlIndex(mdlIndex); ground->setTgtNode(nodeName); }
    ground->setupMelee();
    return ground;
}
#pragma dont_inline on
grTengan::grTengan(const char* taskName) : grYakumono(taskName) { memset(m_nodeName, 0, sizeof(m_nodeName)); }
grTengan::~grTengan() {}
void grTengan::update(float deltaFrame) { grGimmick::update(deltaFrame); }
#pragma dont_inline reset
void grTengan::setTgtNode(const char* nodeName) {
    if (nodeName) { strcpy(m_nodeName, ""); strncpy(m_nodeName, nodeName, 127); }
}

grTenganBg* grTenganBg::create(int mdlIndex, const char* nodeName, const char* taskName) {
    grTenganBg* ground = new (Heaps::StageInstance) grTenganBg(taskName);
    if (ground) { ground->setMdlIndex(mdlIndex); ground->setTgtNode(nodeName); }
    ground->setupMelee();
    return ground;
}
grTenganBg::~grTenganBg() {}
void grTenganBg::update(float deltaFrame) {
    const char* names = backgroundNodeNames;
    if (m_dialgaPosition) getNodePosition(m_dialgaPosition, 0, names + 0);
    if (m_platformPositions) {
        getNodePosition(&m_platformPositions[0], 0, names + 16);
        getNodePosition(&m_platformPositions[1], 0, names + 28);
        getNodePosition(&m_platformPositions[2], 0, names + 44);
        getNodePosition(&m_platformPositions[3], 0, names + 56);
    }
    grTengan::update(deltaFrame);
}

grTenganFloor* grTenganFloor::create(int mdlIndex, const char* nodeName, const char* taskName) {
    grTenganFloor* ground = new (Heaps::StageInstance) grTenganFloor(taskName);
    if (ground) { ground->setMdlIndex(mdlIndex); ground->setTgtNode(nodeName); }
    ground->setupMelee();
    return ground;
}
grTenganFloor::~grTenganFloor() {}
void grTenganFloor::update(float deltaFrame) {
    if (m_isUpdate) { updateFloor(deltaFrame); updateVisibility(deltaFrame); grGimmick::update(deltaFrame); }
}
void grTenganFloor::updateFloor(float deltaFrame) {
    if (!getStageData()) return;
    m_timer -= deltaFrame;
    if (m_timer < 0.0f) m_timer = 0.0f;
    m_animTimer -= deltaFrame;
    if (m_animTimer < 0.0f) m_animTimer = 0.0f;
    switch (m_state) {
    case 0:
        changeAnimation(0, false, true, NULL); m_state = 1; break;
    case 1: {
        bool triggered = false;
        switch (m_kind) {
        case 0: case 1: case 2:
            if (m_eventFlags[0] == 1) {
                triggered = true;
                u32 handle = g_ecMgr->setEffect((EfID)0x460001);
                g_ecMgr->setParent(handle, m_sceneModels[0], (u32)1, false);
            }
            break;
        case 3:
            if (m_eventFlags[0] == 1 || m_eventFlags[1] == 1) triggered = true;
            break;
        case 4:
            if (m_eventFlags[1] == 1 || m_eventFlags[2] == 1) triggered = true;
            break;
        }
        if (triggered == true) {
            changeAnimation(1, false, true, &m_animTimer);
            setEnableCollisionStatus(false); m_state = 2;
        }
        break;
    }
    case 2:
        if (*m_eventTime < 1.0f) {
            switch (m_kind) {
            case 0: case 1: case 2: {
                u32 handle = g_ecMgr->setEffect((EfID)0x460006);
                g_ecMgr->setParent(handle, m_sceneModels[0], (u32)1, false);
                changeAnimation(0, false, true, NULL);
                g_sndSystem->playSE((SndID)0x1C44, -1, 0, 0, -1);
                break;
            }
            }
            setNodeVisibilityAll(true, 0); m_state = 3;
        }
        if (0.0f == m_animTimer) setVisibility(0);
        break;
    case 3:
        if (0.0f == *m_eventTime) {
            m_eventFlags[0] = 0; setVisibility(1); setEnableCollisionStatus(true); m_state = 0;
        }
        break;
    }
}
void grTenganFloor::updateVisibility(float) {
    if (m_state != 3) return;
    m_170 = 0.0f;
    return setVisibility(0);
}
// No reliable semantic name yet. This standalone empty definition is present in the target.
extern "C" void fn_60_6D28() {}

void grTenganFloor::changeAnimation(u32 index, bool loop, bool force, float* frameCount) {
    if (m_animIndex == index && !force) return;
    ScnMdl* scene = m_sceneModels[0];
    if (!scene) return;
    gfModelAnimation* animation = m_modelAnims[0];
    if (!animation) return;
    ResMdl model = scene->m_resMdl;
    if (!model.ptr()) return;
    animation->unbindNodeAnim(scene);
    animation->unbindVisibleAnim(scene);
    animation->unbindTexAnim(scene);
    animation->unbindTexSrtAnim(scene);
    animation->unbindMatColAnim(scene);
    m_animIndex = index;
    if (index >= 2) return;
    if ((index < animation->m_resFile.GetResAnmChrNumEntries()) == true) {
        if (index < animation->m_resFile.GetResAnmChrNumEntries()) {
            ResAnmChr resource = fn_8018D6D8(&animation->m_resFile, index);
            MEMAllocator* allocator = gfHeapManager::getMEMAllocator(Heaps::StageInstance);
            if (resource.IsValid()) {
                int instanceSize;
                AnmObjChrRes* object = AnmObjChrRes::Construct(allocator, &instanceSize, resource, model, false);
                if (object) {
                    object->Bind(model);
                    if (animation->m_anmObjChrRes) animation->m_anmObjChrRes->Destroy();
                    animation->m_anmObjChrRes = object;
                }
            }
        }
    }
    if ((index < animation->m_resFile.GetResAnmVisNumEntries()) == true) {
        if (index < animation->m_resFile.GetResAnmVisNumEntries()) {
            ResAnmVis resource = fn_8018D8E0(&animation->m_resFile, index);
            MEMAllocator* allocator = gfHeapManager::getMEMAllocator(Heaps::StageInstance);
            if (resource.IsValid()) {
                int instanceSize;
                AnmObjVisRes* object = AnmObjVisRes::Construct(allocator, &instanceSize, resource, model);
                if (object) {
                    object->Bind(model);
                    if (animation->m_anmObjVisRes) animation->m_anmObjVisRes->Destroy();
                    animation->m_anmObjVisRes = object;
                }
            }
        }
    }
    if ((index < animation->m_resFile.GetResAnmTexPatNumEntries()) == true) {
        if (index < animation->m_resFile.GetResAnmTexPatNumEntries()) {
            ResAnmTexPat resource = fn_8018DCF0(&animation->m_resFile, index);
            if (resource.IsValid()) {
                MEMAllocator* allocator = gfHeapManager::getMEMAllocator(Heaps::StageInstance);
                int instanceSize;
                AnmObjTexPatRes* object = AnmObjTexPatRes::Construct(allocator, &instanceSize, resource, model, false);
                if (object) {
                    object->Bind(model);
                    if (animation->m_anmObjTexPatRes) animation->m_anmObjTexPatRes->Destroy();
                    animation->m_anmObjTexPatRes = object;
                }
            }
        }
    }
    if ((index < animation->m_resFile.GetResAnmTexSrtNumEntries()) == true) {
        if (index < animation->m_resFile.GetResAnmTexSrtNumEntries()) {
            ResAnmTexSrt resource = fn_8018DEF8(&animation->m_resFile, index);
            if (resource.IsValid()) {
                MEMAllocator* allocator = gfHeapManager::getMEMAllocator(Heaps::StageInstance);
                int instanceSize;
                AnmObjTexSrtRes* object = AnmObjTexSrtRes::Construct(allocator, &instanceSize, resource, model, false);
                if (object) {
                    object->Bind(model);
                    if (animation->m_anmObjTexSrtRes) animation->m_anmObjTexSrtRes->Destroy();
                    animation->m_anmObjTexSrtRes = object;
                }
            }
        }
    }
    if ((index < animation->m_resFile.GetResAnmClrNumEntries()) == true) {
        if (index < animation->m_resFile.GetResAnmClrNumEntries()) {
            ResAnmClr resource = fn_8018DAE8(&animation->m_resFile, index);
            if (resource.IsValid()) {
                MEMAllocator* allocator = gfHeapManager::getMEMAllocator(Heaps::StageInstance);
                int instanceSize;
                AnmObjMatClrRes* object = AnmObjMatClrRes::Construct(allocator, &instanceSize, resource, model, false);
                if (object) {
                    object->Bind(model);
                    if (animation->m_anmObjMatClrRes) animation->m_anmObjMatClrRes->Destroy();
                    animation->m_anmObjMatClrRes = object;
                }
            }
        }
    }
    gfModelAnimation::bind(scene, animation);
    setFrame__16gfModelAnimationFd(animation, 0.0f);
    animation->setUpdateRate(1.0f);
    setLoop__16gfModelAnimationFd(animation, loop);
    if (frameCount) *frameCount = getFrameCount__16gfModelAnimationFd(animation);
}

static const float platformConstants[3] = {0.0f, 0.5f, -1.0f};

grTenganAshiba* grTenganAshiba::create(int mdlIndex, const char* nodeName, const char* taskName) {
    grTenganAshiba* ground = new (Heaps::StageInstance) grTenganAshiba(taskName);
    if (ground) { ground->setMdlIndex(mdlIndex); ground->setTgtNode(nodeName); }
    ground->setupMelee();
    return ground;
}
grTenganAshiba::grTenganAshiba(const char* taskName) : grTengan(taskName), m_state(0), m_timer(platformConstants[0]), m_bounds(NULL), m_x(platformConstants[0]), m_y(platformConstants[0]), m_z(platformConstants[0]), m_previousY(platformConstants[0]), m_speed(platformConstants[0]), m_up(false), m_checked(false) {
    grCalcWorldCallBack* callback = &m_calcWorldCallBack;
    if (!callback) return;
    callback->setup(1, (u32)1);
}
grTenganAshiba::~grTenganAshiba() {}
void grTenganAshiba::update(float deltaFrame) {
    if (m_isUpdate) { updatePlatform(deltaFrame); updatePosition(deltaFrame); grTengan::update(deltaFrame); }
}
void grTenganAshiba::updatePlatform(float deltaFrame) {
    const float* constants = platformConstants;
    if (!m_bounds) return;
    float* data = (float*)getStageData();
    if (!data) return;
    if (m_bounds[1] == m_bounds[4]) return;
    m_timer -= deltaFrame;
    if (m_timer < constants[0]) m_timer = constants[0];
    switch (m_state) {
    case 0:
        m_x = m_bounds[3]; m_y = m_bounds[4]; m_z = m_bounds[5];
        m_y += (m_bounds[1] - m_bounds[4]) * randf__Fv();
        if (randf__Fv() < constants[1]) m_up = true;
        else m_up = false;
        m_state = 1;
        // fall through: first movement starts immediately with the zero timer.
    case 1:
        if (constants[0] == m_timer) { m_speed = constants[0]; m_checked = false; m_state = 2; }
        break;
    case 2: {
        bool stop = false;
        bool boundary = false;
        m_speed += data[0];
        if (m_speed > data[1]) m_speed = data[1];
        if (!m_checked && m_speed == data[1]) {
            if (randf__Fv() < data[5]) stop = true;
            m_checked = true;
        }
        if (stop == true) boundary = true;
        else if (m_up == true) {
            m_y += m_speed * deltaFrame;
            if (m_y >= m_bounds[1]) boundary = true;
        } else {
            m_y -= m_speed * deltaFrame;
            if (m_y <= m_bounds[4]) boundary = true;
        }
        if (boundary == true) { m_state = 3; m_previousY = m_y; }
        break;
    }
    case 3:
        m_speed -= data[0];
        if (fabs(m_speed) > data[1]) m_speed = constants[2] * data[1];
        if (m_up == true) m_y += m_speed * deltaFrame;
        else m_y -= m_speed * deltaFrame;
        if ((m_up == true && m_previousY > m_y) || (!m_up && m_previousY < m_y)) {
            if (randf__Fv() < data[2]) {
                m_timer = data[3] + (data[4] - data[3]) * randf__Fv(); m_state = 1;
            } else m_state = 2;
            m_up = !m_up;
        }
        m_previousY = m_y;
        break;
    }
}
void grTenganAshiba::updatePosition(float) {
    grCalcWorldCallBack* callback = &m_calcWorldCallBack;
    if (!callback) return;
    ScnMdl* scene = m_sceneModels[0];
    if (!scene) return;
    if (!scene->m_calcWorldCallBack) {
        callback->m_index = 0;
        callback->m_nodeCallbackDatas[0].m_nodeIndex = m_nodeIndex;
        scene->m_calcWorldCallBack = callback;
        scene->EnableScnMdlCallbackTiming(1);
        scene->m_nodeIndex = callback->m_nodeCallbackDatas[0].m_nodeIndex;
    }
    grNodeCallbackData* node = callback->m_nodeCallbackDatas;
    node->m_pos.m_x = m_x;
    node->m_pos.m_y = m_y;
    node->m_pos.m_z = m_z;
}
