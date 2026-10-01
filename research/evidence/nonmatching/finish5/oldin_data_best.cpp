#include <st_oldin/st_oldin.h>
#include <ai/ai_mgr.h>
#include <gr/collision/gr_collision.h>
#include <gr/collision/gr_collision_joint.h>
#include <gm/gm_global.h>
#include <mt/mt_prng.h>
#include <cm/cm_controller_ai.h>
#include <revolution/OS.h>
#include <st/st_utility.h>
#include <ef/ef_screen.h>

extern "C" void fn_27_1F290C(aiMgr*, int);
// Module-owned helpers retain their existing names until semantic names are
// proven. These declarations are forward declarations, not external factories.
extern "C" void fn_53_1E88(stOldin*,float);
extern "C" void fn_53_159C(stOldin*,float);
extern "C" void fn_53_242C(stOldin*,float);
extern "C" void fn_53_2E0C(stOldin*,float);
extern "C" void fn_53_3370(stOldin*,float);
extern "C" void fn_53_3B7C(stOldin*,Vec3f*);
extern "C" void fn_53_3CA0(stOldin*,Vec3f*);
extern "C" void fn_53_3DAC(stOldin*);
extern "C" void fn_53_3EC4(stOldin*,u32);
extern "C" void fn_27_279FA4(grMadein*);
extern "C" void fn_27_279FC8(grMadein*,Matrix*,bool);
extern "C" void fn_8009F1FC(stOldinOpaque84*);
extern "C" void fn_8009EF8C(stOldinOpaque84*,Vec3f*);
extern "C" void fn_8003E918(Matrix*,float);
extern "C" void fn_8003F074(Matrix*,float,float,float);
extern "C" void fn_27_263984(Yakumono*,float);
extern "C" void fn_53_129C(stOldin*,Matrix*,int);
extern "C" void fn_27_279228(grMadein*,bool);
extern "C" void fn_8005E3C8(efScreen*,u8*,float);
extern "C" void cmReqQuake__FiP5Vec3f(int,Vec3f*);

#pragma push
#pragma explicit_zero_data on
stOldinDefaults s_oldinDefaults={{0},{900,600,1200,0.6666667f,180,5,2,2,1,75,20,900,1200}};
stOldinData s_oldinPool={
    "stOldin",
    "",
    "grOldinGround",
    "grOldinGroundSun",
    "grOldinBridge",
    "StgOldinClash",
    "OldinClash06",
    "hashi_koware",
    "grBridgeAttack",
    "grOldinPrtal",
    "ef_warphole",
    "grOldinBridgeKage",
    "grOldinBridgeCrash",
    "grOldinBulblin",
    "StgOldinBulblin_TransN",
    "grOldinKingBulblinHit",
    "grOldinKingBulblin",
    "grOldinLordBullbo",
    "StgOldinLordBullbo_TransN",
    "StgOldinLordBullbo_center",
    "grOldinLordBullboHit",
    "grOldinTaru",
    "StgOldinTaru_TaruM",
    "grOldinTaruAttack",
    "PokeTrainer00",
    "PokeTrainer01",
    {{1},{1}},
    {18.0,22.0,24.0,30.0,10000.0},
    {{1},{2}},
    "SND_SE_STAGE_OLDIN_BRUBOO_01\n",
    {{1},{1},{1},{1},{1},{1},{1},{1}},
    {{1},{1},{1},{1},{1},{1},{1},{1},{1},{1},{1},{1},{2}},
    {{1},{1},{1},{1},{1},{2}},
    "SND_SE_STAGE_OLDIN_BOMB_THROW: %f,%f,%f\n",
    {0},
    "SND_SE_STAGE_OLDIN_BOMB_DROP: %f,%f,%f\n",
    "SND_SE_STAGE_OLDIN_BOMB_EXP: %f,%f,%f\n",
    {{1},{1},{1},{1},{1},{1},{1},{1},{1},{1},{1},{1},{1},{1},{1},{2}}
};
#pragma pop
// The two typed pools preserve the target's data split; RTTI and vtable are
// compiler emissions. Complete relocation identity is still a promotion gate.
stClassInfoImpl<Stages::Oldin,stOldin> stOldin::bss_loc_14;

