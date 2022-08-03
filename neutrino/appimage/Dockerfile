FROM appimagecrafters/appimage-builder:latest

RUN DEBIAN_FRONTEND=noninteractive
RUN apt-get update -qq
RUN apt-get install -yy vim wget file git pandoc cmake libnetpbm10-dev libhdf5-dev libfftw3-dev libhdf4-dev g++ build-essential libtiff5-dev libgsl-dev qt5-default qtmultimedia5-dev qttools5-dev libqt5svg5-dev libqt5scripttools5 qtscript5-dev libqt5multimediawidgets5 qttools5-dev-tools libqt5multimedia5 libqt5multimedia5-plugins lsb-release libcfitsio-dev libhdf4-dev libhdf5-dev libhdf5-100
RUN wget https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage
RUN wget https://github.com/linuxdeploy/linuxdeploy-plugin-qt/releases/download/continuous/linuxdeploy-plugin-qt-x86_64.AppImage
RUN chmod +x linuxdeploy*.AppImage

ENV APPIMAGE_EXTRACT_AND_RUN=1
ENV LD_LIBRARY_PATH=/build/AppDir/usr/lib

ADD build.sh build.sh
