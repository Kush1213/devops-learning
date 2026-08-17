#!/usr/bin/env bash

set -uo pipefail

log_file="${1:-app.log}"

if [ ! -f "$log_file" ]; then
echo "ERROR: file not found : $log_file" >&2
exit 1
fi

echo "Reading log file: $log_file"

line_count=$(wc -l < "$log_file")
echo "Total lines: $line_count"

if grep -q "ERROR" "$log_file"; then
echo "WARNING:ERROR found in file $log_file"
exit 2
else
echo "Pass: No error found in file $log_file"
fi

exit 0
