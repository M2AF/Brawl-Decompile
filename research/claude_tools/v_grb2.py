# More placement variants for grBattleField::update (vtry.py).
START = "void grBattleField::update(float deltaFrame) {"
END = None
src = open(r"C:\Users\balla\Documents\Brawl Decompile\brawl\src\mo_stage\st_battle\gr_battle.cpp").read()
base = src[src.index(START):]
variants = {}
# Function-scope declarations shared by both blocks
v = base.replace(START + "\n", START + "\n    ScnMdl* scnMdl;\n    ResMdl resMdl(nullptr);\n", 1)
v = v.replace("        ResMdl resMdl(nullptr);\n        ScnMdl* scnMdl = m_sceneModels[0];", "        scnMdl = m_sceneModels[0];", 1)
v = v.replace("    ScnMdl* scnMdl;\n    const u8* matDL = nullptr;\n    ResMdl resMdl(nullptr);\n", "    const u8* matDL = nullptr;\n    resMdl = ResMdl(nullptr);\n", 1)
variants["shared_scn_mdl"] = v
# Second part in its own block scope
v2 = base.replace("    ScnMdl* scnMdl;\n    const u8* matDL = nullptr;", "    {\n    ScnMdl* scnMdl;\n    const u8* matDL = nullptr;", 1)
v2 = v2.rstrip()[:-1] + "    }\n}\n"
variants["block_scope"] = v2
# dl declared after the zero-initialised handles
v3 = base.replace("    ScnMdl* scnMdl;\n    const u8* matDL = nullptr;\n    ResMdl resMdl(nullptr);\n    ResMat mat(nullptr);\n    ResMatTevColor tevColor;\n    ResMatTevColor origTevColor;\n",
                  "    ScnMdl* scnMdl;\n    ResMdl resMdl(nullptr);\n    ResMat mat(nullptr);\n    ResMatTevColor tevColor;\n    ResMatTevColor origTevColor;\n    const u8* matDL = nullptr;\n", 1)
variants["dl_after_handles"] = v3
# dl declared before scnMdl
v4 = base.replace("    ScnMdl* scnMdl;\n    const u8* matDL = nullptr;", "    const u8* matDL = nullptr;\n    ScnMdl* scnMdl;", 1)
variants["dl_before_scn"] = v4
