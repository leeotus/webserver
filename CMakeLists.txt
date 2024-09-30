cmake_minimum_required(VERSION 3.10.0)

set(WEBSERVER_TARGET_NAME "webserver")
project(${WEBSERVER_TARGET_NAME} VERSION 1.0.0 LANGUAGES C CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(WEBSERVER_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/inc)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
set(CMAKE_CXX_STANDARD 17)

add_subdirectory(src)

option(BUILD_APPS "build application with this core library." ON)
if(BUILD_APPS)
add_subdirectory(apps)
endif()

# 还没有可以测试的东西,CTest
option(ENABLE_TESTS "enable test for this core library" OFF)
if(ENABLE_TESTS)
add_subdirectory(tests)
endif()
