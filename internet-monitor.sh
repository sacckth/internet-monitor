#!/bin/bash
LOG_FILE="./internet_test_$(hostname).log"
DT=$(date '+%Y-%m-%dT%H:%M:%S')
SPEED_TEST_RES=$(python3 ./speedtest-cli --simple 2>/dev/null)
#set -o xtrace
DL=$(echo $SPEED_TEST_RES | awk '{print $5}')
UL=$(echo $SPEED_TEST_RES | awk '{print $8}')
PING=$(echo $SPEED_TEST_RES | awk '{print $2}')
#set -x
[[ -z "$DL" ]] && { DL=0; UL=0; PING=0; }
echo "$DT-Resultados #  Ping: ${PING}ms Download:${DL}Mbps Upload:${UL}Mbps" | tee -a $LOG_FILE
