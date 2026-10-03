old = """        StageObject* target = dynamic_cast<StageObject*>(task);
        const soModuleEnumeration* modules = ma->m_enumerationStart;
        soWorkManageModule& work = *modules->m_workManageModule;
        soModelModule& model = *modules->m_modelModule;"""
VARIANTS = [
 ("predeclare_work", [(old, """        soWorkManageModule* workPtr;
        StageObject* target = dynamic_cast<StageObject*>(task);
        const soModuleEnumeration* modules = ma->m_enumerationStart;
        workPtr = modules->m_workManageModule;
        soWorkManageModule& work = *workPtr;
        soModelModule& model = *modules->m_modelModule;""")]),
 ("predeclare_refs", [(old, """        soWorkManageModule* workPtr;
        soModelModule* modelPtr;
        StageObject* target = dynamic_cast<StageObject*>(task);
        const soModuleEnumeration* modules = ma->m_enumerationStart;
        workPtr = modules->m_workManageModule;
        modelPtr = modules->m_modelModule;
        soWorkManageModule& work = *workPtr;
        soModelModule& model = *modelPtr;""")]),
 ("target_const", [(old, old.replace("StageObject* target", "StageObject* const target"))]),
 ("target_register", [(old, old.replace("StageObject* target", "register StageObject* target"))]),
 ("work_pointer", [(old, old.replace("soWorkManageModule& work = *", "soWorkManageModule* work = ")), ("work.getFloat(0x21000004)", "work->getFloat(0x21000004)"), ("work.setInt(event->m_taskId", "work->setInt(event->m_taskId"), ("work.setFloat(distance", "work->setFloat(distance"), ("work.onFlag(0x22000019)", "work->onFlag(0x22000019)")]),
 ("late_target_declaration", [(old, """        StageObject* castResult = dynamic_cast<StageObject*>(task);
        const soModuleEnumeration* modules = ma->m_enumerationStart;
        soWorkManageModule& work = *modules->m_workManageModule;
        soModelModule& model = *modules->m_modelModule;
        StageObject* target = castResult;""")]),
]
