mkdir -p ../build/debug
cd ../build/debug
cmake -DCMAKE_BUILD_TYPE=debug -DJSONCPP_LIB_BUILD_SHARED=OFF -G "Unix Makefiles" ../../jsoncpp
make

