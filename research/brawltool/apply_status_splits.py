"""Prepare and safely apply status split proposals to temporary or selected configs."""
from __future__ import annotations

import os
import re
import tempfile
from pathlib import Path
from typing import Mapping, Sequence

from .reference_status_splits import SplitProposal


class ApplyStatusSplitsError(ValueError):
    """The proposed units cannot be applied without risking an overwrite."""


def _split_text(text: str, proposals: Sequence[SplitProposal], version: str, module: str) -> str:
    newline = "\r\n" if "\r\n" in text else "\n"
    normalized = text.replace("\r\n", "\n")
    units = [proposal.unit for proposal in proposals]
    for unit in units:
        if re.search(r"^" + re.escape(unit) + r":\s*$", normalized, re.M):
            raise ApplyStatusSplitsError(f"{version} {module}: proposed split already exists: {unit}")

    anchor = "mo_fighter/mo_fighter.cpp:"
    if anchor not in normalized:
        raise ApplyStatusSplitsError(f"{version} {module}: anchor {anchor} not found")
    blocks = []
    for proposal in proposals:
        blocks.append("\n".join([f"{proposal.unit}:", *proposal.lines]))
    insertion = "\n\n".join(blocks) + "\n\n"
    return normalized.replace(anchor, insertion + anchor, 1).replace("\n", newline)


def _configure_text(text: str, module: str, proposals: Sequence[SplitProposal]) -> str:
    newline = "\r\n" if "\r\n" in text else "\n"
    normalized = text.replace("\r\n", "\n")
    pattern = re.compile(
        r'(?P<before>^        "lib": "' + re.escape(module) + r'",\n'
        r'        "mw_version": config\.linker_version,\n'
        r'        "cflags": )(?P<flags>cflags_\w+)'
        r'(?P<middle>,\n        "host": False,\n        "objects": )'
        r'\[(?P<objects>.*?)\](?P<comma>,?)', re.M | re.S)
    matches = list(pattern.finditer(normalized))
    if len(matches) != 1:
        raise ApplyStatusSplitsError(f"configure.py: module {module} must have exactly one expected lib entry")
    match = matches[0]
    objects = match.group("objects")
    existing = re.findall(r'Object\(.*?,\s*"([^"]+)"\)', objects, re.S)
    for proposal in proposals:
        if proposal.unit in existing:
            raise ApplyStatusSplitsError(f"configure.py: proposed unit already exists: {proposal.unit}")

    new_entries = "\n".join(f'            Object(NonMatching, "{proposal.unit}"),' for proposal in proposals)
    old_entries = objects.strip()
    if old_entries:
        if not old_entries.endswith(","):
            old_entries += ","
        new_objects = "\n" + old_entries + "\n" + new_entries + "\n        "
    else:
        new_objects = "\n" + new_entries + "\n        "
    replacement = (match.group("before") + "cflags_fighter" + match.group("middle") + "[" +
                   new_objects + "]" + match.group("comma"))
    updated = normalized[:match.start()] + replacement + normalized[match.end():]
    return updated.replace("\n", newline)


def apply_status_splits(module: str, proposals: Sequence[SplitProposal], split_files: Mapping[str, Path],
                        configure_path: Path) -> tuple[str, ...]:
    """Preflight both split files and configure.py, then replace those files together."""
    if not re.fullmatch(r"[A-Za-z0-9_]+", module):
        raise ApplyStatusSplitsError(f"Invalid module name: {module}")
    if not proposals:
        raise ApplyStatusSplitsError("No status split proposals provided")
    if set(split_files) != {"RSBE01_01", "RSBE01_02"}:
        raise ApplyStatusSplitsError("Provide splits.txt paths for both RSBE01_01 and RSBE01_02")
    units = tuple(proposal.unit for proposal in proposals)
    if len(set(units)) != len(units):
        raise ApplyStatusSplitsError("Duplicate units in split proposals")

    replacements: dict[Path, bytes] = {}
    originals: dict[Path, bytes] = {}
    for version in ("RSBE01_01", "RSBE01_02"):
        path = Path(split_files[version])
        original = path.read_bytes()
        originals[path] = original
        updated = _split_text(original.decode("utf-8"), proposals, version, module)
        replacements[path] = updated.encode("utf-8")
    configure_path = Path(configure_path)
    configure_original = configure_path.read_bytes()
    originals[configure_path] = configure_original
    configure_updated = _configure_text(configure_original.decode("utf-8"), module, proposals)
    replacements[configure_path] = configure_updated.encode("utf-8")

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
    return units