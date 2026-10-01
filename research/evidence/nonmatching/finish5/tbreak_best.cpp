#include <st_tbreak/st_tbreak.h>
#include <cm/cm_controller_ai.h>
#include <gm/gm_global.h>
#include <it/it_manager.h>
#include <it/item.h>
#include <nw4r/g3d/g3d_resfile.h>
#include <revolution/OS.h>
#include <snd/snd_system.h>
#include <stdio.h>
#include <math.h>

// Unnamed imports keep their existing labels and observed call signatures.
extern "C" void fn_27_279FA4(grMadein*);
extern "C" void fn_27_279FC8(grMadein*, Matrix*, bool);

static stMadeinStaticPair s_madeinPair0(0xff, 0);
static stMadeinStaticPair s_madeinPair1(0xff, 1);
#pragma push
#pragma explicit_zero_data on
static stTargetSequence s_seqInit = {0};
#pragma pop

struct stTargetLevel {
    float motionRatio, hitSize, chainRadius, chainTime;
    u32 movingMask;
    bool hasItems;
    char _15[3];
    int catapultModel, springModel, springCollision;
    u32 remainingParameters[26]; // meanings not recovered yet
};
static_assert(sizeof(stTargetLevel) == 0x8C, "target level layout");
static stTargetLevel s_levels[5] = {
    {1.0f, 9.6000004f, 20.0f, 5.0f, 0x0, false, {0,0,0}, -1, -1, -1, {0xFFFFFFFF, 0x0, 0xFFFFFFFF, 0x0, 0xFFFFFFFF, 0x0, 0x169, 0xA, 0x32, 0x0, 0x64, 0x169, 0xA, 0x32, 0x0, 0x64, 0x169, 0xA, 0x32, 0x0, 0x64, 0x169, 0xA, 0x32, 0x0, 0x64}},
    {1.5f, 8.3999996f, 20.0f, 5.0f, 0x0, true, {0,0,0}, -1, -1, -1, {0xFFFFFFFF, 0x0, 0xFFFFFFFF, 0x0, 0xFFFFFFFF, 0x0, 0x169, 0xA, 0x32, 0x0, 0x64, 0x169, 0xA, 0x32, 0x0, 0x64, 0x169, 0xA, 0x32, 0x0, 0x64, 0x169, 0xA, 0x32, 0x0, 0x64}},
    {2.0f, 7.1999998f, 20.0f, 5.0f, 0x2, true, {0,0,0}, 30, 32, 3, {0xFFFFFFFF, 0x0, 0xFFFFFFFF, 0x0, 0xFFFFFFFF, 0x0, 0x10E, 0xA, 0x32, 0x0, 0x64, 0x10E, 0xA, 0x32, 0x0, 0x64, 0x5A, 0xA, 0x32, 0x0, 0x64, 0x169, 0xA, 0x32, 0x0, 0x64}},
    {2.5f, 6.0f, 20.0f, 5.0f, 0x1F2, false, {0,0,0}, -1, -1, -1, {0xFFFFFFFF, 0x0, 0xFFFFFFFF, 0x0, 0xFFFFFFFF, 0x0, 0x169, 0xA, 0x32, 0x0, 0x64, 0x169, 0xA, 0x32, 0x0, 0x64, 0x169, 0xA, 0x32, 0x0, 0x64, 0x169, 0xA, 0x32, 0x0, 0x64}},
    {3.0f, 4.8000002f, 20.0f, 5.0f, 0x0, true, {0,0,0}, -1, -1, -1, {0xFFFFFFFF, 0x0, 0xFFFFFFFF, 0x0, 0xFFFFFFFF, 0x0, 0x5A, 0xA, 0x32, 0x0, 0x64, 0x5A, 0xA, 0x32, 0x0, 0x64, 0x5A, 0xA, 0x32, 0x0, 0x64, 0x5A, 0xA, 0x32, 0x0, 0x64}},
};
struct stTargetItem { const char* node; itKind kind; u32 variation; };
static stTargetItem s_items[16] = {
    {"ItemNodeChewingBomb", (itKind)0x1F, 0},
    {"ItemNodeBeamSword", (itKind)0x4, 0},
    {"ItemNodePasaran", (itKind)0x28, 0},
    {"ItemNodeSuperScope", (itKind)0x3D, 0},
    {"ItemNodeUnira", (itKind)0x43, 0},
    {"ItemNodeCrackerLauncher", (itKind)0xD, 0},
    {"ItemNodeSuperMushroom", (itKind)0x26, 0},
    {"ItemNodePoisonousMushroom", (itKind)0x25, 0},
    {"ItemNodeBox", (itKind)0x7, 0},
    {"ItemNodeRayGun", (itKind)0x2C, 0},
    {"ItemNodeSmartBomb", (itKind)0x36, 0},
    {"ItemNodeExplosiveBox", (itKind)0x2B, 0},
    {"ItemNodeCarrierBox", (itKind)0xA, 0},
    {"ItemNodeHomeRunBat", (itKind)0x21, 0},
    {"ItemNodeDeku", (itKind)0x12, 0},
    {"ItemNodeCurry", (itKind)0x10, 0},
};
stClassInfoImpl<Stages::TargetBreak, stTargetBreak> stTargetBreak::bss_loc_24;

