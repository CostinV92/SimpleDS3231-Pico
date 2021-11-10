# This is a copy of <SIMPLE_DS3231_LIB_PATH>/simple_ds3231_lib_import.cmake

# This can be dropped into an external project to help locate the SimpleDS3231 library

if (DEFINED ENV{SIMPLE_DS3231_LIB_PATH} AND (NOT SIMPLE_DS3231_LIB_PATH))
    set(SIMPLE_DS3231_LIB_PATH $ENV{SIMPLE_DS3231_LIB_PATH})
    message("Using SIMPLE_DS3231_LIB_PATH from environment ('${SIMPLE_DS3231_LIB_PATH}')")
endif ()

set(SIMPLE_DS3231_LIB_PATH "${SIMPLE_DS3231_LIB_PATH}" CACHE PATH "Path to the SimpleDS3231 library")

if (NOT SIMPLE_DS3231_LIB_PATH)
    message(FATAL_ERROR
            "SimpleDS3231 library location was not specified. Please set SIMPLE_DS3231_LIB_PATH."
            )
endif ()

get_filename_component(SIMPLE_DS3231_LIB_PATH "${SIMPLE_DS3231_LIB_PATH}" REALPATH BASE_DIR "${CMAKE_BINARY_DIR}")
if (NOT EXISTS ${SIMPLE_DS3231_LIB_PATH})
    message(FATAL_ERROR "Directory '${SIMPLE_DS3231_LIB_PATH}' not found")
endif ()

set(SIMPLE_DS3231_LIB_PATH ${SIMPLE_DS3231_LIB_PATH} CACHE PATH "Path to the SimpleDS3231 library" FORCE)

add_subdirectory(${SIMPLE_DS3231_LIB_PATH} ${CMAKE_BINARY_DIR}/SimpleDS3231)
