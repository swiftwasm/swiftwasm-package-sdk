#!/bin/bash
set -e
rm -r prebuilt || true
mkdir prebuilt
cd prebuilt
wget https://github.com/swiftwasm/swiftwasm-sdk/releases/download/20191112.1.linux/swiftwasm.tar.gz
wget https://github.com/swiftwasm/wasi-sdk/releases/download/20191022.1/wasi-sdk-4.39g3025a5f47c04-linux.tar.gz
wget https://github.com/swiftwasm/icu4c-wasi/releases/download/20190421.3/icu4c-wasi.tar.xz
# Mac specific
wget https://github.com/swiftwasm/swiftwasm-sdk/releases/download/20191112.1.mac/swiftwasm-mac.tar.gz
wget http://releases.llvm.org/9.0.0/clang+llvm-9.0.0-x86_64-darwin-apple.tar.xz
