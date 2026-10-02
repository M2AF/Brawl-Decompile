// NonMatching: full REL acceptance pending; private evidence/nonmatching/ike/special_s.
#include <mt/mt_vector.h>
#include <ft/ft_kinetic_energy.h>
#include <so/status/so_status_event_presenter.h>
#include <so/anim/so_anim_cmd_event_presenter.h>
#include <so/collision/so_collision_search_module_impl.h>
#include <so/so_module_accesser.h>
#include <so/so_value_accesser.h>
#include <so/status/so_status_module_impl.h>
#include <types.h>

class ftIkeStatusUniqProcessSpecialS;
extern "C" void fn_119_B6CC(Vec2f*, const Vec2f*);
extern "C" void fn_119_ECC0(ftIkeStatusUniqProcessSpecialS*, soModuleAccesser*);

// Partial foreign ABI view; the ground slot's semantic name is not established.
// Native/portable code must recover the real interface before using this view.
struct IkeGroundTable {
    void* _00[0x90 / 4];
    int (*vf90)(void*, unsigned);
};
struct IkeGroundPrefix {
    char _00[8];
    IkeGroundTable* m_table;
};

class ftIkeStatusUniqProcessSpecialS : public soStatusUniqProcess {
public:
    ftIkeStatusUniqProcessSpecialS() { }
    virtual ~ftIkeStatusUniqProcessSpecialS() { }
    virtual void initStatus(soModuleAccesser*);
    virtual void exitStatus(soModuleAccesser*, int);
    virtual void execStatus(soModuleAccesser*);
    // Original weak body is emitted by the preceding SpecialHi TU, not here.
    virtual void execStop(soModuleAccesser*);
    virtual void execFixPos(soModuleAccesser*);
};

ftIkeStatusUniqProcessSpecialS g_ftIkeStatusUniqProcessSpecialS;

