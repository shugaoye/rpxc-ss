#!/bin/bash -e

source config.sh

cd repo

if [[ $# != 0 ]]; then
    SRC_PATH=$1
else
    echo No parameter.
    exit 0
fi

# PCRE_VER=8.43
PCRE_FILE="$SRC_PATH/pcre-$PCRE_VER.tar.gz"
if test -f "$PCRE_FILE"; then
    tar xvfz $PCRE_FILE
fi

# MBEDTLS_VER=2.16.4
MBEDTLS_FILE="$SRC_PATH/mbedtls-$MBEDTLS_VER-gpl.tgz"
if test -f "$MBEDTLS_FILE"; then
    tar xvfz $MBEDTLS_FILE
fi

# LIBSODIUM_VER=1.0.18
LIBSODIUM_FILE="$SRC_PATH/libsodium-$LIBSODIUM_VER.tar.gz"
if test -f "$LIBSODIUM_FILE"; then
    tar xvfz $LIBSODIUM_FILE
fi

# LIBEV_VER=4.31
LIBEV_FILE="$SRC_PATH/libev-$LIBEV_VER.tar.gz"
if test -f "$LIBEV_FILE"; then
    tar xvfz $LIBEV_FILE
fi

# LIBC_ARES_VER=1.13.0
LIBC_ARES_FILE="$SRC_PATH/c-ares-$LIBC_ARES_VER.tar.gz"
if test -f "$LIBC_ARES_FILE"; then
    tar xvfz $LIBC_ARES_FILE
fi

# SHADOWSOCKS_LIBEV_VER=3.1.0
SHADOWSOCKS_LIBEV_FILE="$SRC_PATH/shadowsocks-libev"

# SIMPLE_OBFS_VER=0.0.4
SIMPLE_OBFS_FILE="https://github.com/shadowsocks/simple-obfs"
