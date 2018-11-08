FROM amazonlinux:2
RUN yum update -y
ADD https://mosh.org/mosh-1.3.2.tar.gz .
RUN yum install -y \
	gcc-c++ \
	gzip \
	libutempter-devel \
	make \
	ncurses-devel \
	openssl-devel \
	protobuf-compiler \
	protobuf-devel \
	tar \
	zlib-devel
RUN tar xaf mosh-1.3.2.tar.gz
WORKDIR mosh-1.3.2
RUN ./configure
RUN make install
CMD /bin/bash
