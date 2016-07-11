#!/bin/bash

rsync -va --delete $HOME/vm/seasnail/ seanet:vm/seasnail$(date +%Y%m%d)/ --progress
