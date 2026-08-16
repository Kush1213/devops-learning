#!/bin/bash

check_file() {
if [ -f "$1" ]; then
 echo "File exists : $1"
return 0
else
echo "File does not exist: $1"
return 1
fi
}

check_file "$1"
