#!/usr/bin/env bash

set -u

echo "===== Project Health Check ====="
echo "Project directory: $(pwd)"
echo "User: $(whoami)"
echo

if [ -d ".git" ]; then
    echo "PASS: Git repository exists"
else
    echo "FAIL: Git repository is missing"
fi

if [ -f "README.md" ]; then
    echo "PASS: README.md exists"
else
    echo "FAIL: README.md is missing"
fi

if [ -f "app.log" ]; then
    echo "PASS: app.log exists"
else
    echo "FAIL: app.log is missing"
fi

if [ -d ".github" ]; then
    echo "PASS: .github directory exists"
else
    echo "FAIL: .github directory is missing"
fi

echo
echo "===== Log Check ====="

if [ -f "app.log" ]; then
    if grep -q "ERROR" app.log; then
        echo "WARNING: ERROR entry found in app.log"
    else
        echo "PASS: No ERROR entry found in app.log"
    fi
else
    echo "SKIP: app.log is not available"
fi
