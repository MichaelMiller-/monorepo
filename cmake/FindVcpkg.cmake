cmake_minimum_required(VERSION 2.8.2)

project(ranges-download NONE)

if (MSVC)
	set(REPRO "https://github.com/Microsoft/Range-V3-VS2015.git")
else()
  set(REPRO "https://github.com/ericniebler/range-v3.git")	
endif()

include(ExternalProject)
ExternalProject_Add(ranges
  GIT_REPOSITORY    "${REPRO}"
  SOURCE_DIR        "${CMAKE_BINARY_DIR}/ranges-src"
  BUILD_COMMAND     ""
  INSTALL_COMMAND   ""
  TEST_COMMAND      ""
)

set (Ranges_ROOT "${CMAKE_BINARY_DIR}/ranges-src")
set (Ranges_INCLUDE_DIR "${Ranges_ROOT}/include")
set (Ranges_LIBRARY "${Ranges_ROOT}/include")

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Ranges DEFAULT_MSG Ranges_LIBRARY Ranges_INCLUDE_DIR)

mark_as_advanced(Ranges_INCLUDE_DIR Ranges_LIBRARY)

set (Ranges_LIBRARIES "${Ranges_LIBRARY}")
set (Ranges_INCLUDE_DIRS "${Ranges_INCLUDE_DIR}")
