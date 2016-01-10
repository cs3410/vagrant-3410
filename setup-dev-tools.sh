#!/bin/bash

# Run everything under bash regardless
sudo rm -f /bin/sh
sudo ln -s /bin/bash /bin/sh

sudo apt-get update

# Required for mipsel-linux components
# Could potentially be removed by changing to libreadline6 in simulate32 and 64 (requires recompilation most likely)
sudo apt-get install -y libreadline5
sudo apt-get install -y libc6-i386

# Install valgrind
sudo apt-get install -y valgrind

# Install llvm (includes scan-build tools)
sudo apt-get install -y clang
