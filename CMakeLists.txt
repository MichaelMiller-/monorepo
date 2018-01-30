cmake_minimum_required(VERSION 3.0)
project(monorepo CXX)

##
## add extern dependencies
##
# set(BOOST_ROOT "${CMAKE_CURRENT_SOURCE_DIR}/deps/boost_1_54_0")
# set(BOOST_INCLUDEDIR "${CMAKE_CURRENT_SOURCE_DIR}/deps/boost_1_54_0")
# set(BOOST_LIBRARYDIR "${CMAKE_CURRENT_SOURCE_DIR}/deps/boost_1_54_0")


# if(UNIX)
# 	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++1z")
# 	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wno-long-long -Wno-reorder -pedantic -O3" )
# endif()

## todo: available with cmake 3.1
## set (CMAKE_CXX_STANDARD 11)

enable_testing()

add_subdirectory(bin1)
add_subdirectory(bin2)
add_subdirectory(libs)

