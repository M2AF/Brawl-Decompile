#include <cm/cm_camera_controller.h>
#include <gf/gf_archive.h>
#include <gm/gm_global.h>
#include <gr/collision/gr_collision.h>
#include <math.h>
#include <mt/mt_prng.h>
#include <nw4r/g3d/g3d_resfile.h>
#include <nw4r/math/math_triangular.h>
#include <st/st_utility.h>
#include <st_dxbigblue/gr_dxbigblue_interface.h>
#include <st_dxbigblue/st_dxbigblue.h>
extern "C" grDxBigBlueBg* fn_81_42C8(int, const char*, const char*);
extern "C" grDxBigBlueCourse* fn_81_4650(int, const char*, const char*);
extern "C" grDxBigBlueAshiba* fn_81_5184(int, const char*, const char*);
extern "C" grDxBigBlueAshibaTrainer* fn_81_578C(int, const char*, const char*);
extern "C" grDxBigBlueFalcon* fn_81_5DE8(int, const char*, const char*);
extern "C" grDxBigBlueTyukei* fn_81_6334(int, const char*, const char*);
extern "C" grDxBigBlueCar* fn_81_6858(s16, const char*, const char*, const char*, u8);
extern "C" grDxBigBlueCourse* fn_81_78F8(int, const char*, const char*);
extern "C" grCollision* fn_27_222878(Stage*, int);
extern "C" u32 fn_27_2249E0(Stage*);
extern "C" void fn_8003DE70(Vec3f*);
extern "C" bool fn_800797A4(snd3DGenerator*);
extern "C" float fn_80162540(float, float);

