#/Applications/CMake.app/Contents/bin/cmake -S "../MediaInfoLib/Project/CMake"  -B "./build/mediainfolib"

#/Applications/CMake.app/Contents/bin/cmake -S "../zlib"  -B "./build/zlib"
#make -C "./build/zlib"

#/Applications/CMake.app/Contents/bin/cmake -S "../ZenLib/Project/CMake"  -B "./build/zenlib" -DBUILD_SHARED_LIBS=OFF
#make -C "./build/zenlib"

#/Applications/CMake.app/Contents/bin/cmake -S "../MediaInfoLib/Project/CMake"  -B "./build/mediainfolib" -DBUILD_SHARED_LIBS=OFF -DZenLib_DIR=$(pwd)/./build/zenlib -DZenLib_INCLUDE_DIR=$(pwd)/../ZenLib/Source
#make -C "./build/mediainfolib"


#/Applications/CMake.app/Contents/bin/cmake -S "../MediaInfoLib/Project/CMake"  -B "./build/mediainfolib" -DBUILD

/Applications/CMake.app/Contents/bin/cmake -B "./build/mediainfolib"