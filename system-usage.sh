#!/usr/bin/env bash

set -u

echo "===== System Report ====="
echo "System datetime: $(date)"
echo "Host: $(hostname)"
echo "User: $(whoami)"
echo "Current directory: $(pwd)"

echo
echo "===== Disk Usage ====="
df -h .

echo
echo "===== Memory Usage ====="
free -h

echo
echo "===== Five Recent Processes ====="
ps aux | head -n 6
