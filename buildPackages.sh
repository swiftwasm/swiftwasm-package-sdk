#!/bin/bash
set -e
rm -rf output || true
mkdir output
echo "Linux"
cd linux
./unpackPrebuilts.sh
echo "Compressing"
tar cJf ../output/swiftwasm-sdk-linux.tar.xz swiftwasm-sdk
echo "macOS"
cd ../macos
./unpackPrebuilts.sh
echo "Compressing"
tar cJf ../output/swiftwasm-sdk-macos.tar.xz swiftwasm-sdk
