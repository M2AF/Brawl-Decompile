#include <so/so_module_accesser.h>
#include <ft/fighter.h>
#include <ft/ft_manager.h>
#include <ft/ft_metaknight_final.h>
#include <so/camera/so_camera_module_impl.h>
#include <so/link/so_link_module_impl.h>
#include <so/work/so_work_manage_module_impl.h>

// Unnamed Sora helpers: collect entry ids and access a parent's camera module.
extern "C" {
int fn_27_10B21C(ftManager* manager, int* entries);
soCameraModule* fn_27_8CDE4(StageObject* object);
}

class ftMetaknightStatusUniqProcessFinalHitWait : public soStatusUniqProcess {
public:
    ftMetaknightStatusUniqProcessFinalHitWait() { }
    virtual ~ftMetaknightStatusUniqProcessFinalHitWait() { }
    virtual void initStatus(soModuleAccesser* moduleAccesser);
    virtual void exitStatus(soModuleAccesser* moduleAccesser, int nextStatus);
    virtual void execFixPos(soModuleAccesser* moduleAccesser);
};

ftMetaknightStatusUniqProcessFinalHitWait g_ftMetaknightStatusUniqProcessFinalHitWait;

// Descriptive helper/event names; original spellings unknown.
struct MetaknightFinalCleanupEvent : soLinkEventArgs {
    MetaknightFinalCleanupEvent() : soLinkEventArgs(0x44E) { }
};

int ftMetaknightFinalFindUnusedEntry(soModuleAccesser* moduleAccesser);
bool ftMetaknightFinalHasLinkedEntry(int entryId, soModuleAccesser* moduleAccesser);
void ftMetaknightFinalUpdateCamera(soModuleAccesser* moduleAccesser);
Rect2D ftMetaknightFinalMergeCameraRect(const Rect2D& left, const Rect2D& right);

void ftMetaknightStatusUniqProcessFinalHitWait::initStatus(soModuleAccesser* moduleAccesser) {
    // NonMatching: MWCC reuses the entry comparison load as the following
    // helper argument; target reloads it. See private mk_finals evidence.
    int i;
    for (i = 0x20000003; i < 0x2000000A; i++) {
        moduleAccesser->getWorkManageModule().setInt(-1, i);
    }
    // Matches ftEntryManager's nine-entry vector capacity.
    int entries[9];
    int count = fn_27_10B21C(g_ftManager, entries);
    int ownEntry = moduleAccesser->getWorkManageModule().getInt(0x10000000);
    int j;
    for (j = 0; j < count; j++) {
        if (entries[j] != ownEntry) {
            if (ftMetaknightFinalHasLinkedEntry(entries[j], moduleAccesser) != true) {
                int slot = ftMetaknightFinalFindUnusedEntry(moduleAccesser);
                if (slot < 0) {
                    break;
                }
                moduleAccesser->getWorkManageModule().setInt(entries[j], slot);
                moduleAccesser->getWorkManageModule().onFlag(0x22000010);
            }
        }
    }
    ftMetaknightFinalUpdateCamera(moduleAccesser);
}

void ftMetaknightStatusUniqProcessFinalHitWait::execFixPos(soModuleAccesser* moduleAccesser) { }

void ftMetaknightStatusUniqProcessFinalHitWait::exitStatus(soModuleAccesser* moduleAccesser, int nextStatus) {
    if (nextStatus != 0x121 && nextStatus != 0x120) {
        ftMetaknightFinalSendLinkEvent(moduleAccesser);
        ftMetaknightFinalUnlink(moduleAccesser);
    }
}

int ftMetaknightFinalFindUnusedEntry(soModuleAccesser* moduleAccesser) {
    int i;
    for (i = 0x20000003; i < 0x2000000A; i++) {
        if (moduleAccesser->getWorkManageModule().getInt(i) == -1) {
            return i;
        }
    }
    return -1;
}

bool ftMetaknightFinalHasLinkedEntry(int entryId, soModuleAccesser* moduleAccesser) {
    Fighter* subFighter = g_ftManager->getSubFighter(entryId);
    u32 subTaskId = -1;
    if (subFighter != NULL) {
        subTaskId = subFighter->m_taskId;
    }
    int i;
    for (i = 6; i < 12; i++) {
        if (moduleAccesser->getLinkModule().isLink(i) == true) {
            int taskId = moduleAccesser->getLinkModule().getParentTaskId(i);
            if (subTaskId == taskId) {
                return false;
            }
            if (entryId == g_ftManager->getEntryIdFromTaskId(taskId, NULL)) {
                return true;
            }
        }
    }
    return false;
}

void ftMetaknightFinalSendLinkEvent(soModuleAccesser* moduleAccesser) {
    int i;
    for (i = 6; i < 12; i++) {
        if (moduleAccesser->getLinkModule().isLink(i) == true) {
            MetaknightFinalCleanupEvent args;
            moduleAccesser->getLinkModule().sendEventParents(i, args);
        }
    }
}

void ftMetaknightFinalUnlink(soModuleAccesser* moduleAccesser) {
    int i;
    for (i = 6; i < 12; i++) {
        if (moduleAccesser->getLinkModule().isLink(i) == true) {
            moduleAccesser->getLinkModule().unlink(i);
        }
    }
}

void ftMetaknightFinalUpdateCamera(soModuleAccesser* moduleAccesser) {
    if (moduleAccesser->getWorkManageModule().isFlag(0x22000010) == true) {
        return;
    }
    Rect2D range;
    moduleAccesser->getCameraModule().getCameraRangeGlobalRect(&range, 0);
    int i;
    for (i = 6; i < 12; i++) {
        StageObject* parent = moduleAccesser->getLinkModule().getParent(i);
        if (parent != NULL) {
            Rect2D parentRange;
            fn_27_8CDE4(parent)->getCameraRangeGlobalRect(&parentRange, 0);
            range = ftMetaknightFinalMergeCameraRect(range, parentRange);
        }
    }
    moduleAccesser->getCameraModule().setOffsetGlobalRectCenter(&range, moduleAccesser, 0);
    moduleAccesser->getCameraModule().setCameraRangeGlobalRect(&range, moduleAccesser, 0);
}

Rect2D ftMetaknightFinalMergeCameraRect(const Rect2D& left, const Rect2D& right) {
    Rect2D result = left;
    if (result.m_up < right.m_up) { result.m_up = right.m_up; }
    if (result.m_down > right.m_down) { result.m_down = right.m_down; }
    if (result.m_left > right.m_left) { result.m_left = right.m_left; }
    if (result.m_right < right.m_right) { result.m_right = right.m_right; }
    return result;
}
