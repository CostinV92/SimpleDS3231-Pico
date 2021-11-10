# Add headers
add_library(SimpleDS3231_headers INTERFACE)
target_include_directories(SimpleDS3231_headers INTERFACE ${SIMPLE_DS3231_LIB_PATH}/include)

# Add target
add_library(SimpleDS3231 INTERFACE)

# Add sources
target_sources(SimpleDS3231 INTERFACE
    ${SIMPLE_DS3231_LIB_PATH}/src/SimpleDS3231.cpp
    )

# Add dependencies
target_link_libraries(SimpleDS3231 INTERFACE SimpleDS3231_headers pico_stdlib hardware_i2c)
