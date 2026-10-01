#include <cm/cm_controller_ai.h>
#include <ef/ef_screen.h>
#include <gf/gf_archive.h>
#include <gm/gm_global.h>
#include <it/it_manager.h>
#include <it/item.h>
#include <mt/mt_matrix.h>
#include <nw4r/g3d/g3d_resfile.h>
#include <revolution/OS.h>
#include <snd/snd_system.h>
#include <st_heal/st_heal.h>
#include <stdio.h>

extern "C" grHealWarpZone* fn_27_27BDB8(int mdlIndex, const char* taskName);
extern "C" void fn_27_27BF44(grHealWarpZone* warpZone, int, int, int, int);
extern "C" u16 fn_27_24810C(u8 characterKind);
extern "C" void fn_27_28E7B4(BaseItem* item, u8 rank);
extern "C" bool fn_27_2A5B84(itManager* manager, int kind, int variation);
extern "C" void fn_803F8ACC(void* base, u32 count, u32 size, int (*compare)(const void*, const void*));

static stMadeinStaticPair s_madeinPair0(0xff, 0);
static stMadeinStaticPair s_madeinPair1(0xff, 1);

// The original keeps this zero word in .data (not .bss); explicit_zero_data
// reproduces that placement. See docs/RSBE01_01.md.
#pragma push
#pragma explicit_zero_data on
static stHealSeq s_seqInit = { 0 };
#pragma pop

stClassInfoImpl<Stages::Heal, stHeal> stHeal::bss_loc_14;

inline stHeal::stHeal(const char* name) : stMelee(name, Stages::Heal) {
    m_isWarped = false;
    m_seq = s_seqInit;
    m_state = 0;
}

stHeal* stHeal::create() { return new (Heaps::StageInstance) stHeal("stHeal"); }
stHeal::~stHeal() { releaseArchive(); }
bool stHeal::loading() { return true; }

void stHeal::createObj() {
    gmGlobalCorps* corps = g_GameGlobal->m_corps;
    testStageParamInit(m_fileData, 0xA);
    m_ground = grMadein::create(1, "", "", Heaps::StageInstance);
    addGround(m_ground);
    m_ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
    m_ground->setStageData(m_stageData);
    m_ground->initializeEntity();
    m_ground->startEntityAutoLoop();
    m_heartNodes[0] = m_ground->getNodeIndex(0, "heartPosition01");
    m_heartNodes[1] = m_ground->getNodeIndex(0, "heartPosition02");
    m_heartNodes[2] = m_ground->getNodeIndex(0, "heartPosition03");
    m_heartNodes[3] = m_ground->getNodeIndex(0, "heartPosition04");
    m_heartNodes[4] = m_ground->getNodeIndex(0, "heartPosition05");
    m_warpNode = m_ground->getNodeIndex(0, "warpPosition");
    m_extraFigureNode = m_ground->getNodeIndex(0, "ItmFigurePosition");
    for (int i = 0; i < 36; i++) {
        char nodeName[64];
        sprintf(nodeName, "figurePosition%02d", i + 1);
        m_figureNodes[i] = m_ground->getNodeIndex(0, nodeName);
    }
    for (int i = 0; i < 19; i++) {
        char nodeName[64];
        sprintf(nodeName, "Info_stg%02d", i + 1);
        m_ground->setNodeVisibility(corps->m_stageNo == i, 0, nodeName, false, false);
    }
    m_ground1dc = grMadein::create(3, "", "", Heaps::StageInstance);
    addGround(m_ground1dc);
    m_ground1dc->startup(m_fileData, 0, gfSceneRoot::Layer_Effect);
    m_ground1dc->setStageData(m_stageData);
    m_ground1dc->initializeEntity();
    m_ground1dc->startEntityAutoLoop();
    m_ground1e0 = grMadein::create(4, "", "", Heaps::StageInstance);
    addGround(m_ground1e0);
    m_ground1e0->startup(m_fileData, 0, gfSceneRoot::Layer_Effect);
    m_ground1e0->setStageData(m_stageData);
    m_ground1e0->initializeEntity();
    m_ground1e0->startEntityAutoLoop();
    m_warpZone = fn_27_27BDB8(2, "grHealWarpZone");
    if (m_warpZone) {
        addGround(m_warpZone);
        fn_27_27BF44(m_warpZone, 0, 0, 8, 3);
        m_warpZone->setGimmickData(m_warpZone->m_gimmickData);
        m_warpZone->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
        m_warpZone->setStageData(m_stageData);
    }
    createCollision(m_fileData, 2, NULL);
    initCameraParam();
    nw4r::g3d::ResFile posData(m_fileData->getData(Data_Type_Model, 0x64, 0xfffe));
    if (posData.ptr()) {
        nw4r::g3d::ResFile copyPosData = posData;
        createStagePositions(&copyPosData);
    } else {
        createStagePositions();
    }
    createWind2ndOnly();
    nw4r::g3d::ResFileData* scnData = static_cast<nw4r::g3d::ResFileData*>(m_fileData->getData(Data_Type_Scene, 0, 0xfffe));
    registScnAnim(scnData, 0);
    static_cast<grMadein*>(getGround(0))->initializeEntity();
    static_cast<grMadein*>(getGround(0))->startEntityAutoLoop();
    loadStageAttrParam(m_fileData, 0x1E);
    initPosPokeTrainer(1, 0);
    createObjPokeTrainer(m_fileData, 0x65, "PokeTrainer00", m_pokeTrainerPos, 0);
    m_seq = s_seqInit;
    m_state = 0;
    g_cmAIController->m_isFlag94_3 = false;
}

