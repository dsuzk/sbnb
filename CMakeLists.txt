cmake_minimum_required(VERSION 3.6)
project(bnb)

enable_language(CXX)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -m64 -O -fPIC -fno-strict-aliasing -fexceptions -DNDEBUG -DIL_STD -std=c++11")

if (${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
	add_definitions(-DSYSTEM_LINUX)
	set(SYSTEM x86-64_linux)
elseif (${CMAKE_SYSTEM_NAME} STREQUAL "Darwin")
	add_definitions(-DSYSTEM_DARWIN)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libstdc++")
	set(SYSTEM x86-64_osx)
else ()
	message(FATAL_ERROR "Yor platform is not supported.")
endif ()

set(CPLEX_ROOT /vol/informatik/ilog/cplex1263)
set(CPLEX_LIB_DIR ${CPLEX_ROOT}/lib)

set(CONCERT_ROOT /vol/informatik/ilog/concert)
set(CONCERT_LIB_DIR ${CONCERT_ROOT}/lib)

include_directories(
		${PROJECT_BINARY_DIR}/include
		${PROJECT_SOURCE_DIR}/src
		${CPLEX_ROOT}/include
		${CONCERT_ROOT}/include
)

link_directories(
		${CPLEX_LIB_DIR}/${SYSTEM}/static_pic
		${CONCERT_LIB_DIR}/${SYSTEM}/static_pic
)

set(MAIN ${PROJECT_SOURCE_DIR}/src/main.cc)

file(
		GLOB SOURCE_FILES
		${PROJECT_SOURCE_DIR}/src/*/*.h
		${PROJECT_SOURCE_DIR}/src/*/*.cc
)

list(REMOVE_ITEM SOURCE_FILES ${MAIN})

add_executable(bnb ${MAIN} ${SOURCE_FILES})

target_link_libraries(
		bnb
		ilocplex
		cplex
		concert
		pthread
)

add_custom_target(
		update_submodules
		COMMAND git submodule init
		COMMAND git submodule update
		WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
)

set(GOOGLETEST_ROOT googletest/googletest)

enable_testing()

include_directories(
		${PROJECT_SOURCE_DIR}/${GOOGLETEST_ROOT}
		${PROJECT_SOURCE_DIR}/${GOOGLETEST_ROOT}/include
		${PROJECT_BINARY_DIR}/include
		${PROJECT_SOURCE_DIR}/src
		${CPLEX_ROOT}/include
		${CONCERT_ROOT}/include
)

set(
		GOOGLETEST_SOURCES
		${PROJECT_SOURCE_DIR}/${GOOGLETEST_ROOT}/src/gtest-all.cc
		${PROJECT_SOURCE_DIR}/${GOOGLETEST_ROOT}/src/gtest_main.cc
)

add_library(googletest ${GOOGLETEST_SOURCES})

add_dependencies(googletest update_submodules)

file(GLOB TEST_SOURCE_FILES ${PROJECT_SOURCE_DIR}/test/*/*.cc)

list(REMOVE_ITEM SOURCE_FILES ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cc)

add_executable(unit_tests ${TEST_SOURCE_FILES} ${SOURCE_FILES})

add_dependencies(unit_tests googletest)

target_link_libraries(
		unit_tests
		googletest
		ilocplex
		cplex
		concert
		pthread
)