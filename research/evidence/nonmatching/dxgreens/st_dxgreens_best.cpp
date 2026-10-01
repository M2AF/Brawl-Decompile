#include <cm/cm_camera_controller.h>
#include <gf/gf_archive.h>
#include <gr/collision/gr_collision.h>
#include <mt/mt_prng.h>
#include <nw4r/g3d/g3d_resfile.h>
#include <st_dxgreens/gr_dxgreens.h>
#include <st_dxgreens/st_dxgreens.h>

extern "C" grDxGreens* fn_79_1998(int mdlIndex, const char* tgtNodeName, const char* taskName);
extern "C" grDxGreensBlockPos* fn_79_1B98(int mdlIndex, const char* tgtNodeName, const char* taskName);
extern "C" grDxGreensBlock* fn_79_A6B0(int mdlIndex, const char* tgtNodeName, const char* taskName);
extern "C" grDxGreensWhispy* fn_79_ACD0(int mdlIndex, const char* tgtNodeName, const char* taskName);
extern "C" grCollision* fn_27_222878(Stage* stage, int index);

stClassInfoImpl<Stages::DxGreens, stDxGreens> stDxGreens::bss_loc_14;

stDxGreens* stDxGreens::create() { return new (Heaps::StageInstance) stDxGreens(); }

stDxGreens::stDxGreens() : stMelee("stDxGreens", Stages::DxGreens) {
    memset(m_cameraBounds, 0, sizeof(m_cameraBounds));
    memset(m_blocks, 0, sizeof(m_blocks));
    memset(m_blockPositions, 0, sizeof(m_blockPositions));
    m_isFirstUpdate = true;
    m_spawnTimer = 0.0f;
    m_windTrigger = NULL;
    m_windData = NULL;
    m_joints[0] = NULL;
    m_joints[1] = NULL;
    m_joints[2] = NULL;
}

stDxGreens::~stDxGreens() {
    for (u8 i = 0; i < 6; i++) {
        clearColumn(&m_columns[i]);
    }
    if (m_windData) {
        delete m_windData;
    }
    releaseArchive();
}

bool stDxGreens::loading() { return true; }

