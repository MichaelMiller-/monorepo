cmake_minimum_required(VERSION 3.0)
project(monorepo_bin1 CXX)

set ("${PROJECT_NAME}_VERSION_MAJOR" 1)
set ("${PROJECT_NAME}_VERSION_MINOR" 0)
configure_file (
  "${PROJECT_SOURCE_DIR}/version.config.h.in"
  "${PROJECT_BINARY_DIR}/version.config.h"
  )
include_directories("${PROJECT_BINARY_DIR}")

list(APPEND CMAKE_MODULE_PATH "cmake")

add_executable(${PROJECT_NAME} main.cpp)

##
## Tests
## 
enable_testing()    ## TODO check if necessaery
add_subdirectory(tests)

##
## CPack Boilerplate
##
set(CPACK_PACKAGE_VERSION "1.0.0")
set(CPACK_PACKAGE_VERSION_MAJOR "1")
set(CPACK_PACKAGE_VERSION_MINOR "0")
set(CPACK_PACKAGE_VERSION_PATCH "0")
set(CPACK_PACKAGE_VENDOR "vendor")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "${PROJECT_NAME} example")
set(CPACK_PACKAGE_NAME "${PROJECT_NAME}")
set(CPACK_PACKAGE_CONTACT "schorsch")
set(CPACK_PACKAGE_DESCRIPTION_FILE "${CMAKE_CURRENT_SOURCE_DIR}/README-de.md")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "${PROJECT_NAME} ${CPACK_PACKAGE_VERSION_MAJOR}.${CPACK_PACKAGE_VERSION_MINOR}.${CPACK_PACKAGE_VERSION_PATCH}")

## generate msi with wix
set(CPACK_GENERATOR WIX)

## package for apt-get (debian, ubunbtu)
set(CPACK_GENERATOR "deb")
set(CPACK_DEBIAN_PACKAGE_DEPENDS "libc6 (>= 2.3.1-6), libgcc1 (>= 1:3.4.2-12)")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "crazy maintainer") # required

# build a CPack driven installer package
include(InstallRequiredSystemLibraries)

## build debian package: "cpack -G DEB"
include(CPack)
