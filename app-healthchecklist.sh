#!/bin/bash

echo "Running app health check......"

if command -v curl >/dev/null 2>&1;then
    echo "PASS: curl is installed"
else
    echo "FAILURE: curl is not installed"
fi


if ping -c 1 -w 2 google.com >/dev/null 2>&1; then
   echo "PASS: Network is available"
else
   echo "FAILURE: Network is not available"

fi

   echo "Health Check complete"
