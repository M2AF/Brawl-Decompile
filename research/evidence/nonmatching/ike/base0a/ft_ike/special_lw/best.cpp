#include <mt/mt_vector.h>
#include <ft/ft_kinetic_energy.h>
#include <ft/ft_manager.h>
#include <so/collision/so_collision_attack_module_impl.h>
#include <so/collision/so_collision_shield_module_impl.h>
#include <so/kinetic/so_kinetic_module_impl.h>
#include <so/situation/so_situation_module_impl.h>
#include <so/so_module_accesser.h>
#include <so/so_value_accesser.h>
#include <so/status/so_status_module_impl.h>
#include <so/work/so_work_manage_module_impl.h>
#include <types.h>

class ftIkeStatusUniqProcessSpecialLw : public soStatusUniqProcess {
public:
    ftIkeStatusUniqProcessSpecialLw() { }
    virtual ~ftIkeStatusUniqProcessSpecialLw() { }
    virtual void initStatus(soModuleAccesser* moduleAccesser);
    virtual void exitStatus(soModuleAccesser* moduleAccesser, int);
    virtual void execStatus(soModuleAccesser* moduleAccesser);
    virtual void execStop(soModuleAccesser* moduleAccesser);
    virtual void execFixPos(soModuleAccesser* moduleAccesser);
};

ftIkeStatusUniqProcessSpecialLw g_ftIkeStatusUniqProcessSpecialLw;

