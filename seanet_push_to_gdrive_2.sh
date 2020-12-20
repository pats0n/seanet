#!/bin/bash

dirs=
dirs+=" projects/m3_ticks"
dirs+=" projects/m3_capture"
dirs+=" projects/huodata" 
dirs+=" projects/bfldata" 
dirs+=" projects/bfxdata" 
dirs+=" projects/bmxdata" 
dirs+=" projects/bnbdata" 
dirs+=" projects/lqddata" 
dirs+=" projects/okxdata" 
dirs+=" projects/btsedata" 

# dirs+=" projects/bfl_states" 
# dirs+=" projects/srv02_states" 
# dirs+=" projects/srv03_states" 

# dirs+=" projects/btc_zabbix_backup"
# dirs+=" projects/btc_jenkins_backup"
# dirs+=" projects/btc_influx_backup"
# dirs+=" projects/btc_grafana_backup"


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
