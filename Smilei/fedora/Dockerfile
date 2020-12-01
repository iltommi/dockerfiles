FROM fedora:latest

RUN dnf -y update && dnf install -y gcc-c++ hdf5-openmpi hdf5-openmpi-devel openmpi-devel git which findutils python python-devel; \
    dnf install -y python3-h5py ipython python3-pint python3-sphinx python3-matplotlib 

RUN echo "module load mpi" > /etc/profile.d/zz-modules-mpi.sh 

RUN git clone https://github.com/SmileiPIC/Smilei.git

RUN echo "export PATH=/usr/lib64/openmpi/bin:/Smilei:\$PATH; export PS1='Smilei \w > '" >> ~/.bash_profile

RUN bash -l -c "cd Smilei && make -j$(nproc) && make doc happi"

CMD /bin/bash -l
