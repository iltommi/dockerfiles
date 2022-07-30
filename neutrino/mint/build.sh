#!/bin/bash
set -e
set -x
# git clone https://github.com/NeutrinoToolkit/Neutrino.git
mkdir build && cd build
cmake -DNEUTRINO_SKIP_PLUGINS='Shell' /mnt/Neutrino
make package
cp Neutrino*.deb /mnt

