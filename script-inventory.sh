#!/usr/bin/env bash

set -u

script_count=0

echo "Shell script inventory"
echo "Directory: $(pwd)"
echo 

for script_file in ./*.sh; do
if [ -f "$script_file" ]; then
 permissions=$(stat -c '%A' "$script_file")
 size=$(stat -c '%s' "$script_file")

echo "File: $script_file"
echo "Permission: $permissions"
echo "Size: $size"
echo

script_count=$((script_count +1))
fi
done

echo "Total shell scripts: $script_count"
