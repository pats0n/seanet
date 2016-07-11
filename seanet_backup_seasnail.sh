#!/bin/bash

rsync -va --delete $HOME/vm/seasnail/ seanet:vm/seasnail_$(date +%Y%m%d)/ --progress
