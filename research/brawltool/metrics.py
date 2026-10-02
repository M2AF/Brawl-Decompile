"""Local wall-time metrics for selected BrawlTool operations."""
from __future__ import annotations

import csv
from datetime import datetime, timezone
from functools import wraps
from pathlib import Path
import statistics
import sys
import threading
from time import perf_counter
from typing import Callable, TypeVar

METRICS_FILE = Path(__file__).resolve().parent / "metrics" / "timings.csv"
FIELDS = ("timestamp_utc", "command", "elapsed_seconds", "status")
_WRITE_LOCK = threading.Lock()
F = TypeVar("F", bound=Callable)


def record_timing(command: str, elapsed_seconds: float, status: str) -> None:
    METRICS_FILE.parent.mkdir(parents=True, exist_ok=True)
    with _WRITE_LOCK:
        needs_header = not METRICS_FILE.exists() or METRICS_FILE.stat().st_size == 0
        with METRICS_FILE.open("a", encoding="utf-8", newline="") as output:
            writer = csv.DictWriter(output, fieldnames=FIELDS)
            if needs_header:
                writer.writeheader()
            writer.writerow({
                "timestamp_utc": datetime.now(timezone.utc).isoformat(),
                "command": command,
                "elapsed_seconds": f"{max(0.0, elapsed_seconds):.6f}",
                "status": status,
            })


def timed_operation(command: str) -> Callable[[F], F]:
    """Record an operation's elapsed wall time without masking its result/error."""
    def decorate(function: F) -> F:
        @wraps(function)
        def wrapped(*args, **kwargs):
            started = perf_counter()
            status = "ok"
            try:
                result = function(*args, **kwargs)
                if result is False:
                    status = "failed"
                return result
            except BaseException:
                status = "error"
                raise
            finally:
                try:
                    record_timing(command, perf_counter() - started, status)
                except OSError as exc:
                    print(f"WARNING: could not record BrawlTool metrics: {exc}", file=sys.stderr)
        return wrapped  # type: ignore[return-value]
    return decorate


def summarize(path: Path | None = None) -> dict[str, dict[str, float | int]]:
    """Summarize sample count, mean/median/max seconds, and non-ok outcomes by command."""
    path = Path(path) if path is not None else METRICS_FILE
    samples: dict[str, list[tuple[float, bool]]] = {}
    if not path.is_file():
        return {}
    with path.open("r", encoding="utf-8", newline="") as source:
        for row in csv.DictReader(source):
            try:
                command = row["command"]
                seconds = float(row["elapsed_seconds"])
                failed = row["status"] != "ok"
            except (KeyError, TypeError, ValueError):
                continue
            if command:
                samples.setdefault(command, []).append((seconds, failed))
    summary = {}
    for command, rows in sorted(samples.items()):
        durations = [seconds for seconds, _ in rows]
        summary[command] = {
            "count": len(rows),
            "mean_seconds": statistics.mean(durations),
            "median_seconds": statistics.median(durations),
            "max_seconds": max(durations),
            "failures": sum(failed for _, failed in rows),
        }
    return summary