void stDxGreens::createObj() {
    int size;
    void* data = m_fileData->getData(Data_Type_Misc, 0x2711, &size, 0xfffe);
    if (data) {
        m_itemBrres.setFileImage(data, size, Heaps::StageResource);
    }
    data = m_fileData->getData(Data_Type_Misc, 0x2712, &size, 0xfffe);
    if (data) {
        m_itemParam.setFileImage(data, size, Heaps::StageResource);
    }
    testStageParamInit(m_fileData, 0xA);
    testStageDataInit(m_fileData, 0x14, 0x78);
    createWind();
    createGround(1);
    createGround(0);
    createCollision(m_fileData, 2, NULL);
    createWhispy(2);
    createBlockPos(3);
    createBlocks();
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

void stDxGreens::createGround(int index) {
    grDxGreens* ground;
    switch (index) {
    case 0: ground = fn_79_1998(0, "StgDxGreensStage", "grDxGreensStage"); break;
    case 1: ground = fn_79_1998(1, "StgDxGreensEnkei", "grDxGreensEnkei"); break;
    default: ground = NULL; break;
    }
    if (ground) {
        addGround(ground);
        ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
        ground->setStageData(m_stageData);
    }
}

void stDxGreens::createWhispy(int index) {
    grDxGreensWhispy* ground = fn_79_ACD0(2, "StgDxGreensWhispy", "grDxGreensWhispy");
    if (ground) {
        addGround(ground);
        ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
        ground->setStageData(m_stageData);
        ground->set1D4(m_windTrigger);
        ground->set1D8(m_windData);
    }
}

void stDxGreens::createBlockPos(int index) {
    grDxGreensBlockPos* ground = fn_79_1B98(3, "StgDxGreensBlockPosition", "grDxGreensBlockPos");
    if (ground) {
        addGround(ground);
        ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
        ground->setStageData(m_stageData);
        ground->set1D8(m_blocks);
        ground->set1DC(m_blockPositions);
    }
}

void stDxGreens::createBlocks() {
    for (u8 column = 0; column < 6; column++) {
        for (u8 slot = 0; slot < 5; slot++) {
            createBlock(column, slot);
        }
    }
    stDxGreensData* data = static_cast<stDxGreensData*>(m_stageData);
    if (data) {
        m_spawnTimer = data->m_spawnIntervalMin + randf() * (data->m_spawnIntervalRange * data->m_spawnRateByCount[getTallestColumn()]);
    }
}

void stDxGreens::createBlock(u32 column, u32 slot) {
    if (column < 6 && slot < 5) {
        stDxGreensData* data = static_cast<stDxGreensData*>(m_stageData);
        if (data) {
            stDxGreensBlock* block = &m_blocks[column][slot];
            grDxGreensBlock* ground = fn_79_A6B0(4, "StgDxGreensBlock", "grDxGreensBlock");
            if (ground) {
                addGround(ground);
                ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
                ground->setStageData(m_stageData);
                ground->set1D8(block);
                ground->set1DC(m_cameraBounds);
                if (randf() < data->m_bombChance) {
                    block->m_isBomb = true;
                } else {
                    block->m_isBomb = false;
                }
                block->m_state = 7;
                createCollision(m_fileData, 3, ground);
            }
        }
    }
}

// The original fills these through value setters (one base-pointer load per call); the shared headers
// do not declare them, so equivalent file-local inlines are used.
static inline void setPos(Vec3f* v, float x, float y, float z) {
    v->m_x = x;
    v->m_y = y;
    v->m_z = z;
}

static inline void setArea(stGimmickAreaData* area, float x, float y, float w, float h) {
    area->m_offsetPos.m_x = x;
    area->m_offsetPos.m_y = y;
    area->m_range.m_x = w;
    area->m_range.m_y = h;
}

void stDxGreens::createWind() {
    m_windData = new (Heaps::StageInstance) grGimmickWindData;
    if (m_windData) {
        memset(m_windData, 0, sizeof(grGimmickWindData));
        setPos(&m_windData->m_pos, 0.0f, 0.0f, 0.0f);
        m_windData->m_speed = 10.0f;
        m_windData->m_vector = 0.0f;
        setArea(&m_windData->m_areaData, 0.0f, 0.0f, 0.0f, 0.0f);
        m_windTrigger = g_stTriggerMng->createTrigger(Gimmick::Area_Wind, -1);
        m_windTrigger->setWindTrigger(m_windData);
        m_windTrigger->setAreaSleep(true);
    }
}

void stDxGreens::update(float deltaFrame) {
    updateCameraBounds(deltaFrame);
    initBlocks(deltaFrame);
    spawnBlock(deltaFrame);
    settleBlocks(deltaFrame);
    updateCollision(deltaFrame);
}

static inline void setBound(nw4r::math::_VEC3* v, float x, float y, float z) {
    v->x = x;
    v->y = y;
    v->z = z;
}

void stDxGreens::updateCameraBounds(float deltaFrame) {
    CameraController* camera = CameraController::getInstance();
    setBound(&m_cameraBounds[0], camera->unk158, camera->unk160, 0.0f);
    setBound(&m_cameraBounds[1], camera->unk15C, camera->unk164, 0.0f);
}

void stDxGreens::initBlocks(float deltaFrame) {
    if (m_isFirstUpdate && m_blockPositions[0][0].m_x != 0.0f) {
        stDxGreensData* data = static_cast<stDxGreensData*>(m_stageData);
        if (data) {
            for (u8 column = 0; column < 6; column++) {
                stDxGreensBlock* blocks = m_blocks[column];
                for (u8 slot = 0; slot < 5; slot++) {
                    stDxGreensBlock* block = &blocks[slot];
                    block->m_from = m_blockPositions[column][slot];
                    block->m_to = m_blockPositions[column][slot];
                    block->m_height = slot;
                    if (randf() < data->m_bombChance) {
                        block->m_isBomb = true;
                    } else {
                        block->m_isBomb = false;
                    }
                }
            }
            m_blocks[0][0].m_state = 1;
            m_blocks[0][1].m_state = 1;
            m_blocks[0][2].m_state = 1;
            m_blocks[0][3].m_state = 1;
            pushSlot(0, &m_columns[0]);
            pushSlot(1, &m_columns[0]);
            pushSlot(2, &m_columns[0]);
            pushSlot(3, &m_columns[0]);
            m_blocks[1][0].m_state = 1;
            m_blocks[1][1].m_state = 1;
            m_blocks[1][2].m_state = 1;
            pushSlot(0, &m_columns[1]);
            pushSlot(1, &m_columns[1]);
            pushSlot(2, &m_columns[1]);
            m_blocks[2][0].m_state = 1;
            m_blocks[2][1].m_state = 1;
            pushSlot(0, &m_columns[2]);
            pushSlot(1, &m_columns[2]);
            m_blocks[3][0].m_state = 1;
            m_blocks[3][1].m_state = 1;
            pushSlot(0, &m_columns[3]);
            pushSlot(1, &m_columns[3]);
            m_blocks[4][0].m_state = 1;
            m_blocks[4][1].m_state = 1;
            m_blocks[4][2].m_state = 1;
            pushSlot(0, &m_columns[4]);
            pushSlot(1, &m_columns[4]);
            pushSlot(2, &m_columns[4]);
            m_blocks[5][0].m_state = 1;
            m_blocks[5][1].m_state = 1;
            m_blocks[5][2].m_state = 1;
            m_blocks[5][3].m_state = 1;
            pushSlot(0, &m_columns[5]);
            pushSlot(1, &m_columns[5]);
            pushSlot(2, &m_columns[5]);
            pushSlot(3, &m_columns[5]);
            m_isFirstUpdate = false;
        }
    }
}

void stDxGreens::spawnBlock(float deltaFrame) {
    if (m_isFirstUpdate != true) {
        m_spawnTimer -= deltaFrame;
        if (m_spawnTimer < 0.0f) {
            m_spawnTimer = 0.0f;
        }
        if (m_spawnTimer == 0.0f) {
            stDxGreensData* data = static_cast<stDxGreensData*>(m_stageData);
            if (data) {
                m_spawnTimer = data->m_spawnIntervalMin + randf() * (data->m_spawnIntervalRange * data->m_spawnRateByCount[getTallestColumn()]);
                u8 column = 6.0f * randf();
                stDxGreensBlockList* list = &m_columns[column];
                if (list->GetSize() != 5) {
                    stDxGreensBlockNode* top = getTop(list);
                    if (top == NULL || m_blockPositions[column][4].m_y != m_blocks[column][top->m_slot].m_to.m_y) {
                        stDxGreensBlock* blocks = m_blocks[column];
                        u32 slot;
                        for (slot = 0; slot < 5; slot++) {
                            if (blocks[slot].m_state == 7) {
                                break;
                            }
                        }
                        if (slot != 5) {
                            stDxGreensBlock* block = &blocks[slot];
                            u8 height;
                            if (top) {
                                height = blocks[top->m_slot].m_height + 1;
                            } else {
                                height = 0;
                            }
                            block->m_from = m_blockPositions[column][0];
                            block->m_to = m_blockPositions[column][height];
                            block->m_height = height;
                            block->m_state = 0;
                            if (randf() < data->m_bombChance) {
                                block->m_isBomb = true;
                            } else {
                                block->m_isBomb = false;
                            }
                            pushSlot(slot, list);
                        }
                    }
                }
            }
        }
    }
}

void stDxGreens::settleBlocks(float deltaFrame) {
    if (m_isFirstUpdate != true) {
        for (u8 column = 0; column < 6; column++) {
            s8 lowest = -1;
            stDxGreensBlockList* list = &m_columns[column];
            stDxGreensBlock* blocks = m_blocks[column];
            for (u8 slot = 0; slot < 5; slot++) {
                stDxGreensBlock* block = &blocks[slot];
                if (block->m_state == 5) {
                    if (lowest == -1) {
                        lowest = block->m_height;
                    }
                    if (lowest > slot) {
                        lowest = block->m_height;
                    }
                    removeSlot(slot, list);
                    block->m_state = 7;
                }
            }
            if (lowest >= 0) {
                stDxGreensBlockNode* node = &list->GetFront();
                u8 count = list->GetSize();
                for (u8 i = 0; i < count; i++) {
                    stDxGreensBlock* block = &blocks[node->m_slot];
                    switch (block->m_state) {
                    case 1:
                        break;
                    case 2:
                        lowest = block->m_height + 1;
                        break;
                    case 0:
                        if (block->m_height > lowest) {
                            block->m_to = m_blockPositions[column][lowest];
                            block->m_height = lowest;
                            lowest++;
                        }
                        break;
                    }
                    node = reinterpret_cast<stDxGreensBlockNode*>(node->m_link.GetNext());
                }
            }
        }
    }
}

void stDxGreens::updateCollision(float deltaFrame) {
    if (m_joints[0] && m_joints[1] && m_joints[2]) {
        s16 flags0 = 0;
        u16 flags1 = 0;
        s16 flags2 = 0;
        for (u8 column = 0; column < 6; column++) {
            for (u8 slot = 0; slot != 5; slot++) {
                stDxGreensBlock* block = &m_blocks[column][slot];
                if (block->m_state == 2) {
                    switch (column) {
                    case 0:
                        if (block->m_height == 0) {
                            flags0 |= 0x4000;
                        }
                        break;
                    case 1:
                        break;
                    case 2:
                        if (block->m_height <= 1) {
                            flags1 |= 0x2000;
                        }
                        break;
                    case 3:
                        if (block->m_height <= 1) {
                            flags1 |= 0x4000;
                        }
                        break;
                    case 5:
                        if (block->m_height == 0) {
                            flags2 |= 0x2000;
                        }
                        break;
                    }
                }
            }
        }
        m_joints[0]->m_0x52 = flags0;
        m_joints[1]->m_0x52 = flags1;
        m_joints[2]->m_0x52 = flags2;
    } else {
        grCollision* collision = fn_27_222878(this, 0);
        if (collision) {
            m_joints[0] = collision->getJoint(0);
            m_joints[1] = collision->getJoint(1);
            m_joints[2] = collision->getJoint(2);
        }
    }
}

u8 stDxGreens::getTallestColumn() {
    u8 tallest = 0;
    for (u8 i = 0; i < 6; i++) {
        if (tallest < m_columns[i].GetSize()) {
            tallest = m_columns[i].GetSize();
        }
    }
    return tallest;
}

void stDxGreens::getItemPac(gfArchive** brres, gfArchive** param, itKind kind, int variation) {
    if (kind == 0x4A) {
        *brres = &m_itemBrres;
        *param = &m_itemParam;
    }
}

void stDxGreens::pushSlot(u8 slot, stDxGreensBlockList* list) {
    stDxGreensBlockNode* node = new (Heaps::StageResource) stDxGreensBlockNode;
    if (node) {
        node->m_slot = slot;
        list->PushBack(node);
    }
}

void stDxGreens::removeSlot(u8 slot, stDxGreensBlockList* list) {
    stDxGreensBlockNode* node = findSlot(slot, list);
    if (node) {
        list->Erase(node);
        delete node;
    }
}

void stDxGreens::clearColumn(stDxGreensBlockList* list) {
    for (u32 i = 0, size = list->GetSize(); i != size; i++) {
        stDxGreensBlockNode* node = &list->GetFront();
        list->PopFront();
        delete node;
    }
}

stDxGreensBlockNode* stDxGreens::findSlot(u8 slot, stDxGreensBlockList* list) {
    u32 size = list->GetSize();
    stDxGreensBlockNode* node = &list->GetFront();
    for (u32 i = 0; i != size; i++) {
        if (slot == node->m_slot) {
            return node;
        }
        node = reinterpret_cast<stDxGreensBlockNode*>(node->m_link.GetNext());
    }
    return NULL;
}

stDxGreensBlockNode* stDxGreens::getBottom(stDxGreensBlockList* list) {
    return &list->GetFront();
}

stDxGreensBlockNode* stDxGreens::getTop(stDxGreensBlockList* list) {
    stDxGreensBlockNode* node = &list->GetFront();
    u32 size = list->GetSize();
    for (u32 i = 0; i != size; i++) {
        if (i == size - 1) {
            return node;
        }
        node = reinterpret_cast<stDxGreensBlockNode*>(node->m_link.GetNext());
    }
    return NULL;
}
