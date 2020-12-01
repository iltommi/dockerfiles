FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -yy update && apt-get -yy install git python3-h5py python3-ipython python3-pint python3-sphinx python3-matplotlib python3-dev python3-numpy build-essential gcc libhdf5-openmpi*

# build Smilei    
RUN git clone https://github.com/SmileiPIC/Smilei.git ; \
    cd Smilei && git checkout ubuntu && make -j$(nproc) machine=ubuntu && make doc ; \
    install smilei smilei_test /usr/local/bin

# create Smilei user    
RUN useradd -ms /bin/bash Smilei

# install happi for Smilei user
RUN su -c "cd /Smilei ; PYTHONEXE=python3 make happi" - Smilei

USER Smilei

WORKDIR /home/Smilei

