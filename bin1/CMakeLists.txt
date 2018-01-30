cmake_minimum_required(VERSION 3.0)
project(bin1 CXX)

list(APPEND CMAKE_MODULE_PATH "cmake")

set(CMAKE_CXX_STANDARD 14)

## find_package(MonorepoLibs 1.54.0 REQUIRED)

add_executable(${PROJECT_NAME} main.cpp)
# target_link_libraries(${PROJECT_NAME} ${BOOST_LIBRARIES})

##
## Tests
## 
enable_testing()
add_subdirectory(tests)

##
## CPack Boilerplate
##
set(CPACK_PACKAGE_VERSION "1.0.0")
set(CPACK_PACKAGE_VERSION_MAJOR "1")
set(CPACK_PACKAGE_VERSION_MINOR "0")
set(CPACK_PACKAGE_VERSION_PATCH "0")
set(CPACK_PACKAGE_VENDOR "SOFiSTiK AG")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "${PROJECT_NAME} example")

## generate msi with wix
set(CPACK_GENERATOR WIX)

## package for apt-get (debian, ubunbtu)
set(CPACK_GENERATOR "deb")
set(CPACK_DEBIAN_PACKAGE_DEPENDS "libc6 (>= 2.3.1-6), libgcc1 (>= 1:3.4.2-12)")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "SOFiSTiK AG") # required

include(CPack)
