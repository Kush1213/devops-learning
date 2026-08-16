#!/bin/bash

echo "Running health check"

if command -v curl  >/dev/null 2>&1; then
   echo "Curl is installed"
else
   echo "Curl is not installed"
fi

if ping -c 1 -w 2 google.com >/dev/null 2>&1; then
   echo "Network is available"
else
   echo "Network is not available"
fi


echo "Health Check complete"
