################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Radio/sx1276/sx1276.c 

OBJS += \
./Radio/sx1276/sx1276.o 

C_DEPS += \
./Radio/sx1276/sx1276.d 


# Each subdirectory must supply rules for building sources it contributes
Radio/sx1276/%.o Radio/sx1276/%.su Radio/sx1276/%.cyclo: ../Radio/sx1276/%.c Radio/sx1276/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/mbedtls-mbedtls-3.6.2/include" -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.16.1/HelloWorldWithAccount/Middlewares/ST/STM32_Cryptographic/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Radio-2f-sx1276

clean-Radio-2f-sx1276:
	-$(RM) ./Radio/sx1276/sx1276.cyclo ./Radio/sx1276/sx1276.d ./Radio/sx1276/sx1276.o ./Radio/sx1276/sx1276.su

.PHONY: clean-Radio-2f-sx1276
