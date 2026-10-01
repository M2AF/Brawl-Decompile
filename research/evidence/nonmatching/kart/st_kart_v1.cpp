#include <cm/cm_camera_controller.h>
#include <gf/gf_archive.h>
#include <nw4r/g3d/g3d_resfile.h>
#include <nw4r/math/math_triangular.h>
#include <st_kart/gr_kart.h>
#include <st_kart/st_kart.h>

extern "C" Ground* fn_49_12D0(int mdlIndex, const char* tgtNodeName, const char* taskName);
extern "C" grKartBg* fn_49_146C(int mdlIndex, const char* tgtNodeName, const char* taskName);
extern "C" grKartKart* fn_49_1AF8(int mdlIndex, const char* tgtNodeName, const char* taskName);
extern "C" grKartAttack* fn_49_4248(int mdlIndex, const char* tgtNodeName, const char* taskName);
extern "C" grKartIcon* fn_49_B974(int mdlIndex, const char* tgtNodeName, const char* taskName);
extern "C" grKartWarning* fn_49_C084(int mdlIndex, const char* tgtNodeName, const char* taskName);

stClassInfoImpl<Stages::Kart, stKart> stKart::bss_loc_14;

stKart* stKart::create() { return new (Heaps::StageInstance) stKart(); }

// Matching technique: the original constructor stays out of line in create()
// and the class-info create(); MWCC's file-level inliner would inline it.
#pragma push
#pragma dont_inline on
stKart::stKart() : stMelee("stKart", Stages::Kart) {
    m_pathCollection = NULL;
    memset(m_cameraBounds, 0, sizeof(m_cameraBounds));
    m_warningState = 10;
    m_bgState = 10;
    memset(m_karts, 0, sizeof(m_karts));
    m_isZoomedOut = false;
}
#pragma pop

stKart::~stKart() { releaseArchive(); }
bool stKart::loading() { return true; }

void stKart::createObj() {
    testStageParamInit(m_fileData, 0xA);
    testStageDataInit(m_fileData, 0x14, 0x4C);
    createPathCollection();
    createBg(0);
    createCollision(m_fileData, 2, NULL);
    createMap(1);
    createWarning(2);
    createKarts();
    initCameraParam();
    nw4r::g3d::ResFile posData(m_fileData->getData(Data_Type_Model, 0x64, 0xfffe));
    if (posData.ptr()) {
        nw4r::g3d::ResFile copyPosData = posData;
        createStagePositions(&copyPosData);
    } else {
        createStagePositions();
    }
    createWind2ndOnly();
    loadStageAttrParam(m_fileData, 0x1E);
    nw4r::g3d::ResFileData* scnData = static_cast<nw4r::g3d::ResFileData*>(m_fileData->getData(Data_Type_Scene, 0, 0xfffe));
    registScnAnim(scnData, 0);
    initPosPokeTrainer(2, 0);
    createObjPokeTrainer(m_fileData, 0x65, "PokeTrainer00", m_pokeTrainerPos, 0);
    createObjPokeTrainer(m_fileData, 0x66, "PokeTrainer01", m_pokeTrainerPos + 2, 0);
}

void stKart::createPathCollection() {
    m_pathCollection = NULL;
    void* data = m_fileData->getData(Data_Type_Misc, 4, 0xfffe);
    if (data) {
        grFixedPathCollection* collection = static_cast<grFixedPathCollection*>(data);
        if (collection) {
            collection->relocation();
            m_pathCollection = collection;
        }
    }
}

void stKart::createBg(int index) {
    grKartBg* ground;
    switch (index) {
    case 0: ground = fn_49_146C(0, "TopN", "grKartBg"); break;
    default: ground = NULL; break;
    }
    if (ground) {
        addGround(ground);
        ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
        ground->setStageData(m_stageData);
        ground->set1CC(&m_bgState);
    }
}

void stKart::createMap(int index) {
    Ground* ground;
    switch (index) {
    case 1: ground = fn_49_12D0(0x14, "", "grKartMap"); break;
    default: ground = NULL; break;
    }
    if (ground) {
        addGround(ground);
        ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
        ground->setStageData(m_stageData);
    }
}

void stKart::createWarning(int index) {
    grKartWarning* ground;
    switch (index) {
    case 2: ground = fn_49_C084(0x1E, "gr2_StgKartCaution", "grKartWarning"); break;
    default: ground = NULL; break;
    }
    if (ground) {
        addGround(ground);
        ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
        ground->setStageData(m_stageData);
        ground->set1D4(&m_warningState);
    }
}

void stKart::createKarts() {
    stKartData* data = static_cast<stKartData*>(m_stageData);
    if (data) {
        if (data->m_kartNum > 8) {
            data->m_kartNum = 8;
        }
        u8 i;
        u8 kartNum = data->m_kartNum;
        s16 mdlIndex = 1;
        for (i = 0; i != kartNum; i++) {
            createKart(i, mdlIndex);
            createAttack(i, 0x28);
            createIcon(i, mdlIndex + 10);
            mdlIndex++;
            if (mdlIndex == 5) {
                mdlIndex = 1;
            }
        }
    }
}

void stKart::createKart(u8 index, s16 mdlIndex) {
    if (m_stageData) {
        grKartKart* ground = fn_49_1AF8(mdlIndex, "TopN", "grKartKart");
        if (ground) {
            addGround(ground);
            ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
            ground->setStageData(m_stageData);
            ground->set1F0(m_pathCollection);
            ground->set1F8(index);
            ground->set1FC(m_cameraBounds);
            ground->set200(m_karts);
        }
    }
}

void stKart::createAttack(u8 index, int mdlIndex) {
    grKartAttack* ground = fn_49_4248(mdlIndex, "nodeIndex", "grKartAttack");
    if (ground) {
        addGround(ground);
        ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
        ground->setStageData(m_stageData);
        ground->set1E0(&m_karts[index]);
    }
}

