#!/bin/bash

dirs=
dirs+=`find -L  projects/m3_ticks -mindepth 1 -maxdepth 1 -type d`
dirs+=`find -L  projects/m3_capture -mindepth 1 -maxdepth 1 -type d`
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

dirs+=" projects/btc_influx_backup"
dirs+=" projects/btc_jenkins_backup"

dirs+=" projects/backup_grafana_analytics01"
dirs+=" projects/backup_influx_analytics01"
dirs+=" projects/backup_jenkins_analytics01"
dirs+=" projects/backup_zabbix_btchub01"
dirs+=" projects/backup_zabbix_zabbix01"


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
