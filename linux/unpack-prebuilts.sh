#!/bin/bash
set -e
rm -rf swiftwasm-sdk compiler || true
mkdir swiftwasm-sdk
ln -s swiftwasm-sdk compiler
cd compiler
untar="../../prebuilt/wasi-sdk-"*"-linux.tar.gz
../../prebuilt/swiftwasm.tar.gz
../../prebuilt/icu4c-wasi.tar.xz"
for i in $untar
do
	echo $i
	tar xf $i
done
cd ..
mv "compiler/wasi-sdk-"* "compiler/wasi-sdk"
mv compiler/wasi-sdk/share/wasi-sysroot compiler/wasi-sdk/share/sysroot
bash ../remove-swift-extra-files.sh || true
bash ../remove-wasi-extra-files.sh || true
bash ../copy-shared-files.sh || true
