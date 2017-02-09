#!/bin/bash

rsync -vaz --progress --delete $HOME/vm/seasnail2 seanet:vm/seasnail2_$(date +%Y%m%d)
