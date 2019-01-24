#!/bin/bash
set -e
set -x

git clone --recursive https://github.com/NeutrinoToolkit/Neutrino.git
cd Neutrino/PythonQt
mkdir pippo && cd pippo 
cmake -UQT_QMAKE_EXECUTABLE -DPythonQt_Wrap_QtAll=TRUE -DQt5_DIR=/usr/lib/x86_64-linux-gnu/cmake ..
make -j$(nproc) install
cd ../..
mkdir pippo && cd pippo 
cmake ..
make -j$(nproc) package
cp Neutrino-*.deb /mnt

