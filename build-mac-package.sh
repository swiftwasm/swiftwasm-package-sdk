#!/bin/bash

echo "Unpacking macOS prebuilts"
cd macos
./unpack-prebuilts.sh
echo "Compressing macOS package"
tar cJf ../output/swiftwasm-sdk-macos.tar.xz swiftwasm-sdk
cd ..