# Example rules
add_executable(SimpleDS3231Example
            SimpleDS3231Example.cpp
            )

# Pull in dependencies
target_link_libraries(SimpleDS3231Example SimpleDS3231)

# create map/bin/hex file etc.
pico_add_extra_outputs(SimpleDS3231Example)

# disable usb output, enable uart output
pico_enable_stdio_usb(SimpleDS3231Example 0)
pico_enable_stdio_uart(SimpleDS3231Example 1)
