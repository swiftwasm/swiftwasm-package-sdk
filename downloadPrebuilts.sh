#!/bin/bash
set -e
rm -r prebuilt || true
mkdir prebuilt
cd prebuilt
wget https://github.com/swiftwasm/swiftwasm-sdk/releases/download/20191112.1.linux/swiftwasm.tar.gz
wget https://github.com/swiftwasm/wasi-sdk/releases/download/20190421.6/wasi-sdk-3.19gefb17cb478f9.m-linux.tar.gz
wget https://github.com/swiftwasm/icu4c-wasi/releases/download/20190421.3/icu4c-wasi.tar.xz
# Mac specific
wget https://github.com/swiftwasm/swiftwasm-sdk/releases/download/20191112.1.mac/swiftwasm-mac.tar.gz
wget http://releases.llvm.org/8.0.0/clang+llvm-8.0.0-x86_64-apple-darwin.tar.xz
