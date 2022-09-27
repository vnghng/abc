#!/bin/bash
path="/home/vagrant/bashshell/"
timestamp=$(date +%Y%m%d_%H%M%S)    
filename=log_$timestamp.txt    
log=$path$filename
days=2
START_TIME=$(date +%s)
find $path -maxdepth 1 -type f -mtime +$days  -print -delete >> $log
echo "Backup:: Script Start -- $(date +%Y%m%d_%H%M)" >> $log
END_TIME=$(date +%s)
ELAPSED_TIME=$(( $END_TIME - $START_TIME ))
echo "Script End -- $(date +%Y%m%d_%H%M)" >> $log
echo "Elapsed Time ::  $(date -d 00:00:$ELAPSED_TIME +%Hh:%Mm:%Ss) "  >> $log
