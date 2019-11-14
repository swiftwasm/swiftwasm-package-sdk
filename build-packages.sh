#!/bin/bash
set -e
rm -rf output || true
mkdir output
./build-linux-package.sh
./build-mac-package.sh