#!/usr/bin/env bash
cd "$JDK_SOURCE_PATH"

git reset --hard
git fetch --all --tags
git checkout "$MY_GIT_TAG"

make dist-clean
sh configure --verbose \
--enable-ccache \
--with-jvm-variants=server \
--with-debug-level=release \
--with-native-debug-symbols=none \
--with-freetype=bundled \
--disable-warnings-as-errors \
--with-boot-jdk="$MY_BOOT_JDK_PATH" \
--with-vendor-version-string="$MY_VENDOR_VERSION_STRING" \
--with-vendor-name="$MY_VENDOR_NAME" \
--with-version-date="$MY_VERSION_DATE" \
--with-version-opt="$MY_VERSION_OPT" \
CC=/usr/bin/gcc \
CXX=/usr/bin/g++

make clean images
