cmake_minimum_required(VERSION 3.12)

# Pull in SDK (must be before project)
include(pico_sdk_import.cmake)

project(SimpleDS3231Example C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Initialize the SDK
pico_sdk_init()

# Pull in SimpleDS3231 library
include(simple_ds3231_lib_import.cmake)

# Check if Debug build
if (CMAKE_BUILD_TYPE MATCHES Debug)
    pico_enable_stdio_usb(SimpleDS3231Example 0)
    pico_enable_stdio_uart(SimpleDS3231Example 1)
    add_definitions(-DDEBUG)
endif(CMAKE_BUILD_TYPE MATCHES Debug)

# Add sources
add_executable(SimpleDS3231Example
            src/SimpleDS3231Example.cpp
            )

# Pull in dependencies
target_link_libraries(SimpleDS3231Example SimpleDS3231)

# create map/bin/hex file etc.
pico_add_extra_outputs(SimpleDS3231Example)

