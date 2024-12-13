################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls-development/tf-psa-crypto/tests/src/psa_test_wrappers.c 

OBJS += \
./mbedtls-development/tf-psa-crypto/tests/src/psa_test_wrappers.o 

C_DEPS += \
./mbedtls-development/tf-psa-crypto/tests/src/psa_test_wrappers.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls-development/tf-psa-crypto/tests/src/%.o mbedtls-development/tf-psa-crypto/tests/src/%.su mbedtls-development/tf-psa-crypto/tests/src/%.cyclo: ../mbedtls-development/tf-psa-crypto/tests/src/%.c mbedtls-development/tf-psa-crypto/tests/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-development" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mbedtls-2d-development-2f-tf-2d-psa-2d-crypto-2f-tests-2f-src

clean-mbedtls-2d-development-2f-tf-2d-psa-2d-crypto-2f-tests-2f-src:
	-$(RM) ./mbedtls-development/tf-psa-crypto/tests/src/psa_test_wrappers.cyclo ./mbedtls-development/tf-psa-crypto/tests/src/psa_test_wrappers.d ./mbedtls-development/tf-psa-crypto/tests/src/psa_test_wrappers.o ./mbedtls-development/tf-psa-crypto/tests/src/psa_test_wrappers.su

.PHONY: clean-mbedtls-2d-development-2f-tf-2d-psa-2d-crypto-2f-tests-2f-src

