#!/bin/bash
set -e
set -x

git clone --recursive -j$(nproc) https://github.com/NeutrinoToolkit/Neutrino.git 
# cd Neutrino/PythonQt 
# git checkout patched-9
# mkdir cross && cd cross
# mingw64-cmake .. -DQt5_DIR=/usr/x86_64-w64-mingw32/sys-root/mingw/lib/cmake/Qt5 -DPythonQt_Wrap_QtAll=TRUE
# make -j$(nproc) install
# cd ../.. 
cd Neutrino
mkdir cross && cd cross
mingw64-cmake -DNEUTRINO_SKIP_PLUGINS='Shell' .. 
make -j2 package
 
cp Neutrino*.exe Neutrino*.zip /mnt

