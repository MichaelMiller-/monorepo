## list(APPEND CMAKE_MODULE_PATH "../cmake")
## TODO: hardcoded path tp catch.hpp

find_path(CATCH_INCLUDE_DIR catch.hpp)
include_directories(${CATCH_INCLUDE_DIR})
# include_directories("../../deps")

function(test test)
   string(REPLACE "/" "_" tmp ${test})
   ## include_directories(${Ranges_INCLUDE_DIRS})
   add_executable(test.${tmp} ${CMAKE_CURRENT_LIST_DIR}/${test}.cpp)
   ## add_dependencies(test.${tmp} ranges)
   ## target_link_libraries(test.${tmp} ${BOOST_LIBRARIES})
   add_test(test.${tmp} test.${tmp})
endfunction()

## simple call test(with cpp file)
test(algo1)
test(algo2)