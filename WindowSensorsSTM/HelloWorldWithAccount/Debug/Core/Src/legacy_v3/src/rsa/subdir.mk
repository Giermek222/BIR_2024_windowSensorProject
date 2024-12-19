################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/legacy_v3/src/rsa/legacy_v3_rsa.c 

OBJS += \
./Core/Src/legacy_v3/src/rsa/legacy_v3_rsa.o 

C_DEPS += \
./Core/Src/legacy_v3/src/rsa/legacy_v3_rsa.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/legacy_v3/src/rsa/%.o Core/Src/legacy_v3/src/rsa/%.su Core/Src/legacy_v3/src/rsa/%.cyclo: ../Core/Src/legacy_v3/src/rsa/%.c Core/Src/legacy_v3/src/rsa/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.17.0/WindowSensorsSTM/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.17.0/WindowSensorsSTM/HelloWorldWithAccount/Middlewares/ST/STM32_Cryptographic/legacy_v3/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-legacy_v3-2f-src-2f-rsa

clean-Core-2f-Src-2f-legacy_v3-2f-src-2f-rsa:
	-$(RM) ./Core/Src/legacy_v3/src/rsa/legacy_v3_rsa.cyclo ./Core/Src/legacy_v3/src/rsa/legacy_v3_rsa.d ./Core/Src/legacy_v3/src/rsa/legacy_v3_rsa.o ./Core/Src/legacy_v3/src/rsa/legacy_v3_rsa.su

.PHONY: clean-Core-2f-Src-2f-legacy_v3-2f-src-2f-rsa

