#!/usr/bin/env bash

set -uo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$script_dir" || exit 1


passed=0
failed=0

print_result() {
local status="$1"
local message="$2"

if [ "$status" -eq 0 ]; then
echo "Pass: $message"
passed=$((passed + 1))
else
echo "Fail: $message"
failed=$((failed + 1 ))
fi

}

check_file() {
local file_path="$1"

if [ -f "$file_path" ]; then
print_result 0 "$file_path exists"
else
print_result 1 "$file_path is missing"
fi
}

check_directory() {
local directory_path="$1"

if [ -d "directory_path" ]; then
print_result 0 "$directory_path exists"
else
print_result 1 "$directory_path is missing"
fi
}

echo "=======Repository Health Check ===="
echo "Directory: $(pwd)"
echo


check_directory ".git"
check_directory ".github"
check_directory "github"

check_file "README.md"
check_file "app.log"
check_file "access.log"
check_file "app-config.sh"



echo
echo "===== Summary ====="
echo "Passed: $passed"
echo "Failed: $failed"

if [ "$failed" -eq 0 ]; then
echo "Repository health check passed"
exit 0
else
echo "Repository health check failed"
exit 1
fi
