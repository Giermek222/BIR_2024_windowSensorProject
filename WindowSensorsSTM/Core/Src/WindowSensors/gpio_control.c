#include "gpio_control.h"
#include "stm32u5xx_hal.h"// Include the STM32 HAL for GPIO functions

int checkWindow1Status(void) {
    return HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_13) == GPIO_PIN_RESET;
}

int checkWindow2Status(void) {
    return HAL_GPIO_ReadPin(GPIOH, GPIO_PIN_1) == GPIO_PIN_RESET;
}

int checkWindow3Status(void) {
    return HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_3) == GPIO_PIN_RESET;
}