stTargetBreak* stTargetBreak::create() { return new (Heaps::StageInstance) stTargetBreak(); }
#pragma push
#pragma dont_inline on
stTargetBreak::stTargetBreak() : stMelee("stTargetBreak", Stages::TargetBreak) {
    m_seq.value = s_seqInit.value; m_state = 0;
    for (int i=0; i<16; ++i) itManager::getInstance()->preloadItemKindArchive(s_items[i].kind, s_items[i].variation, (itArchive::Type)0, true);
    for (int i=0; i<4; ++i) m_belts[i] = NULL;
    m_catapultData = NULL; m_springData = NULL;
    setPlayerPositionIndexSerial();
}
#pragma pop
stTargetBreak::~stTargetBreak() {
    for (int i=0; i<4; ++i) if(m_belts[i]) delete m_belts[i];
    if(m_springData) delete m_springData;
    if(m_catapultData) delete m_catapultData;
    releaseArchive();
}
bool stTargetBreak::loading() { return true; }

// The original's attack initializer is a 100-byte local aggregate. Unknown
// packed fields remain explicitly recorded; this draft is not data-accepted.
struct stTargetAttackInit { float damage; u32 words[24]; };
static const stTargetAttackInit s_attackInit = {10.0f, {0,0,0,0,361,50,0,100,0,2,257,0,0,0,15,1,3,0,0,0,10,0,1,0xFFFFFFFF}};
// NonMatching: stack-slot layout and setter/copy scheduling still differ.
// __memcpy is MWCC's structural-copy intrinsic, not the runtime memcpy call.
void stTargetBreak::createObj() {
    int level = (reinterpret_cast<const u8*>(g_GameGlobal->m_modeMelee)[0xE] >> 5) & 7;
    level = level > 4 ? 4 : level;
    level = level < 0 ? 0 : level;
    m_level = level;
    testStageParamInit(m_fileData, 0xA);
    stTargetLevel* param = &s_levels[m_level];
    m_ground = grTargetBreak::create(0, "", "grTargetBreakGround");
    if (m_ground) {
        addGround(m_ground); m_ground->startup(m_fileData,0,gfSceneRoot::Layer_Ground);
        m_ground->setStageData(m_stageData); m_ground->initializeEntity(); m_ground->startEntityAutoLoop();
    }
    m_targetNodes = grTargetBreak::create(2, "", "grTargetNode");
    if (m_targetNodes) {
        addGround(m_targetNodes); m_targetNodes->startup(m_fileData,0,gfSceneRoot::Layer_Ground);
        m_targetNodes->setStageData(m_stageData); m_targetNodes->initializeEntity(); m_targetNodes->startEntity();
    }
    if (m_level == 3) {
        m_ice = grTargetBreak::create(3,"","grTargetBreakGroundIce");
        if(m_ice) { addGround(m_ice); m_ice->startup(m_fileData,0,gfSceneRoot::Layer_Ground); m_ice->setStageData(m_stageData); m_ice->initializeEntity(); m_ice->startEntityAutoLoop(); }
    }
    grGimmickDamageFloor attack;
    __memcpy(&attack, &s_attackInit, sizeof(attack));
    Vec3f origin(0,0,0);
    __memcpy(&attack.m_attackData.m_offsetPos, &origin, sizeof(origin));
    setStageAttackData(&attack,0);
    for(int i=0;i<4;++i) {
        m_belts[i]=NULL; m_beltTriggers[i]=NULL;
        if(m_ground) {
            char name[128];
            sprintf(name,"BeltConveyerNode%02dS",i+1); m_beltStartNodes[i]=m_ground->getNodeIndex(0,name);
            sprintf(name,"BeltConveyerNode%02dE",i+1); m_beltEndNodes[i]=m_ground->getNodeIndex(0,name);
            if(m_beltStartNodes[i] && m_beltEndNodes[i]) {
                OSReport("Find BeltConveyerNode%02d\n",i+1);
                m_belts[i]=new (Heaps::StageInstance) grGimmickBeltConveyorData;
                memset(m_belts[i],0,sizeof(grGimmickBeltConveyorData));
            }
        } else {m_beltStartNodes[i]=0; m_beltEndNodes[i]=0;}
    }
    for(int i=0;i<10;++i) {
        grTargetBreak* target=grTargetBreak::create(1,"","grTarget");
        if(target) {
            m_targets[i]=target; addGround(target); target->startup(m_fileData,0,gfSceneRoot::Layer_Ground); target->setStageData(m_stageData);
            Vec3f start(0,0,-10),end(0,0,20);
            target->setHitPoint(param->hitSize,&start,&end,true,0);
            target->enableTargetCategory(); target->initializeEntity(); target->startEntity(); fn_27_279FA4(target); target->initSoundEffect();
            m_lastPlayers[i]=-1;
        }
        m_chainTimers[i]=-1;
    }
    m_chainRadiusSq=param->chainRadius*param->chainRadius;
    if(param->hasItems) {
        m_itemNodes=grTargetBreak::create(3,"","grItemNode"); addGround(m_itemNodes);
        m_itemNodes->startup(m_fileData,0,gfSceneRoot::Layer_Ground); m_itemNodes->setStageData(m_stageData); m_itemNodes->initializeEntity();m_itemNodes->startEntity();
        m_springNode=m_itemNodes->getNodeIndex(0,"GimmickNodeSpring"); OSReport("GimmickNodeSpring is %d\n",m_springNode);
    } else m_itemNodes=NULL;
    for(int i=0;i<10;++i) {
        int model=i+40;
        if((param->movingMask & (1<<i)) && m_fileData->getData(Data_Type_Model,model,0xfffe)) {
            OSReport("create move target node %d\n",i);
            m_moveTargets[i]=grTargetBreak::create((s16)model,"","grMoveTargetNode");
            if(m_moveTargets[i]) {addGround(m_moveTargets[i]);m_moveTargets[i]->startup(m_fileData,0,gfSceneRoot::Layer_Ground);m_moveTargets[i]->setStageData(m_stageData);m_moveTargets[i]->initializeEntity();m_moveTargets[i]->startEntityAutoLoop();}
        } else m_moveTargets[i]=NULL;
    }
    if(m_fileData->getData(Data_Type_Model,9,0xfffe)) {
        for(int i=0;i<12;++i) {
            int model=i+10;
            if(m_fileData->getData(Data_Type_Model,model,0xfffe)) {
                OSReport("create locater%d\n",i); m_locators[i]=grTargetBreak::create((s16)model,"","grStep");
                if(m_locators[i]) {
                    addGround(m_locators[i]);m_locators[i]->startup(m_fileData,0,gfSceneRoot::Layer_Ground);m_locators[i]->setStageData(m_stageData);m_locators[i]->initializeEntity();m_locators[i]->startEntityAutoLoop();
                    char name[128];sprintf(name,"MoveLocator%02d",i+1);m_locatorNodes[i]=m_locators[i]->getNodeIndex(0,name);
                    OSReport("create step%d\n",i);m_steps[i]=grTargetBreak::create(9,"","grStep");
                    if(m_steps[i]) {addGround(m_steps[i]);m_steps[i]->startup(m_fileData,0,gfSceneRoot::Layer_Ground);m_steps[i]->setStageData(m_stageData);m_steps[i]->initializeEntity();m_steps[i]->startEntity();fn_27_279FA4(m_steps[i]);createCollision(m_fileData,3,m_steps[i]);}
                } else m_steps[i]=NULL;
            } else {m_steps[i]=NULL;m_locators[i]=NULL;}
        }
    } else {
        for(int i=0;i<12;++i) {
            int model=i+10;
            if(m_fileData->getData(Data_Type_Model,model,0xfffe)) {
                OSReport("create step%d\n",i);m_steps[i]=grTargetBreak::create((s16)model,"","grStep");
                if(m_steps[i]){addGround(m_steps[i]);m_steps[i]->startup(m_fileData,0,gfSceneRoot::Layer_Ground);m_steps[i]->setStageData(m_stageData);m_steps[i]->initializeEntity();m_steps[i]->startEntityAutoLoop();}
                m_locators[i]=NULL;
            }else {m_steps[i]=NULL;m_locators[i]=NULL;}
        }
        OSReport("create step end\n");
    }
    if(param->catapultModel>=0) {
        m_catapultData=new (Heaps::StageInstance) grGimmickCatapultData;
        memset(m_catapultData,0,sizeof(*m_catapultData));
        grGimmickCatapultData* data=m_catapultData;
        data->m_motionPathData.set(5.4f,0,param->catapultModel+1,0);
        data->m_areaData.m_offsetPos=Vec2f(0,3);data->m_areaData.m_range=Vec2f(10,5);
        data->m_startMoveFrame=30;data->m_52=60;data->m_56=1;data->m_vector=165;
        data->m_mdlIndex=param->catapultModel;data->m_isFaceLeft=true;data->m_useNoHelperWarp=true;
        m_catapult=createGimmickCatapult(data,m_fileData);
        m_catapult->m_soundEffects[0].set((SndID)0x1EE1,0,0,0,Vec2f(0,0));
        m_catapult->m_soundEffects[1].set((SndID)0x1EE2,0,0,0,Vec2f(0,0));
        m_catapult->m_soundEffects[3].set((SndID)0x1EE3,0,0,0,Vec2f(0,0));
    }
    if(param->springModel>=0) {
        m_springData=new (Heaps::StageInstance) grGimmickSpringData;
        memset(m_springData,0,sizeof(*m_springData));
        grGimmickSpringData* data=m_springData;
        data->m_areaData.m_offsetPos=Vec2f(0,0);data->m_areaData.m_range=Vec2f(3,6);
        data->m_pos=Vec2f(0,0);data->m_rot=0;data->m_bounce=10;
        data->m_mdlIndex=param->springModel;data->m_collIndex=param->springCollision;
        gfArchive* archive=m_fileData;
        grGimmickTargetBreakSpring* spring=new (Heaps::StageInstance) grGimmickTargetBreakSpring("TBSprintg");
        if(spring) spring->setMdlIndex((s16)data->m_mdlIndex);
        m_spring=spring;
        if(m_spring) {addGround(m_spring);m_spring->setGimmickData(data);m_spring->startup(archive,0,gfSceneRoot::Layer_Ground);createGimmickCollision(data->m_collIndex,m_spring,archive);}
    }
    if(m_level==4) {
        m_block=grTargetBreak::create(8,"","grMoveBlock");
        if(m_block){addGround(m_block);m_block->startup(m_fileData,0,gfSceneRoot::Layer_Ground);m_block->setStageData(m_stageData);m_block->initializeEntity();m_block->startEntityAutoLoop();}
    }else m_block=NULL;
    createCollision(m_fileData,2,NULL);initCameraParam();
    nw4r::g3d::ResFile positions(m_fileData->getData(Data_Type_Model,100,0xfffe));
    if(positions.ptr()) {nw4r::g3d::ResFile copy=positions;createStagePositions(&copy);}else createStagePositions();
    createWind2ndOnly();loadStageAttrParam(m_fileData,50);initPosPokeTrainer(1,0);
    createObjPokeTrainer(m_fileData,101,"PokeTrainer00",m_pokeTrainerPos,0);
    registScnAnim(static_cast<nw4r::g3d::ResFileData*>(m_fileData->getData(Data_Type_Scene,0,0xfffe)),0);
    m_brokenCount=0;m_remainingCount=10;m_totalDamage=0;m_playerBreakCount[0]=0;m_playerBreakCount[1]=0;
    m_seq=s_seqInit;m_state=0;g_cmAIController->m_isFlag94_3=false;
}

