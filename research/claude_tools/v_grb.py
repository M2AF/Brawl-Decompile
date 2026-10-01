# Variants for grBattleField::update local declaration placement (used with vtry.py).
START = "void grBattleField::update(float deltaFrame) {"
END = None
src = open(r"C:\Users\balla\Documents\Brawl Decompile\brawl\src\mo_stage\st_battle\gr_battle.cpp").read()
body = src[src.index(START):]
base = body.replace("    const u8* matDL = nullptr;\n", "")
variants = {}
variants["top"] = base.replace(START + "\n", START + "\n    const u8* matDL = nullptr;\n", 1)
variants["before_alpha"] = base.replace("    float alpha;\n", "    const u8* matDL = nullptr;\n    float alpha;\n", 1)
variants["after_colors"] = base.replace("    ScnMdl* scnMdl = m_sceneModels[0];\n    if (scnMdl == nullptr) {\n        return;\n    }\n    resMdl", "    const u8* matDL = nullptr;\n    ScnMdl* scnMdl = m_sceneModels[0];\n    if (scnMdl == nullptr) {\n        return;\n    }\n    resMdl", 1)
variants["after_scn"] = base.replace("    ScnMdl* scnMdl = m_sceneModels[0];\n    if (scnMdl == nullptr) {\n        return;\n    }\n    resMdl", "    ScnMdl* scnMdl = m_sceneModels[0];\n    const u8* matDL = nullptr;\n    if (scnMdl == nullptr) {\n        return;\n    }\n    resMdl", 1)
variants["scn_first"] = base.replace("    ResMdl resMdl(nullptr);\n    ResMat mat(nullptr);\n    ResMatTevColor tevColor;", "    ScnMdl* scnMdl;\n    const u8* matDL = nullptr;\n    ResMdl resMdl(nullptr);\n    ResMat mat(nullptr);\n    ResMatTevColor tevColor;", 1).replace("    ScnMdl* scnMdl = m_sceneModels[0];\n    if (scnMdl == nullptr) {\n        return;\n    }\n    resMdl", "    scnMdl = m_sceneModels[0];\n    if (scnMdl == nullptr) {\n        return;\n    }\n    resMdl", 1)
