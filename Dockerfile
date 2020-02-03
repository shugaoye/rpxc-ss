FROM shugaoye/rpi-dev:jessie

COPY image/etc/jessie.conf /etc/apt/sources.list
COPY image/etc/raspbian.conf /rpxc/sysroot/etc/apt/sources.list
# COPY image/etc/raspi.list /rpxc/sysroot/etc/apt/sources.list.d/raspi.list

# TrueCrypt uses gettext in the build context
RUN install-debian --update build-essential \
                          asciidoc \
                          libtool

# TrueCrypt links against openssl
RUN install-raspbian --update \
                          apg \
                          autoconf \
                          build-essential \
                          curl \
                          debhelper \
                          dh-systemd \
                          gawk \
                          gettext \
                          init-system-helpers \
                          libev4 \
                          libev-dev \
                          libpcre3 \
                          libpcre3-dev \
                          libssl1.0.0 \
                          libssl-dev \
                          libtool \
                          libudns0 \
                          libudns-dev \
                          pkg-config \
                          xmlto \
                          zlib1g \
                          zlib1g-dev
