cmake_minimum_required(VERSION 2.8)
project(lib1 CXX)

include_directories("./include")
add_library(${PROJECT_NAME} "./src/main.cpp")
