#!/usr/bin/env python3
"""Run the flat Odin sources, staging directory-based examples outside src."""

import argparse
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile

SRC = Path(__file__).resolve().parent
EXAMPLES = {
    "01_packages": {
        "01_packages_main.odin": "01_packages_main.odin",
        "01_calc_square.odin": "calc/01_calc_square.odin",
        "01_calc_internal.odin": "calc/01_calc_internal.odin",
    },
    "02_platform": {
        "02_platform_main.odin": "02_platform_main.odin",
        "02_platform_darwin.odin": "02_platform_darwin.odin",
        "02_platform_linux.odin": "02_platform_linux.odin",
        "02_platform_windows.odin": "02_platform_windows.odin",
    },
    **{name: {name + ".odin": name + ".odin"} for name in (
        "03_generics", "04_stack", "05_context", "06_arena",
        "07_temp", "08_tracking", "09_soa", "10_sets",
    )},
}


def run_example(odin, example, check_target=None):
    # tempfile uses the OS temporary location, never a subdirectory of src.
    with tempfile.TemporaryDirectory(prefix="odin-example-") as temp:
        work = Path(temp)
        if example in ("01_packages", "02_platform"):
            project = work / "project"
            project.mkdir()
            for source_name, relative_name in EXAMPLES[example].items():
                destination = project / relative_name
                destination.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(SRC / source_name, destination)
            target, file_flag = project, []
        else:
            target = SRC / next(iter(EXAMPLES[example]))
            file_flag = ["-file"]
        if check_target:
            command = [odin, "check", str(target), *file_flag,
                       "-debug", "-target:" + check_target]
        else:
            command = [odin, "run", str(target), *file_flag,
                       "-debug", "-out:" + str(work / "example")]
        return subprocess.run(command, cwd=work, check=False).returncode


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("example", choices=[*EXAMPLES, "all"])
    parser.add_argument("--odin", default=os.environ.get("ODIN", "odin"),
                        help="compiler path (default: ODIN environment or PATH)")
    parser.add_argument("--check-target", metavar="TARGET",
                        help="type-check for TARGET instead of running")
    args = parser.parse_args()
    odin = shutil.which(args.odin)
    if odin is None:
        parser.error("Odin compiler not found; use --odin /path/to/odin")
    odin = str(Path(odin).resolve())
    selected = list(EXAMPLES) if args.example == "all" else [args.example]
    for example in selected:
        if len(selected) > 1:
            print("[" + example + "]", flush=True)
        result = run_example(odin, example, args.check_target)
        if result:
            return result
    return 0


if __name__ == "__main__":
    sys.exit(main())
