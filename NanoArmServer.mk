all:
	make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- NanoArmServer_defconfig
	make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- zImage NanoArmServer.dtb
	cat arch/arm/boot/zImage arch/arm/boot/dts/NanoArmServer.dtb > zImage-dtb
