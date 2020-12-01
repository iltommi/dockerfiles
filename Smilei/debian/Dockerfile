FROM debian:latest

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -yy update && apt-get -yy install git python3-h5py python3-ipython python3-pint python3-sphinx python3-matplotlib python3-dev python3-numpy build-essential gcc libhdf5-openmpi-dev

ENV PYTHONEXE=python3 
ENV HDF5_ROOT_DIR=/usr/lib/x86_64-linux-gnu/hdf5/openmpi 

RUN useradd -ms /bin/bash smilei

USER smilei
WORKDIR /home/smilei

RUN git clone https://github.com/SmileiPIC/Smilei.git && cd Smilei && make -j$(nproc) && make doc happi