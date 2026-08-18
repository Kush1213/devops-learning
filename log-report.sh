#!/usr/bin/env bash

set -u 

if [ "$#" -ne 2 ]; then

echo "Usage: $0 <log-file> <level>"
echo "Levels: ERROR,WARN,INFO,ALL"
exit 1
fi

log_file="$1"
level="$2"

if [ ! -f "$log_file"  ]; then
echo "File not found: $log_file"
exit 1
fi

case "$level" in
ERROR)
grep "ERROR" "$log_file"
;;
WARN)
grep "WARN" "$log_file"
;;
INFO)
grep "INFO" "$log_file"
;;
ALL)
cat "$log_file"
;;
*)
 echo "Unsupported level: $level"
        echo "Use ERROR, WARN, INFO, or ALL"
        exit 1
;;
esac
