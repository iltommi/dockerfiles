#!/bin/bash
set -e
set -x

git clone https://github.com/NeutrinoToolkit/Neutrino.git
cd Neutrino
mkdir build && cd build
cmake -DNEUTRINO_SKIP_PLUGINS='Shell' -DCMAKE_INSTALL_PREFIX=/usr ..
make install DESTDIR=AppDir
wget https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage
wget https://github.com/linuxdeploy/linuxdeploy-plugin-qt/releases/download/continuous/linuxdeploy-plugin-qt-x86_64.AppImage
chmod +x linuxdeploy*.AppImage
export APPIMAGE_EXTRACT_AND_RUN=1
# export QML_SOURCES_PATHS=/Neutrino/src
LD_LIBRARY_PATH=`pwd`/AppDir/usr/lib ./linuxdeploy-x86_64.AppImage --appdir AppDir --plugin qt --output appimage -i ../resources/icons/icon.svg --desktop-file=../resources/linuxPackage/Neutrino.desktop
cp Neutrino-*.AppImage /mnt