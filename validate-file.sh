#!/bin/bash

check-file() {
 [ -f "$1" ]
}

if check-file "$1"; then
echo "Validation passed: $1 exists"
else
echo "Validation failed: $1 does not exists"
exit 1
fi
