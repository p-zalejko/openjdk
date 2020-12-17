FROM fedora:29

RUN dnf install -y autoconf \
    automake \
    alsa-lib-devel \
    binutils cups-devel \
    desktop-file-utils \
    fontconfig \
    freetype-devel \
    elfutils giflib-devel \
    gcc-c++ \
    make \
    gdb \
    gtk2-devel \
    lcms2-devel \
    libjpeg-devel \
    libpng-devel \
    libxslt \
    libX11-devel \
    libXi-devel \
    libXinerama-devel \
    libXt-devel \
    libXtst-devel \
    nss-devel \
    pkgconfig \
    xorg-x11-proto-devel \
    zip \
    ccache \
    git \
    which \
    file \
    findutils

ENV PATH="/usr/bin/autoconf:${PATH}"

ENV SOURCE_FILES_PATH=/opt/jdk-source \
    BOOT_JDK_PATH=/opt/jdk-source/boot-jdk/openjdk-11_linux-x64_bin.tar.gz \
    JDK_SOURCE_PATH=/opt/jdk-source/jdk

ENV MY_GIT_TAG=jdk-11.0.1+13 \
    MY_BOOT_JDK_PATH=$BOOT_JDK_PATH \
    MY_VENDOR_VERSION_STRING=PawelZalejkoJDK \
    MY_VENDOR_NAME=PawelZalejkoJDK \
    MY_VERSION_DATE=2019-01-05 \
    MY_VERSION_OPT=Pawel

ADD build.sh build.sh
RUN chmod 777 build.sh

ENTRYPOINT ["/bin/bash", "/build.sh"]
