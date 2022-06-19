#!/usr/bin/env python3

import os
import sys
import logging
import subprocess as sp

if __name__ == "__main__":

    args = []

    args.append("pylint")

    for a in sys.argv[1:-1]:

        args.append(a)

    if len(sys.argv) > 2:

        f = sys.argv[-1]

        f = os.path.realpath(f)

        args.append(f)

    else:

        args.append(sys.argv[-1])

    os.chdir("/home/asafonov/projects/fort")

    logging.error(args)
    p = sp.Popen(args)

    p.wait()

    sys.exit(p.returncode)
