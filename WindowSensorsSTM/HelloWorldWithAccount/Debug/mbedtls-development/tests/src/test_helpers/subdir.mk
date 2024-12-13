################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls-development/tests/src/test_helpers/ssl_helpers.c 

OBJS += \
./mbedtls-development/tests/src/test_helpers/ssl_helpers.o 

C_DEPS += \
./mbedtls-development/tests/src/test_helpers/ssl_helpers.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls-development/tests/src/test_helpers/%.o mbedtls-development/tests/src/test_helpers/%.su mbedtls-development/tests/src/test_helpers/%.cyclo: ../mbedtls-development/tests/src/test_helpers/%.c mbedtls-development/tests/src/test_helpers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-development" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mbedtls-2d-development-2f-tests-2f-src-2f-test_helpers

clean-mbedtls-2d-development-2f-tests-2f-src-2f-test_helpers:
	-$(RM) ./mbedtls-development/tests/src/test_helpers/ssl_helpers.cyclo ./mbedtls-development/tests/src/test_helpers/ssl_helpers.d ./mbedtls-development/tests/src/test_helpers/ssl_helpers.o ./mbedtls-development/tests/src/test_helpers/ssl_helpers.su

.PHONY: clean-mbedtls-2d-development-2f-tests-2f-src-2f-test_helpers

