#!/bin/bash

set -Eeuo pipefail

trap 'echo "Error on line $LINENO";exit 1' ERR
file="$HOME/devops/linux/commands.txt"
if [ ! -f "$file" ]; then
echo "Missing file: $file"
exit 1
fi

echo "File exists: $file"
echo "Size: $(wc -c < "$file") bytes"
echo "Check completed successfully"
