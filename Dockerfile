FROM ubuntu:18.04

RUN apt-get update && sudo apt-get install -y \
    software-properties-common \
    python3-software-properties
 && add-apt-repository -y \
    ppa:alexlarsson/flatpak \
 && sudo apt-get purge -y \
    software-properties-common \
    python3-software-properties
RUN apt-get update && sudo apt-get install -y \
    flatpak \
    flatpak-builder \
  && rm -rf /var/lib/apt/lists/*
RUN sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
