#!/usr/bin/env bash
# Is CMake even needed? Lol.
# Did I include shit twice?

if ! [ $(id -u) = 0 ]; then
   echo "How the fuck am I supposed to do this shit without root accesss? Run me as root!"
   exit 1
fi

apt-get update
apt-get install uuid-dev autopoint build-essential libpopt-dev libdevmapper-dev git cmake libjson-c-dev autoconf
git clone https://gitlab.com/cryptsetup/cryptsetup.git
cd cryptsetup
sh autogen.sh
./configure
make
make install
echo "Should be Installed now!"
echo "https://www.nullsoul.pw/"
