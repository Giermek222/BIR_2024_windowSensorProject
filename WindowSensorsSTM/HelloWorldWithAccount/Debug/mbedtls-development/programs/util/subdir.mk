################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls-development/programs/util/pem2der.c \
../mbedtls-development/programs/util/strerror.c 

OBJS += \
./mbedtls-development/programs/util/pem2der.o \
./mbedtls-development/programs/util/strerror.o 

C_DEPS += \
./mbedtls-development/programs/util/pem2der.d \
./mbedtls-development/programs/util/strerror.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls-development/programs/util/%.o mbedtls-development/programs/util/%.su mbedtls-development/programs/util/%.cyclo: ../mbedtls-development/programs/util/%.c mbedtls-development/programs/util/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-development" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mbedtls-2d-development-2f-programs-2f-util

clean-mbedtls-2d-development-2f-programs-2f-util:
	-$(RM) ./mbedtls-development/programs/util/pem2der.cyclo ./mbedtls-development/programs/util/pem2der.d ./mbedtls-development/programs/util/pem2der.o ./mbedtls-development/programs/util/pem2der.su ./mbedtls-development/programs/util/strerror.cyclo ./mbedtls-development/programs/util/strerror.d ./mbedtls-development/programs/util/strerror.o ./mbedtls-development/programs/util/strerror.su

.PHONY: clean-mbedtls-2d-development-2f-programs-2f-util