void stKart::createIcon(u8 index, s16 kind) {
    if (m_stageData) {
        grKartIcon* ground;
        switch (kind) {
        case 11: ground = fn_49_B974(kind, "StgKartIcon01", "grKartIcon"); break;
        case 12: ground = fn_49_B974(kind, "StgKartIcon02", "grKartIcon"); break;
        case 13: ground = fn_49_B974(kind, "StgKartIcon03", "grKartIcon"); break;
        case 14: ground = fn_49_B974(kind, "StgKartIcon04", "grKartIcon"); break;
        default: ground = NULL; break;
        }
        if (ground) {
            addGround(ground);
            ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
            ground->setStageData(m_stageData);
            ground->set1D4(m_pathCollection);
            ground->set1DC(&m_karts[index]);
        }
    }
}

void stKart::update(float deltaFrame) {
    if (m_isDevil == true) {
        float limit;
        cmStageParam* param = &CameraController::getInstance()->m_stageCameraParam;
        if (param) {
            limit = -(0.25f * (param->m_verticalRotationFactor * (nw4r::math::SinDeg(15.0f) / nw4r::math::CosDeg(15.0f))));
        }
        setCameraLimitRange(-200.0f, 200.0f, 200.0f, limit);
    } else {
        resetCameraLimitRange();
    }
    updateCameraBounds(deltaFrame);
    updateRanks(deltaFrame);
}

static inline void setBound(nw4r::math::_VEC3* v, float x, float y, float z) {
    v->x = x;
    v->y = y;
    v->z = z;
}

void stKart::updateCameraBounds(float deltaFrame) {
    CameraController* camera = CameraController::getInstance();
    setBound(&m_cameraBounds[0], camera->unk158, camera->unk160, 0.0f);
    setBound(&m_cameraBounds[1], camera->unk15C, camera->unk164, 0.0f);
}

void stKart::updateRanks(float deltaFrame) {
    stKartData* data = static_cast<stKartData*>(m_stageData);
    if (data) {
        // The original reserves (and never uses) a per-kart stack buffer here.
        __alloca(data->m_kartNum * sizeof(int));
        m_bgState = 10;
        bool allOnFinalLap = true;
        u8 kartNum = data->m_kartNum;
        for (u8 i = 0; i != kartNum; i++) {
            stKartRecord* kart = &m_karts[i];
            kart->m_rank = 0;
            if (kart->m_lap < 10) {
                allOnFinalLap = false;
            }
            if (kart->m_checkpoint > 20 && kart->m_checkpoint < 40 && kart->m_isRacing == true) {
                if (m_warningState == 10) {
                    m_warningState = 0;
                }
                m_bgState = 9;
            }
            if (kart->m_checkpoint > 90 && kart->m_isRacing == true) {
                m_bgState = 8;
            }
        }
        kartNum = data->m_kartNum;
        for (u8 i = 0; i != kartNum; i++) {
            if (allOnFinalLap == true) {
                m_karts[i].m_lap -= 10;
            }
        }
        kartNum = data->m_kartNum;
        for (u8 i = 0; i != kartNum; i++) {
            stKartRecord* kart = &m_karts[i];
            u8 otherNum = data->m_kartNum;
            for (u8 j = 0; j != otherNum; j++) {
                if (i != j) {
                    stKartRecord* other = &m_karts[j];
                    bool isBehind = false;
                    if (kart->m_lap < other->m_lap) {
                        isBehind = true;
                    } else if (kart->m_lap == other->m_lap) {
                        if (kart->m_checkpoint < other->m_checkpoint) {
                            isBehind = true;
                        } else if (kart->m_checkpoint == other->m_checkpoint) {
                            if (kart->m_distance < other->m_distance) {
                                isBehind = true;
                            }
                        }
                    }
                    if (isBehind == true) {
                        kart->m_rank++;
                    }
                }
            }
        }
        if (m_isZoomedOut == true && m_warningState != 0) {
            zoomInCamera();
            m_isZoomedOut = false;
        } else if (m_isZoomedOut == false && m_warningState == 0) {
            zoomOutCamera(225.0f, 275.0f);
            m_isZoomedOut = true;
        }
    }
}

void stKart::renderDebug() {}

static inline float clamp01(float value) {
    if (value < 0.0f) {
        value = 0.0f;
    }
    if (value > 1.0f) {
        value = 1.0f;
    }
    return value;
}

int stKart::getZoneLightSetIndex(Vec3f* pos) {
    if (pos == NULL) {
        return 0x14;
    }
    float x = pos->m_x;
    float y = pos->m_y;
    if (y < 0.0f) return 0x14;
    if (x < -250.0f) return 0x14;
    if (x > -45.0f && x < -21.0f) return 0x14;
    if (x > 21.0f && x < 45.0f) return 0x14;
    if (x > 250.0f) return 0x14;
    if (x >= -250.0f && x <= -100.0f && y <= 25.0f) return 0x15;
    if (x >= -100.0f && x <= -45.0f) {
        if (y <= 25.0f) return 0x15;
        if (y <= 25.0f + 15.0f * clamp01((x - -100.0f) / 55.0f)) return 0x15;
    }
    if (x >= -21.0f && x <= 21.0f && y <= 50.0f) return 0x15;
    if (x >= 45.0f && x <= 100.0f) {
        if (y <= 25.0f) return 0x15;
        if (y <= 25.0f + 15.0f * clamp01(1.0f - (x - 45.0f) / 55.0f)) return 0x15;
    }
    if (x >= 100.0f && x <= 250.0f && y <= 25.0f) return 0x15;
    return 0x14;
}
