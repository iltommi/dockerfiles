FROM debian:latest

RUN apt-get -yy update && apt-get install -y wget git python-h5py ipython python-pint python-sphinx python-matplotlib python-dev python-numpy build-essential gcc

RUN wget https://www.open-mpi.org/software/ompi/v3.0/downloads/openmpi-3.0.1.tar.gz && tar -zxvf openmpi-3.0.1.tar.gz && cd openmpi-3.0.1 && ./configure && make -j$(nproc) install

RUN echo "/usr/local/lib" > /etc/ld.so.conf.d/smilei.conf && ldconfig

RUN wget https://support.hdfgroup.org/ftp/HDF5/current18/src/hdf5-1.8.20.tar.gz && tar -zxvf hdf5-1.8.20.tar.gz && cd hdf5-1.8.20 && ./configure --prefix=/usr/local --enable-parallel --with-pic --enable-linux-lfs --enable-shared --enable-production=yes --disable-sharedlib-rpath --enable-static CC=mpicc FC=mpif90 && make install

# build Smilei    
RUN git clone https://github.com/SmileiPIC/Smilei.git ; \
    cd Smilei && make -j$(nproc) && make doc ;          \
    install smilei smilei_test /usr/local/bin

# create Smilei user    
RUN useradd -ms /bin/bash Smilei

# install happi for Smilei user
RUN su -c "cd /Smilei ; make happi" - Smilei

USER Smilei

WORKDIR /home/Smilei
