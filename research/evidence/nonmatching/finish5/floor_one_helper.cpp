#include <st_tengan/gr_tengan_floor.h>
#include <ec/ec_mgr.h>
#include <snd/snd_system.h>

using namespace nw4r::g3d;
// Imported routines retain the existing symbol names pending independent naming evidence.
extern "C" ResAnmChr fn_8018D6D8(ResFile*, u32);
extern "C" ResAnmVis fn_8018D8E0(ResFile*, u32);
extern "C" ResAnmTexPat fn_8018DCF0(ResFile*, u32);
extern "C" ResAnmTexSrt fn_8018DEF8(ResFile*, u32);
extern "C" ResAnmClr fn_8018DAE8(ResFile*, u32);
// Existing binary labels have misleading suffixes; preserve the observed ABI.
extern "C" void setFrame__16gfModelAnimationFf(gfModelAnimation*, float);
extern "C" void setLoop__16gfModelAnimationFd(gfModelAnimation*, bool);
extern "C" u32 getFrameCount__16gfModelAnimationFv(gfModelAnimation*);

// Caller checks index < 2. Masking the shift count defines the equal-input
// case; for indices 0 and 1 the high bit is zero, so equality returns false.
inline u8 hasAnimation(u32 count, u32 index) {
    return count > index;
}

inline void setFloorChrAnim(u32 index, ResMdl model, gfModelAnimation* animation) {
        if (index < animation->m_resFile.GetResAnmChrNumEntries()) {
            int instanceSize;
            ResAnmChr resource = fn_8018D6D8(&animation->m_resFile, index);
            MEMAllocator* allocator = gfHeapManager::getMEMAllocator(Heaps::StageInstance);
            if (resource.IsValid()) {
                AnmObjChrRes* object = AnmObjChrRes::Construct(allocator, &instanceSize, resource, model, false);
                if (object) {
                    object->Bind(model);
                    if (animation->m_anmObjChrRes) animation->m_anmObjChrRes->Destroy();
                    animation->m_anmObjChrRes = object;
                }
            }
        }
    
}

inline void setFloorVisAnim(u32 index, ResMdl model, gfModelAnimation* animation) {
        if (index < animation->m_resFile.GetResAnmVisNumEntries()) {
            int instanceSize;
            ResAnmVis resource = fn_8018D8E0(&animation->m_resFile, index);
            MEMAllocator* allocator = gfHeapManager::getMEMAllocator(Heaps::StageInstance);
            if (resource.IsValid()) {
                AnmObjVisRes* object = AnmObjVisRes::Construct(allocator, &instanceSize, resource, model);
                if (object) {
                    object->Bind(model);
                    if (animation->m_anmObjVisRes) animation->m_anmObjVisRes->Destroy();
                    animation->m_anmObjVisRes = object;
                }
            }
        }
    
}

inline void setFloorTexPatAnim(u32 index, ResMdl model, gfModelAnimation* animation) {
        if (index < animation->m_resFile.GetResAnmTexPatNumEntries()) {
            int instanceSize;
            ResAnmTexPat resource = fn_8018DCF0(&animation->m_resFile, index);
            if (resource.IsValid()) {
                MEMAllocator* allocator = gfHeapManager::getMEMAllocator(Heaps::StageInstance);
                AnmObjTexPatRes* object = AnmObjTexPatRes::Construct(allocator, &instanceSize, resource, model, false);
                if (object) {
                    object->Bind(model);
                    if (animation->m_anmObjTexPatRes) animation->m_anmObjTexPatRes->Destroy();
                    animation->m_anmObjTexPatRes = object;
                }
            }
        }
    
}

inline void setFloorTexSrtAnim(u32 index, ResMdl model, gfModelAnimation* animation) {
        if (index < animation->m_resFile.GetResAnmTexSrtNumEntries()) {
            int instanceSize;
            ResAnmTexSrt resource = fn_8018DEF8(&animation->m_resFile, index);
            if (resource.IsValid()) {
                MEMAllocator* allocator = gfHeapManager::getMEMAllocator(Heaps::StageInstance);
                AnmObjTexSrtRes* object = AnmObjTexSrtRes::Construct(allocator, &instanceSize, resource, model, false);
                if (object) {
                    object->Bind(model);
                    if (animation->m_anmObjTexSrtRes) animation->m_anmObjTexSrtRes->Destroy();
                    animation->m_anmObjTexSrtRes = object;
                }
            }
        }
    
}

inline void setFloorClrAnim(u32 index, ResMdl model, gfModelAnimation* animation) {
        if (index < animation->m_resFile.GetResAnmClrNumEntries()) {
            int instanceSize;
            ResAnmClr resource = fn_8018DAE8(&animation->m_resFile, index);
            if (resource.IsValid()) {
                MEMAllocator* allocator = gfHeapManager::getMEMAllocator(Heaps::StageInstance);
                AnmObjMatClrRes* object = AnmObjMatClrRes::Construct(allocator, &instanceSize, resource, model, false);
                if (object) {
                    object->Bind(model);
                    if (animation->m_anmObjMatClrRes) animation->m_anmObjMatClrRes->Destroy();
                    animation->m_anmObjMatClrRes = object;
                }
            }
        }
    
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
// The unreachable final return belongs to this function (former fn_60_6D28).
void grTenganFloor::updateVisibility(float) {
    if (m_state != 3) return;
    m_170 = 0.0f;
    return setVisibility(0);
}

// NonMatching: defined shift-count masking adds five instructions; animation
// resource/instanceSize stack slots also differ. Do not remove the mask: a
// count equal to index would otherwise shift a u32 by 32 (undefined in C++).
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
    if (hasAnimation(animation->m_resFile.GetResAnmChrNumEntries(), index) != 0) {
        setFloorChrAnim(index, model, animation);
    }
    if (hasAnimation(animation->m_resFile.GetResAnmVisNumEntries(), index) != 0) {
        setFloorVisAnim(index, model, animation);
    }
    if (hasAnimation(animation->m_resFile.GetResAnmTexPatNumEntries(), index) != 0) {
        setFloorTexPatAnim(index, model, animation);
    }
    if (hasAnimation(animation->m_resFile.GetResAnmTexSrtNumEntries(), index) != 0) {
        setFloorTexSrtAnim(index, model, animation);
    }
    if (hasAnimation(animation->m_resFile.GetResAnmClrNumEntries(), index) != 0) {
        setFloorClrAnim(index, model, animation);
    }
    gfModelAnimation::bind(scene, animation);
    setFrame__16gfModelAnimationFf(animation, 0.0f);
    animation->setUpdateRate(1.0f);
    setLoop__16gfModelAnimationFd(animation, loop);
    if (frameCount) *frameCount = getFrameCount__16gfModelAnimationFv(animation);
}

