cmake_minimum_required(VERSION 3.0)
project(monorepo CXX)

set(CMAKE_CXX_STANDARD 14)

include(CTest)
## to disable testing set BUILD_TESTING to false

add_subdirectory(bin1)
add_subdirectory(bin2)
add_subdirectory(libs)

## not really a good solution
# cmake .. -DCMAKE_TOOLCHAIN_FILE=C:\dev\vcpkg\scripts\buildsystems\vcpkg.cmake
