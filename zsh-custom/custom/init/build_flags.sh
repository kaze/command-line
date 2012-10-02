#! /usr/bin/bash

# --------------------------------------------------------------------------- #
# build flags
# --------------------------------------------------------------------------- #
export ARCHFLAGS="-arch x86_64"
export CC="gcc"
export CFLAGS="-I/usr/local/include"
export CXX="g++"
export CXXFLAGS="-I/usr/local/include"
export LDFLAGS="-L/usr/local/lib"
export LD_LIBRARY_PATH="/usr/local/lib:${LD_LIBRARY_PATH}"
