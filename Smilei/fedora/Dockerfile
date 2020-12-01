FROM fedora:latest

RUN dnf -y update && dnf install -y gcc-c++ hdf5-openmpi hdf5-openmpi-devel openmpi-devel git which findutils python python-devel python3-h5py ipython python3-pint python3-sphinx python3-matplotlib 

RUN echo "module load mpi" > /etc/profile.d/zz-modules-mpi.sh 

ENV PATH=/usr/lib64/openmpi/bin:$PATH

RUN useradd -ms /bin/bash smilei

USER smilei
WORKDIR /home/smilei

RUN git clone https://github.com/SmileiPIC/Smilei.git && cd Smilei && make -j$(nproc) && make doc happi