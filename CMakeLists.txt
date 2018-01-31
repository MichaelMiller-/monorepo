cmake_minimum_required(VERSION 3.0)
project(monorepo CXX)

# cmake .. -DCMAKE_TOOLCHAIN_FILE=C:\dev\vcpkg\scripts\buildsystems\vcpkg.cmake

# set

## todo: available with cmake 3.1
## set(CMAKE_CXX_STANDARD 14)

include(CTest)

add_subdirectory(bin1)
add_subdirectory(bin2)
add_subdirectory(libs)

