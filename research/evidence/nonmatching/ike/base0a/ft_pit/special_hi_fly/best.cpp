#include <so/so_module_accesser.h>
#include <so/so_value_accesser.h>
#include <so/status/so_status_module_impl.h>
#include <types.h>

class ftPitStatusUniqProcessSpecialHiFly : public soStatusUniqProcess {
public:
    ftPitStatusUniqProcessSpecialHiFly() { }
    virtual ~ftPitStatusUniqProcessSpecialHiFly() { }
    virtual void exitStatus(soModuleAccesser*, int);
};

ftPitStatusUniqProcessSpecialHiFly g_ftPitStatusUniqProcessSpecialHiFly;

void ftPitStatusUniqProcessSpecialHiFly::exitStatus(soModuleAccesser* moduleAccesser, int) {
    float value = moduleAccesser->getWorkManageModule().getFloat(0x11000013);
    value *= soValueAccesser::getConstantFloat(moduleAccesser, 0xFB6, 0);
    moduleAccesser->getWorkManageModule().setFloat(value, 0x11000013);
}
