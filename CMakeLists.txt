cmake_minimum_required(VERSION 3.0)
project(monorepo CXX)

## not really a good solution
# cmake .. -DCMAKE_TOOLCHAIN_FILE=C:\dev\vcpkg\scripts\buildsystems\vcpkg.cmake


include(CTest)

add_subdirectory(bin1)
add_subdirectory(bin2)
add_subdirectory(libs)

