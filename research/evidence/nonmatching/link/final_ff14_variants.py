old = """            const soModuleEnumeration* modules = targetMA->m_enumerationStart;
            soStatusModule& status = *modules->m_statusModule;
            soCaptureModule& capture = *static_cast<soCaptureModule*>(modules->m_captureModule);
            status.changeStatusRequest(0xED, targetMA);
            u32 ownTaskId = ma->m_stageObject->m_taskId;
            capture.vf24(ownTaskId, 0xED, false);"""
VARIANTS = [
 ("pointers", [(old, """            const soModuleEnumeration* modules = targetMA->m_enumerationStart;
            soStatusModule* status = modules->m_statusModule;
            soCaptureModule* capture = static_cast<soCaptureModule*>(modules->m_captureModule);
            status->changeStatusRequest(0xED, targetMA);
            u32 ownTaskId = ma->m_stageObject->m_taskId;
            capture->vf24(ownTaskId, 0xED, false);""")]),
 ("capture_reference_late", [(old, """            const soModuleEnumeration* modules = targetMA->m_enumerationStart;
            soStatusModule* status = modules->m_statusModule;
            soCaptureModule* capturePtr = static_cast<soCaptureModule*>(modules->m_captureModule);
            status->changeStatusRequest(0xED, targetMA);
            StageObject* self = ma->m_stageObject;
            u32 ownTaskId = self->m_taskId;
            soCaptureModule& capture = *capturePtr;
            capture.vf24(ownTaskId, 0xED, false);""")]),
 ("capture_declare_first", [(old, """            soCaptureModule* capture;
            const soModuleEnumeration* modules = targetMA->m_enumerationStart;
            soStatusModule* status = modules->m_statusModule;
            capture = static_cast<soCaptureModule*>(modules->m_captureModule);
            status->changeStatusRequest(0xED, targetMA);
            u32 ownTaskId = ma->m_stageObject->m_taskId;
            capture->vf24(ownTaskId, 0xED, false);""")]),
 ("status_inline", [(old, """            const soModuleEnumeration* modules = targetMA->m_enumerationStart;
            soCaptureModule& capture = *static_cast<soCaptureModule*>(modules->m_captureModule);
            modules->m_statusModule->changeStatusRequest(0xED, targetMA);
            u32 ownTaskId = ma->m_stageObject->m_taskId;
            capture.vf24(ownTaskId, 0xED, false);""")]),
 ("self_local", [("            u32 ownTaskId = ma->m_stageObject->m_taskId;", """            StageObject* self = ma->m_stageObject;
            u32 ownTaskId = self->m_taskId;""")]),
 ("taskid_reference", [("            u32 ownTaskId = ma->m_stageObject->m_taskId;", "            const u32& ownTaskId = ma->m_stageObject->m_taskId;")]),
]
