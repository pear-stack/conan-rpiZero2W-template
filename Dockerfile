FROM ubuntu:latest

RUN \
  apt-get update && \
  apt-get install -y python3 pipx make cmake \
  gcc-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-arm-linux-gnueabihf g++-aarch64-linux-gnu

RUN pipx install conan
WORKDIR /build

ENTRYPOINT /bin/bash