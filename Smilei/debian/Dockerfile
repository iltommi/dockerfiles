FROM debian:latest

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -yy update && apt-get -yy install git python3-h5py python3-ipython python3-pint python3-sphinx python3-matplotlib python3-dev python3-numpy build-essential gcc libhdf5-openmpi-dev

RUN git clone https://github.com/SmileiPIC/Smilei.git ; \
    cd Smilei && PYTHONEXE=python3 HDF5_ROOT_DIR=/usr/lib/x86_64-linux-gnu/hdf5/openmpi make -j$(nproc) && make doc ; \
    install smilei smilei_test /usr/local/bin

RUN useradd -ms /bin/bash Smilei
RUN su -c "cd /Smilei ; PYTHONEXE=python3 make happi" - Smilei
USER Smilei

WORKDIR /home/Smilei
