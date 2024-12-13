################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls-development/programs/aes/crypt_and_hash.c 

OBJS += \
./mbedtls-development/programs/aes/crypt_and_hash.o 

C_DEPS += \
./mbedtls-development/programs/aes/crypt_and_hash.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls-development/programs/aes/%.o mbedtls-development/programs/aes/%.su mbedtls-development/programs/aes/%.cyclo: ../mbedtls-development/programs/aes/%.c mbedtls-development/programs/aes/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-development" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mbedtls-2d-development-2f-programs-2f-aes

clean-mbedtls-2d-development-2f-programs-2f-aes:
	-$(RM) ./mbedtls-development/programs/aes/crypt_and_hash.cyclo ./mbedtls-development/programs/aes/crypt_and_hash.d ./mbedtls-development/programs/aes/crypt_and_hash.o ./mbedtls-development/programs/aes/crypt_and_hash.su

.PHONY: clean-mbedtls-2d-development-2f-programs-2f-aes

