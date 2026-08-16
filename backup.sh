#!/bin/bash

source_dir="$HOME/devops/linux"
backup_dir="$HOME/devops/backups"

mkdir -p "$backup_dir"

for file in "$source_dir"/*.txt
do
if [ -f "$file" ]; then
cp "$file" "$backup_dir/"
echo "Backed up : $(basename "$file")"
fi
done

echo "Backup complete"

