#!/usr/bin/env bash

set -u 

log_file="${1:-app.log}"

if [ ! -f "$log_file" ]; then
echo "ERROR: File not found:$log_file" >&2
exit 1
fi

echo "Reading log files: $log_file"

line_count=$(wc -l < "$log_file")
echo "Total lines: $line_count"

if grep -q "ERROR" "$log_file"; then
echo "warning: Errors found in $log_file"
exit 2
else
echo "Pass: No errors found : $log_file"
fi

exit 0
