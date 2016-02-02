#!/bin/bash

DUMPDIR=$HOME/svnbackup

mkdir -p $DUMPDIR

date=$(date +%Y%m%d)

output=$DUMPDIR/trading.${date}.dump

echo dumping svn/trading ...

ssh root@seashark svnadmin dump -q /volume1/svn/trading > $output
gzip -f $output


$HOME/bin/drive push -no-prompt=true ${output}.gz

