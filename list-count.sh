#!/usr/bin/env bash

echo "Shell scripts in $(pwd):"
echo 

for shell_scripts in ./*.sh; do 
if [ -f "$shell_scripts" ]; then
 script_count=$((script_count +1 ))
fi
done

echo "Number of shell scripts: $script_count"
