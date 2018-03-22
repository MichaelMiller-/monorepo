add_library(lib1 STATIC "main.cpp")

install (TARGETS lib1 DESTINATION bin)
install (FILES lib1.h DESTINATION include)
