#!/bin/bash
set -e
set -x
git clone https://github.com/NeutrinoToolkit/Neutrino.git
cd Neutrino
mkdir build && cd build
cmake -DNEUTRINO_SKIP_PLUGINS='Shell' ..
make package
cp Neutrino*.deb /mnt

