FROM fedora:latest

# install packages
RUN dnf -y update; \
    dnf install -y gcc-c++ hdf5-openmpi hdf5-openmpi-devel openmpi-devel git which findutils python python-devel; \
    dnf install -y h5py ipython python2-pint python2-sphinx python2-matplotlib 

RUN echo "module load mpi" > /etc/profile.d/zz-modules-mpi.sh 

RUN git clone https://github.com/SmileiPIC/Smilei.git
RUN git clone https://github.com/SmileiPIC/tutorials.git
RUN git clone https://github.com/SmileiPIC/TPUPMC.git

RUN echo "export PATH=/Smilei:\$PATH; export PS1='Smilei \w > '" >> ~/.bash_profile

RUN bash -l -c "cd Smilei && make -j$(nproc) && make doc happi"

CMD /bin/bash -l
