cmake_minimum_required(VERSION 2.8)
project(lib1 CXX)

include_directories("include")

add_library(${PROJECT_NAME} STATIC "src/main.cpp")

##
## Tests
## 
#enable_testing()
#add_subdirectory(tests)
