cmake_minimum_required(VERSION 3.0)
project(monorepo_bin1 CXX)

set ("${PROJECT_NAME}_VERSION_MAJOR" 1)
set ("${PROJECT_NAME}_VERSION_MINOR" 0)
configure_file (
  "${PROJECT_SOURCE_DIR}/version.config.h.in"
  "${PROJECT_BINARY_DIR}/version.config.h"
  )
include_directories("${PROJECT_BINARY_DIR}")

include_directories(lib2)
add_subdirectory(lib2)

add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} lib2)
