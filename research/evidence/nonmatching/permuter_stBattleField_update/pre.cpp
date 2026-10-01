#include <cstdio>
#include <gf/gf_3d_scene.h>
#include <gf/gf_archive.h>
#include <gm/gm_global.h>
#include <gm/gm_lib.h>
#include <gr/gr_madein.h>
#include <memory.h>
#include <nw4r/g3d/g3d_resfile.h>
#include <nw4r/math/math_arithmetic.h>
#include <nw4r/math/math_triangular.h>
#include <st/stage.h>
#include <st/st_class_info.h>
#include <st/st_melee.h>
#include <types.h>

#include <st_battle/gr_battle.h>
#include <st_battle/st_battle.h>

stClassInfoImpl<Stages::Battle, stBattleField> stBattleField::bss_loc_14;

static inline float clamp(float value, float min, float max) {
    float lower = nw4r::math::FSelect(value - min, value, min);
    return nw4r::math::FSelect(lower - max, max, lower);
}

stBattleField* stBattleField::create() {
    return new (Heaps::StageInstance) stBattleField;
}

stBattleField::stBattleField() : stMelee("stBattleField", Stages::Battle) {
    for (int i = 0; i < 5; i++) {
        m_enemyStartPos[i].m_x = 0.0f;
        m_enemyStartPos[i].m_y = 0.0f;
        m_enemyStartPos[i].m_z = 0.0f;
    }
    for (int i = 0; i < 4; i++) {
        m_bossStartPos[i].m_x = 0.0f;
        m_bossStartPos[i].m_y = 0.0f;
        m_bossStartPos[i].m_z = 0.0f;
    }
    for (int i = 0; i < 2; i++) {
        m_fighterStartPos[i].m_x = 0.0f;
        m_fighterStartPos[i].m_y = 0.0f;
        m_fighterStartPos[i].m_z = 0.0f;
    }
}

stBattleField::~stBattleField() {
    releaseArchive();
}

bool stBattleField::loading() {
    return true;
}

void stBattleField::createObj() {
    testStageParamInit(m_fileData, 0xA);
    testStageDataInit(m_fileData, 0x14, 1);
    initCameraParam();
    addGround(grBattleField::create(2, "", "grBattleFieldSky"));
    addGround(grBattleField::create(3, "", "grBattleFieldSun"));
    addGround(grBattleField::create(4, "", "grBattleFieldMoon"));
    addGround(grBattleField::create(5, "", "grBattleFieldStar"));
    addGround(grBattleField::create(6, "", "grBattleFieldCloud"));
    addGround(grBattleField::create(1, "", "grBattleFieldMainBg"));
    addGround(grBattleField::create(7, "", "grBattleFieldCrystal"));
    addGround(grBattleField::create(9, "", "grBattleFieldClock"));
    addGround(grBattleField::create(10, "zStgBattleFieldStage", "grBattleFieldStage"));
    addGround(grBattleField::create(11, "zStgBattleFieldAshiba01", "grBattleFieldAshiba01"));
    addGround(grBattleField::create(12, "zStgBattleFieldAshiba02", "grBattleFieldAshiba02"));
    addGround(grBattleField::create(13, "zStgBattleFieldAshiba03", "grBattleFieldAshiba03"));
    addGround(grBattleField::create(8, "", "grBattleFieldFlare"));
    Ground* ground;
    u32 i = 0;
    u32 groundNum = getGroundNum();
    for (; i != groundNum; i++) {
        ground = getGround(i);
        if (ground != nullptr) {
            ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
            ground->setStageData(m_stageData);
            ground->setDontMoveGround();
        }
    }
    createCollision(m_fileData, 2, NULL);
    grMadein* kumiteNode = grMadein::create(200, "", "KumiteNode", Heaps::StageInstance);
    if (kumiteNode != nullptr) {
        kumiteNode->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
        kumiteNode->initializeEntity();
        kumiteNode->startEntity();
        kumiteNode->updateG3dProcCalcWorld();
        for (int i = 0; i < 5; i++) {
            char nodeName[64];
            sprintf(nodeName, "hyakunin_enemy_start%d", i);
            kumiteNode->getNodePosition(&m_enemyStartPos[i], 0, nodeName);
        }
        for (int i = 0; i < 4; i++) {
            char nodeName[64];
            sprintf(nodeName, "hyakunin_boss_start%d", i);
            kumiteNode->getNodePosition(&m_bossStartPos[i], 0, nodeName);
        }
        for (int i = 0; i < 2; i++) {
            char nodeName[64];
            sprintf(nodeName, "hyakunin_fighter_start%d", i);
            kumiteNode->getNodePosition(&m_fighterStartPos[i], 0, nodeName);
        }
        kumiteNode->endEntity();
        delete kumiteNode;
    }
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
    loadStageAttrParam(m_fileData, 0x1E);
    initPosPokeTrainer(1, 0);
    createObjPokeTrainer(m_fileData, 0x65, "PokeTrainer00", m_pokeTrainerPos, 0x0);
}


typedef nw4r::g3d::AnmScnRes AnmScnRes;
using nw4r::math::SinIdx;
#define update stBattleField::update
