FROM archlinux:latest

RUN pacman -Syu --noconfirm && pacman -S --noconfirm git hdf5-openmpi python-numpy python-sphinx python-h5py-openmpi make gcc

RUN useradd -ms /bin/bash smilei

USER smilei
WORKDIR /home/smilei

RUN git clone https://github.com/SmileiPIC/Smilei.git ; \
    cd Smilei && make -j$(nproc) && make doc happi