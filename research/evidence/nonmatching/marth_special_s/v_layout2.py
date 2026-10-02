C = "ftMarthStatusUniqProcessSpecialS"
DECL = "    virtual void execStatus(soModuleAccesser* moduleAccesser);\n"
M = {
    "exit": "    virtual void exitStatus(soModuleAccesser* moduleAccesser, int) { }\n",
    "stop": "    virtual void execStop(soModuleAccesser* moduleAccesser) { }\n",
    "fix": "    virtual void execFixPos(soModuleAccesser* moduleAccesser) { }\n",
}


def add(order):
    return lambda s: s.replace(DECL, DECL + "".join(M[k] for k in order), 1)


VARIANTS = {
    "o_exit_stop_fix": add(["exit", "stop", "fix"]),
    "o_stop_fix_exit": add(["stop", "fix", "exit"]),
    "o_fix_stop_exit": add(["fix", "stop", "exit"]),
}

DEFS = ("\nvoid ftMarthStatusUniqProcessSpecialS::execStop(soModuleAccesser* moduleAccesser) { }\n"
        "\nvoid ftMarthStatusUniqProcessSpecialS::execFixPos(soModuleAccesser* moduleAccesser) { }\n"
        "\nvoid ftMarthStatusUniqProcessSpecialS::exitStatus(soModuleAccesser* moduleAccesser, int) { }\n")
OOL = ("    virtual void exitStatus(soModuleAccesser* moduleAccesser, int);\n"
       "    virtual void execStop(soModuleAccesser* moduleAccesser);\n"
       "    virtual void execFixPos(soModuleAccesser* moduleAccesser);\n")
VARIANTS = {"out_of_line": lambda s: s.replace(DECL, DECL + OOL, 1) + DEFS}
