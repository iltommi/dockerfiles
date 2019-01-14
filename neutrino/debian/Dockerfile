FROM debian:unstable

RUN apt-get update -qq && apt-get install -yy git pandoc cmake qt5-default libnetpbm10-dev libhdf5-dev libfftw3-dev python-dev libhdf4-dev  g++ build-essential libtiff5-dev libgsl-dev qtmultimedia5-dev qttools5-dev libqt5svg5-dev libqt5scripttools5 qtscript5-dev libqt5multimediawidgets5 qttools5-dev-tools lsb-release libcfitsio-dev libhdf4-dev libhdf5-dev libhdf5-103 python-numpy

ADD build.sh build.sh