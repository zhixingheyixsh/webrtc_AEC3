set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CROSS_COMPILING_ROOT /usr/local/share/tmallbox/sysroots/cortexa7hf-neon-vfpv4-poky-linux-gnueabi)

SET(CMAKE_C_COMPILER    /usr/local/share/tmallbox/sysroots/x86_64-oesdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc)
SET(CMAKE_CXX_COMPILER  /usr/local/share/tmallbox/sysroots/x86_64-oesdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++)

UNSET(CMAKE_CXX_FLAGS CACHE)
SET(CMAKE_CXX_FLAGS "-march=armv7ve -mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/usr/local/share/tmallbox/sysroots/cortexa7hf-neon-vfpv4-poky-linux-gnueabi -std=c++11" CACHE STRING "" FORCE)
UNSET(CMAKE_C_FLAGS CACHE)
SET(CMAKE_C_FLAGS "-march=armv7ve -mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/usr/local/share/tmallbox/sysroots/cortexa7hf-neon-vfpv4-poky-linux-gnueabi" CACHE STRING "" FORCE)

if(NOT DEFINED CROSS_COMPILING_ROOT)
  set(CROSS_COMPILING_ROOT $ENV{CROSS_COMPILING_ROOT})
endif()

if(NOT DEFINED CROSS_COMPILING_ROOT)
  message(FATAL_ERROR "Missing CROSS_COMPILING_ROOT")
elseif(NOT IS_DIRECTORY ${CROSS_COMPILING_ROOT})
  message(FATAL_ERROR "CROSS_COMPILING_ROOT is not directory: ${CROSS_COMPILING_ROOT}")
endif()

set(CMAKE_FIND_ROOT_PATH ${CROSS_COMPILING_ROOT})

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(SYSTEM_DETAILS poky32)
