@echo on

MKDIR build
cd build

:: Configure
call cmake.exe .. -G "NMake Makefiles" ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_INSTALL_PREFIX=%AVTRANSCODER_INSTALL_PATH% ^
    -DCMAKE_PREFIX_PATH=%DEPENDENCY_INSTALL_PATH% ^
    -DPYTHON_LIBRARY="C:\Python35\libs\python35.lib" ^
    -DAVTRANSCODER_PYTHON_VERSION_OF_BINDING=3.5

:: Build & Install
call nmake /F Makefile
call nmake /F Makefile install

cd ..

@echo off
