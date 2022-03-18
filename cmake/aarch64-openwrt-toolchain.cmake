set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CROSS_COMPILING_ROOT /opt/openwrtlibs/aarch64-linux-gnu)

SET(CMAKE_C_COMPILER   /opt/xiaomi/gcc-linaro-aarch64-linux-gnu-4.9-2014.09_linux/bin/aarch64-linux-gnu-gcc)
SET(CMAKE_CXX_COMPILER /opt/xiaomi/gcc-linaro-aarch64-linux-gnu-4.9-2014.09_linux/bin/aarch64-linux-gnu-g++)

set(CMAKE_FIND_ROOT_PATH ${CROSS_COMPILING_ROOT})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(SYSTEM_DETAILS aarch64-openwrt)
