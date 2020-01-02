#!/bin/bash

dirs=
dirs+=" videos/skydiving"
dirs+=" videos/flying"
dirs+=" videos/dr"
dirs+=" videos/flystation"
dirs+=" photos/skydiving"
dirs+=" music/albums"
dirs+=" source"
dirs+=" flysight"
dirs+=" projects/bfldata" 
dirs+=" projects/bfl_states" 
dirs+=" projects/bfxdata" 
dirs+=" projects/bmxdata" 
dirs+=" projects/bnbdata" 
dirs+=" projects/lqddata" 
dirs+=" projects/huodata" 
dirs+=" projects/okxdata" 
dirs+=" projects/btsedata" 
dirs+=" projects/huo_states" 
dirs+=" projects/cmeq2_data" 
dirs+=" vm" 
dirs+=" projects/btc_zabbix_backup"
dirs+=" projects/btc_jenkins_backup"
dirs+=" projects/btc_influx_backup"
dirs+=" projects/btc_grafana_backup"
dirs+=" cmeq2_shared"

#dirs+=" projects/erfs" 
#dirs+=" photos/publish"
#dirs+=" photos/public" 
#dirs+=" projects/tfndata/ctpticks" 
#dirs+=" projects/tfndata/shfestatic" 
#dirs+=" projects/tfndata/ticks" 
#dirs+=" projects/tfndata/cfgs" 
#dirs+=" projects/tp_ticks" 
#dirs+=" projects/fortdata/ticks_v1" 
#dirs+=" projects/fortdata/prods_v1" 
#dirs+=" qcl_vault"

for d in $dirs 
do

    if [ -d $HOME/$d ] 
    then
        echo pushing $d 
        $HOME/bin/drive push --verbose --no-prompt=true --ignore-name-clashes=true $HOME/$d
    else
        echo skipping non-existing $d
    fi

done
