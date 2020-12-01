FROM archlinux:latest

RUN pacman -Syu --noconfirm && pacman -S --noconfirm git hdf5-openmpi python-numpy python-sphinx python-h5py-openmpi make gcc

RUN git clone https://github.com/SmileiPIC/Smilei.git

RUN echo "export PATH=/Smilei:\$PATH; export PS1='Smilei \w > '" >> ~/.bash_profile

RUN bash -l -c "cd Smilei && make -j$(nproc) && make doc happi"

CMD /bin/bash -l
