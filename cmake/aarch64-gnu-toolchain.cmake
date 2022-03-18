set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CROSS_COMPILING_ROOT /usr/local/share/lenovo/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/aarch64-linux-gnu)
set(TOOL_CHAIN /mnt/data/cross-compile/toolchains/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin)

SET(CMAKE_C_COMPILER    ${TOOL_CHAIN}/aarch64-linux-gnu-gcc)
SET(CMAKE_CXX_COMPILER  ${TOOL_CHAIN}/aarch64-linux-gnu-g++)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(SYSTEM_DETAILS aarch64)
