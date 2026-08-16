#!/usr/bin/env bash

disk_usage=$(df -P . | awk 'NR==2 {print $5}' | tr -d '%')

echo  "Disk Usage is $disk_usage%"

if [ "$disk_usage" -ge 80 ]; then
echo "Warning : Disk Usage is HIGH"
else
echo "Disk Usage is normal"
fi
