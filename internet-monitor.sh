#!/bin/bash
LOG_FILE="$HOME/internet_test_$(hostname).csv"
DT=$(date '+%Y-%m-%dT%H:%M:%S')
if test -f "$LOG_FILE"; then
    python3 $HOME/internet-monitor/speedtest-cli --csv >> $LOG_FILE
else
    #Inlcude header on first row:
    python3 $HOME/internet-monitor/speedtest-cli --csv-header > $LOG_FILE
    python3 $HOME/internet-monitor/speedtest-cli --csv >> $LOG_FILE
fi
