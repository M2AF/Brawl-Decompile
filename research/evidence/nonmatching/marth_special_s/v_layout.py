from pathlib import Path

C = "ftMarthStatusUniqProcessSpecialS"
G_MC = ("void unusedGlobal(soModuleAccesser* ma) { "
        "dynamic_cast<ftKineticEnergyMotion&>(*ma->getKineticModule().getEnergy(0)); "
        "dynamic_cast<ftKineticEnergyController&>(*ma->getKineticModule().getEnergy(2)); }\n")

HDR = Path(__file__).resolve().parents[4] / "brawl" / "include" / "ft" / "ft_kinetic_energy.h"


def cls(name: str) -> str:
    h = HDR.read_text()
    start = h.index(f"class {name} ")
    return h[start:h.index("};", start) + 3]


PRE = ("#include <mt/mt_vector.h>\n#include <so/kinetic/so_kinetic_energy.h>\n"
       + cls("soKineticEnergyNormal") + cls("ftKineticEnergyStop")
       + cls("ftKineticEnergyMotion") + cls("ftKineticEnergyController")
       + "void ftKineticEnergyClearUnable(int id, soModuleAccesser* moduleAccesser);\n")


def reorder(s: str, global_fn: bool) -> str:
    s = s.replace("#include <mt/mt_vector.h>\n#include <ft/ft_kinetic_energy.h>\n", PRE)
    inst = f"{C} g_{C};\n"
    s = s.replace(inst, inst + cls("ftKineticEnergyGravity"))
    if global_fn:
        s = s.replace(inst, inst + G_MC, 1)
    return s


VARIANTS = {
    "decl_order": lambda s: reorder(s, False),
    "decl_order_g": lambda s: reorder(s, True),
}
