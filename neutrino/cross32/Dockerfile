FROM fedora:32

RUN dnf clean all
RUN dnf -y --nogpgcheck update
RUN dnf -y install cmake git mingw32-qt5* mingw32-gcc-c++ mingw32-gcc mingw32-gcc-gfortran mingw32-libgomp mingw32-gsl mingw32-zlib mingw32-nsis unzip wget autoconf automake bash bison bzip2 flex gcc-c++ gdk-pixbuf2-devel gettext git gperf intltool make sed libffi-devel libtool openssl-devel p7zip patch perl pkgconfig python ruby scons unzip wget xz gtk-doc dh-autoreconf mingw32-portablexdr pandoc mingw32-cfitsio

# mingw32-python2 mingw32-python2-numpy 

ADD pre.sh pre.sh
RUN sh /pre.sh

ADD build.sh build.sh
