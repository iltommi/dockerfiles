#!/bin/bash
set -e
set -x
wget http://www.fftw.org/fftw-3.3.6-pl2.tar.gz
tar -zxvf fftw-3.3.6-pl2.tar.gz
cd fftw-3.3.6-pl2
mingw32-configure --disable-static --enable-shared --enable-threads --with-combined-threads 
make -j $(nproc) bin_PROGRAMS= sbin_PROGRAMS= noinst_PROGRAMS= 
make install bin_PROGRAMS= sbin_PROGRAMS= noinst_PROGRAMS=  
cd ..

wget https://support.hdfgroup.org/ftp/HDF/releases/HDF4.2.10/src/hdf-4.2.10.tar.bz2
tar -jxvf hdf-4.2.10.tar.bz2 && cd hdf-4.2.10
wget https://raw.githubusercontent.com/iltommi/mxe/master/src/hdf4-1-portability-fixes.patch
wget https://raw.githubusercontent.com/iltommi/mxe/master/src/hdf4-2-dllimport.patch
patch -p1 -u < hdf4-1-portability-fixes.patch
patch -p1 -u < hdf4-2-dllimport.patch
libtoolize --force
autoreconf --install
mingw32-configure --disable-static --enable-shared --disable-fortran --disable-netcdf LIBS="-lportablexdr -lws2_32"  CPPFLAGS="-DH4_F77_FUNC\(name,NAME\)=NAME -DH4_BUILT_AS_DYNAMIC_LIB=1 -DBIG_LONGS"
make -C mfhdf/xdr -j $(nproc) LDFLAGS=-no-undefined
make -C hdf/src -j $(nproc) LDFLAGS=-no-undefined
make -C hdf/src -j 1 install
make -C mfhdf/libsrc -j $(nproc) LDFLAGS="-no-undefined -ldf"
make -C mfhdf/libsrc -j 1 install 
cd ..

git clone --recursive -j$(nproc) https://github.com/NeutrinoToolkit/Neutrino.git
# cd Neutrino/PythonQt
# mkdir cross && cd cross
# mingw32-cmake .. -DQt5_DIR=/usr/i686-w64-mingw32/sys-root/mingw/lib/cmake/Qt5 -DPythonQt_Wrap_QtAll=TRUE
# make -j$(nproc) install
# cd ../.. 
cd Neutrino
mkdir cross && cd cross
mingw32-cmake -DNEUTRINO_SKIP_PLUGINS='Shell;Function' ..
make -j$(nproc) package
cp Neutrino*.exe /mnt

