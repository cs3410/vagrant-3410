#!/bin/bash

# Run everything under bash regardless
echo "Using bash as the default shell"
sudo rm -f /bin/sh
sudo ln -s /bin/bash /bin/sh

echo "Updating package repositories"
sudo apt-get update

echo "Installing development tools"
sudo apt-get install -y git
sudo apt-get install -y curl
sudo apt-get install -y wget
sudo apt-get install -y htop
sudo apt-get install -y build-essential
sudo apt-get install -y unzip
sudo apt-get install -y dos2unix
sudo apt-get install -y python-dev

# Required for mipsel-linux components
# Could potentially be removed by changing to libreadline6 in simulate32 and 64 (requires recompilation most likely)
sudo apt-get install -y libreadline5
sudo apt-get install -y libc6-i386

# Install gdb
sudo apt-get install -y gdb

# Install valgrind
sudo apt-get install -y valgrind

# Install llvm (includes scan-build tools)
sudo apt-get install -y clang

sudo apt-get install -y gcc
