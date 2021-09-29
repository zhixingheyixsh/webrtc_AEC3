# Install script for directory: /home/xsh/projs/git/signal_pro/webrtc_aec3/base/abseil/absl

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/xsh/projs/git/signal_pro/webrtc_aec3/base/build/abseil/absl/base/cmake_install.cmake")
  include("/home/xsh/projs/git/signal_pro/webrtc_aec3/base/build/abseil/absl/algorithm/cmake_install.cmake")
  include("/home/xsh/projs/git/signal_pro/webrtc_aec3/base/build/abseil/absl/container/cmake_install.cmake")
  include("/home/xsh/projs/git/signal_pro/webrtc_aec3/base/build/abseil/absl/debugging/cmake_install.cmake")
  include("/home/xsh/projs/git/signal_pro/webrtc_aec3/base/build/abseil/absl/flags/cmake_install.cmake")
  include("/home/xsh/projs/git/signal_pro/webrtc_aec3/base/build/abseil/absl/hash/cmake_install.cmake")
  include("/home/xsh/projs/git/signal_pro/webrtc_aec3/base/build/abseil/absl/memory/cmake_install.cmake")
  include("/home/xsh/projs/git/signal_pro/webrtc_aec3/base/build/abseil/absl/meta/cmake_install.cmake")
  include("/home/xsh/projs/git/signal_pro/webrtc_aec3/base/build/abseil/absl/numeric/cmake_install.cmake")
  include("/home/xsh/projs/git/signal_pro/webrtc_aec3/base/build/abseil/absl/random/cmake_install.cmake")
  include("/home/xsh/projs/git/signal_pro/webrtc_aec3/base/build/abseil/absl/strings/cmake_install.cmake")
  include("/home/xsh/projs/git/signal_pro/webrtc_aec3/base/build/abseil/absl/synchronization/cmake_install.cmake")
  include("/home/xsh/projs/git/signal_pro/webrtc_aec3/base/build/abseil/absl/time/cmake_install.cmake")
  include("/home/xsh/projs/git/signal_pro/webrtc_aec3/base/build/abseil/absl/types/cmake_install.cmake")
  include("/home/xsh/projs/git/signal_pro/webrtc_aec3/base/build/abseil/absl/utility/cmake_install.cmake")

endif()

