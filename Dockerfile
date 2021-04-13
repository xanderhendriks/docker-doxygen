FROM ubuntu:18.04

MAINTAINER Xander Hendriks <xander.hendriks@nx-solutions.com>

RUN apt-get -y update && \
	DEBIAN_FRONTEND=noninteractive apt-get install -y \
    doxygen graphviz git && \
	rm -rf /var/lib/apt/lists/*