stClassInfoImpl<Stages::DxBigBlue, stDxBigBlue> stDxBigBlue::bss_loc_14;
stDxBigBlue* stDxBigBlue::create() { return new (Heaps::StageInstance) stDxBigBlue(); }
stDxBigBlue::stDxBigBlue() : stMelee("stDxBigBlue", Stages::DxBigBlue) {
    m_worldState = 0; m_worldTimer = 0.0f;
    memset(m_bounds, 0, sizeof(m_bounds)); m_trackFlag = 0;
    memset(&m_position, 0, sizeof(m_position));
    memset(&m_previous, 0, sizeof(m_previous));
    memset(&m_motion, 0, sizeof(m_motion));
    m_worldSpeed = 0.0f; m_worldFalling = 0;
    for (u8 i = 0; i < 12; i++) {
        m_tracks[i].start.x = 0.0f; m_tracks[i].start.y = 0.0f; m_tracks[i].start.z = 0.0f;
        m_tracks[i].end.x = 0.0f; m_tracks[i].end.y = 0.0f; m_tracks[i].end.z = 0.0f;
        m_predecessor[i] = 12;
    }
    m_trackState = 0; m_trackTimer = 0.0f; m_selectedTrack = 12;
    for (u8 i = 0; i < 30; i++) {
        stDxBigBlueCar& car = m_cars[i]; car.state = 10;
        car.position.x = 0.0f; car.position.y = 0.0f; car.position.z = 0.0f;
        car.previous.x = 0.0f; car.previous.y = 0.0f; car.previous.z = 0.0f;
        car.motion.x = 0.0f; car.motion.y = 0.0f; car.motion.z = 0.0f;
        car.speed = 0.0f; car.f2C = 0.0f; car.falling = 0; car.f34 = 0.0f; car.direction = 0;
    }
    m_carState = 0; m_carTimer = 0.0f;
    memset(m_carOrder, 0, sizeof(m_carOrder));
    m_firstCar = 0; m_lastCar = 0; m_carDirection = 0;
    for (u8 i = 0; i < 5; i++) { m_sounds[i].handle = -1; m_sounds[i].ordinal = 0; }
    m_worldReady = 0;
    for (u8 i = 0; i < 6; i++) {
        stDxBigBluePlatform& platform = m_platforms[i]; platform.state = 10;
        platform.position.x = 0.0f; platform.position.y = 0.0f; platform.position.z = 0.0f;
        platform.previous.x = 0.0f; platform.previous.y = 0.0f; platform.previous.z = 0.0f;
        platform.f1C = 0.0f; platform.f20 = 0.0f; platform.angle = 0.0f;
        platform.speed = 0.0f; platform.target = 0.0f; platform.falling = 0; platform.flag31 = 0;
    }
    m_platformState = 0; m_platformTimer = 0.0f;
    m_falconCount = 0; m_broadcastCount = 0; m_eventEnd = 0;
}
stDxBigBlueSound::stDxBigBlueSound() {}
stDxBigBlueSound::~stDxBigBlueSound() {}
stDxBigBlue::~stDxBigBlue() { fn_81_3E54(&m_trackOrder); releaseArchive(); }
bool stDxBigBlue::loading() { return true; }
void stDxBigBlue::createObj() {
    // Unknown camera flag: legal byte access to the object's representation.
    u8* flags = reinterpret_cast<u8*>(CameraController::getInstance()) + 0x44;
    *flags |= 4;
    testStageParamInit(m_fileData, 0xA); testStageDataInit(m_fileData, 0x14, 0x144);
    initPosPokeTrainer(4, 1);
    fn_81_984(0); fn_81_984(1);
    fn_81_ED8(2); fn_81_ED8(3); fn_81_ED8(4); fn_81_ED8(5);
    fn_81_ED8(6); fn_81_ED8(7); fn_81_ED8(8); fn_81_ED8(9);
    fn_81_ED8(10); fn_81_ED8(11); fn_81_ED8(12); fn_81_ED8(13);
    createCollision(m_fileData, 2, NULL);
    fn_81_ABC(14); fn_81_ABC(15); fn_81_ABC(16);
    fn_81_C04(17); fn_81_D20(18); fn_81_DFC(19);
    createCollision(m_fileData, 3, NULL); fn_81_11BC(); initCameraParam();
    nw4r::g3d::ResFile posData(m_fileData->getData(Data_Type_Model, 0x64, 0xfffe));
    if (posData.ptr()) { nw4r::g3d::ResFile copyPosData = posData; createStagePositions(&copyPosData); }
    else createStagePositions();
    createWind2ndOnly(); loadStageAttrParam(m_fileData, 0x46);
    nw4r::g3d::ResFileData* scene = static_cast<nw4r::g3d::ResFileData*>(m_fileData->getData(Data_Type_Scene, 0, 0xfffe));
    registScnAnim(scene, 0);
    gmGlobalModeMelee* mode = g_GameGlobal->m_modeMelee;
    // Keep the complete event byte, including m_playeMode.
    if (mode && mode->m_meleeInitData.m_gameMode == 7 && reinterpret_cast<u8*>(mode)[0x10] == 0x9F) m_eventEnd = 1;
}
void stDxBigBlue::fn_81_984(int index) {
    grDxBigBlueBg* ground;
    switch (index) {
    case 0: ground = fn_81_42C8(1, "StgDxBigBlueSea", "grDxBigBlueSea"); break;
    case 1: ground = fn_81_42C8(2, "StgDxBigBlueSky", "grDxBigBlueSky"); break;
    default: ground = NULL; break;
    }
    if (ground) {
        addGround(ground); ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
        ground->setStageData(m_stageData); ground->set1CC(&m_position);
        ground->set1D0(m_bounds); ground->set1D4(&m_motion);
    }
}
void stDxBigBlue::fn_81_ABC(int index) {
    grDxBigBlueAshiba* ground; stDxBigBluePlatform* platform;
    switch (index) {
    case 14: ground = fn_81_5184(0xB, "StgDxBigBlueBaseA", "grDxBigBlueAshibaA"); platform = &m_platforms[0]; break;
    case 15: ground = fn_81_5184(0xC, "StgDxBigBlueBaseB", "grDxBigBlueAshibaB"); platform = &m_platforms[1]; break;
    case 16: ground = fn_81_5184(0xD, "StgDxBigBlueBaseC", "grDxBigBlueAshibaC"); platform = &m_platforms[2]; break;
    default: ground = NULL; break;
    }
    if (ground) {
        addGround(ground); ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
        ground->setStageData(m_stageData); ground->set1D0(m_bounds); ground->set1D4(platform);
    }
}
void stDxBigBlue::fn_81_C04(int index) {
    grDxBigBlueAshibaTrainer* ground;
    switch (index) {
    case 17: ground = fn_81_578C(0xE, "StgDxBigBluePTBase", "grDxBigBlueAshibaT"); break;
    default: ground = NULL; break;
    }
    if (ground) {
        addGround(ground); ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
        ground->setStageData(m_stageData); ground->set1DC(m_pokeTrainerPos);
        ground->set1D0(m_bounds); ground->set1D4(&m_platforms[3]); ground->setVisibility(fn_27_2249E0(this));
    }
}
void stDxBigBlue::fn_81_D20(int index) {
    grDxBigBlueFalcon* ground;
    switch (index) {
    case 18: ground = fn_81_5DE8(0x15, "StgDxBigBlueFalcon", "grDxBigBlueFalcon"); break;
    default: ground = NULL; break;
    }
    if (ground) {
        addGround(ground); ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
        ground->setStageData(m_stageData); ground->set1D0(m_bounds); ground->set1D4(&m_platforms[4]);
    }
}
void stDxBigBlue::fn_81_DFC(int index) {
    grDxBigBlueTyukei* ground;
    switch (index) {
    case 19: ground = fn_81_6334(0x16, "StgDxBigBlueTyukeisha", "grDxBigBlueTyukei"); break;
    default: ground = NULL; break;
    }
    if (ground) {
        addGround(ground); ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
        ground->setStageData(m_stageData); ground->set1D0(m_bounds); ground->set1D4(&m_platforms[5]);
    }
}
void stDxBigBlue::fn_81_ED8(u32 index) {
    grDxBigBlueCourse* ground; int track;
    switch (index) {
    case 2: ground = fn_81_4650(0x1F, "StgDxBigBlueCDansa", "grDxBigBlueCDansa"); track = 0; break;
    case 3: ground = fn_81_4650(0x20, "StgDxBigBlueCFlatA", "grDxBigBlueCFlatA"); track = 1; break;
    case 4: ground = fn_81_4650(0x21, "StgDxBigBlueCJump1", "grDxBigBlueCJump1"); track = 2; break;
    case 5: ground = fn_81_4650(0x22, "StgDxBigBlueCJump2", "grDxBigBlueCJump2"); track = 3; break;
    case 6: ground = fn_81_78F8(0x23, "StgDxBigBlueCLoop", "grDxBigBlueCLoop"); track = 4; break;
    case 7: ground = fn_81_4650(0x24, "StgDxBigBlueCPitA", "grDxBigBlueCPitA"); track = 5; break;
    case 8: ground = fn_81_4650(0x25, "StgDxBigBlueCSaka4", "grDxBigBlueCSaka4"); track = 6; break;
    case 9: ground = fn_81_4650(0x26, "StgDxBigBlueCSlopeDownA", "grDxBigBlueCSlopeDownA"); track = 7; break;
    case 10: ground = fn_81_4650(0x27, "StgDxBigBlueCSlopeDownB", "grDxBigBlueCSlopeDownB"); track = 8; break;
    case 11: ground = fn_81_4650(0x28, "StgDxBigBlueCSlopeUpA", "grDxBigBlueCSlopeUpA"); track = 9; break;
    case 12: ground = fn_81_4650(0x29, "StgDxBigBlueCSlopeUpB", "grDxBigBlueCSlopeUpB"); track = 10; break;
    case 13: ground = fn_81_4650(0x2A, "StgDxBigBlueCStartA", "grDxBigBlueCStartA"); track = 11; break;
    default: ground = NULL; break;
    }
    if (ground) {
        addGround(ground); ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
        ground->setStageData(m_stageData); ground->set1D8(m_tracks); ground->set1DC(m_bounds);
        ground->set1E0(&m_position); ground->set1E4(&m_motion); ground->set1E8(track);
        ground->set1EC(&m_selectedTrack); ground->set1F0(&m_predecessor[track]);
    }
}
void stDxBigBlue::fn_81_11BC() {
    for (u8 i = 0; i < 30; i++) m_carOrder[i] = i;
    for (u8 i = 0; i < 30; i++) {
        int maximum = 29;
        int candidate = float(maximum) * randf();
        u8 byte = candidate;
        u8 other = byte > 0 ? candidate : 0;
        other = other < 29 ? other : 29;
        u8 saved = m_carOrder[i]; m_carOrder[i] = m_carOrder[other]; m_carOrder[other] = saved;
    }
    for (u8 i = 0; i < 30; i++) fn_81_130C(i);
}
void stDxBigBlue::fn_81_130C(int index) {
    u8 collision = index + 0x1E;
    grDxBigBlueCar* ground = fn_81_6858(index + 0x82, "TopN", "grDxBigBlueCar", "TopN", collision);
    if (ground) {
        addGround(ground); ground->startup(m_fileData, 0, gfSceneRoot::Layer_Ground);
        ground->setStageData(m_stageData); ground->set1E0(m_bounds); ground->set1E4(&m_position);
        ground->set1E8(index); ground->set1EC(&m_firstCar); ground->set1F0(m_carOrder);
        ground->set1F4(m_cars); createCollision(m_fileData, collision, ground);
    }
}
void stDxBigBlue::update(float deltaFrame) {
    fn_81_153C(deltaFrame); fn_81_1598(deltaFrame); fn_81_19A8(deltaFrame);
    fn_81_1C84(deltaFrame); fn_81_293C(deltaFrame);
}
static inline void setBounds(nw4r::math::_VEC3* out, float x, float y) {
    out->x = x; out->y = y; out->z = 0.0f;
}
void stDxBigBlue::fn_81_153C(float deltaFrame) {
    CameraController* camera = CameraController::getInstance();
    setBounds(&m_bounds[0], camera->unk158, camera->unk160);
    setBounds(&m_bounds[1], camera->unk15C, camera->unk164);
}
void stDxBigBlue::fn_81_1598(float deltaFrame) {
    m_trackTimer -= deltaFrame;
    if (m_trackTimer < 0.0f) m_trackTimer = 0.0f;
    switch (m_trackState) {
    case 0: fn_81_3CFC(11, &m_trackOrder); m_predecessor[11] = 13; m_trackState = 1; return;
    case 1: m_trackState = 3; return;
    case 3: fn_81_16A4(deltaFrame); fn_81_1714(deltaFrame); fn_81_191C(deltaFrame);
    case 2: return;
    }
}
void stDxBigBlue::fn_81_16A4(float deltaFrame) {
    stDxBigBlueNode* node = fn_81_3F00(&m_trackOrder);
    if (node && m_predecessor[node->index] == 12) fn_81_3DEC(node->index, &m_trackOrder);
}
void stDxBigBlue::fn_81_1714(float deltaFrame) {
    stDxBigBlueNode* last = fn_81_3F08(&m_trackOrder);
    if (!last) return;
    nw4r::math::_VEC3 position = m_tracks[last->index].start;
    if (position.x > m_bounds[1].x) return;
    int selected;
    if (last->index == 11) { selected = 1; goto append; }
    {
        stDxBigBlueData* data = static_cast<stDxBigBlueData*>(m_stageData);
        if (!data) return;
        selected = 11.0f * randf();
        if (fn_81_3ED0((u8)selected, &m_trackOrder)) return;
        position = m_tracks[last->index].end;
        switch ((u8)selected) {
        case 4: if (position.y > 700.0f) return; m_trackFlag = 0; break;
        case 0: case 7: case 8: if (position.y <= data->f08) return; break;
        case 2: case 3: case 9: case 10: if (position.y >= data->f04) return; break;
        }
        if (last->index == 4 && m_trackFlag == 0) return;
        position.y += m_tracks[(u8)selected].end.y - m_tracks[(u8)selected].start.y;
        if (position.y < 0.0f || position.y > 3000.0f) return;
    }
append:
    last = fn_81_3F08(&m_trackOrder);
    if (last) { fn_81_3CFC(selected, &m_trackOrder); m_predecessor[(u8)selected] = last->index; }
}
void stDxBigBlue::fn_81_191C(float deltaFrame) {
    stDxBigBlueNode* first = fn_81_3F00(&m_trackOrder);
    if (first) {
        m_selectedTrack = first->index;
        if (first->index == 4) { if (m_motion.z == 360.0f) m_trackFlag = 1; }
        else { m_trackFlag = 0; m_motion.z = 0.0f; }
    }
}

