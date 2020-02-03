FROM shugaoye/rpi-dev:jessie

# COPY image/etc/jessie.conf /etc/apt/sources.list
# COPY image/etc/raspbian.conf /rpxc/sysroot/etc/apt/sources.list
# COPY image/etc/raspi.list /rpxc/sysroot/etc/apt/sources.list.d/raspi.list

# TrueCrypt uses gettext in the build context
RUN install-debian --update build-essential \
                          asciidoc \
                          libtool
