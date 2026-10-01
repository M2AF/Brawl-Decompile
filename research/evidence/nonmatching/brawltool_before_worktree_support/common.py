"""Shared paths, process runner and logging for brawltool."""
from __future__ import annotations

import os
import subprocess
import threading
from pathlib import Path
from typing import Callable, Optional, Sequence

WS = Path(__file__).resolve().parents[2]          # "Brawl Decompile" workspace
RESEARCH = WS / "research"
BRAWL = WS / "brawl"
VENV_SCRIPTS = WS / ".venv" / "Scripts"
PY = VENV_SCRIPTS / "python.exe"
NINJA = VENV_SCRIPTS / "ninja.exe"
BUILD = BRAWL / "build" / "RSBE01_01"
OBJDUMP = BRAWL / "build" / "binutils" / "powerpc-eabi-objdump.exe"
DTK = BRAWL / "build" / "tools" / "dtk.exe"
TOOLS = RESEARCH / "claude_tools"
M2C = RESEARCH / "tools" / "m2c" / "m2c.py"
DRAFTS = RESEARCH / "drafts"
HANDOFF = Path.home() / ".claude" / "skills" / "agent-handoff" / "scripts" / "handoff.py"
MAIN_DOL_SHA1 = "2a78a0b3f375bfc85c7e42e20bc8551d1492d5d8"
BRANCH = "rsbe01_01-support"

Log = Callable[[str], None]


class ToolError(Exception):
    """A gate or precondition failed; the message says what to fix."""


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

    def run(self, cmd: Sequence[str], cwd: Path = BRAWL, quiet: bool = False, check: bool = True) -> tuple[int, str]:
        if self.cancelled:
            raise ToolError("Cancelled.")
        if not quiet:
            self.log(f"$ {' '.join(str(c) for c in cmd)}")
        with self._lock:
            self._proc = subprocess.Popen([str(c) for c in cmd], cwd=str(cwd), env=self.env(),
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
    cmd = [str(PY), str(HANDOFF), "log", "tool", kind]
    for f in facts:
        cmd += ["-m", f]
    if verified:
        cmd += ["--verified", verified]
    r.run(cmd, cwd=RESEARCH, quiet=True, check=False)
