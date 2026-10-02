"""Safe, importable status-symbol renames for both supported Brawl configs."""
from __future__ import annotations

import os
import re
import tempfile
from pathlib import Path
from typing import Mapping, Sequence

DEFAULT_METHOD_SUFFIX = "FP16soModuleAccesser"
METHOD_SUFFIXES = {
    "exitStatus": "i",
    "onChangeLr": "ff",
    "checkDamage": "Pv",
    "checkAttack": "Pvf",
    "leaveStop": "ib",
    "checkTransitionPrecede": "Pi",
}


class RenameSymbolsError(ValueError):
    """A requested symbol rename cannot be applied safely."""


def mangle_class(name: str) -> str:
    return f"{len(name)}{name}"


def build_status_renames(args: Sequence[str]) -> dict[str, str]:
    if len(args) < 8:
        raise RenameSymbolsError("--status requires class, destructor, vtable, RTTI, sinit, ctor, instance, and unit names")
    class_name, dtor, vtable, rtti, sinit, ctor, instance, unit = args[:8]
    class_mangled = mangle_class(class_name)
    renames = {
        dtor: f"__dt__{class_mangled}Fv",
        vtable: f"__vt__{class_mangled}",
        rtti: f"__RTTI__{class_mangled}",
        sinit: f"__sinit_\\{unit}_cpp",
        ctor: f"__ct__{class_mangled}Fv",
        instance: f"g_{class_name}",
    }
    for specification in args[8:]:
        old, separator, method_spec = specification.partition("=")
        if not separator or not old or not method_spec:
            raise RenameSymbolsError(f"Invalid method rename {specification!r}; expected old=method[:suffix]")
        if "__" in method_spec:
            renames[old] = method_spec
            continue
        method, _, suffix = method_spec.partition(":")
        renames[old] = f"{method}__{class_mangled}{suffix or METHOD_SUFFIXES.get(method, DEFAULT_METHOD_SUFFIX)}"
    return renames


def transform_symbols(text: str, renames: Mapping[str, str], version: str, module: str) -> str:
    missing = [old for old in renames if not re.search(r"^" + re.escape(old) + r" = ", text, re.M)]
    if missing:
        raise RenameSymbolsError(f"MISSING {version} {module} {', '.join(missing)}")
    for old, new in renames.items():
        pattern = re.compile(r"^" + re.escape(old) + r" = ", re.M)
        text = pattern.sub(lambda _: new + " = ", text)
    return text


def rename_status_configs(module: str, args: Sequence[str], configs: Mapping[str, Path]) -> dict[str, str]:
    """Preflight every symbol in both files before atomically replacing either file."""
    if not re.fullmatch(r"[A-Za-z0-9_]+", module):
        raise RenameSymbolsError(f"Invalid module name: {module}")
    if set(configs) != {"RSBE01_01", "RSBE01_02"}:
        raise RenameSymbolsError("Provide both RSBE01_01 and RSBE01_02 symbol files")
    renames = build_status_renames(args)
    originals = {}
    replacements = {}
    for version in ("RSBE01_01", "RSBE01_02"):
        path = Path(configs[version])
        original = path.read_bytes()
        text = original.decode("utf-8")
        updated = transform_symbols(text, renames, version, module)
        originals[path] = original
        replacements[path] = updated.encode("utf-8")

    staged: dict[Path, Path] = {}
    replaced: list[Path] = []
    try:
        for path, contents in replacements.items():
            fd, name = tempfile.mkstemp(prefix=f".{path.name}.", suffix=".tmp", dir=path.parent)
            temp_path = Path(name)
            staged[path] = temp_path
            with os.fdopen(fd, "wb") as output:
                output.write(contents)
        for path, temp_path in staged.items():
            os.replace(temp_path, path)
            replaced.append(path)
    except OSError:
        for path in replaced:
            path.write_bytes(originals[path])
        raise
    finally:
        for temp_path in staged.values():
            temp_path.unlink(missing_ok=True)
    return renames