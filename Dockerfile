FROM ubuntu:20.10

MAINTAINER Xander Hendriks <xander.hendriks@nx-solutions.com>

ENV VERSION 1.9.1

COPY doxygen-${VERSION}.linux.bin.tar.gz .

RUN apt-get -y update && \
	DEBIAN_FRONTEND=noninteractive apt-get install -y \
    make libclang1-9 libclang-cpp1-9 graphviz && \
	tar -xzf doxygen-${VERSION}.linux.bin.tar.gz && \
	cd doxygen-${VERSION} && \
	rm INSTALL && \
	make install && \
	apt-get -y remove make && \
	rm -rf doxygen-${VERSION}.linux.bin* && \
	rm -rf /var/lib/apt/lists/*
