#include <ft/ft_common_data_accesser.h>
#include <ft/ft_kinetic_energy_stop.h>
#include <so/so_module_accesser.h>
#include <so/stageobject.h>
#include <so/status/so_status_module_impl.h>
#include <math.h>

extern "C" float fn_101_BD7C(float, float);
extern "C" void fn_8003DC00(Vec2f*, Vec2f*);
extern "C" float fn_8003DDD0(Vec2f*, Vec2f*);

class ftNessStatusUniqProcessSpecialHiAttack : public soStatusUniqProcess {
public:
    ftNessStatusUniqProcessSpecialHiAttack() { }
    virtual ~ftNessStatusUniqProcessSpecialHiAttack() { }
    virtual void initStatus(soModuleAccesser*);
    virtual void execStatus(soModuleAccesser*);
    virtual void execStop(soModuleAccesser*);
    virtual void execFixPosCounter(soModuleAccesser*);
    virtual void exitStatus(soModuleAccesser*, int);
};

// Reverse class-declaration order emits owned Gravity RTTI before status data.
#include <ft/ft_kinetic_energy_gravity.h>

ftNessStatusUniqProcessSpecialHiAttack g_ftNessStatusUniqProcessSpecialHiAttack;

void ftNessStatusUniqProcessSpecialHiAttack::initStatus(soModuleAccesser* moduleAccesser) {
    const soModuleEnumeration& modules = *moduleAccesser->m_enumerationStart;
    soWorkManageModule& work = *modules.m_workManageModule;
    soSituationModule& situation = *modules.m_situationModule;
    soKineticModule& kinetic = *modules.m_kineticModule;
    soPostureModule& posture = *modules.m_postureModule;
    soGroundModule& ground = *modules.m_groundModule;
    soModelModule& model = *modules.m_modelModule;
    ftDataSection84* parameters = g_ftCommonDataAccesser.getData((ftKind)10)->m_84;
    float facing = posture.getLr();
    float angle = work.getFloat(0x21000004);
    Vec2f speed;
    if (work.isFlag(0x22000011)) {
        ground.setCorrect((soGroundShapeImpl::CorrectKind)5, 0);
        situation.setKind((SituationKind)2, false);
        speed.m_x = facing * (parameters->m_18 * (float)cos(angle));
        speed.m_y = parameters->m_18 * (float)sin(angle);
    } else {
        ground.setCorrect((soGroundShapeImpl::CorrectKind)1, 0);
        situation.setKind((SituationKind)0, false);
        speed.m_x = parameters->m_18 * facing;
        speed.m_y = 0.0f;
    }
    ftKineticEnergyStop& stop = dynamic_cast<ftKineticEnergyStop&>(*kinetic.getEnergy(3));
    ftKineticEnergyGravity& gravity = dynamic_cast<ftKineticEnergyGravity&>(*kinetic.getEnergy(1));
    stop.m_speed = speed;
    gravity.m_speed.m_y = 0.0f;
    if (situation.getKind() == 0) {
        kinetic.changeKinetic(0x67, moduleAccesser);
    } else {
        kinetic.changeKinetic(0x68, moduleAccesser);
    }
    float rotation = fn_101_BD7C(speed.m_y, speed.m_x * facing);
    model.setNodeRotateZ(5, 57.29578f * rotation);
    moduleAccesser->getStageObject().updateNodeSRT();
}

void ftNessStatusUniqProcessSpecialHiAttack::execStatus(soModuleAccesser* moduleAccesser) {
    soKineticModule& kinetic = moduleAccesser->getKineticModule();
    soPostureModule& posture = moduleAccesser->getPostureModule();
    soModelModule& model = moduleAccesser->getModelModule();
    Vec2f speed;
    Vec2f::copy(speed, kinetic.getEnergy(3)->getSpeed());
    float rotation = fn_101_BD7C(speed.m_y, speed.m_x * posture.getLr());
    model.setNodeRotateZ(5, 57.29578f * rotation);
}

void ftNessStatusUniqProcessSpecialHiAttack::execStop(soModuleAccesser* moduleAccesser) {
    execStatus(moduleAccesser);
}

