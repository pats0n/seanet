#!/bin/bash

rsync -vaz --progress --delete $HOME/vm/seasnail seanet:vm/seasnail_$(date +%Y%m%d)
