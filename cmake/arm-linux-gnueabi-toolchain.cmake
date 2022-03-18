set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CROSS_COMPILING_ROOT /mnt/data/share/gcc-arm-8.2-2018.11-x86_64-arm-linux-gnueabi/arm-linux-gnueabi)
#set(CROSS_COMPILING_ROOT /usr/local/share/gcc-linaro-arm-linux-gnueabihf-4.9/arm-linux-gnueabihf)

SET(CMAKE_C_COMPILER /mnt/data/share/gcc-arm-8.2-2018.11-x86_64-arm-linux-gnueabi/bin/arm-linux-gnueabi-gcc) 
SET(CMAKE_CXX_COMPILER  /mnt/data/share/gcc-arm-8.2-2018.11-x86_64-arm-linux-gnueabi/bin/arm-linux-gnueabi-g++)

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

set(SYSTEM_DETAILS arm-linux-gnueabi)
