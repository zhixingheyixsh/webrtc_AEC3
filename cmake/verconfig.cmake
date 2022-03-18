execute_process(
  COMMAND git log -1 --format=%h
  WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
  OUTPUT_VARIABLE GIT_commit_hash
  OUTPUT_STRIP_TRAILING_WHITESPACE
)
string(TIMESTAMP Build_Time_Stamp "%Y-%m-%d %H:%M:%S")
execute_process(
  COMMAND uname -n
  WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
  OUTPUT_VARIABLE Build_Host
  OUTPUT_STRIP_TRAILING_WHITESPACE
)

set(GIT_REVISION ${GIT_commit_hash})
set(COMPILE_TIMESTAMP ${Build_Time_Stamp})
set(BUILD_PLATFORM ${Build_Host})
set(MODULE_NAME ${PROJECT_NAME})
configure_file(${CURRENT_CONFIG_FILE_PATH}/sai_denoise_version.h.in sai_denoise_version.h @ONLY)
include_directories(${CMAKE_CURRENT_BINARY_DIR})
