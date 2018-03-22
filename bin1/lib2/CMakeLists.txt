
include_directories(lib1)
add_subdirectory(lib1)

add_library(lib2 STATIC "main.cpp")
target_link_libraries(lib2 lib1)

install (TARGETS lib2 DESTINATION bin)
install (FILES lib2.h DESTINATION include)
