rm -rf build
mkdir -p build/ios
cd build/ios
/Applications/CMake.app/Contents/bin/cmake ../../ -DCMAKE_SYSTEM_NAME=iOS -GXcode
make