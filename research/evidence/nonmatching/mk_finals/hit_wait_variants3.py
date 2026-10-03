VARIANTS = [
    ("count_ref", [("int count = fn_27_10B21C(g_ftManager, entries);", "int countStorage = fn_27_10B21C(g_ftManager, entries);\n    int& count = countStorage;")]),
    ("own_ref", [("int ownEntry = moduleAccesser->getWorkManageModule().getInt(0x10000000);", "int ownStorage = moduleAccesser->getWorkManageModule().getInt(0x10000000);\n    int& ownEntry = ownStorage;")]),
    ("own_then_count_decl", [("int count = fn_27_10B21C(g_ftManager, entries);", "int ownEntry;\n    int count = fn_27_10B21C(g_ftManager, entries);"), ("int ownEntry = moduleAccesser->", "ownEntry = moduleAccesser->")]),
    ("j_first", [("    int i;", "    int j;\n    int i;"), ("    int j;\n    for (j", "    for (j")]),
    ("j_ref", [("    int j;", "    int jStorage;\n    int& j = jStorage;")]),
    ("array_first", [("    int i;", "    int entries[9];\n    int i;"), ("    // Matches ftEntryManager's nine-entry vector capacity.\n    int entries[9];", "")]),
    ("count_const", [("int count =", "const int count =")]),
    ("own_const", [("int ownEntry =", "const int ownEntry =")]),
]
