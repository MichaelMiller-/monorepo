cmake_minimum_required(VERSION 2.8.2)

project(monorepolibs-download NONE)

include(ExternalProject)
ExternalProject_Add(ranges
   GIT_REPOSITORY    "${REPRO}"
   SOURCE_DIR        "${CMAKE_BINARY_DIR}/monorepolibs-src"
   BUILD_COMMAND     ""
   INSTALL_COMMAND   ""
   TEST_COMMAND      ""
)

set(MonorepoLibs_ROOT "${CMAKE_BINARY_DIR}/monorepolibs-src")
set(MonorepoLibs_INCLUDE_DIR "${MonorepoLibs_ROOT}/include")
set(MonorepoLibs_LIBRARY "${MonorepoLibs_ROOT}/include")

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(MonorepoLibs DEFAULT_MSG MonorepoLibs_LIBRARY MonorepoLibs_INCLUDE_DIR)

mark_as_advanced(MonorepoLibs_INCLUDE_DIR MonorepoLibs_LIBRARY)

set(MonorepoLibs_LIBRARIES "${MonorepoLibs_LIBRARY}")
set(MonorepoLibs_INCLUDE_DIRS "${MonorepoLibs_INCLUDE_DIR}")
