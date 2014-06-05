all:
	make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- rk3188_nano_server_linux_defconfig
	make -j4 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- zImage NanoArmServer.dtb
	cat arch/arm/boot/zImage arch/arm/boot/dts/NanoArmServer.dtb > zImage-dtb
