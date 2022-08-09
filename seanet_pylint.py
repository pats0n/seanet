#!/usr/bin/env python3

import os
import sys
import logging
import subprocess as sp

# seanet_pylint.py -f text --msg-template="{path}:{line}:{column}:{C}: [{symbol}] {msg}" -r n mdc_feed_capture.py

if __name__ == "__main__":

    args = []

    args.append("pylint")

    for a in sys.argv[1:-1]:

        args.append(a)

    if len(sys.argv) > 2:

        f = sys.argv[-1]

        f = os.path.realpath(f)

        args.append(f)
        dir_ = (
            sp.check_output("git rev-parse --show-toplevel", shell=True)
            .decode("utf-8")
            .strip()
        )
        os.chdir(dir_)

    else:

        args.append(sys.argv[-1])

    # os.chdir(os.path.expanduser("~/projects/fort"))

    logging.error(args)
    p = sp.Popen(args)

    p.wait()

    sys.exit(p.returncode)
