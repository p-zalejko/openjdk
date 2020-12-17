#!/usr/bin/env bash
mkdir source
wget https://github.com/AdoptOpenJDK/openjdk15-binaries/releases/download/jdk-15.0.1%2B9/OpenJDK15U-jdk_x64_linux_hotspot_15.0.1_9.tar.gz -P source/boot-jdk
git clone https://github.com/AdoptOpenJDK/openjdk-jdk16.git source/jdk

cd docker
docker build -t my-openjdk-builder .
docker run -it -v /home/agatka/dev/git/openjdk/script/source:/opt/jdk-source my-openjdk-builder:latest
