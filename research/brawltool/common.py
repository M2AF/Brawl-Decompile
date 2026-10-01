"""Shared paths, process runner and logging for brawltool."""
from __future__ import annotations

import os
import subprocess
import sys
import threading
from pathlib import Path
from typing import Callable, Optional, Sequence

WS = Path(__file__).resolve().parents[2]          # "Brawl Decompile" workspace
RESEARCH = WS / "research"
MAIN_REPO = (WS / "brawl").resolve()
BRAWL = Path(os.environ.get("BRAWLTOOL_REPO", str(MAIN_REPO))).expanduser().resolve()
VENV_SCRIPTS = WS / ".venv" / "Scripts"
PY = VENV_SCRIPTS / "python.exe"
NINJA = VENV_SCRIPTS / "ninja.exe"
BUILD = BRAWL / "build" / "RSBE01_01"
OBJDUMP = BRAWL / "build" / "binutils" / "powerpc-eabi-objdump.exe"
DTK = BRAWL / "build" / "tools" / "dtk.exe"
TOOLS = RESEARCH / "claude_tools"
M2C = RESEARCH / "tools" / "m2c" / "m2c.py"
DRAFTS = RESEARCH / "evidence" / "nonmatching" / "tool_drafts" / BRAWL.name
HANDOFF = Path.home() / ".claude" / "skills" / "agent-handoff" / "scripts" / "handoff.py"
MAIN_DOL_SHA1 = "2a78a0b3f375bfc85c7e42e20bc8551d1492d5d8"
BRANCH = "rsbe01_01-support"

Log = Callable[[str], None]


class ToolError(Exception):
    """A gate or precondition failed; the message says what to fix."""


def select_repo(path: str | Path | None = None) -> Path:
    """Select once, before importing ops: its constants bind to this checkout."""
    global BRAWL, BUILD, OBJDUMP, DTK, DRAFTS
    root = Path(path or BRAWL).expanduser().resolve()
    if "brawltool.ops" in sys.modules and root != BRAWL:
        raise ToolError("Start a new BrawlTool process to change checkouts; operations are already bound.")
    try:
        proc = subprocess.run(["git", "-C", str(root), "rev-parse", "--show-toplevel"],
                              capture_output=True, text=True, check=True)
    except (OSError, subprocess.CalledProcessError) as exc:
        raise ToolError(f"Not a Git checkout: {root}") from exc
    if Path(proc.stdout.strip()).resolve() != root or not (root / "configure.py").is_file():
        raise ToolError(f"Select the Brawl checkout root, not a parent/subdirectory: {root}")
    if not (root / "config/RSBE01_01/config.yml").is_file():
        raise ToolError(f"Missing RSBE01_01 configuration in {root}")
    # A linked cache/config/source tree could send writes into another checkout.
    for folder in ("build", "build/RSBE01_01/src", "src", "config", "include"):
        if not (root / folder).resolve().is_relative_to(root):
            raise ToolError(f"Directory leaves selected checkout: {root / folder}")
    BRAWL = root
    BUILD = root / "build/RSBE01_01"
    OBJDUMP = root / "build/binutils/powerpc-eabi-objdump.exe"
    DTK = root / "build/tools/dtk.exe"
    DRAFTS = RESEARCH / "evidence/nonmatching/tool_drafts" / root.name
    return root


def is_parallel() -> bool:
    return BRAWL != MAIN_REPO


def require_main(operation: str) -> None:
    if is_parallel():
        raise ToolError(f"{operation} is disabled in isolated worktrees; no lease claim or integration is allowed.")


def validate_unit(module: str, unit: str) -> None:
    """Reject paths that could write/read outside this checkout."""
    import re
    if not re.fullmatch(r"[A-Za-z0-9_]+", module):
        raise ToolError(f"Invalid module: {module}")
    if not unit or any(not re.fullmatch(r"[A-Za-z0-9_-]+", p) for p in unit.split("/")):
        raise ToolError("Unit must be a relative slash-separated path without .cpp, dots or traversal.")


class Runner:
    """Runs subprocesses one at a time, streaming output to a log callback; can be cancelled."""

    def __init__(self, log: Log):
        self.log = log
        self._proc: Optional[subprocess.Popen] = None
        self._lock = threading.Lock()
        self.cancelled = False

    def env(self) -> dict:
        e = dict(os.environ)
        e["PATH"] = str(VENV_SCRIPTS) + os.pathsep + e.get("PATH", "")
        e["PYTHONIOENCODING"] = "utf-8"
        return e

    def run(self, cmd: Sequence[str], cwd: Optional[Path] = None, quiet: bool = False, check: bool = True) -> tuple[int, str]:
        if self.cancelled:
            raise ToolError("Cancelled.")
        if not quiet:
            self.log(f"$ {' '.join(str(c) for c in cmd)}")
        with self._lock:
            self._proc = subprocess.Popen([str(c) for c in cmd], cwd=str(cwd or BRAWL), env=self.env(),
                                          stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                                          text=True, encoding="utf-8", errors="replace")
        out = []
        assert self._proc.stdout
        for line in self._proc.stdout:
            line = line.rstrip("\r\n")
            out.append(line)
            if not quiet:
                self.log(line)
        code = self._proc.wait()
        self._proc.stdout.close()
        with self._lock:
            self._proc = None
        if self.cancelled:
            raise ToolError("Cancelled.")
        if check and code != 0:
            tail = "\n".join(out[-15:]) if quiet else ""
            raise ToolError(f"Command failed ({code}): {' '.join(str(c) for c in cmd)}\n{tail}".rstrip())
        return code, "\n".join(out)

    def cancel(self) -> None:
        self.cancelled = True
        with self._lock:
            if self._proc and self._proc.poll() is None:
                self._proc.kill()


def git(r: Runner, *args: str, check: bool = True) -> str:
    return r.run(["git", "-C", str(BRAWL), *args], quiet=True, check=check)[1].strip()


def journal(r: Runner, kind: str, *facts: str, verified: Optional[str] = None) -> None:
    """Append a handoff journal entry as agent 'tool' (skipped if the skill is not installed)."""
    if not HANDOFF.exists():
        return
    parallel = is_parallel()
    cmd = [str(PY), str(HANDOFF), "log", "codex" if parallel else "tool", "note" if parallel else kind]
    for f in facts:
        cmd += ["-m", f"codex-parallel: {BRAWL.name}: {f}" if parallel else f]
    if verified and not parallel:
        cmd += ["--verified", verified]
    r.run(cmd, cwd=RESEARCH, quiet=True, check=False)
