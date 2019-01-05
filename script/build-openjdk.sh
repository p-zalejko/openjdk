#!/usr/bin/env bash

mkdir source
wget https://download.java.net/java/ga/jdk11/openjdk-11_linux-x64_bin.tar.gz -P source/boot-jdk
git clone https://github.com/AdoptOpenJDK/openjdk-jdk11u.git source/jdk

cd docker
docker build -t my-openjdk-builder .
docker run -it -v /home/pawel/dev/test-openjdk/diy-openjdk/source:/opt/jdk-source my-openjdk-builder:latest