struct stHealFigureOrder {
    int m_index;
    int m_key;
};

static int compareFigureOrder(const void* a, const void* b) {
    return static_cast<const stHealFigureOrder*>(a)->m_key - static_cast<const stHealFigureOrder*>(b)->m_key;
}

// Values copied into m_seq by update(); file-scope so that MWCC keeps the
// copy ahead of the state store, as in the original.
static stHealSeq s_seqToEA = { 1 };
static stHealSeq s_seqToEC = { 1 };
static stHealSeq s_seqToED = { 1 };
static stHealSeq s_seqToF1 = { 1 };
static stHealSeq s_seqTo19A = { 1 };
static stHealSeq s_seqTo1C5 = { 2 };

void stHeal::update(float deltaFrame) {
    gmGlobalCorps* corps = g_GameGlobal->m_corps;
    // The two "not ready" blocks sit before the tests that reach them in the
    // original layout; labels inside the switch reproduce that order.
    switch (m_state) {
    case 0: {
        m_seq = s_seqToEA;
        m_state = 0xEA;
    }
    case 0xEA: {
        m_seq = s_seqToEC;
        m_state = 0xEC;
        break;
    }
    case 0xEC: {
        m_seq = s_seqToED;
        m_state = 0xED;
        break;
    }
    itemsNotReady: {
        m_seq = s_seqToF1;
        m_state = 0xF1;
        break;
    }
    case 0xED:
    case 0xF1: {
        if (!fn_27_2A5B84(itManager::getInstance(), 0x20, 1)) {
            goto itemsNotReady;
        }
        int bit;
        for (int i = 0; i < 5; i++) {
            bit = 1 << i;
            if (corps->m_heartFlags & bit) {
                Matrix mtx(true);
                if (m_ground->getNodeMatrix(&mtx, 0, m_heartNodes[i])) {
                    BaseItem* item = itManager::getInstance()->createItem((itKind)0x20, 1);
                    if (item) {
                        float z = mtx(2, 3);
                        float y = mtx(1, 3);
                        float x = mtx(0, 3);
                        Vec3f pos(x, y, z);
                        pos.m_y += 10.0f;
                        item->warp(&pos);
                        item->setVanishMode(false);
                        m_heartItemIds[i] = item->m_instanceId;
                    } else {
                        corps->m_heartFlags &= ~bit;
                    }
                }
            }
        }
        stHealFigureOrder order[36];
        for (int i = 0; i < 36; i++) {
            order[i].m_index = i;
            Matrix mtx(true);
            if (m_ground->getNodeMatrix(&mtx, 0, m_figureNodes[i])) {
                float z = mtx(2, 3);
                float y = mtx(1, 3);
                float x = mtx(0, 3);
                Vec3f pos(x, y, z);
                order[i].m_key = 100.0f * pos.m_z;
            } else {
                order[i].m_key = -10000;
            }
        }
        fn_803F8ACC(order, 36, sizeof(stHealFigureOrder), compareFigureOrder);
        for (int i = 0; i < 36; i++) {
            order[order[i].m_index].m_key = i;
        }
        for (int i = 0; i < corps->m_numDefeated; i++) {
            Matrix mtx(true);
            if (m_ground->getNodeMatrix(&mtx, 0, m_figureNodes[i])) {
                BaseItem* item = itManager::getInstance()->createItem((itKind)0x17, fn_27_24810C(corps->m_playersInitData[i].m_characterKind));
                if (item) {
                    item->action(1, 1.0f);
                    float z = mtx(2, 3);
                    float y = mtx(1, 3);
                    float x = mtx(0, 3);
                    Vec3f pos(x, y, z);
                    OSReport("PutCorpsFigure%02d:%02d -> %02d  Pos(%f,%f,%f)\n", i, corps->m_playersInitData[i].m_characterKind,
                             fn_27_24810C(corps->m_playersInitData[i].m_characterKind), pos.m_x, pos.m_y, pos.m_z);
                    pos.m_y += 1.0f;
                    item->warp(&pos);
                    item->setVanishMode(false);
                    fn_27_28E7B4(item, order[i].m_key);
                }
            }
        }
        if (corps->m_extraFigureVariation != 0) {
            Matrix mtx(true);
            if (m_ground->getNodeMatrix(&mtx, 0, m_extraFigureNode)) {
                BaseItem* item = itManager::getInstance()->createItem((itKind)0x17, corps->m_extraFigureVariation);
                if (item) {
                    float z = mtx(2, 3);
                    float y = mtx(1, 3);
                    float x = mtx(0, 3);
                    Vec3f pos(x, y, z);
                    pos.m_y += 10.0f;
                    item->warp(&pos);
                    item->setVanishMode(false);
                }
            }
        }
        Matrix mtx(true);
        m_ground->getNodeMatrix(&mtx, 0, m_warpNode);
        float z = mtx(2, 3);
        float y = mtx(1, 3);
        float x = mtx(0, 3);
        Vec3f pos(x, y, z);
        m_warpZone->setPos(&pos);
        goto checkWarp;
    }
    notWarped: {
        m_seq = s_seqTo19A;
        m_state = 0x19A;
        break;
    }
    case 0x19A: {
        for (int i = 0; i < 5; i++) {
            int bit = 1 << i;
            if (corps->m_heartFlags & bit) {
                if (!itManager::getInstance()->getItemFromInstanceId(m_heartItemIds[i])) {
                    corps->m_heartFlags &= ~bit;
                }
            }
        }
        grHealWarpZone* warpZone = m_warpZone;
        m_isWarped = warpZone->m_isEntered1ec | m_isWarped;
        m_isWarped |= warpZone->m_isEntered1ed;
    checkWarp:
        if (!m_isWarped) {
            goto notWarped;
        }
        g_sndSystem->playSE((SndID)0x21, 0x10000, 0, 0, -1);
        GXColor fill;
        fill.b = 0;
        fill.g = 0;
        fill.r = 0;
        fill.a = 0xFF;
        GXColor color = fill;
        g_efScreen->requestFill(6.0f, 7, 0, &color);
        m_seq = s_seqTo1C5;
        m_state = 0x1C5;
        break;
    }
    }
}

bool stHeal::isEventEnd(int param1, int* eventState, int* eventDecision) {
    *eventState = 6;
    *eventDecision = 5;
    return m_isWarped;
}
