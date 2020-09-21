cmake_minimum_required(VERSION 3.7)

######################## Global CMake Flags Here #####################
SET(CMAKE_C_COMPILER "gcc")
SET(CMAKE_C_STANDARD 99)
SET(CMAKE_C_FLAGS "-Wall")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
set(CMAKE_C_FLAGS_DEBUG  "-g")

SET(CMAKE_CXX_COMPILER "g++")
set(CMAKE_CXX_STANDARD 14)
SET(CMAKE_CXX_FLAGS "-Wall -ldl")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
set(CMAKE_CXX_FLAGS_DEBUG  "-g")
#######################################################################

PROJECT(helloworld VERSION 0.0.1 LANGUAGES CXX)

# Always define HAVE_CONFIG_H
add_definitions(-DHAVE_CONFIG_H)

LIST(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")

ADD_SUBDIRECTORY("include/")
ADD_SUBDIRECTORY("src/")

ADD_SUBDIRECTORY("tests/")
