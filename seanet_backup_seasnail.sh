#!/bin/bash

rsync -va $HOME/vm/seasnail/ seanet:vm/seasnail$(date +%Y%m%d)/ --progress
