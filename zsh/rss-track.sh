#!/bin/bash

# Usage: cmd & rss-track.sh | tee cmd.log

PID=$1

while true; do
  # Show rss memory in kB and timestamp in milisecond.
  printf "%s %s\n" $(date +%s%3N) $(ps -o rss= -p $PID)
  sleep 0.05  # 50ms interval
done
