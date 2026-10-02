#include <so/so_module_accesser.h>
#include <so/so_value_accesser.h>
#include <so/status/so_status_module_impl.h>
#include <types.h>

float g_ftPitSpecialLwHoldAngleDivisor = 25.0f;

class ftPitStatusUniqProcessSpecialLwHold : public soStatusUniqProcess {
public:
    ftPitStatusUniqProcessSpecialLwHold() { }
    virtual ~ftPitStatusUniqProcessSpecialLwHold() { }
    virtual void initStatus(soModuleAccesser*);
    virtual void execStatus(soModuleAccesser*);
    virtual void execStop(soModuleAccesser*);
    void updateModelScale(soModuleAccesser*);
};

ftPitStatusUniqProcessSpecialLwHold g_ftPitStatusUniqProcessSpecialLwHold;

void ftPitStatusUniqProcessSpecialLwHold::initStatus(soModuleAccesser* moduleAccesser) {
    updateModelScale(moduleAccesser);
}

void ftPitStatusUniqProcessSpecialLwHold::execStatus(soModuleAccesser* moduleAccesser) {
    soMotionModule& motion = moduleAccesser->getMotionModule();
    soWorkManageModule& work = moduleAccesser->getWorkManageModule();
    float previous = work.getFloat(0x21000004);
    float angle = moduleAccesser->getControllerModule().getStickY();
    if (angle < 0.0f) {
        angle = 0.0f;
    } else {
        float limit = soValueAccesser::getConstantFloat(moduleAccesser, 0xFB8, 0) / g_ftPitSpecialLwHoldAngleDivisor;
        if (angle > limit) {
            angle = limit;
        }
    }
    angle = previous + (angle - previous) * soValueAccesser::getConstantFloat(moduleAccesser, 0xFB9, 0);
    motion.setFrame(angle * motion.getEndFrame(0x1EB));
    work.setFloat(angle, 0x21000004);
    updateModelScale(moduleAccesser);
}

void ftPitStatusUniqProcessSpecialLwHold::updateModelScale(soModuleAccesser* moduleAccesser) {
    Vec3f scale;
    scale.m_x = soValueAccesser::getConstantFloat(moduleAccesser, 0xFBA, 0);
    scale.m_z = 1.0f;
    scale.m_y = 1.0f;
    moduleAccesser->getModelModule().setNodeScale(0x2E, &scale);
}

void ftPitStatusUniqProcessSpecialLwHold::execStop(soModuleAccesser* moduleAccesser) {
    updateModelScale(moduleAccesser);
}
