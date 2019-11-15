#!/bin/bash
set -e
mkdir -p prebuilt
cd prebuilt
wget https://github.com/swiftwasm/swiftwasm-sdk/releases/download/20191112.1.linux/swiftwasm.tar.gz
# Mac specific
wget https://github.com/swiftwasm/swiftwasm-sdk/releases/download/20191112.1.mac/swiftwasm-mac.tar.gz