void stDxBigBlue::fn_81_19A8(float deltaFrame) {
    m_worldTimer -= deltaFrame;
    if (m_worldTimer < 0.0f) m_worldTimer = 0.0f;
    switch (m_worldState) {
    case 0: m_worldState = 1; return;
    case 1: {
        stDxBigBlueData* data = static_cast<stDxBigBlueData*>(m_stageData);
        if (!data) return;
        Vec3f start(0.0f, 500.0f, 0.0f), direction(0.0f, -1000.0f, 0.0f), hit, normal;
        if (!stRayCheck(&start, &direction, &hit, &normal, true, fn_27_222878(this, 0), false, 1) || normal.m_y <= 0.0f) {
            if (m_worldFalling == 0) {
                m_worldFalling = 1;
                Vec3f previous(0.0f, -m_previous.y, 0.0f);
                Vec3f current(data->f6C, -m_position.y, 0.0f);
                Vec3f velocity;
                Vec3fSub(&velocity, &current, &previous);
                fn_8003DE70(&velocity);
                velocity.m_x *= data->f7C; velocity.m_y *= data->f7C; velocity.m_z *= data->f7C;
                m_worldSpeed = velocity.m_y;
            }
            float speed = m_worldSpeed - data->f78 * deltaFrame;
            m_previous = m_position; m_worldSpeed = speed;
            m_position.y -= speed * deltaFrame;
            return;
        }
        if (m_worldFalling == 1) {
            float previousY = m_position.y;
            float speed = m_worldSpeed - data->f78 * deltaFrame;
            m_previous = m_position; m_worldSpeed = speed;
            m_position.y -= speed * deltaFrame;
            if (data->f00 < hit.m_y + (m_position.y - previousY)) {
                m_worldFalling = 0; m_position.y = previousY + (data->f00 - hit.m_y);
            }
        } else {
            float previousY = m_position.y;
            m_previous = m_position;
            m_position.y += data->f00 - hit.m_y;
            if (m_position.y - previousY > 20.0f) { m_worldSpeed = 0.0f; m_worldFalling = 1; m_position.y = previousY; }
        }
        m_worldReady = 1;
    } break;
    }
}
void stDxBigBlue::fn_81_1C84(float deltaFrame) {
    stDxBigBlueData* data = static_cast<stDxBigBlueData*>(m_stageData);
    if (!data) return;
    m_carTimer -= deltaFrame;
    if (m_carTimer < 0.0f) m_carTimer = 0.0f;
    switch (m_carState) {
    case 0:
        if (!m_worldReady) return;
        fn_81_25C4(deltaFrame); m_carState = 1;
    case 1:
        m_carTimer = data->f10 + (data->f14 - data->f10) * randf(); m_carState = 3;
    case 3:
        fn_81_1DE4(deltaFrame); fn_81_21EC(deltaFrame); fn_81_22DC(deltaFrame);
        if (m_carTimer != 0.0f) fn_81_245C(deltaFrame);
        break;
    case 2: break;
    }
}
void stDxBigBlue::fn_81_1DE4(float deltaFrame) {
    stDxBigBlueData* data = static_cast<stDxBigBlueData*>(m_stageData);
    if (!data) return;
    u32 count = data->count18;
    for (u32 i = 0; i != count; i++) {
        u32 ordinal = m_firstCar + i; if (ordinal >= 30) ordinal -= 30;
        u8 index = m_carOrder[ordinal]; stDxBigBlueCar* car = &m_cars[index];
        Vec3f hit, normal;
        if (!fn_81_37E0(&hit, &normal, index) || normal.m_y <= 0.0f) {
            if (car->falling == 0) {
                car->falling = 1;
                Vec3f previous(0.0f, car->previous.y, 0.0f), current(data->f6C, car->position.y, 0.0f), velocity;
                Vec3fSub(&velocity, &current, &previous); fn_8003DE70(&velocity);
                velocity.m_x *= data->f84; velocity.m_y *= data->f84; velocity.m_z *= data->f84;
                car->speed = velocity.m_y;
            }
            car->speed = 0.0f; car->previous = car->position;
            if (car->position.y > 0.0f) {
                float ratio;
                if (car->position.x > 0.0f) ratio = car->position.x / m_bounds[1].x;
                else ratio = car->position.x / m_bounds[0].x;
                ratio = ratio - 0.0f >= 0.0f ? ratio : 0.0f;
                ratio = ratio - 1.0f >= 0.0f ? 1.0f : ratio;
                // Indexed trigonometry uses GQR conversion of a signed 16-bit index.
                s16 angle = 16384.0f * ratio;
                car->position.y -= (0.15f + 0.15f * (1.0f - nw4r::math::CosFIdx(0.00390625f * nw4r::math::S16ToF32(angle)))) * deltaFrame;
                if (car->position.y < 0.0f) car->position.y = 0.0f;
            } else if (car->position.y < 0.0f) {
                car->position.y += 0.25f * deltaFrame;
                if (car->position.y > 0.0f) car->position.y = 0.0f;
            }
            car->motion.z = data->f58;
        } else if (car->falling == 1) {
            car->speed -= 0.75f * data->f80 * deltaFrame;
            if (car->speed < -1.0f) car->speed = -1.0f;
            car->previous = car->position;
            car->position.y += car->speed * deltaFrame;
            if (hit.m_y + data->f2C > car->position.y) { car->falling = 0; car->position.y = hit.m_y + data->f2C; }
        } else {
            car->previous = car->position; car->position.y = hit.m_y + data->f2C;
            car->motion.z = 1.40625f * fn_80162540(normal.m_y, normal.m_x) - 90.0f;
            if (fabsf(car->position.y - car->previous.y) > 20.0f) { car->falling = 1; car->speed = 0.0f; car->position.y = car->previous.y; }
        }
    }
}
void stDxBigBlue::fn_81_21EC(float deltaFrame) {
    if (m_stageData) {
        for (u32 i = 0; i != 5; i++) {
            stDxBigBlueSound* sound = &m_sounds[i];
            if (sound->handle != -1 && !fn_800797A4(&sound->generator)) sound->handle = -1;
            if (sound->handle == -1) continue;
            stDxBigBlueCar* car = &m_cars[m_carOrder[sound->ordinal]];
            switch (car->state) {
            case 4: case 5: case 6: case 7: {
                Vec3f position(car->position.x, car->position.y, car->position.z);
                sound->generator.setPos(&position);
            } break;
            case 8: if (sound->handle != -1) sound->generator.stopSE(sound->handle, 120); break;
            }
        }
    }
}
void stDxBigBlue::fn_81_22DC(float deltaFrame) {
    stDxBigBlueData* data = static_cast<stDxBigBlueData*>(m_stageData);
    if (!data) return;
    u32 count = data->count18;
    for (u32 i = 0; i != count; i++) {
        u32 ordinal = m_firstCar + i; if (ordinal >= 30) ordinal -= 30;
        stDxBigBlueCar* car = &m_cars[m_carOrder[ordinal]];
        switch (car->state) {
        case 7: break;
        case 6: if (!fn_81_387C(ordinal)) car->state = 5; else car->state = 7; break;
        case 8:
            if (ordinal == m_firstCar) {
                m_firstCar++; if (m_firstCar == 30) m_firstCar = 0;
                m_carDirection = 1; if (m_carCount != 0) m_carCount--;
            } else if (ordinal == m_lastCar) {
                if (m_lastCar == 0) m_lastCar = 29; else m_lastCar--;
                m_carDirection = 0; if (m_carCount != 0) m_carCount--;
            }
            car->state = 9; m_carTimer = data->f10 + (data->f14 - data->f10) * randf(); break;
        }
    }
}
void stDxBigBlue::fn_81_245C(float deltaFrame) {
    stDxBigBlueData* data = static_cast<stDxBigBlueData*>(m_stageData);
    if (data && m_carCount != data->count18) {
        if (randf() < 0.5f) m_carDirection = 1; else m_carDirection = 0;
        u8 ordinal;
        if (m_carDirection == 1) { ordinal = m_lastCar + 1; if (ordinal >= 30) ordinal -= 30; }
        else { ordinal = 29; if (m_firstCar != 0) ordinal = m_firstCar - 1; }
        stDxBigBlueCar* car = &m_cars[m_carOrder[ordinal]];
        if (car->state == 10) {
            if (m_carDirection == 1) {
                car->state = 4; car->direction = 0; car->position.x = m_bounds[1].x + data->f68;
                car->position.y = m_position.y; car->position.z = 0.0f; m_lastCar = ordinal;
            } else {
                car->state = 4; car->direction = 1; car->position.x = m_bounds[0].x - data->f68;
                car->position.y = m_position.y; car->position.z = 0.0f; m_firstCar = ordinal;
            }
            m_carCount++; fn_81_3C1C(ordinal);
        }
    }
}
void stDxBigBlue::fn_81_25C4(float deltaFrame) {
    stDxBigBlueData* data = static_cast<stDxBigBlueData*>(m_stageData);
    if (!data) return;
    m_firstCar = 30.0f * randf(); m_firstCar = m_firstCar < 29 ? m_firstCar : 29;
    // Explicit initial four cars: the target has individual setup/sound calls.
    u8 ordinal0 = m_firstCar + 0; if (ordinal0 >= 30) ordinal0 -= 30;
    stDxBigBlueCar* car0 = &m_cars[m_carOrder[ordinal0]];
    car0->state = 5; car0->direction = 1; car0->position.x = m_bounds[0].x - data->f68;
    car0->position.y = m_position.y; car0->position.z = 0.0f;
    m_sounds[0].handle = m_sounds[0].generator.playSE((SndID)0x1DC9, 0, 0, -1);
    m_sounds[0].ordinal = ordinal0;
    u8 ordinal1 = m_firstCar + 1; if (ordinal1 >= 30) ordinal1 -= 30;
    stDxBigBlueCar* car1 = &m_cars[m_carOrder[ordinal1]];
    car1->state = 5; car1->direction = 1; car1->position.x = m_bounds[0].x - data->f68;
    car1->position.y = m_position.y; car1->position.z = 0.0f;
    m_sounds[1].handle = m_sounds[1].generator.playSE((SndID)0x1DCA, 0, 0, -1);
    m_sounds[1].ordinal = ordinal1;
    u8 ordinal2 = m_firstCar + 2; if (ordinal2 >= 30) ordinal2 -= 30;
    stDxBigBlueCar* car2 = &m_cars[m_carOrder[ordinal2]];
    car2->state = 5; car2->direction = 0; car2->position.x = m_bounds[1].x + data->f68;
    car2->position.y = m_position.y; car2->position.z = 0.0f;
    m_sounds[2].handle = m_sounds[2].generator.playSE((SndID)0x1DCB, 0, 0, -1);
    m_sounds[2].ordinal = ordinal2;
    u8 ordinal3 = m_firstCar + 3; if (ordinal3 >= 30) ordinal3 -= 30;
    stDxBigBlueCar* car3 = &m_cars[m_carOrder[ordinal3]];
    car3->state = 5; car3->direction = 0; car3->position.x = m_bounds[1].x + data->f68;
    car3->position.y = m_position.y; car3->position.z = 0.0f;
    m_sounds[3].handle = m_sounds[3].generator.playSE((SndID)0x1DCC, 0, 0, -1);
    m_sounds[3].ordinal = ordinal3;
    m_lastCar = ordinal3; m_carCount = 4;
    u32 count = data->count18, divisor = count + 1;
    for (u32 i = 0; i != count; i++) {
        u32 ordinal = m_firstCar + i; if (ordinal >= 30) ordinal -= 30;
        u8 index = m_carOrder[ordinal]; stDxBigBlueCar* car = &m_cars[index];
        float left = 0.5f * -data->f1C;
        car->position.x = left;
        float fraction = float(i + 1) / float(divisor);
        car->position.x = left + data->f1C * fraction; car->position.z = 0.0f;
        Vec3f hit, normal;
        if (fn_81_37E0(&hit, &normal, index) && normal.m_y > 0.0f) car->position.y = hit.m_y + data->f2C;
    }
}
void stDxBigBlue::fn_81_293C(float deltaFrame) {
    stDxBigBlueData* data = static_cast<stDxBigBlueData*>(m_stageData);
    if (!data) return;
    m_platformTimer -= deltaFrame;
    if (m_platformTimer < 0.0f) m_platformTimer = 0.0f;
    switch (m_platformState) {
    case 0:
        if (!m_worldReady) return;
        m_platforms[4].state = 1; m_platforms[4].target = data->fCC;
        if (fn_27_2249E0(this) == 1) { m_platforms[3].state = 1; m_platforms[3].target = data->fCC; }
        m_platformState = 1;
    case 1:
        m_falconCount = float(data->countDC) + float(data->countE0 - data->countDC) * randf();
        m_broadcastCount = float(data->count11C) + float(data->count120 - data->count11C) * randf();
        m_platformState = 2;
    case 2:
        m_platformTimer = data->f88 + (data->f8C - data->f88) * randf(); m_platformState = 3;
    case 3:
        if (m_platformTimer == 0.0f) {
            if (m_platforms[4].state == 10) {
                if (m_falconCount == 0) {
                    m_platforms[4].state = 1; m_platforms[4].target = data->fCC;
                    m_falconCount = float(data->countDC) + float(data->countE0 - data->countDC) * randf();
                } else if (m_broadcastCount == 0) {
                    m_platforms[5].state = 1; m_platforms[5].target = data->fF4 + (data->fF8 - data->fF4) * randf();
                    m_broadcastCount = float(data->count11C) + float(data->count120 - data->count11C) * randf();
                } else {
                    float choice = randf(); int index;
                    if (choice < 0.33333334f) index = 0; else if (choice < 0.6666667f) index = 1; else index = 2;
                    if (m_platforms[index].state == 10) {
                        m_platforms[index].state = 1;
                        m_platforms[index].target = data->f90 + (data->f94 - data->f90) * randf();
                        m_falconCount--; if (m_falconCount < 0) m_falconCount = 0;
                        m_broadcastCount--; if (m_broadcastCount < 0) m_broadcastCount = 0;
                    }
                }
            }
            m_platformState = 2;
        }
        fn_81_2CA0(deltaFrame); break;
    }
}
void stDxBigBlue::fn_81_2CA0(float deltaFrame) {
    if (m_platforms[0].state != 10) fn_81_2DB4(0, deltaFrame);
    if (m_platforms[1].state != 10) fn_81_2DB4(1, deltaFrame);
    if (m_platforms[2].state != 10) fn_81_2DB4(2, deltaFrame);
    if (m_platforms[3].state != 10) fn_81_2DB4(3, deltaFrame);
    if (m_platforms[4].state != 10) fn_81_31C0(deltaFrame);
    if (m_platforms[5].state != 10) fn_81_344C(deltaFrame);
}

