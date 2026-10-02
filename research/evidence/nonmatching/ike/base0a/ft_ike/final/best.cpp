// mo_fighter/ft_ike/ft_ike_status_uniq_process_final.cpp: work in progress (NonMatching). See research/drafts for the m2c draft.
#include <mt/mt_vector.h>
#include <ft/ft_kinetic_energy.h>
#include <so/article/so_generate_article_manage_module.h>
#include <so/so_module_accesser.h>
#include <so/so_value_accesser.h>
#include <so/status/so_status_module_impl.h>
#include <so/stageobject.h>
#include <math.h>
#include <types.h>

// Extracted module-local vector getter; semantic name remains unproven.
extern "C" Vec3f fn_119_8E54(soModuleAccesser*);
extern "C" void fn_8003DE70(Vec3f*);
extern "C" void fn_119_F4A4(Vec3f*, const Vec3f*, const Vec3f*);

struct IkeFinalLinkEvent : soLinkEventArgs {
    IkeFinalLinkEvent() : soLinkEventArgs(0x2B) { }
};

class ftIkeStatusUniqProcessFinal : public soStatusUniqProcess {
public:
    ftIkeStatusUniqProcessFinal() { }
    virtual ~ftIkeStatusUniqProcessFinal() { }
    virtual void initStatus(soModuleAccesser*);
    virtual void exitStatus(soModuleAccesser*, int);
    virtual void execStatus(soModuleAccesser*);
    virtual void execStop(soModuleAccesser*);
    virtual void execFixPos(soModuleAccesser*);
};

ftIkeStatusUniqProcessFinal g_ftIkeStatusUniqProcessFinal;

