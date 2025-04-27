#!/usr/bin/env bash

# This script checks if a web server is running on port 80 and if the index.html file exists in the specified directory.

declare -i PORT=80
declare -a INDEX="/var/www/html/index.html"

if { nc -z localhost "$PORT" && [ -f "$INDEX" ]; } > /dev/null 2>&1; then
  exit 0
else
  exit 1
fi