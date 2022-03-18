set(source_file "${CMAKE_BINARY_DIR}${CMAKE_FILES_DIRECTORY}/CMakeTmp/hash-style.c")
file(WRITE "${source_file}" "#include <stdio.h>
                             int main(void)
                             {
                                 return printf(\"\");
                             }
                             ")

message(STATUS "Checking for --hash-style=gnu support")
try_run(SUPPORT_HASH_STYLE_GNU SUPPORT_HASH_STYLE_GNU_BUILD
        ${CMAKE_BINARY_DIR} ${source_file}
        CMAKE_FLAGS -DLINK_LIBRARIES:STRING=-Wl,--hash-style=gnu
        OUTPUT_VARIABLE output)
if(SUPPORT_HASH_STYLE_GNU_BUILD AND SUPPORT_HASH_STYLE_GNU EQUAL 0)
    set(hash_style_supported TRUE)
    message(STATUS "Checking for --hash-style=gnu support -- found ")
else()
    set(hash_style_supported FALSE)
    message(STATUS "Checking for --hash-style=gnu support -- not found ")
    file(APPEND ${CMAKE_BINARY_DIR}${CMAKE_FILES_DIRECTORY}/CMakeOutput.log
         "Checking support for --hash-style=gnu support failed with the following output:\n"
         "${output}\n")
endif()

# use --hash-style=both option to build portable packages
if(hash_style_supported)
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS_RELEASE} -Wl,--hash-style=both")
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS_RELEASE} -Wl,--hash-style=both")
    set(CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS_RELEASE} -Wl,--hash-style=both")
endif()
