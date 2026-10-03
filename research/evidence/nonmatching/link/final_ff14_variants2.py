old = """            const soModuleEnumeration* modules = targetMA->m_enumerationStart;
            soStatusModule& status = *modules->m_statusModule;
            soCaptureModule& capture = *static_cast<soCaptureModule*>(modules->m_captureModule);
            status.changeStatusRequest(0xED, targetMA);
            u32 ownTaskId = ma->m_stageObject->m_taskId;
            capture.vf24(ownTaskId, 0xED, false);"""
VARIANTS = [
 ("call_assignment", [(old, """            const soModuleEnumeration* modules = targetMA->m_enumerationStart;
            soCaptureModule* capture;
            modules->m_statusModule->changeStatusRequest(0xED,
                (capture = static_cast<soCaptureModule*>(modules->m_captureModule), targetMA));
            u32 ownTaskId = ma->m_stageObject->m_taskId;
            capture->vf24(ownTaskId, 0xED, false);""")]),
 ("late_enumeration_local", [(old, """            soStatusModule& status = targetMA->getStatusModule();
            const soModuleEnumeration* modules = targetMA->m_enumerationStart;
            soCaptureModule& capture = *static_cast<soCaptureModule*>(modules->m_captureModule);
            status.changeStatusRequest(0xED, targetMA);
            u32 ownTaskId = ma->m_stageObject->m_taskId;
            capture.vf24(ownTaskId, 0xED, false);""")]),
 ("local_target_value", [(old, """            const soModuleEnumeration* modules = targetMA->m_enumerationStart;
            soStatusModule& status = *modules->m_statusModule;
            soCaptureModule& capture = *static_cast<soCaptureModule*>(modules->m_captureModule);
            soModuleAccesser* argument = targetMA;
            status.changeStatusRequest(0xED, argument);
            const StageObject& self = *ma->m_stageObject;
            u32 ownTaskId = self.m_taskId;
            capture.vf24(ownTaskId, 0xED, false);""")]),
 ("no_scheduling", [("void fn_93_FF14(soModuleAccesser* ma) {", "#pragma scheduling off\nvoid fn_93_FF14(soModuleAccesser* ma) {"), ("void ftLinkStatusUniqProcessFinalDash::initStatus", "#pragma scheduling reset\nvoid ftLinkStatusUniqProcessFinalDash::initStatus")]),
]