void stDxBigBlue::fn_81_2DB4(int index, float deltaFrame) {
    stDxBigBlueData* data = static_cast<stDxBigBlueData*>(m_stageData);
    if (!data) return;
    stDxBigBluePlatform* platform = &m_platforms[index];
    Vec3f start(platform->position.x, 250.0f, platform->position.z), direction(0.0f, -500.0f, 0.0f), hit, normal;
    float extra = 0.0f;
    if (!stRayCheck(&start, &direction, &hit, &normal, true, fn_27_222878(this, 0), false, 1) || normal.m_y <= 0.0f) {
        platform->falling = 1; platform->angle = 0.0f; platform->previous = platform->position;
        fn_81_3900(&platform->position);
        float discarded; fn_81_399C(&discarded, &platform->position, 1);
        float difference = platform->position.y - platform->target;
        float speed;
        if (platform->flag31 == 1) {
            if (difference > 0.0f) speed = 0.0f - data->fA8 * deltaFrame;
            else speed = 0.0f + data->fAC * deltaFrame;
        } else if (difference > 0.0f) speed = 0.0f - data->f98 * deltaFrame;
        else speed = 0.0f + data->f98 * deltaFrame;
        platform->speed = speed; platform->position.y += speed * deltaFrame;
        if (platform->position.y < data->f90 + 0.5f * (data->f94 - data->f90) + fabsf(data->f00)) {
            platform->target += data->f98; return;
        }
        platform->target -= data->f98; return;
    }
    if (fn_81_3900(&platform->position) == true) extra = 0.0f + 20.0f;
    float height;
    if (fn_81_399C(&height, &platform->position, 1) == true) extra += height;
    if (m_platforms[4].state != 10) extra += m_platforms[4].position.y;
    platform->previous = platform->position;
    float difference = platform->position.y - (extra + (hit.m_y + platform->target));
    float speed;
    if (platform->flag31 == 1) {
        if (difference > 0.0f) speed = 0.0f - 0.5f * data->fA8 * deltaFrame;
        else speed = 0.0f + 0.5f * data->fAC * deltaFrame;
    } else if (difference > 0.0f) speed = 0.0f - 0.5f * data->f98 * deltaFrame;
    else speed = 0.0f + 0.5f * data->f98 * deltaFrame;
    platform->speed = speed; platform->position.y += speed * deltaFrame;
    if (hit.m_y + platform->target > platform->position.y) { platform->falling = 0; platform->position.y = hit.m_y + platform->target; }
    platform->angle = 1.40625f * fn_80162540(normal.m_y, normal.m_x) - 90.0f;
    if (extra != 0.0f) platform->target += fabsf(platform->speed); else platform->target -= fabsf(platform->speed);
    float target = platform->target;
    target = target - data->f90 >= 0.0f ? target : data->f90;
    platform->target = target - data->f94 >= 0.0f ? data->f94 : target;
}
void stDxBigBlue::fn_81_31C0(float deltaFrame) {
    stDxBigBlueData* data = static_cast<stDxBigBlueData*>(m_stageData);
    if (!data) return;
    stDxBigBluePlatform* platform = &m_platforms[4];
    Vec3f start(platform->position.x, 250.0f, platform->position.z), direction(0.0f, -500.0f, 0.0f), hit, normal;
    if (!stRayCheck(&start, &direction, &hit, &normal, true, fn_27_222878(this, 0), false, 1) || normal.m_y <= 0.0f) {
        platform->falling = 1; platform->angle = 0.0f;
        float speed;
        if (platform->position.y - platform->target > 0.0f) speed = 0.0f - 0.5f * data->fD0 * deltaFrame;
        else speed = 0.0f + 0.5f * data->fD0 * deltaFrame;
        platform->speed = speed; platform->position.y += speed * deltaFrame;
        if (platform->position.y < data->fCC + fabsf(data->f00)) { platform->target += data->fD0 * deltaFrame; return; }
        platform->target -= data->fD0 * deltaFrame; return;
    }
    platform->previous = platform->position;
    float speed;
    if (platform->position.y - (hit.m_y + platform->target) > 0.0f) speed = 0.0f - 0.5f * data->fD0 * deltaFrame;
    else speed = 0.0f + 0.5f * data->fD0 * deltaFrame;
    platform->speed = speed;
    float target = platform->target;
    platform->position.y += speed * deltaFrame;
    if (hit.m_y + target > platform->position.y) { platform->falling = 0; platform->position.y = hit.m_y + target; }
    target = platform->target - fabsf(platform->speed);
    platform->angle = 1.40625f * fn_80162540(normal.m_y, normal.m_x) - 90.0f;
    platform->target = target;
    if (target <= data->fCC) platform->target = data->fCC;
    // Both angle calls exist in the original; retaining the second is intentional.
    platform->angle = 1.40625f * fn_80162540(normal.m_y, normal.m_x) - 90.0f;
}
void stDxBigBlue::fn_81_344C(float deltaFrame) {
    stDxBigBlueData* data = static_cast<stDxBigBlueData*>(m_stageData);
    if (!data) return;
    stDxBigBluePlatform* platform = &m_platforms[5];
    Vec3f start(platform->position.x, 250.0f, platform->position.z), direction(0.0f, -500.0f, 0.0f), hit, normal;
    float extra = 0.0f;
    if (!stRayCheck(&start, &direction, &hit, &normal, true, fn_27_222878(this, 0), false, 1) || normal.m_y <= 0.0f) {
        platform->falling = 1; platform->previous = platform->position;
        if (fn_81_3900(&platform->position) == true) extra = 0.0f + 20.0f;
        float height;
        if (fn_81_399C(&height, &platform->position, 1) == true) extra += height;
        if (m_platforms[4].state != 10) extra += m_platforms[4].position.y;
        float speed;
        if (platform->position.y - (platform->target + extra) > 0.0f) speed = 0.0f + platform->speed * deltaFrame;
        else speed = 0.0f - platform->speed * deltaFrame;
        platform->position.y += speed * deltaFrame;
        if (platform->position.y < data->fF4 + 0.5f * (data->fF8 - data->fF4) + fabsf(data->f00)) {
            platform->target += deltaFrame * (0.5f * (data->f108 - data->f104)); return;
        }
        platform->target -= deltaFrame * (0.5f * (data->f108 - data->f104)); return;
    }
    if (fn_81_3900(&platform->position) == true) extra = 0.0f + 20.0f;
    float height;
    if (fn_81_399C(&height, &platform->position, 1) == true) extra += height;
    if (m_platforms[4].state != 10) extra += m_platforms[4].position.y;
    platform->previous = platform->position;
    float speed;
    if (platform->position.y - (extra + (hit.m_y + platform->target)) > 0.0f) speed = 0.0f + 0.5f * platform->speed * deltaFrame;
    else speed = 0.0f - 0.5f * platform->speed * deltaFrame;
    float target = platform->target;
    platform->position.y += speed * deltaFrame;
    if (hit.m_y + target > platform->position.y) { platform->falling = 0; platform->position.y = hit.m_y + target; }
    if (extra != 0.0f) platform->target += fabsf(platform->speed); else platform->target -= fabsf(platform->speed);
    target = platform->target;
    target = target - data->fF4 >= 0.0f ? target : data->fF4;
    platform->target = target - data->fF8 >= 0.0f ? data->fF8 : target;
}

