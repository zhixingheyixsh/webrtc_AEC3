set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

SET(CMAKE_C_COMPILER    /usr/local/share/tmallbox/aarch64-poky-linux/bin/aarch64-poky-linux/aarch64-poky-linux-gcc)
SET(CMAKE_CXX_COMPILER  /usr/local/share/tmallbox/aarch64-poky-linux/bin/aarch64-poky-linux/aarch64-poky-linux-g++)

UNSET(CMAKE_CXX_FLAGS CACHE)
SET(CMAKE_CXX_FLAGS "-mcpu=cortex-a72.cortex-a53+crypto -mtune=cortex-a72.cortex-a53 --sysroot=/usr/local/share/tmallbox/aarch64-poky-linux/sysroot/aarch64-poky-linux -std=c++11 -s" CACHE STRING "" FORCE)
UNSET(CMAKE_C_FLAGS CACHE)
SET(CMAKE_C_FLAGS "-mcpu=cortex-a72.cortex-a53+crypto -mtune=cortex-a72.cortex-a53 --sysroot=/usr/local/share/tmallbox/aarch64-poky-linux/sysroot/aarch64-poky-linux" CACHE STRING "" FORCE)

set(CROSS_COMPILING_ROOT /usr/local/share/tmallbox/aarch64-poky-linux/sysroot/aarch64-poky-linux/usr)
set(CMAKE_FIND_ROOT_PATH ${CROSS_COMPILING_ROOT})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(SYSTEM_DETAILS aarch64-poky-linux)
