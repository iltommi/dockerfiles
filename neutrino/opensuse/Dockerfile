FROM opensuse/leap:15

RUN zypper update -y

RUN zypper install -y git pandoc cmake libnetpbm-devel libnetpbm11 libhdf5-103 hdf5-devel libhdf4 gcc-c++ libtiff-devel libtiff5 libgsl25 gsl-devel cfitsio-devel lsb-release libqt5-qtbase libjpeg8-devel libQt5Core-devel libQt5Gui-devel libQt5Sql-devel libQt5PrintSupport-devel libqt5-qttools-devel libQt5OpenGL-devel libQt5Network-devel libqt5-qtmultimedia-devel libqt5-qtscript-devel fftw3-devel  rpmbuild libqt5-qtsvg-devel freeglut-devel lato-fonts

RUN ln -s /usr/lib64/libfftw3_threads.so.3 /usr/lib64/libfftw3_threads.so

ADD build.sh build.sh

ENV LD_LIBRARY_PATH=/usr/lib
ENV QT_XCB_GL_INTEGRATION=none

# docker run -it --env="DISPLAY=host.docker.internal:0" -v /tmp/.X11-unix:/tmp/.X11-unix:rw ubu