void ftIkeStatusUniqProcessFinal::initStatus(soModuleAccesser* moduleAccesser) {
    switch (moduleAccesser->getStatusModule().getStatusKind()) {
        case 0x116:
            ftKineticEnergyClearUnable(3, moduleAccesser);
            ftKineticEnergyClearUnable(1, moduleAccesser);
            ftKineticEnergyClearUnable(2, moduleAccesser);
            ftKineticEnergyClearUnable(4, moduleAccesser);
            ftKineticEnergyClearUnable(0, moduleAccesser);
            break;
        case 0x122: {
            Vec3f target = fn_119_8E54(moduleAccesser);
            Vec3f pos = moduleAccesser->getPostureModule().getPos();
            float direction = -moduleAccesser->getWorkManageModule().getFloat(0x21000011);
            Vec3f destination = target;
            float scale = moduleAccesser->getPostureModule().getScale();
            destination.m_x = target.m_x + direction * (scale * soValueAccesser::getConstantFloat(moduleAccesser, 0xFC7, 0));
            destination.m_y = target.m_y + scale * soValueAccesser::getConstantFloat(moduleAccesser, 0xFC8, 0);
            moduleAccesser->getWorkManageModule().setFloat(destination.m_x, 0x21000004);
            moduleAccesser->getWorkManageModule().setFloat(destination.m_y, 0x21000005);
            moduleAccesser->getWorkManageModule().setFloat(direction, 0x2100000B);
            float facing = (float)(destination.m_x - target.m_x < 0.0f ? -1 : 1);
            moduleAccesser->getWorkManageModule().setFloat(-facing, 0x21000009);
            destination.m_z = pos.m_z;
            Vec3f diff;
            fn_119_F4A4(&diff, &destination, &pos);
            float distance = diff.length();
            float speed = soValueAccesser::getConstantFloat(moduleAccesser, 0xFC9, 0);
            float time;
            float maxTime = (float)soValueAccesser::getConstantInt(moduleAccesser, 0x5DC9, 0);
            time = distance / speed;
            if (time < 1.0f) {
                speed = distance;
                time = 1.0f;
            } else if (time > maxTime) {
                speed = distance / maxTime;
                time = maxTime;
            }
            moduleAccesser->getWorkManageModule().setFloat(speed, 0x2100000F);
            moduleAccesser->getWorkManageModule().setFloat(maxTime - time, 0x21000008);
            break;
        }
        case 0x123: {
            Vec3f pos = moduleAccesser->getPostureModule().getPos();
            float x = moduleAccesser->getWorkManageModule().getFloat(0x21000004) - pos.m_x;
            float y = moduleAccesser->getWorkManageModule().getFloat(0x21000005) - pos.m_y;
            float angle = 57.29578f * (float)atan2(x, y);
            moduleAccesser->getWorkManageModule().setFloat(angle, 0x2100000A);
            Vec3f target = fn_119_8E54(moduleAccesser);
            float diff = target.m_x - moduleAccesser->getWorkManageModule().getFloat(0x21000004);
            float facing = (float)(diff < 0.0f ? -1 : 1);
            moduleAccesser->getPostureModule().setLr(facing);
            moduleAccesser->getPostureModule().updateRotYLr();
            moduleAccesser->getStageObject().updateNodeSRT();
            break;
        }
        case 0x124: {
            moduleAccesser->getPostureModule().setLr(moduleAccesser->getWorkManageModule().getFloat(0x21000009));
            moduleAccesser->getPostureModule().updateRotYLr();
            moduleAccesser->getStageObject().updateNodeSRT();
            ftKineticEnergyGravity* gravity = &dynamic_cast<ftKineticEnergyGravity&>(*moduleAccesser->getKineticModule().getEnergy(1));
            float speed = soValueAccesser::getConstantFloat(moduleAccesser, 0xFC5, 0);
            gravity->resetEnergy(0, &Vec2f(0.0f, speed), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
            gravity->m_accel = 0.0f;
            gravity->m_limit = speed;
            gravity->m_1C = -1.0f;
            gravity->m_18 = 0.0f;
            gravity->enable();
            break;
        }
        case 0x125: {
            ftKineticEnergyGravity* gravity = &dynamic_cast<ftKineticEnergyGravity&>(*moduleAccesser->getKineticModule().getEnergy(1));
            float speed = soValueAccesser::getConstantFloat(moduleAccesser, 0xFC6, 0);
            gravity->resetEnergy(0, &Vec2f(0.0f, -speed), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
            gravity->m_accel = 0.0f;
            gravity->m_limit = speed;
            gravity->m_1C = -1.0f;
            gravity->m_18 = 0.0f;
            gravity->enable();
            break;
        }
    }
}

// Reuse the existing shared paired-single vector helper.
extern "C" void fn_119_F4A4(Vec3f* out, const Vec3f* lhs, const Vec3f* rhs) {
    Vec3fSub(out, lhs, rhs);
}

// NonMatching: scalar movement update must recover the inline paired-single
// operations and the target local/register layout.
void ftIkeStatusUniqProcessFinal::execStatus(soModuleAccesser* moduleAccesser) {
    switch (moduleAccesser->getStatusModule().getStatusKind()) {
        case 0x122:
            if (moduleAccesser->getWorkManageModule().isFlag(0x22000012)) {
                moduleAccesser->getWorkManageModule().subFloat(1.0f, 0x21000008);
            }
            break;
        case 0x123: {
            Vec3f pos = moduleAccesser->getPostureModule().getPos();
            Vec3f destination;
            destination.m_x = moduleAccesser->getWorkManageModule().getFloat(0x21000004);
            destination.m_y = moduleAccesser->getWorkManageModule().getFloat(0x21000005);
            destination.m_z = pos.m_z;
            Vec3f diff;
            fn_119_F4A4(&diff, &destination, &pos);
            float distance = diff.length();
            float speed = moduleAccesser->getWorkManageModule().getFloat(0x2100000F);
            if (distance <= speed) {
                pos.m_x = destination.m_x;
                pos.m_y = destination.m_y;
                pos.m_z = destination.m_z;
                moduleAccesser->getWorkManageModule().onFlag(0x22000013);
            } else {
                fn_8003DE70(&diff);
                // Scalar semantic draft of the original inline paired-single math.
                pos.m_x += diff.m_x * speed;
                pos.m_y += diff.m_y * speed;
                pos.m_z += diff.m_z * speed;
                Vec3f rot = moduleAccesser->getModelModule().getNodeRotate(11);
                float lr = moduleAccesser->getPostureModule().getLr();
                rot.m_x = 45.0f + (moduleAccesser->getWorkManageModule().getFloat(0x2100000A) * lr - 90.0f);
                if (rot.m_x < 0.0f) {
                    rot.m_x += 360.0f;
                } else if (rot.m_x > 360.0f) {
                    rot.m_x -= 360.0f;
                }
                moduleAccesser->getModelModule().setNodeRotate(11, &rot);
            }
            moduleAccesser->getPostureModule().setPos(&pos);
        }
        case 0x124:
            if (moduleAccesser->getWorkManageModule().isFlag(0x22000016)) {
                ftKineticEnergyGravity* gravity = &dynamic_cast<ftKineticEnergyGravity&>(*moduleAccesser->getKineticModule().getEnergy(1));
                float speed = soValueAccesser::getConstantFloat(moduleAccesser, 0xFC6, 0);
                gravity->resetEnergy(0, &Vec2f(0.0f, -speed), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);
                gravity->m_accel = 0.0f;
                gravity->m_limit = speed;
                gravity->m_1C = -1.0f;
                gravity->m_18 = 0.0f;
                gravity->enable();
            }
            break;
    }
}

void ftIkeStatusUniqProcessFinal::execStop(soModuleAccesser*) { }

void ftIkeStatusUniqProcessFinal::execFixPos(soModuleAccesser* moduleAccesser) {
    switch (moduleAccesser->getStatusModule().getStatusKind()) {
        case 0x122:
            if (moduleAccesser->getWorkManageModule().isFlag(0x22000012) && moduleAccesser->getWorkManageModule().getFloat(0x21000008) <= 1.0f) {
                moduleAccesser->getStatusModule().changeStatusRequest(0x123, moduleAccesser);
            }
            break;
        case 0x123:
            if (moduleAccesser->getWorkManageModule().isFlag(0x22000013)) {
                moduleAccesser->getStatusModule().changeStatusRequest(0x124, moduleAccesser);
            }
            break;
    }
}

void ftIkeStatusUniqProcessFinal::exitStatus(soModuleAccesser* moduleAccesser, int nextStatus) {
    switch (nextStatus) {
        case 0x124:
            static_cast<soGenerateArticleManageModule*>(moduleAccesser->m_enumerationStart->m_generateArticleManageModule)->vf48(0, 0);
            break;
        case 0x122:
        case 0x123:
        case 0x125:
        case 0x126:
            break;
        default:
            static_cast<soGenerateArticleManageModule*>(moduleAccesser->m_enumerationStart->m_generateArticleManageModule)->vf48(0, 0);
            if (moduleAccesser->getLinkModule().isLinked(4)) {
                IkeFinalLinkEvent event;
                moduleAccesser->getLinkModule().sendEventNodes(4, event, 0);
            }
            break;
    }
}

// Unreferenced adjacent helper recovered semantically; original name unknown.
extern "C" float fn_119_FAA4(const Vec3f* lhs, const Vec3f* rhs, soModuleAccesser* moduleAccesser) {
    float diff = lhs->m_x - rhs->m_x;
    if (0.0f == diff) {
        return moduleAccesser->getPostureModule().getLr();
    }
    return (float)(diff < 0.0f ? -1 : 1);
}
