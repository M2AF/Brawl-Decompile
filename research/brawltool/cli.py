"""Command line: python -m brawltool <command> ... (run from the research/ directory, or use brawltool.bat)."""
from __future__ import annotations

import argparse
from pathlib import Path
import sys

from .common import Runner, ToolError, select_repo, git


def _ranges(items: list[str]) -> dict[str, str]:
    out = {}
    for it in items or []:
        sec, rng = it.split("=", 1)
        out["." + sec.lstrip(".")] = rng
    return out


def main(argv: list[str] | None = None) -> int:
    p = argparse.ArgumentParser(prog="brawltool", description="Local helpers for the Brawl RSBE01_01 matching decomp.")
    p.add_argument("--repo", help="Explicit Brawl checkout/worktree root (or BRAWLTOOL_REPO). Put before the command.")
    sub = p.add_subparsers(dest="cmd", required=True)
    s = sub.add_parser("build", help="configure + ninja, must print 127/127"); s.add_argument("--clean", action="store_true")
    sub.add_parser("check", help="independent check against the originals + verifier tests")
    s = sub.add_parser("status", help="regenerate the status page"); s.add_argument("--no-open", action="store_true")
    s = sub.add_parser("rank", help="smallest remaining extracted chunks"); s.add_argument("--exclude", nargs="*", default=[]); s.add_argument("--top", type=int, default=25); s.add_argument("--min", type=int, default=256, help="ignore chunks smaller than this (bytes)")
    s = sub.add_parser("split", help="start a TU: splits.txt entry + NonMatching object")
    s.add_argument("module"); s.add_argument("unit", help="e.g. mo_stage/st_ice/st_ice (no .cpp)")
    s.add_argument("--range", action="append", metavar="SEC=START-END", help="e.g. text=0x70-0x12D0 (repeat per section)")
    s.add_argument("--force-active", help="e.g. create__5stIceFv")
    s = sub.add_parser("draft", help="m2c draft of a unit's assembly"); s.add_argument("module"); s.add_argument("unit"); s.add_argument("-f", "--function", nargs="*", default=[])
    s = sub.add_parser("diff", help="compare candidate vs target per function"); s.add_argument("module"); s.add_argument("unit")
    s.add_argument("-s", "--show", nargs="*", default=[], help="function names to print diffs for"); s.add_argument("-v", "--verbose", action="store_true")
    s = sub.add_parser("errors", help="compile one unit showing up to 30 errors at once"); s.add_argument("unit"); s.add_argument("--max", type=int, default=30)
    s = sub.add_parser("variants", help="try source variants from a spec file and rank them"); s.add_argument("module"); s.add_argument("unit"); s.add_argument("spec"); s.add_argument("-f", "--function", default="")
    s = sub.add_parser("probe", help="full-REL byte check for one source unit"); s.add_argument("module"); s.add_argument("unit")
    s = sub.add_parser("review", help="compile, diff and full-REL probe; save private logs and input hashes, never promote")
    s.add_argument("module"); s.add_argument("unit")
    s = sub.add_parser("promote", help="all gates, then MatchingFor + allowlist"); s.add_argument("unit"); s.add_argument("-m", "--commit-message")
    s = sub.add_parser("integrate", help="cherry-pick a Codex branch + clean rebuild + probes"); s.add_argument("branch"); s.add_argument("--cleanup", action="store_true")
    s = sub.add_parser("cleanup", help="remove an integrated Codex worktree after checks"); s.add_argument("branch")
    s = sub.add_parser("autopilot", help="preflight, integrate Codex work, re-check/promote WIP, status, summary")
    s.add_argument("--dry-run", action="store_true"); s.add_argument("--no-integrate", action="store_true"); s.add_argument("--no-promote", action="store_true")
    a = p.parse_args(argv)
    r = Runner(lambda line: print(line, flush=True))
    try:
        root = select_repo(a.repo)
        # Ops imports path constants, so selection must precede this import.
        from . import ops
        r.log(f"Checkout: {root} ({git(r, 'branch', '--show-current') or 'detached HEAD'})")
        if a.cmd == "build": ops.build(r, clean=a.clean)
        elif a.cmd == "check": ops.independent_check(r)
        elif a.cmd == "status": ops.status_page(r, open_it=not a.no_open)
        elif a.cmd == "rank": ops.rank(r, tuple(a.exclude), a.top, a.min)
        elif a.cmd == "split": ops.split(r, a.module, a.unit, _ranges(a.range), a.force_active)
        elif a.cmd == "draft": ops.draft(r, a.module, a.unit, tuple(a.function))
        elif a.cmd == "diff": return 0 if ops.diff(r, a.module, a.unit, tuple(a.show), a.verbose) else 1
        elif a.cmd == "errors": return 0 if ops.errors(r, a.unit, a.max) else 1
        elif a.cmd == "variants": ops.variants(r, a.module, a.unit, Path(a.spec), a.function)
        elif a.cmd == "probe": return 0 if ops.probe(r, a.module, a.unit) else 1
        elif a.cmd == "review": return 0 if ops.review(r, a.module, a.unit) else 1
        elif a.cmd == "promote": ops.promote(r, a.unit, a.commit_message)
        elif a.cmd == "integrate": ops.integrate(r, a.branch, a.cleanup)
        elif a.cmd == "cleanup": ops.cleanup(r, a.branch)
        elif a.cmd == "autopilot": ops.autopilot(r, a.dry_run, not a.no_integrate, not a.no_promote)
    except ToolError as e:
        print(f"ERROR: {e}", file=sys.stderr)
        return 2
    return 0
