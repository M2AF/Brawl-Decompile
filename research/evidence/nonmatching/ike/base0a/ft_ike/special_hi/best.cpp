// mo_fighter/ft_ike/ft_ike_status_uniq_process_special_hi.cpp: work in progress (NonMatching). See research/drafts for the m2c draft.
#include <mt/mt_vector.h>
#include <ft/ft_kinetic_energy.h>
#include <ft/ft_common_data_accesser.h>
#include <ft_ike/ft_ike.h>
#include <so/so_module_accesser.h>
#include <so/so_value_accesser.h>
#include <so/article/so_generate_article_manage_module.h>
#include <so/status/so_status_module_impl.h>
#include <types.h>

// Extracted, component-wise vector setter; no semantic name is established.
extern "C" void fn_119_B6CC(Vec2f*, const Vec2f*);

class ftIkeStatusUniqProcessSpecialHi : public soStatusUniqProcess {
public:
    ftIkeStatusUniqProcessSpecialHi() { }
    virtual ~ftIkeStatusUniqProcessSpecialHi() { }
    virtual void initStatus(soModuleAccesser*);
    virtual void exitStatus(soModuleAccesser*, int);
    virtual void execStatus(soModuleAccesser*);
    virtual void execStop(soModuleAccesser*);
    virtual void execFixPos(soModuleAccesser*);
};

ftIkeStatusUniqProcessSpecialHi g_ftIkeStatusUniqProcessSpecialHi;

