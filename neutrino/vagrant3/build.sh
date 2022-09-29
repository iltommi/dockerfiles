#!/bin/sh

set -x

if [ -d "~/shared/Neutrino" ]
then
cd ~/shared
else
cd ~
rm -rf build
mkdir build && cd build
rm -rf Neutrino
git clone -j$(sysctl -n hw.ncpu) https://github.com/NeutrinoToolkit/Neutrino.git 
fi

# rm -rf PythonQt PythonQt-buildosx
# git clone --depth=1 https://github.com/iltommi/PythonQt.git
# mkdir PythonQt-buildosx && cd PythonQt-buildosx
# cmake -DPYTHON_LIBRARIES=/System/Library/Frameworks/Python.framework/Versions/2.7/lib/  -DQt5_DIR=/usr/local/opt/qt5/lib/cmake/Qt5 -UQT_QMAKE_EXECUTABLE -DPythonQt_Wrap_QtAll=TRUE ../PythonQt
# make -j$(sysctl -n hw.ncpu) install
# cd ..

# mkdir -p build_clang && cd build_clang
# export PATH=/usr/local/opt/llvm/bin/:$PATH
# LDFLAGS="-L/usr/local/opt/llvm/lib" cmake -DQt5_DIR=/usr/local/opt/qt5/lib/cmake/Qt5 -DCMAKE_CXX_COMPILER=/usr/local/opt/llvm/bin/clang++ -DCMAKE_CXX_FLAGS="-mlinker-version=305" ../Neutrino
# make -j$(sysctl -n hw.ncpu) install
# ../Neutrino/resources/macPackage/prepareapp.sh
# cp Neutrino-MacOS.dmg ~/Neutrino-MacOS-clang.dmg
# cd ..

mkdir -p build_gcc && cd build_gcc
cmake -DCMAKE_CXX_COMPILER=g++-12 -DQt5_DIR=/usr/local/opt/qt5/lib/cmake/Qt5 -DNEUTRINO_SKIP_PLUGINS=Shell ../Neutrino
make -j$(sysctl -n hw.ncpu) install
../Neutrino/resources/macPackage/prepareapp.sh
rm -rf ~/Neutrino-`uname -s`-`uname -m`.*
cp Neutrino-`uname -s`-`uname -m`.* ~
cd ..

