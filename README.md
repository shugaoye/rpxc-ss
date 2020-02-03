# Cross compile SS for Raspberry Pi

We can build applications for Raspberry Pi using a docker container on Raspberry Pi directly. To build in this way, please refer to [docker-shadowsocks-libev](https://github.com/EasyPi/docker-shadowsocks-libev). We can also do a cross compilation using x86 machines which usually is much faster than Raspberry Pi itself. To build applications in this way, please refer to [rpi-dev](https://github.com/shugaoye/rpi-dev) or [dockcross](https://github.com/dockcross/dockcross).

Please refer to [rpi-dev](https://github.com/shugaoye/rpi-dev) about how to use the docker container.

Native libraries can be found at:
$SYSROOT/usr/lib/arm-linux-gnueabihf

Credits go to [sdt/docker-raspberry-pi-cross-compiler](https://github.com/sdt/docker-raspberry-pi-cross-compiler), who invented the base of the dockcross script.