// NonMatching: same 571-instruction body, but temporary stack allocation,
// touch-mask constant moves and two call-argument schedules still differ.
// See private evidence/nonmatching/fighters2/ness_hi_attack_diff3.log.
void ftNessStatusUniqProcessSpecialHiAttack::execFixPosCounter(soModuleAccesser* moduleAccesser) {
    const soModuleEnumeration& modules = *moduleAccesser->m_enumerationStart;
    soWorkManageModule& work = *modules.m_workManageModule;
    soSituationModule& situation = *modules.m_situationModule;
    soKineticModule& kinetic = *modules.m_kineticModule;
    soStatusModule& status = *modules.m_statusModule;
    soPostureModule& posture = *modules.m_postureModule;
    soGroundModule& ground = *modules.m_groundModule;
    ftDataSection84* parameters = g_ftCommonDataAccesser.getData((ftKind)10)->m_84;
    ftKineticEnergyStop& stop = dynamic_cast<ftKineticEnergyStop&>(*kinetic.getEnergy(3));
    int touch = 0;
    Vec2f speed;
    Vec2f::copy(speed, stop.getSpeed());
    Vec2f direction;
    fn_8003DC00(&direction, &speed);
    Vec2f normal;
    if (situation.isSituationChanged()) {
        if (situation.getKind() == 0) {
            normal = ground.getTouchNormal((grCollStatus::TouchMask)8, 0);
            if (fn_8003DDD0(&direction, &normal) > 0.017453292f * (90.0f + parameters->m_28)) {
                status.changeStatusRequest(0x4A, moduleAccesser);
                return;
            }
            ground.setCorrect((soGroundShapeImpl::CorrectKind)1, 0);
            kinetic.changeKinetic(0x67, moduleAccesser);
        } else {
            if (ground.isTouch((grCollStatus::TouchMask)4, 0)) {
                touch = 4;
            } else if (ground.isTouch((grCollStatus::TouchMask)2, 0)) {
                touch = 2;
            }
            if (touch) {
                status.changeStatusRequest(0x11B, moduleAccesser);
                return;
            }
            ground.setCorrect((soGroundShapeImpl::CorrectKind)5, 0);
            kinetic.changeKinetic(0x68, moduleAccesser);
        }
    }
    if (situation.getKind() == 0) {
        if (ground.isTouch((grCollStatus::TouchMask)1, 0)) {
            touch = 1;
        } else if (ground.isTouch((grCollStatus::TouchMask)4, 0)) {
            touch = 4;
        } else if (ground.isTouch((grCollStatus::TouchMask)2, 0)) {
            touch = 2;
        }
        if (touch) {
            status.changeStatusRequest(0x4A, moduleAccesser);
        } else {
            normal = ground.getTouchNormal((grCollStatus::TouchMask)8, 0);
            float angle = fn_101_BD7C(normal.m_y, normal.m_x) - 1.5707964f;
            float square = speed.lengthSq();
            float magnitude = square * rsqrtf(square);
            int sign = speed.m_x < 0.0f ? -1 : 1;
            speed.m_x = magnitude * sign;
            speed.m_y = 0.0f;
            speed.rot(&speed, angle);
            stop.m_speed.m_x = speed.m_x;
            stop.m_speed.m_y = speed.m_y;
        }
    } else {
        if (ground.isTouch((grCollStatus::TouchMask)1, 0)) {
            touch = 1;
            normal = ground.getTouchNormal((grCollStatus::TouchMask)1, 0);
        } else if (ground.isTouch((grCollStatus::TouchMask)4, 0)) {
            touch = 4;
            normal = ground.getTouchNormal((grCollStatus::TouchMask)4, 0);
        } else if (ground.isTouch((grCollStatus::TouchMask)2, 0)) {
            touch = 2;
            normal = ground.getTouchNormal((grCollStatus::TouchMask)2, 0);
        }
        if (touch) {
            if (fn_8003DDD0(&direction, &normal) > 0.017453292f * (90.0f + parameters->m_28)) {
                float projection = normal.m_x * speed.m_x + normal.m_y * speed.m_y;
                speed = speed - ((normal * 2.0f) * projection);
                stop.m_speed = speed;
                status.changeStatusRequest(0x11D, moduleAccesser);
            } else if ((u32)touch == 4 || (u32)touch == 2) {
                float angle = fn_101_BD7C(normal.m_y, normal.m_x);
                while (angle < 0.0f) angle += 6.2831855f;
                while (angle > 6.2831855f) angle -= 6.2831855f;
                float oldAngle = work.getFloat(0x21000004);
                while (oldAngle < 0.0f) oldAngle += 6.2831855f;
                while (oldAngle > 6.2831855f) oldAngle -= 6.2831855f;
                if ((u32)touch == 4) {
                    float opposite = 3.1415927f + oldAngle;
                    while (opposite < 0.0f) opposite += 6.2831855f;
                    while (opposite > 6.2831855f) opposite -= 6.2831855f;
                    if (opposite - angle < 0.0f) angle += 1.5707964f;
                    else angle -= 1.5707964f;
                } else {
                    float opposite = 3.1415927f + angle;
                    while (opposite < 0.0f) opposite += 6.2831855f;
                    while (opposite > 6.2831855f) opposite -= 6.2831855f;
                    if (oldAngle - opposite < 0.0f) angle += 1.5707964f;
                    else angle -= 1.5707964f;
                }
                speed.rot(&speed, angle - oldAngle);
                stop.m_speed = speed;
                kinetic.changeKinetic(0x68, moduleAccesser);
                work.setFloat(oldAngle, 0x21000004);
            }
        }
    }
    if (status.isCollisionAttackOccer()) {
        Vec2f current;
        Vec2f::copy(current, stop.getSpeed());
        float square = current.lengthSq();
        float magnitude;
        if ((float)fabs(square) <= 1.1754944e-38f) magnitude = 0.0f;
        else magnitude = square * rsqrtf(square);
        float adjusted;
        float angle = fn_101_BD7C(current.m_y, current.m_x * posture.getLr());
        adjusted = magnitude - parameters->m_20;
        if (adjusted < 0.0001f) adjusted = 0.0001f;
        magnitude = cos(angle);
        current.m_x = adjusted * magnitude * posture.getLr();
        current.m_y = adjusted * (float)sin(angle);
        stop.m_speed = current;
    }
}

void ftNessStatusUniqProcessSpecialHiAttack::exitStatus(soModuleAccesser* moduleAccesser, int nextStatus) {
    moduleAccesser->getModelModule().setNodeRotateZ(5, 0.0f);
    soPostureModule& posture = moduleAccesser->getPostureModule();
    Vec3f rotation;
    rotation.m_x = 0.0f;
    rotation.m_y = 0.0f;
    rotation.m_z = 0.0f;
    posture.setRot(&rotation, 0);
    if (nextStatus == 0x19) {
        float value = g_ftCommonDataAccesser.getData((ftKind)10)->m_84->m_2C;
        if (value > 0.0f) moduleAccesser->getWorkManageModule().setFloat(value, 0x11000000);
    }
}