bool stDxBigBlue::fn_81_37E0(Vec3f* position, Vec3f* normal, int car) {
    Vec3f start(m_cars[car].position.x, 500.0f, m_cars[car].position.z), direction(0.0f, -1000.0f, 0.0f);
    return stRayCheck(&start, &direction, position, normal, true, fn_27_222878(this, 0), false, 1);
}
 bool stDxBigBlue::fn_81_387C(u32 ordinal) {
    stDxBigBlueData* data = static_cast<stDxBigBlueData*>(m_stageData);
    if (!data) return false;
    {
        u32 count = data->count18;
        for (int i = 0; i != count; i++) {
            u32 other = m_firstCar + i; if (other >= 30) other -= 30;
            if (other != ordinal) {
                switch (m_cars[m_carOrder[other]].state) {
                case 6: case 7: case 8: case 9: return false;
                }
            }
        }
    }
    return true;
}
 bool stDxBigBlue::fn_81_3900(nw4r::math::_VEC3* position) {
    if (!position) return false;
    stDxBigBlueData* data = static_cast<stDxBigBlueData*>(m_stageData);
    if (!data) return false;
    {
        u32 count = data->count18;
        for (int i = 0; i != count; i++) {
            u32 ordinal = m_firstCar + i; if (ordinal >= 30) ordinal -= 30;
            float x = m_cars[m_carOrder[ordinal]].position.x;
            if (position->x > x - 75.0f && position->x < 75.0f + x) return true;
        }
    }
    return false;
}
bool stDxBigBlue::fn_81_399C(float* height, nw4r::math::_VEC3* position, u32 above) {
    if (!height) return false;
    if (!position) return false;
    float highest = 0.0f, width, depth;
    *height = 0.0f;
    for (int i = 0; i != 6; i++) {
        stDxBigBluePlatform* platform = &m_platforms[i];
        if (platform->state != 10) {
            switch (i) {
            case 0: width = 120.0f; depth = 40.0f; break;
            case 1: width = 100.0f; depth = 40.0f; break;
            case 2: width = 100.0f; depth = 40.0f; break;
            case 3: width = 100.0f; depth = 40.0f; break;
            case 4: width = 280.0f; depth = 100.0f; break;
            case 5: width = 80.0f; depth = width; break;
            }
            float radius = 1.5f * width;
            float x = platform->position.x;
            if (position->x > x - radius && position->x < x + radius) {
                if (above == 1) {
                    float y = platform->position.y;
                    if (position->y > y && highest < y) highest = y + 0.5f * depth;
                } else {
                    float y = platform->position.y;
                    if (position->y < y && highest < y) highest = y + 0.5f * depth;
                }
            }
        }
    }
    if (highest == 0.0f) return false;
    *height = highest; return true;
}
bool stDxBigBlue::fn_81_3B04(float* height, nw4r::math::_VEC3* position, u32 above) {
    if (!height) return false;
    if (!position) return false;
    float highest = 0.0f;
    *height = 0.0f;
    for (u32 i = 0; i != 6; i++) {
        stDxBigBluePlatform* platform = &m_platforms[i];
        if (platform->state != 10) {
            if (i != 4) continue;
            float width = 280.0f;
            float radius = 1.5f * width;
            float x = platform->position.x;
            if (position->x > x - radius && position->x < x + radius) {
                if (above == 1) {
                    float y = platform->position.y;
                    float depth = 100.0f;
                    if (position->y > y && highest < y) highest = y + 0.5f * depth;
                } else {
                    float y = platform->position.y;
                    float depth = 100.0f;
                    if (position->y < y && highest < y) highest = y + 0.5f * depth;
                }
            }
        }
    }
    if (highest == 0.0f) return false;
    *height = highest; return true;
}
void stDxBigBlue::fn_81_3C1C(u8 ordinal) {
    for (u32 i = 0; i != 5; i++) {
        if (m_sounds[i].handle == -1) {
            SndID id;
            switch (i) {
            case 0: id = (SndID)0x1DC9; break;
            case 1: id = (SndID)0x1DCA; break;
            case 2: id = (SndID)0x1DCB; break;
            case 3: id = (SndID)0x1DCC; break;
            case 4: id = (SndID)0x1DC9; break;
            }
            m_sounds[i].handle = m_sounds[i].generator.playSE(id, 0, 0, -1);
            m_sounds[i].ordinal = ordinal; return;
        }
    }
}
void stDxBigBlue::fn_81_3CFC(u8 index, stDxBigBlueList* list) {
    stDxBigBlueNode* node = new (Heaps::StageResource) stDxBigBlueNode;
    if (node) { node->index = index; list->PushBack(node); }
}
void stDxBigBlue::fn_81_3D74(u8 index, stDxBigBlueList* list) {
    stDxBigBlueNode* node = new (Heaps::StageResource) stDxBigBlueNode;
    if (node) { node->index = index; list->Insert(list->GetBeginIter(), node); }
}
void stDxBigBlue::fn_81_3DEC(u8 index, stDxBigBlueList* list) {
    stDxBigBlueNode* node = fn_81_3ED0(index, list);
    if (node) { list->Erase(node); delete node; }
}
void stDxBigBlue::fn_81_3E54(stDxBigBlueList* list) {
    for (u32 i = 0, size = list->GetSize(); i != size; i++) {
        stDxBigBlueNode* node = &list->GetFront(); list->PopFront(); delete node;
    }
}
stDxBigBlueNode* stDxBigBlue::fn_81_3ED0(u32 index, stDxBigBlueList* list) {
    u32 size = list->GetSize(); stDxBigBlueNode* node = &list->GetFront();
    for (u32 i = 0; i != size; i++) {
        if (index == node->index) return node;
        node = reinterpret_cast<stDxBigBlueNode*>(node->link.GetNext());
    }
    return NULL;
}
stDxBigBlueNode* stDxBigBlue::fn_81_3F00(stDxBigBlueList* list) { return &list->GetFront(); }
stDxBigBlueNode* stDxBigBlue::fn_81_3F08(stDxBigBlueList* list) {
    stDxBigBlueNode* node = &list->GetFront(); u32 size = list->GetSize();
    for (u32 i = 0; i != size; i++) {
        if (i == size - 1) return node;
        node = reinterpret_cast<stDxBigBlueNode*>(node->link.GetNext());
    }
    return NULL;
}
bool stDxBigBlue::isEventEnd(int event, int* p1, int* p2) { return m_eventEnd != 0; }
