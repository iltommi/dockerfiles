#!/bin/bash
source /opt/rh/devtoolset-7/enable  
source /opt/rh/rh-python36/enable

rm -rf Neutrino
git clone --recursive https://github.com/NeutrinoToolkit/Neutrino.git
cd Neutrino/
mkdir toto && cd toto
cmake3 ..
DESTDIR=AppDir make -j $(nproc) install
VERSION='Linux' linuxdeployqt AppDir/usr/local/share/applications/Neutrino.desktop -appimage
cp Neutrino*.AppImage /mnt
