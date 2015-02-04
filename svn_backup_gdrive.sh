#!/bin/bash

cd `dirname $0`

DUMPDIR=$HOME/gdrive/svnbackup

echo dumping svn/trading ...

ssh root@seashark svnadmin dump -q /volume1/svn/trading > $DUMPDIR/trading.dump
gzip -f $DUMPDIR/trading.dump


#echo dumping svn/pats0n ...

#ssh root@seashark svnadmin dump -q /volume1/svn/pats0n >  $DUMPDIR/pats0n.dump 
#gzip -f $DUMPDIR/pats0n.dump

cd $DUMPDIR

$HOME/bin/drive push -no-prompt=true ../svnbackup

