"""Import the canonical status-split helper and structure its printed proposals."""
from __future__ import annotations

from contextlib import redirect_stdout
from dataclasses import dataclass
import importlib.util
from io import StringIO
from pathlib import Path
import re
import sys
import threading
from types import ModuleType

REFERENCE_PARSER = Path(__file__).resolve().parents[1] / "claude_tools" / "mk_status_splits.py"
_REFERENCE_LOCK = threading.RLock()


@dataclass(frozen=True)
class SplitProposal:
    unit: str
    lines: tuple[str, ...]
    warnings: tuple[str, ...]
    detail: str

    def render(self) -> str:
        lines = [f"{self.unit}:", *self.lines]
        lines.extend(f"\t# WARN {warning}" for warning in self.warnings)
        if self.detail:
            lines.append(f"\t# {self.detail}")
        return "\n".join(lines)


@dataclass(frozen=True)
class StatusSplitResult:
    proposals: tuple[SplitProposal, ...]
    warnings: tuple[str, ...] = ()

    def render(self) -> str:
        output = [f"WARN {warning}" for warning in self.warnings]
        output.extend(proposal.render() for proposal in self.proposals)
        return "\n\n".join(output)


def _load_reference(path: Path) -> ModuleType:
    spec = importlib.util.spec_from_file_location("_brawltool_status_splits_reference", path)
    if spec is None or spec.loader is None:
        raise ImportError(f"Cannot import canonical status-split helper: {path}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    try:
        spec.loader.exec_module(module)
    except BaseException:
        sys.modules.pop(spec.name, None)
        raise
    return module


def _parse_reference_output(output: str) -> StatusSplitResult:
    proposals = []
    warnings = []
    current_unit = None
    lines = []
    local_warnings = []
    detail = ""

    def finish() -> None:
        if current_unit:
            proposals.append(SplitProposal(current_unit, tuple(lines), tuple(local_warnings), detail))

    for line in output.splitlines():
        if line.startswith("WARN "):
            warnings.append(line[5:])
        elif line.startswith("mo_fighter/") and line.endswith(".cpp:"):
            finish()
            current_unit = line[:-1]
            lines = []
            local_warnings = []
            detail = ""
        elif current_unit and line.startswith("\t# WARN "):
            local_warnings.append(line[len("\t# WARN "):])
        elif current_unit and line.startswith("\t# "):
            detail = line[len("\t# "):]
        elif current_unit and line.startswith("\t") and line.strip():
            lines.append(line)
    finish()
    if not proposals:
        raise ValueError("Canonical status-split helper produced no split blocks")
    return StatusSplitResult(tuple(proposals), tuple(warnings))


def propose_status_splits(module: str, asm_root: Path, prefix: str = "ft",
                          reference_path: Path = REFERENCE_PARSER) -> StatusSplitResult:
    """Run the canonical helper against a selected generated-assembly tree."""
    if not re.fullmatch(r"[A-Za-z0-9_]+", module):
        raise ValueError(f"Invalid module name: {module}")
    if not re.fullmatch(r"[A-Za-z0-9_]+", prefix):
        raise ValueError(f"Invalid status prefix: {prefix}")
    asm_root = Path(asm_root).resolve()
    if not (asm_root / module / "asm").is_dir():
        raise FileNotFoundError(f"No generated assembly directory: {asm_root / module / 'asm'}")
    reference_path = Path(reference_path).resolve()
    if not reference_path.is_file():
        raise FileNotFoundError(f"Canonical status-split helper not found: {reference_path}")

    with _REFERENCE_LOCK:
        reference = _load_reference(reference_path)
        reference.ASM_ROOT = asm_root
        previous_argv = sys.argv
        try:
            sys.argv = [str(reference_path), module, "--prefix", prefix]
            output = StringIO()
            try:
                with redirect_stdout(output):
                    reference.main()
            except SystemExit as exc:
                message = str(exc) if exc.code else "Canonical status-split helper exited without proposals"
                raise ValueError(message) from exc
        finally:
            sys.argv = previous_argv
    return _parse_reference_output(output.getvalue())


def write_review_copy(source: Path, destination: Path, proposal_text: str, checkout: Path) -> Path:
    """Append proposals to a new copy outside the checkout; never overwrite either file."""
    source = Path(source).resolve()
    destination = Path(destination).resolve()
    checkout = Path(checkout).resolve()
    if destination == source or destination.is_relative_to(checkout):
        raise ValueError("Review copy destination must be outside the Brawl checkout and differ from splits.txt")
    if destination.exists():
        raise FileExistsError(f"Review copy already exists: {destination}")
    with source.open("r", encoding="utf-8", newline="") as input_file:
        original = input_file.read()
    content = original.rstrip("\r\n") + "\n\n" + proposal_text + "\n"
    destination.parent.mkdir(parents=True, exist_ok=True)
    with destination.open("x", encoding="utf-8", newline="") as output_file:
        output_file.write(content)
    return destination
