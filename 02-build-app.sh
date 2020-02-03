#!/bin/bash -e

source config.sh

cd repo

# libsodium
cd libsodium-$LIBSODIUM_VER
sh -c './configure -v --host=$HOST -prefix /usr/local --disable-ssp --disable-shared'
make
sudo PATH=$PATH:/rpxc/bin make install
cd ..

# mbedtls
cd mbedtls-$MBEDTLS_VER
CC=arm-linux-gnueabihf-gcc make SHARED=1 CFLAGS=-fPIC programs
sudo PATH=$PATH:/rpxc/bin make install
cd ..

# pcre
cd pcre-$PCRE_VER
CPPFLAGS="-DNEED_PRINTF" ./configure --prefix=/usr/local --host=$HOST --enable-jit --enable-utf8 --enable-unicode-properties --disable-shared
make
sudo PATH=$PATH:/rpxc/bin make install
cd ..

# c-ares
cd c-ares-$LIBC_ARES_VER
./configure --prefix=/usr/local --host=$HOST --disable-shared
make
sudo PATH=$PATH:/rpxc/bin make install
cd ..

# libev
cd libev-$LIBEV_VER
./configure --prefix=/usr/local --host=$HOST --disable-shared
make
sudo PATH=$PATH:/rpxc/bin make install
cd ..

# Configuration and build for shadowsocks-libev  --with-sysroot=$SYSROOT
cd shadowsocks-libev
./autogen.sh
LIBS="-lpthread -lm" LDFLAGS="-Wl,-static -static-libgcc -L/usr/local/lib" CFLAGS="-I/usr/local/include" ./configure --prefix=/usr/local/shadowsocks-libev --host=$HOST --disable-ssp --disable-documentation
make
sudo PATH=$PATH:/rpxc/bin make install
