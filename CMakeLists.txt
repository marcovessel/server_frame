cmake_minimum_required(VERSION 2.8)
project(slayer)

set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_CXX_FLAGS "$ENV{CXXFLAGS} -rdynamic -O0 -ggdb -std=c++11 -Wall -Wno-deprecated -Werror -Wno-unused-function")

set(LIB_SRC
        log.cpp util.h util.cpp singleton.h thread.cpp)

add_library(slayer SHARED ${LIB_SRC})

add_executable(test tests/test.cc)
add_dependencies(test slayer)
target_link_libraries(test slayer)

SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)