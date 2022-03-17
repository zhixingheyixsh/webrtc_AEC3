cmake_minimum_required (VERSION 3.1)
project (AEC3 VERSION 3.0)
#The version number
set (AEC_VERSION_MAJOR 3)
set (AEC_VERSION_MINOR 0)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)
#set(CMAKE_CXX_STANDARD 11)
#set(CMAKE_C_STANDARD 11)
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fvisibility=hidden -std=c++14 -O3 -fPIC -fopenmp -mcpu=cortex-a7 -ftree-vectorize -mfloat-abi=hard -mfpu=neon")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fvisibility=hidden -fPIC -pthread")
#set(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS} -fvisibility=hidden -std=c++14 -O3 -fPIC -fopenmp -mcpu=cortex-a7 -ftree-vectorize -mfloat-abi=hard -mfpu=neon")
#set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fvisibility=hidden -fPIC")
#option(BUILD_STATIC_LIB "Building static lib" ON)


if(NOT DEFINED SYSTEM_DETAILS)
  set(SYSTEM_DETAILS linux64)
endif()
set(CMAKE_SKIP_RPATH TRUE)
set(CMAKE_POSITION_INDEPENDENT_CODE ON) 
set(CURRENT_CONFIG_FILE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
option(BUILD_STATIC_LIB "Building static lib" ON) 
if(${CMAKE_BUILD_TYPE} STREQUAL debug)
  set(BUILD_STATIC_LIB OFF)
  add_definitions(-DDEBUG)
endif()

add_definitions(-DWEBRTC_POSIX)

# should we use our own math functions?
option (USE_AEC
        "Use AEC provided math implementation" ON)

# configure a header file to pass some of the cmake settings to the source code
configure_file(
    "${PROJECT_SOURCE_DIR}/config.h.in"
    "${PROJECT_BINARY_DIR}/config.h"
    )
# add the binary tee to the search path for include files
include_directories(${PROJECT_BINARY_DIR} ${PROJECT_BINARY_DIR}/demo ${PROJECT_SOURCE_DIR}/base/abseil)

# add the MathFunctions library?
if (USE_AEC)
  include_directories (${PROJECT_SOURCE_DIR}/audio_processing ${PROJECT_SOURCE_DIR} ${PROJECT_SOURCE_DIR}/base)
  add_subdirectory (audio_processing)
  add_subdirectory (api)
  add_subdirectory (base)
  set (EXTRA_LIBS ${EXTRA_LIBS} AudioProcess base api)
endif (USE_AEC)

add_executable(${PROJECT_NAME} demo/demo.cc demo/wavreader.c demo/wavwriter.c demo/print_tool.cc)
target_link_libraries(${PROJECT_NAME} ${EXTRA_LIBS})

# add the install targets
#set (CMAKE_INSTALL_PREFIX home/xsh/projs/git/)
install (TARGETS ${PROJECT_NAME} DESTINATION ${PROJECT_SOURCE_DIR}/install)
install (FILES "${PROJECT_BINARY_DIR}/config.h"
         DESTINATION ${PROJECT_SOURCE_DIR}/install)


