#!/usr/bin/env bash
if [ "$#" -eq 0 ]; then
echo "Usage: ./run.sh armeabi-v7a, arm64-v8a, aarch64, arm32-openwrt, or linux64, project name(sai_denoise)"
exit 0
fi
BUILD_DIR=build
if [ "$1" = "clean" ]; then
rm -rf "$BUILD_DIR"
exit 0
fi

#if [ ! -d "./.git/" ]&&[ ! -d "../.git/" ]&&[ ! -d "../../.git/" ]; then
#echo "NO GIT!"
#exit 0
#fi
#GITVER=`git rev-parse --short HEAD`

echo "-- Gonna make with $*..."

if [ "$1" = "linux64" ]; then
    CMAKE_OPTS="-DCMAKE_TOOLCHAIN_FILE=./cmake/linux64-toolchain.cmake"
elif [ "$1" = "aarch64" ];then
    CMAKE_OPTS="-DCMAKE_TOOLCHAIN_FILE=./cmake/aarch64-gnu-toolchain.cmake"
elif [ "$1" = "arm-linux-gnueabihf" ];then
    CMAKE_OPTS="-DCMAKE_TOOLCHAIN_FILE=./cmake/arm-linux-gnueabihf-toolchain.cmake"
elif [ "$1" = "arm-linux-gnueabi" ];then
    CMAKE_OPTS="-DCMAKE_TOOLCHAIN_FILE=./cmake/arm-linux-gnueabi-toolchain.cmake"
elif [ "$1" = "arm32-openwrt" ];then
    CMAKE_OPTS="-DCMAKE_TOOLCHAIN_FILE=./cmake/arm32-openwrt-toolchain.cmake"
elif [ "$1" = "aarch64-poky-linux" ];then
    CMAKE_OPTS="-DCMAKE_TOOLCHAIN_FILE=./cmake/aarch64-poky-linux-toolchain.cmake"
elif [ "$1" = "poky32" ];then
    CMAKE_OPTS="-DCMAKE_TOOLCHAIN_FILE=./cmake/poky32-linux-toolchain.cmake"
elif [ "$1" = "arm32-poky" ];then
    CMAKE_OPTS="-DCMAKE_TOOLCHAIN_FILE=./cmake/arm32-poky-linux-toolchain.cmake"
elif [ "$1" = "armeabi-v7a" ] || [ "$1" = "arm64-v8a" ];then
    CMAKE_OPTS="-DCMAKE_TOOLCHAIN_FILE=./cmake/$1-toolchain.cmake"
fi
PROJECT_NAME=aec_sample
TARGET=$1
if [ -n "$2" ] ;then
    PROJECT_NAME=$2
fi
for BUILD_TYPE in {"debug","release"}
do
  echo "-- Gonna build target $PROJECT_NAME to $BUILD_DIR/$TARGET, type: $BUILD_TYPE"
  mkdir -p "$BUILD_DIR/$TARGET/$BUILD_TYPE"
  cd "$BUILD_DIR/$TARGET/$BUILD_TYPE"
  cmake $CMAKE_OPTS -DCMAKE_BUILD_TYPE=$BUILD_TYPE \
      -DCMAKE_VERBOSE_MAKEFILE=ON -DCMAKE_PROJECT_NAME=$PROJECT_NAME ../../../
  make
  cd ../../../

done
