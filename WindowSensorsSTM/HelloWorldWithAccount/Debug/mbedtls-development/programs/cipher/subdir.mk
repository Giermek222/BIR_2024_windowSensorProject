################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls-development/programs/cipher/cipher_aead_demo.c 

OBJS += \
./mbedtls-development/programs/cipher/cipher_aead_demo.o 

C_DEPS += \
./mbedtls-development/programs/cipher/cipher_aead_demo.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls-development/programs/cipher/%.o mbedtls-development/programs/cipher/%.su mbedtls-development/programs/cipher/%.cyclo: ../mbedtls-development/programs/cipher/%.c mbedtls-development/programs/cipher/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-development" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mbedtls-2d-development-2f-programs-2f-cipher

clean-mbedtls-2d-development-2f-programs-2f-cipher:
	-$(RM) ./mbedtls-development/programs/cipher/cipher_aead_demo.cyclo ./mbedtls-development/programs/cipher/cipher_aead_demo.d ./mbedtls-development/programs/cipher/cipher_aead_demo.o ./mbedtls-development/programs/cipher/cipher_aead_demo.su

.PHONY: clean-mbedtls-2d-development-2f-programs-2f-cipher