static stTargetSequence s_seq3bb={1},s_seq3bd={1},s_seq3be={1},s_seq419={1},s_seq42a={1},s_seq42d={2};
// NonMatching: vector scheduling/register allocation and stack layout differ.
void stTargetBreak::update(float deltaFrame) {
    stTargetLevel* param=&s_levels[m_level];
    for(int i=0;i<10;++i) {
        if(!m_targets[i]) continue;
        if(0<=m_chainTimers[i]) {
            m_chainTimers[i]-=deltaFrame;if(m_chainTimers[i]<0)m_chainTimers[i]=0;
            OSReport("%d _nChainCrush=%f\n",i,m_chainTimers[i]);
        }
        if(m_targets[i]->isHit() || m_chainTimers[i]==0) {
            OSReport("Target%d is broken.\n",i);
            if(m_targets[i]->isHit()){m_totalDamage+=m_targets[i]->damageTaken();m_lastPlayers[i]=m_targets[i]->lastPlayerHit();}else m_totalDamage+=30;
            if(m_lastPlayers[i]<=1) ++m_playerBreakCount[m_lastPlayers[i]];
            Matrix* matrix=&m_targets[i]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix;
            float z=(*matrix)(2,3),y=(*matrix)(1,3),x=(*matrix)(0,3);Vec3f pos(x,y,z);
            m_targets[i]->setVisibility(0);m_targets[i]->deleteHitPoint();m_targets[i]->startSoundEffect();
            g_ecMgr->setEffect((EfID)(0x12B0001+m_level),&pos);++m_brokenCount;--m_remainingCount;m_targets[i]=NULL;
            for(int j=0;j<10;++j) if(m_targets[j] && m_chainTimers[j]<0) {
                OSReport("  ChainCheck %d",j);
                Matrix* other=&m_targets[j]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix;
                Vec3f delta((*other)(0,3),(*other)(1,3),(*other)(2,3));Vec3fSub(&delta,&delta,&pos);
                if((delta.m_x*delta.m_x+delta.m_y*delta.m_y+delta.m_z*delta.m_z)<=m_chainRadiusSq){m_chainTimers[j]=param->chainTime;m_lastPlayers[j]=m_lastPlayers[i];OSReport("  HIT!!!");}
                OSReport("\n");
            }
        } else {
            char name[128];sprintf(name,"TargetNode%02d",i+1);
            if(param->movingMask & (1<<i)) {
                if(m_moveTargets[i]) {Matrix matrix(true);m_moveTargets[i]->getNodeMatrix(&matrix,0,name);matrix(2,3)=-10;fn_27_279FC8(m_targets[i],&matrix,true);}
            } else if(m_targetNodes) {Matrix matrix(true);m_targetNodes->getNodeMatrix(&matrix,0,name);matrix(2,3)=-10;fn_27_279FC8(m_targets[i],&matrix,true);}
        }
    }
    for(int i=0;i<12;++i) if(m_locators[i]) {Matrix matrix(true);m_locators[i]->getNodeMatrix(&matrix,0,m_locatorNodes[i]);fn_27_279FC8(m_steps[i],&matrix,true);}
    switch(m_state) {
    case 0:m_seq=s_seq3bb;m_state=0x3BB;
    case 0x3BB:m_seq=s_seq3bd;m_state=0x3BD;break;
    case 0x3BD:m_seq=s_seq3be;m_state=0x3BE;break;
    case 0x3BE:
        for(int i=0;i<4;++i) if(m_ground && m_belts[i]) {
            Matrix matrix(true);m_ground->getNodeMatrix(&matrix,0,m_beltStartNodes[i]);
            float startZ=matrix(2,3),startY=matrix(1,3),startX=matrix(0,3);
            nw4r::math::VEC3 start(startX,startY,startZ);
            m_ground->getNodeMatrix(&matrix,0,m_beltEndNodes[i]);
            float endZ=matrix(2,3),endY=matrix(1,3),endX=matrix(0,3);
            nw4r::math::VEC3 end(endX,endY,endZ);
            nw4r::math::VEC3 sum,center,delta;
            nw4r::math::VEC3Add(&sum,&end,&start);
            nw4r::math::VEC3Scale(&center,&sum,0.5f);
            nw4r::math::VEC3Sub(&delta,&end,&start);
            m_belts[i]->m_pos=Vec3f(center.x,center.y,center.z);m_belts[i]->m_speed=1;m_belts[i]->m_isRight=true;
            m_belts[i]->m_areaData.m_offsetPos=Vec2f(0,0);
            m_belts[i]->m_areaData.m_range.m_x=(float)fabs(delta.x);
            m_belts[i]->m_areaData.m_range.m_y=m_level==0?(float)fabs(delta.y):3.0f;
            m_beltTriggers[i]=g_stTriggerMng->createTrigger(Gimmick::Area_BeltConveyor,-1);m_beltTriggers[i]->setBeltConveyorTrigger(m_belts[i]);
        }
        if(param->springModel>=0) {
            Matrix matrix(true);m_itemNodes->getNodeMatrix(&matrix,0,m_springNode);Vec3f pos(matrix(0,3),matrix(1,3),matrix(2,3));m_spring->setPos(&pos);
        }
        m_seq=s_seq419;m_state=0x419;break;
    case 0x419:
        for(int i=0;i<4;++i) if(m_ground && m_belts[i])m_beltTriggers[i]->setAreaSleep(false);
    case 0x42A:
        if(createItems()){m_itemNodes=NULL;goto itemsReady;}
        m_seq=s_seq42a;m_state=0x42A;break;
    itemsReady:m_seq=s_seq42d;m_state=0x42D;break;
    }
}
bool stTargetBreak::createItems() {
    if(m_itemNodes) {
        for(int i=0;i<16;++i)if(!itManager::getInstance()->isCompItemKindArchive(s_items[i].kind,s_items[i].variation,true))return false;
        for(int i=0;i<16;++i) {
            Matrix matrix(true);
            if(m_itemNodes->getNodeMatrix(&matrix,0,s_items[i].node)) {
                BaseItem* item=itManager::getInstance()->createItem(s_items[i].kind,s_items[i].variation);
                if(item){float z=matrix(2,3),y=matrix(1,3),x=matrix(0,3);Vec3f pos(x,y,z);item->warp(&pos);item->setVanishMode(false);}
            }
        }
    }
    return true;
}
void grGimmickTargetBreakSpring::setMotionOff() {
    m_modelAnims[0]->unbindShapeAnim(m_sceneModels[0]);changeNodeAnim(0,0);changeShapeAnim(0,0);
    g_sndSystem->playSE((SndID)0x1EE0,-1,0,0,-1);// The SDK header models the state as an enum bitfield in a word. The
    // target stores one byte; unsigned-char access to the object representation
    // is permitted, and on the Wii this preserves the remaining padding bytes.
    reinterpret_cast<u8*>(this)[0x158]=State_Off;m_animFrame=0;
}
grGimmickTargetBreakSpring::~grGimmickTargetBreakSpring() {}
