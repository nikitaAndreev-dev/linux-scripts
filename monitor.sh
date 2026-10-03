#!/bin/bash

LOG="$HOME/linux-practice/monitor.log"
TIME=$(date '+%Y-%m-%d %H:%M:%S')
PROCS=$(ps aux | wc -l)
DISK=$(df -h / | awk 'NR==2 {print $4}')

echo "$TIME процессов: $PROCS, свободно на диске: $DISK" >> "$LOG"
