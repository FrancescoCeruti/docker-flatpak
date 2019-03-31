FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y apt-utils

RUN apt-get update && \
  apt-get install -y software-properties-common python3-software-properties && \
  add-apt-repository -y ppa:alexlarsson/flatpak && \
  apt-get install -y ostree flatpak flatpak-builder python3-venv && \
  apt-get autoremove -y && \
  rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* /var/cache/apt/archives/*
