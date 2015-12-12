#!/bin/bash

cd `dirname $0`

DUMPDIR=$HOME/svnbackup

mkdir -p $DUMPDIR

date=$(date +%Y%m%d)

output=$DUMPDIR/trading.${date}.dump

echo dumping svn/trading ...

ssh root@seashark svnadmin dump -q /volume1/svn/trading > $output
gzip -f $output


#echo dumping svn/pats0n ...

#ssh root@seashark svnadmin dump -q /volume1/svn/pats0n >  $DUMPDIR/pats0n.dump 
#gzip -f $DUMPDIR/pats0n.dump

cd $DUMPDIR

$HOME/bin/drive push -no-prompt=true ../svnbackup

