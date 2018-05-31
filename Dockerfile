FROM ubuntu:18.04

# Add alexlarsson/flatpak ppa
RUN apt-get update && apt-get install -y \
    software-properties-common \
    python3-software-properties \
 && add-apt-repository -y \
    ppa:alexlarsson/flatpak \
 && apt-get purge -y \
    software-properties-common \
    python3-software-properties

# Install flatpak
RUN apt-get update && apt-get install -y \
    flatpak \
    flatpak-builder \
  && rm -rf /var/lib/apt/lists/*

# Add flathub as remote
RUN flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
