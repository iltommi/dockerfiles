FROM debian:latest

RUN apt-get -yy update && apt-get install -y wget git python-h5py ipython python-pint python-sphinx python-matplotlib python-dev python-numpy build-essential gcc openmpi-bin libhdf5-openmpi-dev

# build Smilei    
RUN git clone https://github.com/SmileiPIC/Smilei.git ; \
    cd Smilei && HDF5_ROOT_DIR=/usr/lib/x86_64-linux-gnu/hdf5/openmpi make -j$(nproc) && make doc ; \
    install smilei smilei_test /usr/local/bin

# create Smilei user    
RUN useradd -ms /bin/bash Smilei

# install happi for Smilei user
RUN su -c "cd /Smilei ; make happi" - Smilei

USER Smilei

WORKDIR /home/Smilei