// NonMatching: frsp instead of fmr before the initial air brake store.
// Best full REL differs by one byte; private evidence records the bounded trial.
void ftIkeStatusUniqProcessSpecialLw::initStatus(soModuleAccesser* moduleAccesser) {
    ftKineticEnergyStop* stop = &dynamic_cast<ftKineticEnergyStop&>(*moduleAccesser->getKineticModule().getEnergy(3));
    ftKineticEnergyGravity* gravity = &dynamic_cast<ftKineticEnergyGravity&>(*moduleAccesser->getKineticModule().getEnergy(1));
    Vec2f speed;
    Vec2f::copy(speed, moduleAccesser->getKineticModule().getSumSpeed(soKineticEnergy::ATTRIBUTE_MASK_MAIN));
    float speedX = speed.m_x;
    switch (moduleAccesser->getStatusModule().getStatusKind()) {
        case 0x115:
            if (moduleAccesser->getSituationModule().getKind() == 0) {
                stop->resetEnergy(0, &Vec2f(speed.m_x, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                stop->enable();
                ftKineticEnergyClearUnable(1, moduleAccesser);
                ftKineticEnergyClearUnable(2, moduleAccesser);
                moduleAccesser->getWorkManageModule().setInt(0, 0x20000000);
            } else {
                speedX *= soValueAccesser::getConstantFloat(moduleAccesser, 0xFB5, 0);
                float zero = 0.0f;
                stop->resetEnergy(6, &Vec2f(speedX, zero), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                // Matching trial: preserves the target register move location, but
                // MWCC emits frsp rather than fmr. Full REL differs by one byte.
                double brakeY = zero;
                stop->setBrake(&Vec2f(soValueAccesser::getConstantFloat(moduleAccesser, 0xFB6, 0), brakeY));
                stop->enable();
                gravity->resetEnergy(0, &Vec2f(0.0f, zero), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                gravity->m_accel = -soValueAccesser::getConstantFloat(moduleAccesser, 0xFB7, 0);
                gravity->m_limit = soValueAccesser::getConstantFloat(moduleAccesser, 0xFB8, 0);
                gravity->enable();
                ftKineticEnergyClearUnable(2, moduleAccesser);
                moduleAccesser->getWorkManageModule().setInt(2, 0x20000000);
            }
            break;
        case 0x121: {
            float rate = moduleAccesser->getWorkManageModule().getFloat(0x21000004);
            float mul = soValueAccesser::getConstantFloat(moduleAccesser, 0xFB9, 0);
            float max = soValueAccesser::getConstantFloat(moduleAccesser, 0xFBC, 0);
            if ((u8)g_ftManager->_104[0] == 1) {
                mul = soValueAccesser::getConstantFloat(moduleAccesser, 0xFBA, 0);
                max = soValueAccesser::getConstantFloat(moduleAccesser, 0xFBD, 0);
            }
            mul = rate * mul;
            if (mul < soValueAccesser::getConstantFloat(moduleAccesser, 0xFBB, 0)) {
                mul = soValueAccesser::getConstantFloat(moduleAccesser, 0xFBB, 0);
            }
            if (mul > max) {
                mul = max;
            }
            moduleAccesser->getWorkManageModule().setFloat(mul, 0x21000004);
            break;
        }
    }
}

void ftIkeStatusUniqProcessSpecialLw::execStatus(soModuleAccesser* moduleAccesser) {
    switch (moduleAccesser->getStatusModule().getStatusKind()) {
        case 0x115:
            if (moduleAccesser->getSituationModule().getKind() != moduleAccesser->getWorkManageModule().getInt(0x20000000)) {
                ftKineticEnergyStop* stop = &dynamic_cast<ftKineticEnergyStop&>(*moduleAccesser->getKineticModule().getEnergy(3));
                ftKineticEnergyGravity* gravity = &dynamic_cast<ftKineticEnergyGravity&>(*moduleAccesser->getKineticModule().getEnergy(1));
                Vec2f speed;
                Vec2f::copy(speed, moduleAccesser->getKineticModule().getSumSpeed(soKineticEnergy::ATTRIBUTE_MASK_MAIN));
                float speedX = speed.m_x;
                float speedY = speed.m_y;
                if (moduleAccesser->getSituationModule().getKind() == 0) {
                    stop->resetEnergy(0, &Vec2f(speed.m_x, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                    stop->enable();
                    ftKineticEnergyClearUnable(1, moduleAccesser);
                    ftKineticEnergyClearUnable(2, moduleAccesser);
                    moduleAccesser->getWorkManageModule().setInt(0, 0x20000000);
                } else {
                    stop->resetEnergy(6, &Vec2f(speedX, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                    stop->setBrake(&Vec2f(soValueAccesser::getConstantFloat(moduleAccesser, 0xFB6, 0), 0.0f));
                    stop->enable();
                    gravity->resetEnergy(0, &Vec2f(0.0f, speedY), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                    gravity->m_accel = -soValueAccesser::getConstantFloat(moduleAccesser, 0xFB7, 0);
                    gravity->m_limit = soValueAccesser::getConstantFloat(moduleAccesser, 0xFB8, 0);
                    gravity->enable();
                    ftKineticEnergyClearUnable(2, moduleAccesser);
                    moduleAccesser->getWorkManageModule().setInt(2, 0x20000000);
                }
            }
            break;
        case 0x121:
            break;
    }
}

void ftIkeStatusUniqProcessSpecialLw::execStop(soModuleAccesser* moduleAccesser) { }

void ftIkeStatusUniqProcessSpecialLw::execFixPos(soModuleAccesser* moduleAccesser) {
    switch (moduleAccesser->getStatusModule().getStatusKind()) {
        case 0x115:
            if (!moduleAccesser->getWorkManageModule().isFlag(0x22000012)) {
                if (moduleAccesser->getWorkManageModule().isFlag(0x22000011)) {
                    moduleAccesser->getCollisionShieldModule().setStatus(0, 1, 1);
                    moduleAccesser->getWorkManageModule().onFlag(0x22000012);
                }
            } else {
                if (!moduleAccesser->getWorkManageModule().isFlag(0x22000011)) {
                    moduleAccesser->getCollisionShieldModule().setStatus(0, 0, 1);
                    moduleAccesser->getWorkManageModule().offFlag(0x22000012);
                }
            }
            break;
        case 0x121: {
            soCollisionAttackModule& attack = moduleAccesser->getCollisionAttackModule();
            float power = moduleAccesser->getWorkManageModule().getFloat(0x21000004);
            if (power <= 0.0f) {
                break;
            }
            for (int i = 0; i < (int)attack.getPartSize(); i++) {
                if (attack.isAttack(i, false)) {
                    attack.setPower(i, power, false);
                }
            }
            break;
        }
    }
}

void ftIkeStatusUniqProcessSpecialLw::exitStatus(soModuleAccesser* moduleAccesser, int) {
    if (moduleAccesser->getWorkManageModule().isFlag(0x22000012)) {
        moduleAccesser->getCollisionShieldModule().setStatus(0, 0, 1);
    }
}
