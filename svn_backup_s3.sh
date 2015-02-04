#!/bin/bash

cd `dirname $0`

DUMPDIR=/tmp

echo dumping svn/trading ...

ssh root@seashark svnadmin dump -q /volume1/svn/trading > $DUMPDIR/trading.dump
gzip -f $DUMPDIR/trading.dump

s3cmd put $DUMPDIR/trading.dump.gz  s3://svn.pats0n.net

rm -f $DUMPDIR/*.dump.gz
