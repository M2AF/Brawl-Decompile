anchor = "void fn_93_FF14(soModuleAccesser* ma) {"
expr = "            u32 ownTaskId = ma->m_stageObject->m_taskId;"
head = """            const soModuleEnumeration* modules = targetMA->m_enumerationStart;
            soStatusModule& status = *modules->m_statusModule;
            soCaptureModule& capture = *static_cast<soCaptureModule*>(modules->m_captureModule);"""
getter = "inline u32 linkFinalTaskId(const soModuleAccesser* p) { return p->m_stageObject->m_taskId; }\n"
common = [(expr, "            u32 ownTaskId = linkFinalTaskId(ma);")]
VARIANTS = [
 ("status_reference", [(anchor, getter+anchor), (head, """            soStatusModule& status = targetMA->getStatusModule();
            soCaptureModule& capture = *static_cast<soCaptureModule*>(targetMA->m_enumerationStart->m_captureModule);""")]+common),
 ("get_both", [(anchor, getter + """inline soStatusModule& linkFinalStatus(soModuleAccesser* ma, soCaptureModule*& capture) {
    const soModuleEnumeration* e = ma->m_enumerationStart;
    soStatusModule* status = e->m_statusModule;
    capture = static_cast<soCaptureModule*>(e->m_captureModule);
    return *status;
}
"""+anchor), (head, """            soCaptureModule* capture;
            soStatusModule& status = linkFinalStatus(targetMA, capture);"""), ("capture.vf24(ownTaskId", "capture->vf24(ownTaskId")]+common),
 ("status_inline_pointer", [(anchor, getter+anchor), (head, """            soStatusModule* status = &targetMA->getStatusModule();
            soCaptureModule* capture = static_cast<soCaptureModule*>(targetMA->m_enumerationStart->m_captureModule);"""), ("status.changeStatusRequest(0xED, targetMA);", "status->changeStatusRequest(0xED, targetMA);"), ("capture.vf24(ownTaskId", "capture->vf24(ownTaskId")]+common),
 ("get_both_return_status_last", [(anchor, getter + """inline soStatusModule& linkFinalStatus(soModuleAccesser* ma, soCaptureModule*& capture) {
    const soModuleEnumeration* e = ma->m_enumerationStart;
    capture = static_cast<soCaptureModule*>(e->m_captureModule);
    return *e->m_statusModule;
}
"""+anchor), (head, """            soCaptureModule* capture;
            soStatusModule& status = linkFinalStatus(targetMA, capture);"""), ("capture.vf24(ownTaskId", "capture->vf24(ownTaskId")]+common),
]
