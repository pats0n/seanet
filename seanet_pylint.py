#!/usr/bin/env python3

import os
import sys
import subprocess as sp

if __name__ == "__main__":

    f = sys.argv[1]

    if f == "--version":
        sp.run("pylint --version", shell=True)

    f = os.path.realpath(f)

    os.chdir("/home/asafonov/projects/fort")

    p = sp.run(f"pylint {f}", shell=True)

    sys.exit(p.returncode)