// NonMatching: FP live ranges and evaluation/layout differ. No flag sweep.
void ftIkeStatusUniqProcessSpecialS::initStatus(soModuleAccesser* moduleAccesser) {
    ftKineticEnergyStop* stop = &dynamic_cast<ftKineticEnergyStop&>(*moduleAccesser->getKineticModule().getEnergy(3));
    ftKineticEnergyGravity* gravity = &dynamic_cast<ftKineticEnergyGravity&>(*moduleAccesser->getKineticModule().getEnergy(1));
    Vec2f speed;
    Vec2f::copy(speed, moduleAccesser->getKineticModule().getSumSpeed(soKineticEnergy::ATTRIBUTE_MASK_MAIN));
    float speedX = speed.m_x;
    float speedY = speed.m_y;
    float lr = moduleAccesser->getPostureModule().getLr();
    switch (moduleAccesser->getStatusModule().getStatusKind()) {
        case 0x113:
            if (moduleAccesser->getSituationModule().getKind() == 2 && speedY < 0.0f) {
                speedY *= soValueAccesser::getConstantFloat(moduleAccesser, 0xFAE, 0);
                gravity->resetEnergy(0, &Vec2f(0.0f, speedY), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                gravity->enable();
            }
            break;
        case 0x11A:
            {
                int sound = moduleAccesser->getSoundModule().playSE((SndID)0x1717, false, 0, 0);
                moduleAccesser->getWorkManageModule().setInt(sound, 0x20000004);
            }
            break;
        case 0x11B: {
            fn_119_ECC0(this, moduleAccesser);
            int count = moduleAccesser->getWorkManageModule().getInt(0x20000002);
            if (moduleAccesser->getSituationModule().getKind() == 2) {
                float extra = count * soValueAccesser::getConstantFloat(moduleAccesser, 0xFA6, 0);
                speedX = lr * (soValueAccesser::getConstantFloat(moduleAccesser, 0xFA4, 0) + extra);
                stop->resetEnergy(6, &Vec2f(speedX, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                fn_119_B6CC(&stop->m_brake, &Vec2f(soValueAccesser::getConstantFloat(moduleAccesser, 0xFA8, 0), 0.0f));
                moduleAccesser->getWorkManageModule().setInt(2, 0x20000000);
            } else {
                float extra = count * soValueAccesser::getConstantFloat(moduleAccesser, 0xFA5, 0);
                speedX = lr * (soValueAccesser::getConstantFloat(moduleAccesser, 0xFA3, 0) + extra);
                stop->resetEnergy(0, &Vec2f(speedX, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                fn_119_B6CC(&stop->m_brake, &Vec2f(soValueAccesser::getConstantFloat(moduleAccesser, 0xFA7, 0), 0.0f));
                moduleAccesser->getWorkManageModule().setInt(0, 0x20000000);
            }
            fn_119_B6CC(&stop->m_28, &Vec2f(-1.0f, 0.0f));
            stop->enable();
            ftKineticEnergyClearUnable(1, moduleAccesser);
            ftKineticEnergyClearUnable(2, moduleAccesser);
            ftKineticEnergyClearUnable(0, moduleAccesser);
            break;
        }
        case 0x11C: {
            soWorkManageModule& work = moduleAccesser->getWorkManageModule();
            float add = soValueAccesser::getConstantFloat(moduleAccesser, 0xFAB, 0);
            float powerAdd = work.getInt(0x20000001) * add;
            moduleAccesser->getCollisionAttackModule().setPowerAddStatus(powerAdd);
        }
        case 0x11D: {
            int resetType;
            if (moduleAccesser->getSituationModule().getKind() == 2) {
                if (moduleAccesser->getStatusModule().getStatusKind() == 0x11C) {
                    speedX *= soValueAccesser::getConstantFloat(moduleAccesser, 0xFAA, 0);
                } else {
                    speedX *= soValueAccesser::getConstantFloat(moduleAccesser, 0xFAD, 0);
                }
                resetType = 6;
                gravity->resetEnergy(0, &Vec2f(0.0f, speedY), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                gravity->enable();
            } else {
                if (moduleAccesser->getStatusModule().getStatusKind() == 0x11C) {
                    speedX *= soValueAccesser::getConstantFloat(moduleAccesser, 0xFA9, 0);
                } else {
                    speedX *= soValueAccesser::getConstantFloat(moduleAccesser, 0xFAC, 0);
                }
                resetType = 0;
                ftKineticEnergyClearUnable(1, moduleAccesser);
            }
            stop->resetEnergy(resetType, &Vec2f(speedX, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
            fn_119_B6CC(&stop->m_28, &Vec2f(-1.0f, 0.0f));
            stop->enable();
            moduleAccesser->getWorkManageModule().setInt(moduleAccesser->getSituationModule().getKind(), 0x20000000);
            break;
        }
    }
}

// NonMatching: argument scheduling and two temporary stack slots differ.
void ftIkeStatusUniqProcessSpecialS::execStatus(soModuleAccesser* moduleAccesser) {
    Vec2f speed;
    Vec2f::copy(speed, moduleAccesser->getKineticModule().getSumSpeed(soKineticEnergy::ATTRIBUTE_MASK_MAIN));
    float speedX = speed.m_x;
    switch (moduleAccesser->getStatusModule().getStatusKind()) {
        case 0x113:
        case 0x11A:
            if (moduleAccesser->getWorkManageModule().isFlag(0x22000011)) {
                int sound = moduleAccesser->getWorkManageModule().getInt(0x20000004);
                if (sound >= 0 && moduleAccesser->getSoundModule().getSEVol(sound) > 0.5f) {
                    moduleAccesser->getSoundModule().setSEVol(0.5f, sound, 0);
                }
            }
            break;
        case 0x11B:
            if (moduleAccesser->getSituationModule().getKind() != moduleAccesser->getWorkManageModule().getInt(0x20000000)) {
                ftKineticEnergyStop* stop = &dynamic_cast<ftKineticEnergyStop&>(*moduleAccesser->getKineticModule().getEnergy(3));
                if (moduleAccesser->getSituationModule().getKind() == 2) {
                    stop->resetEnergy(6, &Vec2f(speedX, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                    fn_119_B6CC(&stop->m_brake, &Vec2f(soValueAccesser::getConstantFloat(moduleAccesser, 0xFA8, 0), 0.0f));
                } else {
                    stop->resetEnergy(0, &Vec2f(speedX, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                    fn_119_B6CC(&stop->m_brake, &Vec2f(soValueAccesser::getConstantFloat(moduleAccesser, 0xFA7, 0), 0.0f));
                }
                fn_119_B6CC(&stop->m_28, &Vec2f(-1.0f, 0.0f));
                stop->enable();
                moduleAccesser->getWorkManageModule().setInt(moduleAccesser->getSituationModule().getKind(), 0x20000000);
                ftKineticEnergyClearUnable(1, moduleAccesser);
                ftKineticEnergyClearUnable(2, moduleAccesser);
                ftKineticEnergyClearUnable(0, moduleAccesser);
            }
            break;
        case 0x11C:
            if (moduleAccesser->getWorkManageModule().isFlag(0x22000015)) {
                ftKineticEnergyStop* stop = &dynamic_cast<ftKineticEnergyStop&>(*moduleAccesser->getKineticModule().getEnergy(3));
                if (moduleAccesser->getSituationModule().getKind() == 2) {
                    speedX *= soValueAccesser::getConstantFloat(moduleAccesser, 0xFAD, 0);
                } else {
                    speedX *= soValueAccesser::getConstantFloat(moduleAccesser, 0xFAC, 0);
                }
                float currentY = stop->getSpeed().m_y;
                fn_119_B6CC(&stop->m_speed, &Vec2f(speedX, currentY));
                moduleAccesser->getWorkManageModule().offFlag(0x22000015);
            }
        case 0x11D:
            if (moduleAccesser->getSituationModule().getKind() != moduleAccesser->getWorkManageModule().getInt(0x20000000)) {
                ftKineticEnergyStop* stop = &dynamic_cast<ftKineticEnergyStop&>(*moduleAccesser->getKineticModule().getEnergy(3));
                ftKineticEnergyGravity* gravity = &dynamic_cast<ftKineticEnergyGravity&>(*moduleAccesser->getKineticModule().getEnergy(1));
                Vec2f current;
                Vec2f::copy(current, moduleAccesser->getKineticModule().getSumSpeed(soKineticEnergy::ATTRIBUTE_MASK_MAIN));
                if (moduleAccesser->getSituationModule().getKind() == 2) {
                    stop->resetEnergy(6, &Vec2f(current.m_x, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                    gravity->resetEnergy(0, &Vec2f(0.0f, current.m_y), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                    gravity->enable();
                } else {
                    stop->resetEnergy(0, &Vec2f(current.m_x, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                    ftKineticEnergyClearUnable(1, moduleAccesser);
                }
                fn_119_B6CC(&stop->m_28, &Vec2f(-1.0f, 0.0f));
                stop->enable();
                moduleAccesser->getWorkManageModule().setInt(moduleAccesser->getSituationModule().getKind(), 0x20000000);
                ftKineticEnergyClearUnable(2, moduleAccesser);
                ftKineticEnergyClearUnable(0, moduleAccesser);
            }
            break;
    }
}

// NonMatching: partial foreign-table load uses r5 instead of target r12.
void ftIkeStatusUniqProcessSpecialS::execFixPos(soModuleAccesser* moduleAccesser) {
    switch (moduleAccesser->getStatusModule().getStatusKind()) {
        case 0x11B:
            if (moduleAccesser->getSituationModule().getKind() == 0) {
                IkeGroundPrefix* ground = reinterpret_cast<IkeGroundPrefix*>(&moduleAccesser->getGroundModule());
                if (ground->m_table->vf90(ground, 0)) {
                    moduleAccesser->getStatusModule().changeStatusRequest(0x11D, moduleAccesser);
                }
            }
            break;
    }
}

// NonMatching: two original switch-layout branches are not reproduced.
void ftIkeStatusUniqProcessSpecialS::exitStatus(soModuleAccesser* moduleAccesser, int nextStatus) {
    switch (nextStatus) {
        case 0x11A:
            break;
        default: {
            int sound = moduleAccesser->getWorkManageModule().getInt(0x20000004);
            if (sound >= 0) {
                moduleAccesser->getSoundModule().stopSEHandle(sound, 0);
            }
            break;
        }
    }
}

// Unknown original name: explicit this parameter preserves the observed ABI.
extern "C" void fn_119_ECC0(ftIkeStatusUniqProcessSpecialS*, soModuleAccesser* moduleAccesser) {
    soCollisionSearchData data;
    data.m_x = 0.0f;
    data.m_y = soValueAccesser::getConstantFloat(moduleAccesser, 0xFB0, 0);
    data.m_z = soValueAccesser::getConstantFloat(moduleAccesser, 0xFAF, 0);
    data.m_size = soValueAccesser::getConstantFloat(moduleAccesser, 0xFB1, 0);
    data.m_node = 11;
    data.m_bits9 = 2;
    data.m_bits16 = 15;
    data.m_bit26 = 1;
    data.m_bit27 = 1;
    data.m_bit28 = 1;
    data.m_bit29 = 0;
    data.m_category = 0xFF;
    data.m_bits8 = 0;
    moduleAccesser->getCollisionSearchModule().set(0, 0, &data);
}
