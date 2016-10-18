#!/bin/bash

# Run everything under bash regardless
echo "Using bash as the default shell"
sudo rm -f /bin/sh
sudo ln -s /bin/bash /bin/sh

echo "Updating package repositories"
sudo apt-get update

echo "Installing development tools"
sudo apt-get -y install git
sudo apt-get -y install curl
sudo apt-get -y install wget
sudo apt-get -y install htop
sudo apt-get -y install build-essential
sudo apt-get -y install unzip
sudo apt-get -y install dos2unix
sudo apt-get -y install python-dev

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

sudo apt-get install -y gcc-4.4
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.4 20
