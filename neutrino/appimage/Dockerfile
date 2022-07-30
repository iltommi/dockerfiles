FROM appimagecrafters/appimage-builder:latest

RUN DEBIAN_FRONTEND=noninteractive
RUN apt-get update -qq
RUN apt-get install -yy wget file git pandoc cmake libnetpbm10-dev libhdf5-dev libfftw3-dev libhdf4-dev g++ build-essential libtiff5-dev libgsl-dev qt5-default qtmultimedia5-dev qttools5-dev libqt5svg5-dev libqt5scripttools5 qtscript5-dev libqt5multimediawidgets5 qttools5-dev-tools libqt5multimedia5 libqt5multimedia5-plugins lsb-release libcfitsio-dev libhdf4-dev libhdf5-dev libhdf5-100

ADD build.sh build.sh