stOldin* stOldin::create() { return new (Heaps::StageInstance) stOldin(); }
// Matrix(true) preserves object lifetimes while deferring identity writes to
// their observed place after the linked-object and sound member constructors.
stOldin::stOldin() : stMelee(s_oldinPool.name_38,Stages::Oldin),
    m_matrix234(true),m_matrix264(true),m_matrix294(true),
    m_matrix398(true),m_matrix3c8(true) {
    m_flag604=-1;
    m_parameters=NULL;
    for(int i=0;i<15;++i)m_ground[i]=NULL;
    for(int i=0;i<4;++i)m_nodes[i]=0;
    m_flag228=false;m_flag229=false;
    m_matrix234.setIdentity();m_matrix264.setIdentity();m_matrix294.setIdentity();
    for(int i=0;i<3;++i)m_counters2c4[i]=0;
    for(int i=0;i<4;++i)m_floats2d0[i]=0;
    m_float36c=0;
    for(int i=0;i<6;++i)m_flags370[i]=false;
    for(int i=0;i<3;++i)m_floats378[i]=0;
    m_counter384=0;m_flag388=false;m_flag389=false;m_float394=0;
    m_matrix398.setIdentity();m_matrix3c8.setIdentity();
    m_counter3f8=0;
    for(int i=0;i<4;++i)m_floats3fc[i]=0;
    m_counter40c=0;m_float410=0;m_flag414=false;m_float420=0;
    m_counters424[0]=0;m_counters424[1]=0;m_flag4b0=false;m_float4bc=0;
    m_counters5d0[0]=0;m_counters5d0[1]=0;m_float5d8=0;
    m_counters5dc[0]=0;m_counters5dc[1]=0;
    m_counters5ec[0]=0;m_counters5ec[1]=0;m_flag5f4=false;m_counter5f8=0;
}
// NonMatching: MWCC adds four member-null checks when inlining the unnamed
// object's wrapper destructor. Preserve valid member lifetimes; do not remove
// these by explicitly destroying live members twice or punning the sounds.
stOldin::~stOldin() { releaseArchive(); }
bool stOldin::loading() { return true; }
// NonMatching: object factory sequence recovered, register/stack layout and
// literal pool order still require comparison with the complete TU.
void stOldin::createObj() {
    testStageParamInit(m_fileData,10);
    testStageDataInit(m_fileData,20,52);
    m_parameters=s_oldinDefaults.parameters;
#define INIT_OLDIN(index,model,name) \
    m_ground[index]=grOldin::create(model,s_oldinPool.name_40,name); \
    if(m_ground[index]) { \
        addGround(m_ground[index]); \
        m_ground[index]->startup(m_fileData,0,gfSceneRoot::Layer_Ground); \
        m_ground[index]->setStageData(m_stageData);
#define END_OLDIN }
    INIT_OLDIN(0,0,s_oldinPool.name_44)
        m_ground[0]->initializeEntity();m_ground[0]->startEntityAutoLoop();
    END_OLDIN
    INIT_OLDIN(1,11,s_oldinPool.name_54)
        m_ground[1]->initializeEntity();m_ground[1]->startEntityAutoLoop();
    END_OLDIN
    INIT_OLDIN(2,1,s_oldinPool.name_68)
        m_ground[2]->initializeEntity();
        m_nodes[0]=m_ground[2]->getNodeIndex(0,s_oldinPool.name_78);
        m_nodes[1]=m_ground[2]->getNodeIndex(0,s_oldinPool.name_88);
        m_nodes[2]=m_ground[2]->getNodeIndex(0,s_oldinPool.name_98);
        INIT_OLDIN(14,7,s_oldinPool.name_A8)
            fn_53_3DAC(this);m_ground[14]->initializeEntity();
            Vec3f pos(-100.0f,-22.0f,0.0f);m_ground[14]->setPos(&pos);
        END_OLDIN
    END_OLDIN
    INIT_OLDIN(4,9,s_oldinPool.name_B8)
        m_ground[4]->initializeEntity();
        m_nodes[3]=m_ground[4]->getNodeIndex(0,s_oldinPool.name_C8);
    END_OLDIN
    INIT_OLDIN(3,10,s_oldinPool.name_D4)
        m_ground[3]->initializeEntity();m_ground[3]->startEntityAutoLoop();
    END_OLDIN
    INIT_OLDIN(5,8,s_oldinPool.name_E8)
        m_ground[5]->initializeEntity();
    END_OLDIN
    INIT_OLDIN(6,2,s_oldinPool.name_FC)
        fn_27_279FA4(m_ground[6]);m_ground[6]->setVisibility(false);
        m_ground[6]->setEnableCollisionStatus(false);
        m_counter3f8=m_ground[6]->getNodeIndex(0,s_oldinPool.name_10C);
        INIT_OLDIN(12,7,s_oldinPool.name_124)
            Vec3f start(0,0,0),end(4,8,0);
            m_ground[12]->setHitPoint(5,&start,&end,true,0);
            m_ground[12]->initializeEntity();fn_27_279FA4(m_ground[12]);
        END_OLDIN
    END_OLDIN
    INIT_OLDIN(7,4,s_oldinPool.name_13C)
        m_ground[7]->startEntityAutoLoop();fn_27_279FA4(m_ground[7]);
        m_ground[7]->setVisibility(false);m_ground[7]->setEnableCollisionStatus(false);
        m_ground[7]->setMotionRatio(0.8f);
        INIT_OLDIN(10,7,s_oldinPool.name_124)
            m_floats378[0]=-2;m_floats378[1]=14;m_floats378[2]=0;
            Vec3f start(0,0,0),end(2.5f,11,0);
            m_ground[10]->setHitPoint(6.5f,&start,&end,true,0);
            m_ground[10]->initializeEntity();m_ground[10]->startEntity();
            fn_27_279FA4(m_ground[10]);
        END_OLDIN
    END_OLDIN
    INIT_OLDIN(8,5,s_oldinPool.name_150)
        m_counters2c4[0]=m_ground[8]->getNodeIndex(0,s_oldinPool.name_164);
        m_counters2c4[1]=m_ground[8]->getNodeIndex(0,s_oldinPool.name_180);
        m_counters2c4[2]=m_ground[8]->getNodeIndex(0,s_oldinPool.name_180);
        fn_27_279FA4(m_ground[8]);m_ground[8]->setVisibility(false);
        m_ground[8]->setEnableCollisionStatus(false);m_ground[8]->setMotionRatio(0.8f);
        INIT_OLDIN(11,7,s_oldinPool.name_19C)
            Vec3f start(6,1,0),end(-14,1,0);
            m_ground[11]->setHitPoint(11,&start,&end,true,0);
            m_floats2d0[0]=14;m_floats2d0[1]=10;m_floats2d0[2]=0;
            Vec3f offset(0,0,0);fn_53_3B7C(this,&offset);
            m_ground[11]->initializeEntity();m_ground[11]->startEntity();
            fn_27_279FA4(m_ground[11]);
        END_OLDIN
    END_OLDIN
    INIT_OLDIN(9,6,s_oldinPool.name_1B4)
        fn_27_279FA4(m_ground[9]);m_ground[9]->setVisibility(false);
        m_ground[9]->setEnableCollisionStatus(false);
        m_counters424[0]=m_ground[9]->getNodeIndex(0,s_oldinPool.name_1C0);
        INIT_OLDIN(13,7,s_oldinPool.name_1D4)
            Vec3f offset(0,0,0);fn_53_3CA0(this,&offset);
            m_ground[13]->initializeEntity();m_ground[13]->startEntity();
            fn_27_279FA4(m_ground[13]);
        END_OLDIN
    END_OLDIN
#undef INIT_OLDIN
#undef END_OLDIN
    createCollision(m_fileData,2,NULL);fn_53_3EC4(this,0);initCameraParam();
    nw4r::g3d::ResFileData* positions=(nw4r::g3d::ResFileData*)m_fileData->getData(Data_Type_Model,100,0xFFFE);
    if(positions) { nw4r::g3d::ResFile file(positions);createStagePositions(&file); }
    else createStagePositions();
    createWind2ndOnly();
    registScnAnim((nw4r::g3d::ResFileData*)m_fileData->getData(Data_Type_Scene,0,0xFFFE),0);
    fn_8009F1FC(&m_object2e0);fn_8009F1FC(&m_object42c);
    fn_8009F1FC(&m_object4c0);fn_8009F1FC(&m_object544);
    m_state364.seq.value=s_oldinDefaults.sequence.value;m_state364.state=0;
    m_flags370[0]=true;m_flags370[1]=false;m_flag229=false;
    m_ground[8]->setVisibility(false);m_ground[8]->setEnableCollisionStatus(false);
    m_ground[8]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(0,3)=0;
    m_ground[8]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(1,3)=-1000;
    m_ground[8]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(2,3)=0;
    m_ground[11]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(0,3)=0;
    m_ground[11]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(1,3)=-1000;
    m_ground[11]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(2,3)=0;
    m_ground[11]->endEntity();
    m_ground[7]->setVisibility(false);m_ground[7]->setEnableCollisionStatus(false);
    m_ground[7]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(0,3)=0;
    m_ground[7]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(1,3)=-1000;
    m_ground[7]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(2,3)=0;
    m_ground[10]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(0,3)=0;
    m_ground[10]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(1,3)=-1000;
    m_ground[10]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(2,3)=0;
    m_ground[10]->endEntity();m_flag388=false;
    m_object2e0.words[2]=(m_object2e0.words[2]&~0xE0000000)|0x20000000;
    m_flag389=false;m_ground[6]->setVisibility(false);m_ground[6]->setEnableCollisionStatus(false);
    m_ground[6]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(0,3)=0;
    m_ground[6]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(1,3)=-1000;
    m_ground[6]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(2,3)=0;
    m_ground[12]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(0,3)=0;
    m_ground[12]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(1,3)=-1000;
    m_ground[12]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(2,3)=0;
    m_ground[12]->endEntity();m_floats3fc[0]=m_parameters[10];m_counter40c=0;m_flag414=false;
    m_ground[9]->setVisibility(false);m_ground[9]->setEnableCollisionStatus(false);
    m_ground[9]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(0,3)=0;
    m_ground[9]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(1,3)=-1000;
    m_ground[9]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(2,3)=0;
    m_ground[13]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(0,3)=0;
    m_ground[13]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(1,3)=-1000;
    m_ground[13]->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(2,3)=0;
    m_object42c.words[2]=(m_object42c.words[2]&~0xE0000000)|0x20000000;
    m_flag4b0=false;m_ground[2]->startEntity();m_ground[2]->setEnableCollisionStatus(true);
    gfModelAnimation* anim=m_ground[2]->m_modelAnims[0];
    if(anim)anim->setFrame((float)anim->getFrameCount());
    m_ground[2]->setMotionRatio(0);m_ground[3]->setVisibility(true);
    Matrix matrix;fn_27_279FC8(m_ground[2],&matrix,true);fn_27_279FC8(m_ground[5],&matrix,true);
    m_object4c0.words[2]=(m_object4c0.words[2]&~0xE0000000)|0x20000000;
    m_object544.words[2]=(m_object544.words[2]&~0xE0000000)|0x20000000;
    loadStageAttrParam(m_fileData,30);initPosPokeTrainer(2,0);
    createObjPokeTrainer(m_fileData,101,s_oldinPool.name_1E8,m_pokeTrainerPos,NULL);
    createObjPokeTrainer(m_fileData,102,s_oldinPool.name_1F8,m_pokeTrainerPos+2,NULL);
    m_flags370[4]=false;m_flags370[5]=false;
    gmMeleeInitData* init=&g_GameGlobal->m_modeMelee->m_meleeInitData;
    m_flag228=init->m_gameMode==7&&init->m_eventId==24;
}
void stOldin::update(float deltaFrame) {
    fn_27_1F290C(g_aiMgr,0);
    fn_53_1E88(this,deltaFrame);
    fn_53_159C(this,deltaFrame);
    fn_53_242C(this,deltaFrame);
    fn_53_2E0C(this,deltaFrame);
    fn_53_3370(this,deltaFrame);
}

// Unknown original helper names: retain the existing module-local symbols.
// NonMatching: the three attack helpers have equivalent field assignments but
// register scheduling differs. No raw-word aliasing is used to hide the diff.





// NonMatching: semantic matrix operations are recovered; aggregate copies,
// literal pool positions and state-token data ordering need the full-TU gate.




// NonMatching coroutine reconstruction. Inclusive comparisons were checked
// against the target's cror branches, rather than m2c's unsupported-cror output.


// NonMatching: recovered bomb countdown, node transform, effect and cleanup
// phases. The model animation and collision calls remain typed SDK interfaces.


// NonMatching: Bulblin hit, ledge/ray test, stagger and falling phases. Source
// helper names are unknown; do not rename the extracted engine callees.


// NonMatching: complete bridge destruction/rebuild coroutine. Named effect
// IDs are not known; keep the numeric IDs proven by the original calls.

static inline void oldinHide(grOldin* ground) {
    ground->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(0,3)=0;
    ground->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(1,3)=-1000;
    ground->m_calcWorldCallBack.m_nodeCallbackDatas[0].m_matrix(2,3)=0;
}

extern "C" void fn_53_129C(stOldin* stage,Matrix* matrix,int first) {
    if(first) {
        stage->m_flag229=true;stage->m_state22c.seq=s_oldinDefaults.sequence;
        stage->m_state22c.state=0;
        stage->m_ground[11]->startEntity();stage->m_ground[10]->startEntity();
        stage->m_floats2d0[3]=0;
        float delay=40.0f*randf();stage->m_counters5d0[1]=0;
        float adjustment=20.0f-delay;
        stage->m_float5d8=180.0f+adjustment;
        stage->m_counters5dc[0]=stage->playSeBasic((SndID)0x1BB1,0);
    }
    stage->m_matrix264=*matrix;stage->m_matrix294=*matrix;
    stage->m_ground[8]->setVisibility(true);
    fn_27_279FC8(stage->m_ground[8],&stage->m_matrix264,false);
    gfModelAnimation* animation=stage->m_ground[8]->m_modelAnims[0];
    if(animation) { animation->setFrame(0);stage->m_counters5d0[0]=0; }
    Matrix attack(stage->m_matrix264);
    fn_8003F074(&attack,stage->m_floats2d0[0],stage->m_floats2d0[1],stage->m_floats2d0[2]);
    fn_27_279FC8(stage->m_ground[11],&attack,false);
    stage->m_ground[7]->setVisibility(true);
    fn_27_279FC8(stage->m_ground[7],&stage->m_matrix264,false);
    Matrix hit(stage->m_matrix264);
    fn_8003F074(&hit,stage->m_floats378[0],stage->m_floats378[1],stage->m_floats378[2]);
    fn_27_279FC8(stage->m_ground[10],&hit,false);
    if(first) {
        stage->m_counter384=0;stage->m_ground[7]->setMotion(0);
        stage->m_ground[7]->startEntityAutoLoop();
        animation=stage->m_ground[7]->m_modelAnims[0];
        if(animation)animation->setFrame(0);
    }
}

extern "C" void fn_53_159C(stOldin* stage,float delta) {
    if(!stage->m_flag229)return;
    float delay=stage->m_float5d8-delta;stage->m_float5d8=delay;
    if(delay<=0) {
        float jitter=40.0f*randf();stage->m_counters5d0[1]=0;
        stage->m_float5d8=180.0f+(20.0f-jitter);
        u32 sound=randi(3);if(sound>=2)sound=2;
        stage->m_counters5d0[1]=stage->m_sound5c8.playSE((SndID)(sound+0x1BB6),-1,0,-1);
        OSReport(s_oldinPool.debugLord);
    }
    switch(stage->m_state22c.state) {
    case 0:stage->m_state22c.seq=s_oldinPool.lordSeq0[0];stage->m_state22c.state=0x2E0;
    case 0x2E0:stage->m_state22c.seq=s_oldinPool.lordSeq0[1];stage->m_state22c.state=0x2E1;return;
    case 0x2E1:case 0x38D:break;
    default:return;
    }
    stage->m_ground[8]->getNodeMatrix(&stage->m_matrix294,0,stage->m_counters2c4[0]);
    Vec3f position=stage->m_matrix294.getPosition();
    stage->m_sound5c8.setPos(&position);fn_8009EF8C(&stage->m_object2e0,&position);
    if(-320.0f<=position.m_x&&position.m_x<=320.0f)stage->m_object2e0.words[2]&=0x03FFFFFF;
    else stage->m_object2e0.words[2]=(stage->m_object2e0.words[2]&~0xE0000000)|0x20000000;
    Vec2f minimum(position.m_x,position.m_y),maximum(position.m_x,position.m_y);
    minimum-=Vec2f(stage->m_flags370[0]?150.0f:10.0f,20.0f);
    maximum+=Vec2f(stage->m_flags370[0]?10.0f:150.0f,100.0f);
    g_aiMgr->setDangerZone(&minimum,&maximum,-1,false,false);
    Matrix attack(stage->m_matrix294);
    fn_8003F074(&attack,stage->m_floats2d0[0],stage->m_floats2d0[1],stage->m_floats2d0[2]);
    fn_27_279FC8(stage->m_ground[11],&attack,false);
    if(stage->m_flags370[3]&&!stage->m_flag414) {
        if((stage->m_flags370[0]&&-140.0f<=position.m_x&&position.m_x<=-40.0f)||
            (!stage->m_flags370[0]&&40.0f<=position.m_x&&position.m_x<=140.0f)) {
            stage->m_flag414=true;stage->m_state418.seq=s_oldinDefaults.sequence;stage->m_state418.state=0;
            Matrix drop(stage->m_matrix294);drop(1,3)=0;
            fn_27_279FC8(stage->m_ground[9],&drop,false);
            gfModelAnimation* animation=stage->m_ground[9]->m_modelAnims[0];
            if(animation)animation->setFrame(0);
            stage->m_flags370[3]=false;
        }
    }
    fn_27_279FC8(stage->m_ground[7],&stage->m_matrix294,false);
    Matrix hit(stage->m_matrix294);
    fn_8003F074(&hit,stage->m_floats378[0],stage->m_floats378[1],stage->m_floats378[2]);
    fn_27_279FC8(stage->m_ground[10],&hit,false);
    if(stage->m_ground[10]->isHit()||stage->m_ground[11]->isHit()) {
        stage->m_ground[10]->clearHit();stage->m_ground[11]->clearHit();
        stage->m_counter384=1;stage->m_ground[7]->setMotion(1);
        gfModelAnimation* animation=stage->m_ground[7]->m_modelAnims[0];
        if(animation)animation->setFrame(0);
        oldinHide(stage->m_ground[10]);stage->m_ground[10]->endEntity();stage->m_ground[11]->endEntity();
        stage->m_floats2d0[3]=120.0f;
        u32 sound=randi(2);if(sound>=1)sound=1;
        stage->m_counters5dc[1]=stage->m_sound5c8.playSE((SndID)(sound+0x1BB9),-1,0,-1);
    } else {
        gfModelAnimation* animation=stage->m_ground[7]->m_modelAnims[0];
        if(animation) {
            float count=(float)animation->getFrameCount();
            if(animation->getFrame()>=count) {
                u32 motion=stage->m_counter384+1;stage->m_counter384=motion;
                if(motion<=1)animation->setFrame(0);
                else {
                    stage->m_counter384=0;stage->m_ground[7]->setMotion(0);
                    stage->m_ground[7]->startEntityAutoLoop();
                    animation=stage->m_ground[7]->m_modelAnims[0];if(animation)animation->setFrame(0);
                }
            }
        }
        if(0.0f<stage->m_floats2d0[3]) {
            stage->m_floats2d0[3]-=delta;
            if(stage->m_floats2d0[3]<=0) {
                stage->m_floats2d0[3]=0;stage->m_ground[10]->startEntity();stage->m_ground[11]->startEntity();
            }
        }
    }
    position=stage->m_matrix294.getPosition();
    if((float)fabs((double)position.m_x)<455.0f) {
        gfModelAnimation* animation=stage->m_ground[8]->m_modelAnims[0];
        if(animation) {
            float frame=animation->getFrame();
            if(frame>=(float)animation->getFrameCount()-1.0f)fn_53_129C(stage,&stage->m_matrix294,0);
            else {
                u32 step=stage->m_counters5d0[0];
                if(s_oldinPool.footsteps[step]<=frame) {
                    stage->m_sound5c8.playSE((SndID)(step+0x1BB2),-1,0,-1);
                ++stage->m_counters5d0[0];cmReqQuake__FiP5Vec3f(3,&position);
                }
            }
        }
        stage->m_state22c.seq=s_oldinPool.lordSeq1[0];stage->m_state22c.state=0x38D;return;
    }
    stage->m_flag229=false;stage->m_ground[8]->setVisibility(false);
    stage->m_ground[8]->setEnableCollisionStatus(false);oldinHide(stage->m_ground[8]);
    oldinHide(stage->m_ground[11]);stage->m_ground[11]->endEntity();
    stage->m_ground[7]->setVisibility(false);stage->m_ground[7]->setEnableCollisionStatus(false);
    oldinHide(stage->m_ground[7]);oldinHide(stage->m_ground[10]);stage->m_ground[10]->endEntity();
    stage->m_object2e0.words[2]=(stage->m_object2e0.words[2]&~0xE0000000)|0x20000000;
    stage->stopSeBasic(stage->m_counters5dc[0],0.5f);
    stage->m_state22c.seq=s_oldinPool.lordSeq1[1];stage->m_state22c.state=0x398;
}

extern "C" void fn_53_1E88(stOldin* stage,float delta) {
    if(stage->m_flag228)return;
    // Preserve suspension/resumption of the source's sequence coroutine.
    switch(stage->m_state364.state) {
    case 0: stage->m_state364.seq=s_oldinPool.spawnSeq[0];stage->m_state364.state=0x3AB;
    case 0x3AB: stage->m_float36c=stage->m_parameters[0];goto choose_spawn;
    case 0x3BF: goto wait_delay;
    case 0x3CB: goto wait_bridge;
    case 0x3D5: goto wait_warning;
    case 0x3ED: goto wait_start;
    case 0x474: goto wait_bulblin;
    case 0x479: case 0x489: goto wait_finish;
    default: return;
    }
choose_spawn:
    if(stage->m_parameters[3]<1.0f*randf())goto wait_bridge;
wait_delay:
    if(0.0f<stage->m_float36c) {
        stage->m_float36c-=delta;stage->m_state364.seq=s_oldinPool.spawnSeq[1];
        stage->m_state364.state=0x3BF;return;
    }
new_delay:
    { float width=stage->m_parameters[2]-stage->m_parameters[1];
      stage->m_float36c=stage->m_parameters[1]+width*randf(); }
    goto choose_spawn;
wait_bridge:
    if(stage->m_flag4b0) {
        stage->m_state364.seq=s_oldinPool.spawnSeq[2];stage->m_state364.state=0x3CB;return;
    }
wait_warning:
    if(stage->m_parameters[4]<stage->m_float36c) {
        stage->m_float36c-=delta;stage->m_state364.seq=s_oldinPool.spawnSeq[3];
        stage->m_state364.state=0x3D5;return;
    }
    if(stage->m_flags370[0]==stage->m_flags370[1])stage->m_flags370[0]=!stage->m_flags370[0];
    else {
        stage->m_flags370[1]=stage->m_flags370[0];
        stage->m_flags370[0]=1.0f*randf()<=0.5f;
    }
    float pan=0.75f;
    if(stage->m_flags370[0])pan=-0.75f;
    stage->playSeBasic((SndID)0x1BB0,pan);
wait_start:
    if(0.0f<stage->m_float36c) {
        stage->m_float36c-=delta;stage->m_state364.seq=s_oldinPool.spawnSeq[4];
        stage->m_state364.state=0x3ED;return;
    }
    {
        float total=stage->m_parameters[8]+(stage->m_parameters[7]+(stage->m_parameters[5]+stage->m_parameters[6]));
        float pick=total*randf();float first=stage->m_parameters[5];
        if(pick<=first)stage->m_flags370[2]=false;
        else {
            float rest=pick-first;float second=stage->m_parameters[6];
            if(rest<=second)stage->m_flags370[2]=true;
            else stage->m_flags370[2]=!(rest-second<=stage->m_parameters[7]);
        }
    }
    if(!stage->m_flags370[4]&&!stage->m_flags370[5]) {
        stage->m_flags370[4]=true;stage->m_flags370[3]=true;
    } else {
        stage->m_flags370[5]=stage->m_flags370[4];
        bool drop=100.0f*randf()<=stage->m_parameters[9];
        stage->m_flags370[4]=drop;stage->m_flags370[3]=drop;
    }
    stage->m_matrix234.setIdentity();
    if(stage->m_flags370[0]) {
        fn_8003E918(&stage->m_matrix234,3.1415927f);
        fn_27_263984(stage->m_ground[11]->yakumono(),-1.0f);
    } else fn_27_263984(stage->m_ground[11]->yakumono(),1.0f);
    fn_8003F074(&stage->m_matrix234,-450.0f,0,0);
    if(stage->m_flags370[2]) {
        stage->m_matrix398=stage->m_matrix234;stage->m_matrix3c8=stage->m_matrix234;
        stage->m_flag388=true;stage->m_state38c.seq=s_oldinDefaults.sequence;stage->m_state38c.state=0;
        stage->m_ground[6]->startEntity();stage->m_ground[6]->setVisibility(true);
        stage->m_ground[12]->startEntity();fn_27_279FC8(stage->m_ground[6],&stage->m_matrix398,false);
        stage->m_ground[6]->setMotion(0);
        gfModelAnimation* animation=stage->m_ground[6]->m_modelAnims[0];
        if(animation)animation->setFrame(0);
        fn_27_279FC8(stage->m_ground[12],&stage->m_matrix398,false);
    }
    stage->m_float394=60.0f;
wait_bulblin:
    if(0.0f<stage->m_float394) {
        stage->m_float394-=delta;stage->m_state364.seq=s_oldinPool.spawnSeq[5];
        stage->m_state364.state=0x474;return;
    }
    fn_53_129C(stage,&stage->m_matrix234,1);
    stage->m_state364.seq=s_oldinPool.spawnSeq[6];stage->m_state364.state=0x479;return;
wait_finish:
    if(stage->m_flag229||(stage->m_flags370[2]&&stage->m_flag388)) {
        stage->m_state364.seq=s_oldinPool.spawnSeq[7];stage->m_state364.state=0x489;return;
    }
    goto new_delay;
}

extern "C" void fn_53_242C(stOldin* stage,float delta) {
    if(!stage->m_flag388)return;
    stage->m_ground[6]->getNodeMatrix(&stage->m_matrix3c8,0,stage->m_counter3f8);
    Vec3f position=stage->m_matrix3c8.getPosition();stage->m_sound5fc.setPos(&position);
    switch(stage->m_state38c.state) {
    case 0:stage->m_state38c.seq=s_oldinPool.bulblinSeq[0];stage->m_state38c.state=0x4DA;
    case 0x4DA:stage->m_state38c.seq=s_oldinPool.bulblinSeq[1];stage->m_state38c.state=0x4DB;return;
    case 0x4DB:stage->m_state38c.seq=s_oldinPool.bulblinSeq[2];stage->m_state38c.state=0x4DC;return;
    case 0x4DC:case 0x52A:goto moving;
    case 0x540:goto wait_stagger;
    case 0x54F:case 0x55B:goto wait_motion;
    case 0x569:goto wait_fall;
    case 0x58E:case 0x5A2:goto falling_motion;
    case 0x5B8:case 0x5CD:goto falling_loop;
    default:return;
    }
moving:
    if(stage->m_ground[12]->isHit()) {
        stage->m_ground[12]->clearHit();stage->m_sound5fc.playSE((SndID)0x1BC2,-1,0,-1);
        stage->m_floats3fc[0]-=stage->m_ground[12]->lastDamageTaken();
        stage->m_ground[12]->endEntity();
        if(stage->m_floats3fc[0]<=0)goto start_fall;
        stage->m_float410=4;fn_27_279228(stage->m_ground[6],true);goto wait_stagger;
    }
    position=stage->m_matrix3c8.getPosition();
    if(-100.0f<=position.m_y&&-200.0<=position.m_x&&position.m_x<=200.0f) {
        Vec3f ray(position.m_x,position.m_y+2.0f,0),direction(0,-10,0),hit,normal;
        if(!stRayCheck(&ray,&direction,&hit,&normal,false,NULL,false,1)) {
            if(stage->m_flag389) {
                if((stage->m_flags370[0]&&0.0f<=ray.m_x)||(!stage->m_flags370[0]&&ray.m_x<=0.0f)) {
                    stage->m_floats3fc[1]=0;stage->m_floats3fc[2]=1;stage->m_floats3fc[3]=0;
                    stage->m_sound5fc.playSE((SndID)0x1BC2,-1,0,-1);goto enter_fall_motion;
                }
                stage->m_sound5fc.playSE((SndID)0x1BC2,-1,0,-1);goto start_fall;
            }
        } else stage->m_flag389=true;
    }
    fn_27_279FC8(stage->m_ground[12],&stage->m_matrix3c8,false);
    position=stage->m_matrix3c8.getPosition();
    if((float)fabs((double)position.m_x)<455.0f) {
        gfModelAnimation* animation=stage->m_ground[6]->m_modelAnims[0];
        if(animation) {
            float count=(float)animation->getFrameCount();
            if(animation->getFrame()>=count)goto restore_motion;
        }
        stage->m_state38c.seq=s_oldinPool.bulblinSeq[3];stage->m_state38c.state=0x52A;return;
    }
    goto finish;
wait_stagger:
    if(0.0f<stage->m_float410) {
        stage->m_float410-=delta;stage->m_state38c.seq=s_oldinPool.bulblinSeq[4];stage->m_state38c.state=0x540;return;
    }
    fn_27_279228(stage->m_ground[6],false);fn_27_279FC8(stage->m_ground[6],&stage->m_matrix3c8,false);
    stage->m_ground[6]->setMotion(2);
    { gfModelAnimation* animation=stage->m_ground[6]->m_modelAnims[0];if(animation)animation->setFrame(0); }
    stage->m_state38c.seq=s_oldinPool.bulblinSeq[5];stage->m_state38c.state=0x54F;return;
wait_motion:
    { gfModelAnimation* animation=stage->m_ground[6]->m_modelAnims[0];
      if(animation) { float count=(float)animation->getFrameCount();if(animation->getFrame()>=count)goto restore_motion; } }
    stage->m_state38c.seq=s_oldinPool.bulblinSeq[6];stage->m_state38c.state=0x55B;return;
restore_motion:
    stage->m_matrix398=stage->m_matrix3c8;stage->m_ground[12]->startEntity();
    fn_27_279FC8(stage->m_ground[6],&stage->m_matrix398,false);stage->m_ground[6]->setMotion(0);
    { gfModelAnimation* animation=stage->m_ground[6]->m_modelAnims[0];if(animation)animation->setFrame(0); }
    fn_27_279FC8(stage->m_ground[12],&stage->m_matrix398,false);goto moving;
start_fall:
    stage->m_ground[12]->endEntity();stage->m_float410=4;fn_27_279228(stage->m_ground[6],true);
wait_fall:
    if(0.0f<stage->m_float410) {
        stage->m_float410-=delta;stage->m_state38c.seq=s_oldinPool.bulblinSeq[7];stage->m_state38c.state=0x569;return;
    }
    fn_27_279228(stage->m_ground[6],false);
    stage->m_floats3fc[1]=-2;stage->m_floats3fc[2]=-0.2f;stage->m_floats3fc[3]=2;
    { u32 side=randi(8);if(side>=7)side=7;
      float angle=(side&1)?1.5707964f:-1.5707964f;
      angle+=0.7853982f*(1.0f-2.0f*randf());
      Matrix rotate;fn_8003E918(&rotate,angle);stage->m_matrix3c8.mul(&rotate,&stage->m_matrix3c8); }
enter_fall_motion:
    stage->m_ground[12]->endEntity();fn_27_279FC8(stage->m_ground[6],&stage->m_matrix3c8,false);
    stage->m_ground[6]->setMotion(3);
    { gfModelAnimation* animation=stage->m_ground[6]->m_modelAnims[0];if(animation)animation->setFrame(0); }
    stage->m_state38c.seq=s_oldinPool.bulblinSeq[8];stage->m_state38c.state=0x58E;return;
falling_motion:
    fn_8003F074(&stage->m_matrix3c8,stage->m_floats3fc[1]+stage->m_floats3fc[2],stage->m_floats3fc[3],0);
    stage->m_floats3fc[1]*=0.98f*delta;stage->m_floats3fc[3]-=0.1f*delta;
    fn_27_279FC8(stage->m_ground[6],&stage->m_matrix3c8,false);
    { gfModelAnimation* animation=stage->m_ground[6]->m_modelAnims[0];
      if(!animation)goto wait_falling_motion;
      float count=(float)animation->getFrameCount();if(!(animation->getFrame()>=count))goto wait_falling_motion; }
    fn_8003F074(&stage->m_matrix3c8,stage->m_floats3fc[1]+stage->m_floats3fc[2],stage->m_floats3fc[3],0);
    stage->m_floats3fc[1]*=0.98f*delta;stage->m_floats3fc[3]-=0.1f*delta;
    fn_27_279FC8(stage->m_ground[6],&stage->m_matrix3c8,false);stage->m_ground[6]->setMotion(4);
    { gfModelAnimation* animation=stage->m_ground[6]->m_modelAnims[0];if(animation)animation->setFrame(0); }
    stage->m_ground[6]->startEntityAutoLoop();stage->m_state38c.seq=s_oldinPool.bulblinSeq[10];
    stage->m_state38c.state=0x5B8;return;
wait_falling_motion:
    stage->m_state38c.seq=s_oldinPool.bulblinSeq[9];stage->m_state38c.state=0x5A2;return;
falling_loop:
    if(!(stage->m_matrix3c8(1,3)<-150.0f)) {
        fn_8003F074(&stage->m_matrix3c8,stage->m_floats3fc[1]+stage->m_floats3fc[2],stage->m_floats3fc[3],0);
        stage->m_floats3fc[1]*=0.98f*delta;stage->m_floats3fc[3]-=0.1f*delta;
        fn_27_279FC8(stage->m_ground[6],&stage->m_matrix3c8,false);
        stage->m_state38c.seq=s_oldinPool.bulblinSeq[11];stage->m_state38c.state=0x5CD;return;
    }
finish:
    stage->m_flag388=false;stage->m_flag389=false;
    stage->m_ground[6]->setVisibility(false);stage->m_ground[6]->setEnableCollisionStatus(false);
    oldinHide(stage->m_ground[6]);oldinHide(stage->m_ground[12]);stage->m_ground[12]->endEntity();
    stage->m_floats3fc[0]=stage->m_parameters[10];stage->m_counter40c=0;
    stage->m_state38c.seq=s_oldinPool.bulblinSeq[12];stage->m_state38c.state=0x5D2;
}

extern "C" void fn_53_2E0C(stOldin* stage,float delta) {
    if(!stage->m_flag414)return;
    Vec2f minimum(-40,-40),maximum(40,70);
    g_aiMgr->setDangerZone(&maximum,&minimum,-1,false,false);
    switch(stage->m_state418.state) {
    case 0:stage->m_state418.seq=s_oldinPool.bombSeq[0];stage->m_state418.state=0x5FE;
    case 0x5FE:stage->m_state418.seq=s_oldinPool.bombSeq[1];stage->m_state418.state=0x5FF;return;
    case 0x5FF:
        stage->m_counters5ec[0]=-1;stage->m_counters5ec[1]=-1;
        stage->m_float420=120.0f+60.0f*randf();
        stage->m_ground[9]->setVisibility(true);stage->m_flag5f4=false;
        stage->m_object42c.words[2]&=0x03FFFFFF;
    case 0x62C: goto throwing;
    case 0x63C: goto wait_explosion;
    case 0x660: goto wait_end;
    default:return;
    }
throwing:
    {
        stage->m_float420-=delta;
        Matrix node(true);stage->m_ground[9]->getNodeMatrix(&node,0,stage->m_counters424[0]);
        Vec3f position=node.getPosition();fn_8009EF8C(&stage->m_object42c,&position);
        gfModelAnimation* animation=stage->m_ground[9]->m_modelAnims[0];
        if(animation) {
            if(!stage->m_flag5f4) {
                stage->m_flag5f4=true;stage->m_sound5e4.setPos(&position);
                stage->m_counters5ec[0]=stage->m_sound5e4.playSE((SndID)0x1BBB,-1,0,-1);
                OSReport(s_oldinPool.debugThrow,position.m_x,position.m_y,position.m_z);
                stage->m_counters424[1]=g_ecMgr->setEffect((EfID)0x60);
            }
            if((s32)stage->m_counters5ec[1]<0&&20.0f<=animation->getFrame()) {
                stage->m_sound5e4.setPos(&position);
                stage->m_counters5ec[1]=stage->m_sound5e4.playSE((SndID)0x1BBC,-1,0,-1);
                OSReport(s_oldinPool.debugDrop,position.m_x,position.m_y,position.m_z);
                goto wait_explosion;
            }
            g_ecMgr->setPos(stage->m_counters424[1],&position);
        }
        stage->m_state418.seq=s_oldinPool.bombSeq[2];stage->m_state418.state=0x62C;return;
    }
wait_explosion:
    if(0.0f<stage->m_float420) {
        stage->m_float420-=delta;
        Matrix node(true);stage->m_ground[9]->getNodeMatrix(&node,0,stage->m_counters424[0]);
        Vec3f position=node.getPosition();fn_8009EF8C(&stage->m_object42c,&position);
        g_ecMgr->setPos(stage->m_counters424[1],&position);
        stage->m_state418.seq=s_oldinPool.bombSeq[3];stage->m_state418.state=0x63C;return;
    }
    {
        Matrix node(true);stage->m_ground[9]->getNodeMatrix(&node,0,stage->m_counters424[0]);
        Vec3f position=node.getPosition();
        g_ecMgr->setPos(g_ecMgr->setEffect((EfID)0x18),&position);
        stage->m_sound5e4.setPos(&position);stage->m_sound5e4.playSE((SndID)0x1BBD,-1,0,-1);
        OSReport(s_oldinPool.debugExplosion,position.m_x,position.m_y,position.m_z);
        cmReqQuake__FiP5Vec3f(5,&position);fn_8009EF8C(&stage->m_object42c,&position);
        g_ecMgr->killEffect(stage->m_counters424[1],1,1);
        node(1,3)-=10.0f;fn_27_279FC8(stage->m_ground[13],&node,false);
        stage->m_ground[9]->setVisibility(false);oldinHide(stage->m_ground[9]);
        stage->m_flag4b0=true;stage->m_state4b4.seq=s_oldinDefaults.sequence;stage->m_state4b4.state=0;
        stage->playSeBasic((SndID)0x1BBE,0);stage->m_float420=8.0f;
    }
wait_end:
    if(0.0f<stage->m_float420) {
        stage->m_float420-=delta;stage->m_state418.seq=s_oldinPool.bombSeq[4];
        stage->m_state418.state=0x660;return;
    }
    stage->m_flag414=false;stage->m_ground[9]->setVisibility(false);
    stage->m_ground[9]->setEnableCollisionStatus(false);oldinHide(stage->m_ground[9]);oldinHide(stage->m_ground[13]);
    stage->m_object42c.words[2]=(stage->m_object42c.words[2]&~0xE0000000)|0x20000000;
    stage->m_state418.seq=s_oldinPool.bombSeq[5];stage->m_state418.state=0x663;
}

extern "C" void fn_53_3370(stOldin* stage,float delta) {
    if(!stage->m_flag4b0)return;
    switch(stage->m_state4b4.state) {
    case 0:stage->m_state4b4.seq=s_oldinPool.bridgeSeq[0];stage->m_state4b4.state=0x695;
    case 0x695: {
        Matrix node(true);stage->m_ground[2]->getNodeMatrix(&node,0,stage->m_nodes[0]);
        Vec3f position=node.getPosition();g_ecMgr->setEffect((EfID)0x640001,&position);
        fn_8009EF8C(&stage->m_object544,&position);stage->m_object544.words[2]&=0x03FFFFFF;
        fn_53_3EC4(stage,1);stage->m_state4b4.seq=s_oldinPool.bridgeSeq[1];stage->m_state4b4.state=0x6A8;return;
    }
    case 0x6A8:stage->m_state4b4.seq=s_oldinPool.bridgeSeq[2];stage->m_state4b4.state=0x6A9;return;
    case 0x6A9: {
        Matrix node(true);stage->m_ground[2]->getNodeMatrix(&node,0,stage->m_nodes[0]);
        Vec3f position=node.getPosition();position.m_x-=40.0f;
        g_ecMgr->setEffect((EfID)0x640001,&position);
        stage->m_state4b4.seq=s_oldinPool.bridgeSeq[3];stage->m_state4b4.state=0x6B3;return;
    }
    case 0x6B3:stage->m_state4b4.seq=s_oldinPool.bridgeSeq[4];stage->m_state4b4.state=0x6B4;return;
    case 0x6B4:stage->m_state4b4.seq=s_oldinPool.bridgeSeq[5];stage->m_state4b4.state=0x6B5;return;
    case 0x6B5:stage->m_state4b4.seq=s_oldinPool.bridgeSeq[6];stage->m_state4b4.state=0x6B6;return;
    case 0x6B6: {
        Matrix node(true);stage->m_ground[2]->getNodeMatrix(&node,0,stage->m_nodes[0]);
        Vec3f position=node.getPosition();g_ecMgr->setEffect((EfID)0x640002,&position);
        Matrix other(true);stage->m_ground[2]->getNodeMatrix(&other,0,stage->m_nodes[1]);
        Vec3f otherPosition=other.getPosition();g_ecMgr->setEffect((EfID)0x640003,&otherPosition);
        stage->m_ground[2]->setVisibility(false);stage->m_ground[2]->setEnableCollisionStatus(false);
        stage->m_ground[3]->setVisibility(false);stage->m_ground[5]->startEntity();stage->m_float4bc=120.0f;
        goto wait_crash;
    }
    case 0x6D2:goto wait_crash;
    case 0x6DD:goto wait_portal;
    case 0x6E6: {
        Matrix node(true);stage->m_ground[4]->getNodeMatrix(&node,0,stage->m_nodes[3]);
        Vec3f position=node.getPosition();g_ecMgr->setEffect((EfID)0x640006,&position);
        fn_8009EF8C(&stage->m_object4c0,&position);stage->m_object4c0.words[2]&=0x03FFFFFF;
        GXColor color;
        color.r=0;color.g=0;color.b=0;color.a=0x50;
        stage->m_flag604=(u32)g_efScreen->requestFill(60.0f,0,0x80,&color)>>24;
        stage->m_float4bc=159.0f;goto wait_rebuild;
    }
    case 0x700:goto wait_rebuild;
    case 0x707: {
        Matrix node(true);stage->m_ground[2]->getNodeMatrix(&node,0,stage->m_nodes[2]);
        Vec3f position=node.getPosition();g_ecMgr->setEffect((EfID)0x640004,&position);
        stage->m_object544.words[2]&=0x1FFFFFFF;stage->m_float4bc=119.0f;goto wait_landing;
    }
    case 0x71B:goto wait_landing;
    case 0x735:goto wait_attack_end;
    case 0x73B:goto wait_finish;
    default:return;
    }
wait_crash:
    if(0.0f<stage->m_float4bc) {
        stage->m_float4bc-=delta;stage->m_state4b4.seq=s_oldinPool.bridgeSeq[7];stage->m_state4b4.state=0x6D2;return;
    }
    stage->m_object544.words[2]=(stage->m_object544.words[2]&~0xE0000000)|0x20000000;
    { float width=stage->m_parameters[12]-stage->m_parameters[11];
      stage->m_float4bc=stage->m_parameters[11]+width*randf(); }
wait_portal:
    if(0.0f<stage->m_float4bc) {
        stage->m_float4bc-=delta;stage->m_state4b4.seq=s_oldinPool.bridgeSeq[8];stage->m_state4b4.state=0x6DD;return;
    }
    stage->m_ground[5]->endEntity();stage->m_ground[4]->startEntity();stage->playSeBasic((SndID)0x1BBF,0);
    stage->m_state4b4.seq=s_oldinPool.bridgeSeq[9];stage->m_state4b4.state=0x6E6;return;
wait_rebuild:
    if(0.0f<stage->m_float4bc) {
        stage->m_float4bc-=delta;stage->m_state4b4.seq=s_oldinPool.bridgeSeq[10];stage->m_state4b4.state=0x700;return;
    }
    stage->m_counter5f8=stage->playSeBasic((SndID)0x1BC0,0);
    stage->m_ground[2]->startEntity();stage->m_ground[2]->setMotionRatio(1);
    stage->m_state4b4.seq=s_oldinPool.bridgeSeq[11];stage->m_state4b4.state=0x707;return;
wait_landing:
    if(0.0f<stage->m_float4bc) {
        stage->m_float4bc-=delta;stage->m_state4b4.seq=s_oldinPool.bridgeSeq[12];stage->m_state4b4.state=0x71B;return;
    }
    stage->stopSeBasic(stage->m_counter5f8,0);stage->playSeBasic((SndID)0x1BC1,0);fn_53_3EC4(stage,0);
    { Matrix node(true);stage->m_ground[2]->getNodeMatrix(&node,0,stage->m_nodes[2]);
      Vec3f position=node.getPosition();g_ecMgr->setEffect((EfID)0x640005,&position); }
    stage->m_ground[3]->setVisibility(true);stage->m_ground[2]->setEnableCollisionStatus(true);
    stage->m_ground[14]->startEntity();stage->m_float4bc=239.0f;
wait_attack_end:
    if(180.0f<stage->m_float4bc) {
        stage->m_float4bc-=delta;stage->m_state4b4.seq=s_oldinPool.bridgeSeq[13];stage->m_state4b4.state=0x735;return;
    }
    stage->m_ground[14]->endEntity();
wait_finish:
    if(0.0f<stage->m_float4bc) {
        stage->m_float4bc-=delta;stage->m_state4b4.seq=s_oldinPool.bridgeSeq[14];stage->m_state4b4.state=0x73B;return;
    }
    { u8 handle=stage->m_flag604;fn_8005E3C8(g_efScreen,&handle,60.0f); }
    stage->m_flag4b0=false;stage->m_ground[2]->startEntity();stage->m_ground[2]->setEnableCollisionStatus(true);
    gfModelAnimation* animation=stage->m_ground[2]->m_modelAnims[0];
    if(animation)animation->setFrame((float)animation->getFrameCount());
    stage->m_ground[2]->setMotionRatio(0);stage->m_ground[3]->setVisibility(true);
    Matrix identity;fn_27_279FC8(stage->m_ground[2],&identity,true);fn_27_279FC8(stage->m_ground[5],&identity,true);
    stage->m_object4c0.words[2]=(stage->m_object4c0.words[2]&~0xE0000000)|0x20000000;
    stage->m_object544.words[2]=(stage->m_object544.words[2]&~0xE0000000)|0x20000000;
    stage->m_state4b4.seq=s_oldinPool.bridgeSeq[15];stage->m_state4b4.state=0x741;
}

extern "C" void fn_53_3B7C(stOldin* stage,Vec3f* offset) {
    stage->m_ground[11]->setAttack(2.0f,offset);
    soCollisionAttackData* attack=stage->m_ground[11]->getOverwriteAttackData();
    attack->m_nodeIndex=0;
    attack->m_power=15;attack->m_vector=35;attack->m_reactionEffect=40;
    attack->m_reactionFix=0;attack->m_reactionAdd=80;attack->m_size=6.0f;
    attack->m_offsetPos=*offset;
    attack->m_attribute=soCollisionAttackData::Attribute_Cutup;
    attack->m_targetSituation=7;attack->m_targetCategory=0x3FF;
    attack->m_targetLr=false;attack->m_targetPart=15;
    attack->m_setOffKind=soCollisionAttackData::SetOff_Off;
    attack->m_soundLevel=soCollisionAttackData::Sound_Level_Large;
    attack->m_soundAttribute=soCollisionAttackData::Sound_Attribute_Kick;
    attack->m_noScale=false;attack->m_isShieldable=true;
    attack->m_isReflectable=false;attack->m_isAbsorbable=false;
    attack->m_isDirect=false;attack->m_serialHitFrame=90;
    attack->m_isInvalidInvincible=false;attack->m_isInvalidXlu=false;
    attack->m_lrCheck=soCollisionAttackData::Lr_Check_Forward;
    attack->m_isCatch=false;attack->m_noTeam=false;attack->m_noHitStop=false;
    attack->m_noEffect=false;attack->m_noTransaction=false;
    attack->m_shapeType=soCollision::Shape_Sphere;
    stage->m_ground[11]->setAttackPreset(grMadein::Attack_Overwrite);
}

extern "C" void fn_53_3CA0(stOldin* stage,Vec3f* offset) {
    stage->m_ground[13]->setAttack(40.0f,offset);
    soCollisionAttackData* attack=stage->m_ground[13]->getOverwriteAttackData();
    attack->m_nodeIndex=0;
    attack->m_power=30;attack->m_vector=362;attack->m_reactionEffect=50;
    attack->m_reactionFix=0;attack->m_reactionAdd=80;attack->m_size=40.0f;
    attack->m_offsetPos=*offset;
    attack->m_attribute=soCollisionAttackData::Attribute_Normal;
    attack->m_targetSituation=7;attack->m_targetCategory=0x3FF;
    attack->m_targetLr=false;attack->m_targetPart=15;
    attack->m_setOffKind=soCollisionAttackData::SetOff_Off;
    attack->m_soundLevel=soCollisionAttackData::Sound_Level_Small;
    attack->m_soundAttribute=soCollisionAttackData::Sound_Attribute_None;
    attack->m_noScale=false;attack->m_isShieldable=true;
    attack->m_isReflectable=false;attack->m_isAbsorbable=false;
    attack->m_isDirect=false;attack->m_serialHitFrame=60;
    attack->m_isInvalidInvincible=false;attack->m_isInvalidXlu=false;
    attack->m_lrCheck=soCollisionAttackData::Lr_Check_Pos;
    attack->m_isCatch=false;attack->m_noTeam=false;attack->m_noHitStop=false;
    attack->m_noEffect=false;attack->m_noTransaction=false;
    attack->m_shapeType=soCollision::Shape_Capsule;
    stage->m_ground[13]->setAttackPreset(grMadein::Attack_Overwrite);
}

extern "C" void fn_53_3DAC(stOldin* stage) {
    Vec3f offset(200.0f,0.0f,0.0f);
    stage->m_ground[14]->setAttack(40.0f,&offset);
    soCollisionAttackData* attack=stage->m_ground[14]->getOverwriteAttackData();
    attack->m_nodeIndex=0;
    attack->m_power=0;attack->m_vector=90;attack->m_reactionEffect=50;
    attack->m_reactionFix=100;attack->m_reactionAdd=80;attack->m_size=18.0f;
    attack->m_offsetPos=offset;
    attack->m_attribute=soCollisionAttackData::Attribute_Normal;
    attack->m_targetSituation=7;attack->m_targetCategory=0x3FF;
    attack->m_targetLr=false;attack->m_targetPart=15;
    attack->m_setOffKind=soCollisionAttackData::SetOff_Off;
    attack->m_soundLevel=soCollisionAttackData::Sound_Level_Small;
    attack->m_soundAttribute=soCollisionAttackData::Sound_Attribute_None;
    attack->m_noScale=false;attack->m_isShieldable=false;
    attack->m_isReflectable=false;attack->m_isAbsorbable=false;
    attack->m_isDirect=false;attack->m_serialHitFrame=60;
    attack->m_isInvalidInvincible=true;attack->m_isInvalidXlu=true;
    attack->m_lrCheck=soCollisionAttackData::Lr_Check_Pos;
    attack->m_isCatch=false;attack->m_noTeam=false;attack->m_noHitStop=false;
    attack->m_noEffect=false;attack->m_noTransaction=false;
    attack->m_shapeType=soCollision::Shape_Capsule;
    stage->m_ground[14]->setAttackPreset(grMadein::Attack_Overwrite);
}

extern "C" void fn_53_3EC4(stOldin* stage,u32 enable) {
    Ground* ground=stage->m_ground[2];
    if(ground) {
        grCollision* collision=ground->m_collision;
        if(collision) {
            u32 count=(u16)collision->m_jointLen;
            // NonMatching: SDK's u16 argument forces truncation here; target
            // leaves the bounded index in a word register. Keep the prototype.
            for(u32 index=0;index!=count;++index) {
                grCollisionJoint* joint=collision->getJoint(index);
                if(joint) {
                    if(enable==1)joint->m_0x52=0;
                    else joint->m_0x52=0x6000;
                }
            }
        }
    }
}
