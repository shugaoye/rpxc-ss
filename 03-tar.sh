#!/bin/bash -e

source config.sh

DATE_BUILD=`date "+%Y-%m-%d"`
cd repo
rpxc sh -c 'sudo make install && fakeroot tar -czvf /build/ss-$DATE_BUILD.tar.gz /usr/local/shadowsocks-libev'
