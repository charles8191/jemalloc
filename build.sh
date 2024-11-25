#!/bin/bash
set -ex
curl -LsO "https://github.com/jemalloc/jemalloc/archive/refs/heads/dev.tar.gz"
tar xf dev.tar.gz
rm dev.tar.gz
mv jemalloc-dev jemalloc
cd jemalloc
./autogen.sh
make -j$(nproc)
cp --dereference -f lib/libjemalloc.so /out/libjemalloc.so
cd ../..
