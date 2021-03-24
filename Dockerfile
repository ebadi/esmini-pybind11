FROM ubuntu:focal

MAINTAINER Hamid Ebadi

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get -y install \
    make \
    git \
    g++ \
    python3.8 \
    python3-pip \
    python3.8-dev

# Binder req
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install clang-10 llvm-10 libclang-10-dev llvm-10-dev cmake gcc


RUN git clone https://github.com/ebadi/esmini-pybind11.git  --recursive
RUN cd esmini-pybind11/ ; ./dev-building-bindings.sh