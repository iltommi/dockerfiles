FROM debian:unstable

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qq
RUN apt-get install -yy file git pandoc cmake libnetpbm10-dev libhdf5-dev libfftw3-dev libhdf4-dev  g++ build-essential libtiff5-dev libgsl-dev qtmultimedia5-dev qttools5-dev libqt5svg5-dev libqt5scripttools5 qtscript5-dev libqt5multimediawidgets5 qttools5-dev-tools lsb-release libcfitsio-dev libhdf4-dev libhdf5-dev libhdf5-103

ADD build.sh build.sh

# docker run -it --env="DISPLAY=host.docker.internal:0" -v /tmp/.X11-unix:/tmp/.X11-unix:rw ubu