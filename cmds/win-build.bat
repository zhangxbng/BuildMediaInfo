;cmake -S "..\zlib"  -B ".\build\zlib" -DCMAKE_USER_MAKE_RULES_OVERRIDE="%~dp0.\win-build.cmake"

;msbuild .\build\zlib\zlibstatic.vcxproj /P:Configuration=Debug
;msbuild .\build\zlib\zlibstatic.vcxproj /P:Configuration=Release

;cmake -S "..\ZenLib\Project\CMake"  -B ".\build\zenlib" -DCMAKE_USER_MAKE_RULES_OVERRIDE="%~dp0.\win-build.cmake"

;msbuild .\build\zenlib\zen.vcxproj /P:Configuration=Debug
;msbuild .\build\zenlib\zen.vcxproj /P:Configuration=Release

cmake -S "..\MediaInfoLib\Project\CMake"  -B ".\build\mediainfolib" -DCMAKE_USER_MAKE_RULES_OVERRIDE="%~dp0.\win-build.cmake"
msbuild .\build\mediainfolib\mediainfo.vcxproj /P:Configuration=Debug
msbuild .\build\mediainfolib\mediainfo.vcxproj /P:Configuration=Release
copy .\build\mediainfolib\Debug\mediainfod.lib .\build\mediainfo_d.lib
copy .\build\mediainfolib\Release\mediainfo.lib .\build\mediainfo.lib
copy .\build\ZenLib\Debug\zend.lib .\build\zen_d.lib
copy .\build\ZenLib\Release\zen.lib .\build\zen.lib
copy .\build\zlib\Debug\zlibstaticd.lib .\build\zlibstatic_d.lib
copy .\build\zlib\Release\zlibstatic.lib .\build\zlibstatic.lib