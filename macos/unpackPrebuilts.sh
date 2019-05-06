#!/bin/bash
set -e
rm -r swiftwasm-sdk compiler tmpdir || true
mkdir swiftwasm-sdk tmpdir
ln -s swiftwasm-sdk compiler
cd compiler
untar="../../prebuilt/wasi-sdk-"*"-linux.tar.gz
../../prebuilt/swiftwasm-mac.tar.gz
../../prebuilt/icu4c-wasi.tar.xz"
for i in $untar
do
	echo $i
	tar xf $i
done
# Mac: unpack the Linux one and copy stdlibs
cd ..
cd tmpdir
tar xf ../../prebuilt/clang+llvm-8.0.0-x86_64-apple-darwin.tar.xz
tar xf ../../prebuilt/swiftwasm.tar.gz
cd ..
mv "compiler/wasi-sdk-"* "compiler/wasi-sdk"
bash ../remove-swift-extra-files.sh || true
rm -r compiler/wasi-sdk/opt/wasi-sdk/bin compiler/wasi-sdk/opt/wasi-sdk/lib
mkdir compiler/wasi-sdk/opt/wasi-sdk/bin
cp tmpdir/clang+llvm-8.0.0-x86_64-apple-darwin/bin/wasm-ld compiler/wasi-sdk/opt/wasi-sdk/bin
cp -a tmpdir/opt/swiftwasm-sdk/lib/swift/wasm compiler/opt/swiftwasm-sdk/lib/swift/wasm
cp -a tmpdir/opt/swiftwasm-sdk/lib/swift_static compiler/opt/swiftwasm-sdk/lib/swift_static
# ok, finally copy over the shared files
bash ../copy-shared-files.sh || true
