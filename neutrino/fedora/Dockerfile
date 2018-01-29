FROM fedora:27

RUN dnf clean metadata

RUN dnf -y --nogpgcheck update; exit 0

RUN dnf -y install gcc gcc-c++ python2 python2-devel qconf qt5-qtbase* qt5-qtmultimedia* qt5-qtsvg* qt5-qttools* qt5-qtscript* libtiff-devel gsl-devel redhat-lsb-core blas-devel pandoc hdf-devel hdf5-devel cfitsio-devel fftw3-devel rpm-build

RUN dnf -y install git

# Neutrino
RUN git clone --recursive -j$(nproc) https://github.com/NeutrinoToolkit/Neutrino.git ; \
    cd Neutrino/PythonQt && mkdir cross && cd cross; \
    cmake .. -DPythonQt_Wrap_QtAll=TRUE -DQt5_DIR=/usr/lib64/cmake; make -j4 install; \
    make -j$(nproc) install; cd ../.. ; \
    mkdir cross && cd cross && cmake .. && make -j$(nproc) package
 
 
#docker run --rm -v $(pwd):/mnt -t iltommi/neutrino-docker-cross /bin/sh -c 'cp /Neutrino/cross/Neutrino* /mnt'

