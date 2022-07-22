FROM fedora:32

RUN dnf clean all
RUN dnf -y --nogpgcheck update
RUN dnf -y install cmake git mingw64-qt5* mingw64-gcc-c++ mingw64-gcc mingw64-gcc-gfortran mingw64-libgomp mingw64-gsl mingw64-zlib mingw32-nsis unzip wget autoconf automake bash bison bzip2 flex gcc-c++ gdk-pixbuf2-devel gettext git gperf intltool make sed libffi-devel libtool openssl-devel p7zip patch perl pkgconfig python ruby scons unzip wget xz gtk-doc dh-autoreconf mingw64-portablexdr pandoc mingw64-python3 mingw64-python3-numpy mingw64-cfitsio

ADD pre.sh pre.sh
RUN sh /pre.sh

ADD build.sh build.sh