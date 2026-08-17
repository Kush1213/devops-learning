#!/usr/bin/env bash

echo "Script scripts in $(pwd):"
echo 

for script_files in ./*.sh; do
if [ -f "$script_files" ]; then
echo  "$script_files"

fi
done

