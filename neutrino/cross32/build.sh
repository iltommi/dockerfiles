#!/bin/bash
set -e
set -x

git clone --recursive -j$(nproc) https://github.com/NeutrinoToolkit/Neutrino.git
# cd Neutrino/PythonQt
# mkdir cross && cd cross
# mingw32-cmake .. -DQt5_DIR=/usr/i686-w64-mingw32/sys-root/mingw/lib/cmake/Qt5 -DPythonQt_Wrap_QtAll=TRUE
# make -j$(nproc) install
# cd ../.. 
cd Neutrino
mkdir cross && cd cross
mingw32-cmake -DNEUTRINO_SKIP_PLUGINS='Shell;Function' ..
make package
cp Neutrino*.exe Neutrino*.zip /mnt

