cmake_minimum_required(VERSION 3.0)
project(lib22 CXX)

include_directories("include")

add_library(${PROJECT_NAME} STATIC "src/main.cpp")
