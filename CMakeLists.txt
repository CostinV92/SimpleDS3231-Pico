cmake_minimum_required(VERSION 3.12)

# Pull in SDK (must be before project)
include(pico_sdk_import.cmake)

project(SimpleDS3231 C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Initialize the SDK
pico_sdk_init()

# Add headers
add_library(SimpleDS3231_headers INTERFACE)
target_include_directories(SimpleDS3231_headers INTERFACE ${CMAKE_CURRENT_LIST_DIR}/include)

# Add sources
add_library(SimpleDS3231 INTERFACE)
target_sources(SimpleDS3231 INTERFACE ${CMAKE_CURRENT_LIST_DIR}/SimpleDS3231.cpp)
target_link_libraries(SimpleDS3231 INTERFACE SimpleDS3231_headers pico_stdlib hardware_i2c)

# Add examples folder
add_subdirectory(examples)