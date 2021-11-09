# SimpleDS3231-Pico
DS3231 device driver for Raspberry Pi Pico.

## How to build the example
1. `cp <PICO_SDK_PATH>/external/pico_sdk_import.cmake <SIMPLE_DS3231_LIB_PATH>/examples/`
1. `mkdir <BUILD_DIR> && cd <BUILD_DIR>`
1. `cmake -DSIMPLE_DS3231_LIB_PATH=<SIMPLE_DS3231_LIB_PATH> <SIMPLE_DS3231_LIB_PATH>/examples/`
1. `make`

## How to link with the library
1. `cp <PICO_SDK_PATH>/external/pico_sdk_import.cmake <YOUR_PROJECT_PATH>/`
1. `cp <SIMPLE_DS3231_LIB_PATH>/examples/simple_ds3231_lib_import.cmake <YOUR_PROJECT_PATH>/`
1. include `simple_ds3231_lib_import.cmake` into your `CMakeLists.txt` file
    * CMake function: `include(simple_ds3231_lib_import.cmake)`
1. add `SimpleDS3231` as a dependency to your target
    * CMake function: `target_link_libraries(target SimpleDS3231)`
