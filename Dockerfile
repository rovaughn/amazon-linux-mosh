FROM amazonlinux:2
RUN yum update -y
ADD https://mosh.org/mosh-1.3.2.tar.gz .
RUN yum install -y tar gzip
RUN yum install -y protobuf-compiler
RUN yum install -y libutempter-devel
RUN yum install -y zlib-devel
RUN yum install -y gcc-c++
RUN yum install -y ncurses-devel
RUN yum install -y openssl-devel
RUN yum install -y protobuf-devel
RUN yum install -y make
RUN tar xaf mosh-1.3.2.tar.gz
WORKDIR mosh-1.3.2
RUN ./configure
RUN make install
CMD /bin/bash
