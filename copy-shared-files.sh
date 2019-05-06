#!/bin/bash
set -e
cp -r ../sdkroot/* compiler/
cp compiler/opt/swiftwasm-sdk/lib/swift/wasm/wasm32/glibc.modulemap compiler/extra_utils
