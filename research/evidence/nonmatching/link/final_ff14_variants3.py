anchor = "void fn_93_FF14(soModuleAccesser* ma) {"
expr = "            u32 ownTaskId = ma->m_stageObject->m_taskId;"
head = """            const soModuleEnumeration* modules = targetMA->m_enumerationStart;
            soStatusModule& status = *modules->m_statusModule;
            soCaptureModule& capture = *static_cast<soCaptureModule*>(modules->m_captureModule);"""
VARIANTS = [
 ("taskid_getter", [(anchor, "inline u32 linkFinalTaskId(const StageObject* p) { return p->m_taskId; }\n\n" + anchor), (expr, "            u32 ownTaskId = linkFinalTaskId(ma->m_stageObject);")]),
 ("taskid_accesser_getter", [(anchor, "inline u32 linkFinalTaskId(const soModuleAccesser* p) { return p->m_stageObject->m_taskId; }\n\n" + anchor), (expr, "            u32 ownTaskId = linkFinalTaskId(ma);")]),
 ("capture_getter", [(anchor, "inline soCaptureModule& linkFinalCapture(soModuleAccesser* p) { return *static_cast<soCaptureModule*>(p->m_enumerationStart->m_captureModule); }\n\n"+anchor), (head, """            soStatusModule& status = targetMA->getStatusModule();
            soCaptureModule& capture = linkFinalCapture(targetMA);""")]),
 ("capture_void_local", [(head, """            soStatusModule& status = targetMA->getStatusModule();
            void* module = targetMA->m_enumerationStart->m_captureModule;
            soCaptureModule& capture = *static_cast<soCaptureModule*>(module);""")]),
 ("taskid_nested_argument", [(expr+"\n            capture.vf24(ownTaskId, 0xED, false);", "            capture.vf24(ma->m_stageObject->m_taskId, 0xED, false);")]),
 ("id_signed", [(expr, "            int ownTaskId = ma->m_stageObject->m_taskId;")]),
 ("capture_pointer_after_call", [(head, """            soStatusModule& status = targetMA->getStatusModule();
            void* ptr = targetMA->m_enumerationStart->m_captureModule;"""), (expr, "            soCaptureModule& capture = *static_cast<soCaptureModule*>(ptr);\n"+expr)]),
]
