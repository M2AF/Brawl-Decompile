#include <gf/gf_archive.h>
#include <nw4r/g3d/g3d_resfile.h>
#include <mt/mt_prng.h>
#include <st_greenhill/gr_greenhill.h>
#include <st_greenhill/st_greenhill.h>
extern "C" grGreenhillBg* fn_72_11EC(int, const char*, const char*);
extern "C" grGreenhillBreak* fn_72_9D54(int, const char*, const char*);
extern "C" grGreenhillCheck* fn_72_1ACC(int, const char*, const char*);
extern "C" grGreenhillGuest* fn_72_C06C(int, const char*, const char*);
extern "C" grGreenhillGuestLine* fn_72_C5CC(int, const char*, const char*);

stClassInfoImpl<Stages::GreenHill, stGreenhill> stGreenhill::bss_loc_14;
stGreenhill* stGreenhill::create() { return new (Heaps::StageInstance) stGreenhill; }
stGreenhill::stGreenhill() : stMelee("stGreenhill", Stages::GreenHill), m_mainMatrix(true) {
    m_breakState[0] = 5; m_breakState[1] = 5; m_breakState[2] = 5;
    m_breakFlags[0] = 0; m_breakFlags[1] = 0; m_breakFlags[2] = 0;
    m_guestPhase = 0; m_guestTimer = 0.0f; m_guestCount = 0;
    memset(m_guestOrder, 0, sizeof(m_guestOrder));
    for (u8 i = 0; i < 3; i++) {
        m_guest[i].m_state = 5; m_guest[i].m_kind = 3;
        m_guest[i].m_matrix.setIdentity();
        m_guest[i].m_rate = 1.0f;
    }
    m_markerState = 5;
    memset(&m_mainMatrix, 0, sizeof(m_mainMatrix));
}
stGreenhill::~stGreenhill() { releaseArchive(); }
bool stGreenhill::loading() { return true; }
void stGreenhill::createObj() {
    testStageParamInit(m_fileData, 0xa);
    testStageDataInit(m_fileData, 0x14, 0x50);
    fn_72_3A0(); fn_72_480(); fn_72_6D0(); fn_72_7C8();
    createCollision(m_fileData, 2, NULL);
    initCameraParam();
    nw4r::g3d::ResFile posData(m_fileData->getData(Data_Type_Model, 0x64, 0xfffe));
    if (posData.ptr()) { nw4r::g3d::ResFile copy = posData; createStagePositions(&copy); }
    else createStagePositions();
    createWind2ndOnly();
    loadStageAttrParam(m_fileData, 0x1e);
    nw4r::g3d::ResFileData* scene = static_cast<nw4r::g3d::ResFileData*>(m_fileData->getData(Data_Type_Scene, 0, 0xfffe));
    registScnAnim(scene, 0);
    initPosPokeTrainer(1, 0);
    createObjPokeTrainer(m_fileData, 0x65, "PokeTrainer00", m_pokeTrainerPos, 0);
}
void stGreenhill::fn_72_3A0() {
    grGreenhillBg* ground = fn_72_11EC(1, "StgGreenhillMain", "grGreenhillMainBg");
    if (ground) {
        addGround(ground);
        ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
        ground->setStageData(m_stageData);
        ground->fn_72_470(&m_mainMatrix);
        ground->fn_72_478(m_breakFlags);
    }
}
void stGreenhill::fn_72_480() {
    grGreenhillBreak* ground3;
    grGreenhillBreak* ground1 = fn_72_9D54(2, "StgGreenhillBrk_gake01", "grGreenhillBreak01");
    if (!ground1) return;
    addGround(ground1);
    ground1->fn_72_6B8(0);
    ground1->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
    ground1->setStageData(m_stageData);
    ground1->fn_72_6C0(&m_breakState[0]);
    ground1->fn_72_6C8(m_breakFlags);
    grGreenhillBreak* ground2 = fn_72_9D54(3, "StgGreenhillBrk_gake02", "grGreenhillBreak02");
    if (!ground2) return;
    addGround(ground2);
    ground2->fn_72_6B8(1);
    ground2->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
    ground2->setStageData(m_stageData);
    ground2->fn_72_6C0(&m_breakState[1]);
    ground2->fn_72_6C8(m_breakFlags);
    ground3 = fn_72_9D54(4, "StgGreenhillBrk_gake03", "grGreenhillBreak03");
    if (!ground3) return;
    addGround(ground3);
    ground3->fn_72_6B8(2);
    ground3->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
    ground3->setStageData(m_stageData);
    ground3->fn_72_6C0(&m_breakState[2]);
    ground3->fn_72_6C8(m_breakFlags);
}
void stGreenhill::fn_72_6D0() {
    grGreenhillCheck* ground = fn_72_1ACC(5, "StgGreenhillMarker", "grGreenhillMarker");
    if (ground) {
        addGround(ground);
        ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
        ground->setStageData(m_stageData);
        ground->fn_72_7B0(&m_markerState);
        ground->fn_72_7B8(m_breakState);
        ground->fn_72_7C0(&m_mainMatrix);
    }
}
void stGreenhill::fn_72_7C8() {
    m_guest[0].m_kind = 0; m_guest[1].m_kind = 1; m_guest[2].m_kind = 2;
    grGreenhillGuest* guest0 = fn_72_C06C(10, "StgGreenhillKnuckles_TopN", "grGreenhillKnuckles");
    if (!guest0) return;
    addGround(guest0);
    guest0->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
    guest0->setStageData(m_stageData);
    guest0->fn_72_AF0(&m_guest[0]);
    grGreenhillGuest* guest1 = fn_72_C06C(11, "StgGreenhillSilver_TopN", "grGreenhillSilver");
    if (!guest1) return;
    addGround(guest1);
    guest1->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
    guest1->setStageData(m_stageData);
    guest1->fn_72_AF0(&m_guest[1]);
    grGreenhillGuest* guest2 = fn_72_C06C(12, "StgGreenhillTails_TopN", "grGreenhillTails");
    if (!guest2) return;
    addGround(guest2);
    guest2->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
    guest2->setStageData(m_stageData);
    guest2->fn_72_AF0(&m_guest[2]);
    grGreenhillGuestLine* line0 = fn_72_C5CC(13, "StgGreenhillRunPosition", "grGreenhillGuestLineN");
    if (!line0) return;
    addGround(line0);
    line0->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
    line0->setStageData(m_stageData);
    line0->fn_72_AF8(&m_guest[0]);
    grGreenhillGuestLine* line1 = fn_72_C5CC(13, "StgGreenhillRunPosition", "grGreenhillGuestLineS");
    if (!line1) return;
    addGround(line1);
    line1->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
    line1->setStageData(m_stageData);
    line1->fn_72_AF8(&m_guest[1]);
    grGreenhillGuestLine* line2 = fn_72_C5CC(13, "StgGreenhillRunPosition", "grGreenhillGuestLineT");
    if (!line2) return;
    addGround(line2);
    line2->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
    line2->setStageData(m_stageData);
    line2->fn_72_AF8(&m_guest[2]);
}
void stGreenhill::update(float deltaFrame) {
    if (m_isDevil == true) setCameraLimitRange(-160.0f, 180.0f, 140.0f, -45.0f);
    else resetCameraLimitRange();
    fn_72_B9C(deltaFrame);
}
void stGreenhill::fn_72_B9C(float deltaFrame) {
    stGreenhillParam* param = static_cast<stGreenhillParam*>(m_stageData);
    if (!param) return;
    m_guestTimer -= deltaFrame;
    if (m_guestTimer < 0.0f) m_guestTimer = 0.0f;
    switch (m_guestPhase) {
    case 0:
        m_guestTimer = param->m_initialDelay;
        m_guestPhase = 1;
        // The target deliberately falls through to evaluate the timer.
    case 1:
        if (0.0f == m_guestTimer) {
            if (m_guestCount >= param->m_maxCount) { m_guestCount = 0; m_guestPhase = 3; break; }
            if (randf() < param->m_endChance) { m_guestCount = 0; m_guestPhase = 3; break; }
            u8 index = static_cast<int>(3.0f * randf());
            index = index > 0 ? index : 0;
            index = index < 2 ? index : 2;
            m_guest[index].m_state = 3;
            m_guest[index].m_rate = 0.5f + 0.3f * randf();
            m_guestPhase = 2;
            m_guestCount++;
        }
        break;
    case 2:
        if (m_guest[0].m_state == 5 && m_guest[1].m_state == 5 && m_guest[2].m_state == 5) m_guestPhase = 5;
        break;
    case 3:
        if (randf() < 0.33333334f) {
            m_guestOrder[0] = 0;
            if (randf() < 0.5f) { m_guestOrder[1] = 1; m_guestOrder[2] = 2; }
            else { m_guestOrder[1] = 2; m_guestOrder[2] = 1; }
        } else if (randf() < 0.6666667f) {
            m_guestOrder[0] = 1;
            if (randf() < 0.5f) { m_guestOrder[1] = 0; m_guestOrder[2] = 2; }
            else { m_guestOrder[1] = 2; m_guestOrder[2] = 0; }
        } else {
            m_guestOrder[0] = 2;
            if (randf() < 0.5f) { m_guestOrder[1] = 0; m_guestOrder[2] = 1; }
            else { m_guestOrder[1] = 1; m_guestOrder[2] = 0; }
        }
        m_guestPhase = 4;
        m_guestTimer = 15.0f;
        // The target deliberately falls through to the ordered sequence.
    case 4:
        if (0.0f == m_guestTimer) {
            if (m_guestOrder[0] == 0xff) {
                if (m_guest[0].m_state == 5 && m_guest[1].m_state == 5 && m_guest[2].m_state == 5) m_guestPhase = 5;
            } else {
                m_guest[m_guestOrder[0]].m_state = 3;
                m_guestOrder[0] = m_guestOrder[1];
                m_guestOrder[1] = m_guestOrder[2];
                m_guestOrder[2] = 0xff;
                m_guestTimer = 24.0f + 21.0f * randf();
            }
        }
        break;
    case 5:
        m_guestTimer = param->m_minDelay + (param->m_maxDelay - param->m_minDelay) * randf();
        m_guestPhase = 1;
        break;
    }
}
