################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/src/drbg/legacy_v3_ctr_drbg.c 

OBJS += \
./Core/Src/src/drbg/legacy_v3_ctr_drbg.o 

C_DEPS += \
./Core/Src/src/drbg/legacy_v3_ctr_drbg.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/src/drbg/%.o Core/Src/src/drbg/%.su Core/Src/src/drbg/%.cyclo: ../Core/Src/src/drbg/%.c Core/Src/src/drbg/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_MODEM_FSK -DUSE_HAL_DRIVER -DSTM32U545xx -c -I../Core/Inc -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.17.0/WindowSensorsSTM/HelloWorldWithAccount/Radio" -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/buchwald/STM32CubeIDE/workspace_1.17.0/WindowSensorsSTM/HelloWorldWithAccount/Middlewares/ST/STM32_Cryptographic/legacy_v3/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-src-2f-drbg

clean-Core-2f-Src-2f-src-2f-drbg:
	-$(RM) ./Core/Src/src/drbg/legacy_v3_ctr_drbg.cyclo ./Core/Src/src/drbg/legacy_v3_ctr_drbg.d ./Core/Src/src/drbg/legacy_v3_ctr_drbg.o ./Core/Src/src/drbg/legacy_v3_ctr_drbg.su

.PHONY: clean-Core-2f-Src-2f-src-2f-drbg