void ftIkeStatusUniqProcessSpecialHi::initStatus(soModuleAccesser* moduleAccesser) {
    ftKineticEnergyGravity* gravity = &dynamic_cast<ftKineticEnergyGravity&>(*moduleAccesser->getKineticModule().getEnergy(1));
    ftKineticEnergyStop* stop = &dynamic_cast<ftKineticEnergyStop&>(*moduleAccesser->getKineticModule().getEnergy(3));
    soKineticEnergyNormal* normal = &dynamic_cast<soKineticEnergyNormal&>(*moduleAccesser->getKineticModule().getEnergy(0));
    switch (moduleAccesser->getStatusModule().getStatusKind()) {
        case 0x114: {
            ftParam* param = g_ftCommonDataAccesser.getParam(dynamic_cast<ftIke&>(moduleAccesser->getStageObject()).getFtKind());
            ftKineticEnergyController* controller = &dynamic_cast<ftKineticEnergyController&>(*moduleAccesser->getKineticModule().getEnergy(2));
            if (moduleAccesser->getSituationModule().getKind() == 0) {
                controller->resetEnergy(11, &Vec2f(0.0f, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                moduleAccesser->getWorkManageModule().setInt(0, 0x20000000);
            } else {
                controller->resetEnergy(0, &Vec2f(0.0f, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                moduleAccesser->getWorkManageModule().setInt(2, 0x20000000);
            }
            controller->mulSpeedX(param->m_74 * soValueAccesser::getConstantFloat(moduleAccesser, 0xFB3, 0));
            fn_119_B6CC(&controller->m_18, &Vec2f(param->m_7C, 100.0f));
            controller->enable();
            ftKineticEnergyClearUnable(3, moduleAccesser);
            ftKineticEnergyClearUnable(1, moduleAccesser);
            ftKineticEnergyClearUnable(0, moduleAccesser);
            break;
        }
        case 0x11E:
            if (moduleAccesser->getSituationModule().getKind() == 0) {
                normal->resetEnergy(3, &Vec2f(0.0f, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
            } else {
                normal->resetEnergy(5, &Vec2f(0.0f, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
            }
            normal->enable();
            ftKineticEnergyClearUnable(3, moduleAccesser);
            ftKineticEnergyClearUnable(2, moduleAccesser);
            ftKineticEnergyClearUnable(1, moduleAccesser);
            break;
        case 0x120:
            ftKineticEnergyClearUnable(2, moduleAccesser);
            ftKineticEnergyClearUnable(0, moduleAccesser);
            break;
    }
}

void ftIkeStatusUniqProcessSpecialHi::execStatus(soModuleAccesser* moduleAccesser) {
    moduleAccesser->getControllerModule().getStickX();
    Vec2f speed;
    Vec2f::copy(speed, moduleAccesser->getKineticModule().getSumSpeed(soKineticEnergy::ATTRIBUTE_MASK_MAIN));
    switch (moduleAccesser->getStatusModule().getStatusKind()) {
        case 0x114:
            if (moduleAccesser->getSituationModule().getKind() != moduleAccesser->getWorkManageModule().getInt(0x20000000)) {
                ftParam* param = g_ftCommonDataAccesser.getParam(dynamic_cast<ftIke&>(moduleAccesser->getStageObject()).getFtKind());
                ftKineticEnergyController* controller = &dynamic_cast<ftKineticEnergyController&>(*moduleAccesser->getKineticModule().getEnergy(2));
                if (moduleAccesser->getSituationModule().getKind() == 0) {
                    controller->resetEnergy(11, &Vec2f(speed.m_x, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                    moduleAccesser->getWorkManageModule().setInt(0, 0x20000000);
                } else {
                    controller->resetEnergy(0, &Vec2f(speed.m_x, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                    moduleAccesser->getWorkManageModule().setInt(2, 0x20000000);
                }
                controller->mulSpeedX(param->m_74 * soValueAccesser::getConstantFloat(moduleAccesser, 0xFB3, 0));
                fn_119_B6CC(&controller->m_18, &Vec2f(param->m_7C, 100.0f));
                controller->enable();
            }
            break;
        case 0x11E:
            if (moduleAccesser->getWorkManageModule().isFlag(0x22000011) && moduleAccesser->getWorkManageModule().isFlag(0x22000014)) {
                ftKineticEnergyMotion* motion = &dynamic_cast<ftKineticEnergyMotion&>(*moduleAccesser->getKineticModule().getEnergy(0));
                float mul = 1.0f;
                if (motion->getSpeed().m_y > 0.0f) {
                    mul = soValueAccesser::getConstantFloat(moduleAccesser, 0xFB2, 0);
                }
                motion->m_speedMul = mul;
            }
            if (moduleAccesser->getWorkManageModule().isFlag(0x22000012)) {
                ftParam* param = g_ftCommonDataAccesser.getParam(dynamic_cast<ftIke&>(moduleAccesser->getStageObject()).getFtKind());
                ftKineticEnergyController* controller = &dynamic_cast<ftKineticEnergyController&>(*moduleAccesser->getKineticModule().getEnergy(2));
                // Known reset-type scheduling near-miss: bounded effort only.
                controller->resetEnergy(0, &Vec2f(0.0f, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                controller->mulSpeedX(param->m_74 * soValueAccesser::getConstantFloat(moduleAccesser, 0xFB3, 0));
                fn_119_B6CC(&controller->m_18, &Vec2f(param->m_7C, 100.0f));
                controller->enable();
                moduleAccesser->getWorkManageModule().offFlag(0x22000012);
            }
            break;
    }
}

void ftIkeStatusUniqProcessSpecialHi::execStop(soModuleAccesser*) { }
void ftIkeStatusUniqProcessSpecialHi::execFixPos(soModuleAccesser*) { }

// NonMatching: exit switch is missing two target layout branches.
void ftIkeStatusUniqProcessSpecialHi::exitStatus(soModuleAccesser* moduleAccesser, int nextStatus) {
    switch (nextStatus) {
        case 0x11E:
        case 0x120:
            break;
        case 0x11F:
            static_cast<soGenerateArticleManageModule*>(moduleAccesser->m_enumerationStart->m_generateArticleManageModule)->vf48(0, 0);
            break;
        case 0x73:
            moduleAccesser->getWorkManageModule().addInt(1, 0x10000040);
        default:
            static_cast<soGenerateArticleManageModule*>(moduleAccesser->m_enumerationStart->m_generateArticleManageModule)->vf48(0, 0);
            break;
    }
}

// Two shared no-op emissions occupy this object's text boundary. The existing
// extracted vtables identify the original member names. These C-linkage ABI
// stubs supply their explicit this argument without inventing a class layout.
extern "C" __declspec(weak) void execStop__30ftIkeStatusUniqProcessSpecialSFP16soModuleAccesser(void*, soModuleAccesser*) { }
extern "C" __declspec(weak) void exitStatus__26wnIkeSwordStatusUniqProcessFP16soModuleAccesseri(void*, soModuleAccesser*, int) { }
