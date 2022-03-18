set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)
#set(CROSS_COMPILING_ROOT /usr/local/share/gcc-linaro-6.3.1-2017.05-x86_64_arm-linux-gnueabihf/arm-linux-gnueabihf)
#set(CROSS_COMPILING_ROOT /usr/local/share/raspberrypi/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin)
set(CROSS_COMPILING_ROOT /usr/local/share/raspberrypi/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/arm-linux-gnueabihf)
#set(CROSS_COMPILING_ROOT /usr/local/share/gcc-linaro-arm-linux-gnueabihf-4.9/arm-linux-gnueabihf)

#SET(CMAKE_C_COMPILER  /usr/local/share/raspberrypi/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-gcc) 
SET(CMAKE_C_COMPILER  /usr/local/share/raspberrypi/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc) 
#SET(CMAKE_CXX_COMPILER  /usr/local/share/raspberrypi/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-g++)
SET(CMAKE_CXX_COMPILER  /usr/local/share/raspberrypi/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin/arm-linux-gnueabihf-g++)

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

set(SYSTEM_DETAILS arm-linux-gnueabihf)
