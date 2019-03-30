FROM ubuntu:16.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y apt-utils

# Add alexlarsson/flatpak ppa
RUN apt-get update && \
  apt-get install -y software-properties-common python3-software-properties &&\
  add-apt-repository -y ppa:alexlarsson/flatpak

# Install flatpak
RUN apt-get update && apt-get install -y \
    ostree \
    flatpak \
    flatpak-builder \
    python3-venv

# Cleanup
RUN rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* /var/cache/apt/archives/*
