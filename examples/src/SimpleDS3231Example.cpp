#include <stdio.h>

#include "SimpleDS3231.hpp"

int main()
{
    int state = 0;
    SimpleDS3231 rtc;

    stdio_init_all();

    gpio_init(PICO_DEFAULT_LED_PIN);
    gpio_set_dir(PICO_DEFAULT_LED_PIN, GPIO_OUT);
    gpio_put(PICO_DEFAULT_LED_PIN, state);

    while (true) {
        gpio_put(PICO_DEFAULT_LED_PIN, state);
        state = !state;

        printf("\r%s -- %s -- %d%cC", rtc.get_date_str(), rtc.get_time_str(), rtc.get_temp(), 248);

        sleep_ms(500);
    }

    return 0;
}