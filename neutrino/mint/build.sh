#!/bin/bash
set -e
set -x
git clone --recursive -j$(nproc) https://github.com/NeutrinoToolkit/Neutrino.git
cd Neutrino
mkdir ubuntu && cd ubuntu
cmake -DNEUTRINO_SKIP_PLUGINS='Shell' ..
make -j$(nproc) package
cp Neutrino*.deb /mnt

