"""Rename dtk symbols in a module's symbols.txt for both RSBE01_01 and RSBE01_02.

usage: rename_syms.py <module> old=new [old=new ...]
       rename_syms.py <module> --status <ClassName> <fn_dtor> <vtable_lbl> <rtti_lbl> <sinit_fn> <ctor_fn> <instance_lbl> <unit_basename>
                       plus method renames as old=method[:suffix] where suffix is the mangled arg list
                       (default FP16soModuleAccesser).

The --status form names the standard soStatusUniqProcess TU members.
Fails loudly if a symbol is missing, so a typo cannot silently skip a rename.
"""
import re
import sys
from pathlib import Path

BR = Path(__file__).resolve().parents[2] / "brawl"
MA = "FP16soModuleAccesser"


def mangle_class(name: str) -> str:
    return f"{len(name)}{name}"


def build_status(args: list[str]) -> dict[str, str]:
    cls, dtor, vt, rtti, sinit, ctor, inst, unit = args[:8]
    c = mangle_class(cls)
    ren = {
        dtor: f"__dt__{c}Fv",
        vt: f"__vt__{c}",
        rtti: f"__RTTI__{c}",
        sinit: f"__sinit_\\{unit}_cpp",
        ctor: f"__ct__{c}Fv",
        inst: f"g_{cls}",
    }
    suffixes = {"exitStatus": MA + "i", "onChangeLr": MA + "ff", "checkDamage": MA + "Pv",
                "checkAttack": MA + "Pvf", "leaveStop": MA + "ib", "checkTransitionPrecede": MA + "Pi"}
    for a in args[8:]:
        old, meth = a.split("=", 1)
        if "__" in meth:  # already a full mangled name
            ren[old] = meth
            continue
        meth, _, suf = meth.partition(":")
        ren[old] = f"{meth}__{c}{suf or suffixes.get(meth, MA)}"
    return ren


def main() -> None:
    module = sys.argv[1]
    if len(sys.argv) > 2 and sys.argv[2] == "--status":
        ren = build_status(sys.argv[3:])
    else:
        ren = dict(a.split("=", 1) for a in sys.argv[2:])
    for ver in ("RSBE01_01", "RSBE01_02"):
        p = BR / "config" / ver / "rels" / module / "symbols.txt"
        s = p.read_text(newline="")
        for old, new in ren.items():
            pat = re.compile(r"^" + re.escape(old) + r" = ", re.M)
            if not pat.search(s):
                sys.exit(f"MISSING {ver} {module} {old}")
            s = pat.sub(lambda m: new + " = ", s)
        p.write_text(s, newline="")
    for old, new in ren.items():
        print(f"{old} -> {new}")


if __name__ == "__main__":
    main()
