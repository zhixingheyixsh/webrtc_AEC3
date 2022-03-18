set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

SET(CMAKE_C_COMPILER   /mnt/data/cross-compile/toolchains/arm-poky32-mtk-dummy/sysroots/x86_64-oesdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc) 
SET(CMAKE_CXX_COMPILER /mnt/data/cross-compile/toolchains/arm-poky32-mtk-dummy/sysroots/x86_64-oesdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++) 

UNSET(CMAKE_CXX_FLAGS CACHE)
SET(CMAKE_CXX_FLAGS "-march=armv7ve -mfpu=neon-vfpv4 -mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/mnt/data/cross-compile/toolchains/arm-poky32-mtk-dummy/sysroots/cortexa7hf-neon-vfpv4-poky-linux-gnueabi -std=c++11 -s" CACHE STRING "" FORCE)
UNSET(CMAKE_C_FLAGS CACHE)
SET(CMAKE_C_FLAGS "-march=armv7ve -mfpu=neon-vfpv4 -mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/mnt/data/cross-compile/toolchains/arm-poky32-mtk-dummy/sysroots/cortexa7hf-neon-vfpv4-poky-linux-gnueabi -s" CACHE STRING "" FORCE)

set(CROSS_COMPILING_ROOT /mnt/data/cross-compile/toolchains/arm-poky32-mtk-dummy/sysroots/cortexa7hf-neon-vfpv4-poky-linux-gnueabi)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(CMAKE_FIND_ROOT_PATH ${CROSS_COMPILING_ROOT}/usr)

set(SYSTEM_DETAILS arm32-poky)
